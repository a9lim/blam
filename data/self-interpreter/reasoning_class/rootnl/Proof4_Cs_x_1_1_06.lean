import Certificates
namespace Blc.HandlerLet.Proof4_Cs_x_1_1_06
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r2787 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2787 : ¬ Reader r2787 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2787

def r2788 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2788 : ¬ Reader r2788 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2788

def r2789 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2789 : ¬ Reader r2789 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2789

def r2790 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2790 : ¬ Reader r2790 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2790

def r2791 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2791 : ¬ Reader r2791 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2791

def r2792 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2792 : ¬ Reader r2792 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2792

def r2793 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2793 : ¬ Reader r2793 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2793

def r2794 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2794 : ¬ Reader r2794 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2794

def r2795 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2795 : ¬ Reader r2795 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2795

def r2796 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2796 : ¬ Reader r2796 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2796

def r2797 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2797 : ¬ Reader r2797 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2797

def r2798 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2798 : ¬ Reader r2798 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2798

def r2799 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2799 : ¬ Reader r2799 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2799

def r2800 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2800 : ¬ Reader r2800 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2800

def r2801 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2801 : ¬ Reader r2801 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2801

def r2802 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2802 : ¬ Reader r2802 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2802

def r2803 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2803 : ¬ Reader r2803 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2803

def r2804 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2804 : ¬ Reader r2804 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2804

def r2805 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2805 : ¬ Reader r2805 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2805

def r2806 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2806 : ¬ Reader r2806 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2806

def r2807 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2807 : ¬ Reader r2807 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2807

def r2808 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2808 : ¬ Reader r2808 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2808

def r2809 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2809 : ¬ Reader r2809 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.var 0)), (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2809

def r2810 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2810 : ¬ Reader r2810 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2810

def r2811 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2811 : ¬ Reader r2811 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2811

def r2812 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2812 : ¬ Reader r2812 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2812

def r2813 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2813 : ¬ Reader r2813 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2813

def r2814 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2814 : ¬ Reader r2814 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.var 0) (.lam (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2814

def r2815 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2815 : ¬ Reader r2815 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.var 0), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2815

def r2816 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2816 : ¬ Reader r2816 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2816

def r2817 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2817 : ¬ Reader r2817 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2817

def r2818 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2818 : ¬ Reader r2818 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2818

def r2819 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2819 : ¬ Reader r2819 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2819

def r2820 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2820 : ¬ Reader r2820 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2820

def r2821 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2821 : ¬ Reader r2821 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2821

def r2822 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2822 : ¬ Reader r2822 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2822

def r2823 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2823 : ¬ Reader r2823 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2823

def r2824 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2824 : ¬ Reader r2824 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2824

def r2825 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2825 : ¬ Reader r2825 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))) (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2825

def r2826 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2826 : ¬ Reader r2826 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2826

def r2827 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2827 : ¬ Reader r2827 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2827

def r2828 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2828 : ¬ Reader r2828 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2828

def r2829 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2829 : ¬ Reader r2829 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2829

def r2830 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2830 : ¬ Reader r2830 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2830

def r2831 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2831 : ¬ Reader r2831 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2831

def r2832 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2832 : ¬ Reader r2832 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2832

def r2833 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2833 : ¬ Reader r2833 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2833

def r2834 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2834 : ¬ Reader r2834 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2834

def r2835 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2835 : ¬ Reader r2835 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2835

def r2836 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2836 : ¬ Reader r2836 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2836

def r2837 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2837 : ¬ Reader r2837 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2837

def r2838 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2838 : ¬ Reader r2838 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2838

def r2839 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2839 : ¬ Reader r2839 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2839

def r2840 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2840 : ¬ Reader r2840 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2840

def r2841 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2841 : ¬ Reader r2841 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2841

def r2842 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2842 : ¬ Reader r2842 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2842

def r2843 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2843 : ¬ Reader r2843 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2843

def r2844 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2844 : ¬ Reader r2844 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2844

def r2845 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2845 : ¬ Reader r2845 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2845

def r2846 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2846 : ¬ Reader r2846 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2846

def r2847 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2847 : ¬ Reader r2847 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2847

def r2848 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2848 : ¬ Reader r2848 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.lam (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2848

def r2849 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2849 : ¬ Reader r2849 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2849

def r2850 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2850 : ¬ Reader r2850 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2850

def r2851 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2851 : ¬ Reader r2851 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2851

def r2852 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2852 : ¬ Reader r2852 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2852

def r2853 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2853 : ¬ Reader r2853 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2853

def r2854 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2854 : ¬ Reader r2854 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2854

def r2855 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2855 : ¬ Reader r2855 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2855

def r2856 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2856 : ¬ Reader r2856 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2856

def r2857 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2857 : ¬ Reader r2857 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2857

def r2858 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2858 : ¬ Reader r2858 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2858

def r2859 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2859 : ¬ Reader r2859 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2859

def r2860 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2860 : ¬ Reader r2860 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2860

def r2861 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2861 : ¬ Reader r2861 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2861

def r2862 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2862 : ¬ Reader r2862 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2862

def r2863 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2863 : ¬ Reader r2863 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2863

def r2864 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2864 : ¬ Reader r2864 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2864

def r2865 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2865 : ¬ Reader r2865 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2865

def r2866 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2866 : ¬ Reader r2866 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2866

def r2867 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2867 : ¬ Reader r2867 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2867

def r2868 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2868 : ¬ Reader r2868 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2868

def r2869 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2869 : ¬ Reader r2869 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2869

def r2870 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2870 : ¬ Reader r2870 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2870

def r2871 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2871 : ¬ Reader r2871 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2871

def r2872 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2872 : ¬ Reader r2872 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2872

def r2873 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2873 : ¬ Reader r2873 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2873

def r2874 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2874 : ¬ Reader r2874 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2874

def r2875 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2875 : ¬ Reader r2875 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2875

def r2876 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2876 : ¬ Reader r2876 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2876

def r2877 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2877 : ¬ Reader r2877 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2877

def r2878 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2878 : ¬ Reader r2878 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2878

def r2879 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2879 : ¬ Reader r2879 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2879

def r2880 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2880 : ¬ Reader r2880 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2880

def r2881 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2881 : ¬ Reader r2881 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2881

def r2882 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2882 : ¬ Reader r2882 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2882

def r2883 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2883 : ¬ Reader r2883 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2883

def r2884 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2884 : ¬ Reader r2884 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2884

def r2885 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2885 : ¬ Reader r2885 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2885

def r2886 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2886 : ¬ Reader r2886 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2886

def r2887 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2887 : ¬ Reader r2887 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2887

def r2888 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2888 : ¬ Reader r2888 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2888

def r2889 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2889 : ¬ Reader r2889 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2889

def r2890 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2890 : ¬ Reader r2890 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2890

def r2891 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2891 : ¬ Reader r2891 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2891

def r2892 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2892 : ¬ Reader r2892 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2892

def r2893 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2893 : ¬ Reader r2893 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2893

def r2894 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2894 : ¬ Reader r2894 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2894

def r2895 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2895 : ¬ Reader r2895 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2895

def r2896 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2896 : ¬ Reader r2896 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2896

def r2897 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2897 : ¬ Reader r2897 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2897

def r2898 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2898 : ¬ Reader r2898 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2898

def r2899 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2899 : ¬ Reader r2899 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2899

def r2900 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2900 : ¬ Reader r2900 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2900

def r2901 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2901 : ¬ Reader r2901 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2901

def r2902 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2902 : ¬ Reader r2902 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2902

def r2903 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2903 : ¬ Reader r2903 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2903

def r2904 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2904 : ¬ Reader r2904 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2904

def r2905 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2905 : ¬ Reader r2905 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2905

def r2906 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2906 : ¬ Reader r2906 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2906

def r2907 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2907 : ¬ Reader r2907 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2907

def r2908 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2908 : ¬ Reader r2908 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2908

def r2909 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2909 : ¬ Reader r2909 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2909

def r2910 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2910 : ¬ Reader r2910 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2910

def r2911 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2911 : ¬ Reader r2911 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2911

def r2912 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2912 : ¬ Reader r2912 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2912

def r2913 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2913 : ¬ Reader r2913 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2913

def r2914 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2914 : ¬ Reader r2914 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2914

def r2915 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2915 : ¬ Reader r2915 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2915

def r2916 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2916 : ¬ Reader r2916 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2916

def r2917 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2917 : ¬ Reader r2917 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2917

def r2918 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2918 : ¬ Reader r2918 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2918

def r2919 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2919 : ¬ Reader r2919 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2919

def r2920 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2920 : ¬ Reader r2920 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2920

def r2921 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2921 : ¬ Reader r2921 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2921

def r2922 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2922 : ¬ Reader r2922 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2922

def r2923 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2923 : ¬ Reader r2923 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2923

def r2924 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2924 : ¬ Reader r2924 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2924

def r2925 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2925 : ¬ Reader r2925 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2925

def r2926 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2926 : ¬ Reader r2926 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2926

def r2927 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2927 : ¬ Reader r2927 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2927

def r2928 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2928 : ¬ Reader r2928 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2928

def r2929 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2929 : ¬ Reader r2929 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2929

def r2930 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2930 : ¬ Reader r2930 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.var 0) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2930

def r2931 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2931 : ¬ Reader r2931 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2931

def r2932 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2932 : ¬ Reader r2932 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2932

def r2933 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2933 : ¬ Reader r2933 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2933

def r2934 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2934 : ¬ Reader r2934 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2934

def r2935 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2935 : ¬ Reader r2935 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2935

def r2936 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2936 : ¬ Reader r2936 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.var 0) (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2936

def r2937 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2937 : ¬ Reader r2937 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2937

def r2938 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2938 : ¬ Reader r2938 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2938

def r2939 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2939 : ¬ Reader r2939 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 0), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2939

def r2940 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2940 : ¬ Reader r2940 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2940

def r2941 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2941 : ¬ Reader r2941 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.var 0) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2941

def r2942 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2942 : ¬ Reader r2942 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2942

def r2943 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2943 : ¬ Reader r2943 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2943

def r2944 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2944 : ¬ Reader r2944 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2944

def r2945 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2945 : ¬ Reader r2945 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.var 0) (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2945

def r2946 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2946 : ¬ Reader r2946 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.var 0))), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2946

def r2947 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2947 : ¬ Reader r2947 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2947

def r2948 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2948 : ¬ Reader r2948 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.var 0) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2948

def r2949 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2949 : ¬ Reader r2949 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2949

def r2950 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2950 : ¬ Reader r2950 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2950

def r2951 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2951 : ¬ Reader r2951 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2951

def r2952 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2952 : ¬ Reader r2952 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2952

def r2953 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2953 : ¬ Reader r2953 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2953

def r2954 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2954 : ¬ Reader r2954 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 0), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2954

def r2955 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2955 : ¬ Reader r2955 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2955

def r2956 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2956 : ¬ Reader r2956 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.var 0) (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2956

def r2957 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2957 : ¬ Reader r2957 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2957

def r2958 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2958 : ¬ Reader r2958 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2958

def r2959 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2959 : ¬ Reader r2959 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2959

def r2960 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2960 : ¬ Reader r2960 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2960

def r2961 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2961 : ¬ Reader r2961 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2961

def r2962 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2962 : ¬ Reader r2962 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2962

def r2963 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2963 : ¬ Reader r2963 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2963

def r2964 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2964 : ¬ Reader r2964 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2964

def r2965 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2965 : ¬ Reader r2965 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2965

def r2966 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2966 : ¬ Reader r2966 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2966

def r2967 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2967 : ¬ Reader r2967 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2967

def r2968 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2968 : ¬ Reader r2968 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2968

def r2969 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2969 : ¬ Reader r2969 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.var 0)), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2969

def r2970 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2970 : ¬ Reader r2970 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2970

def r2971 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2971 : ¬ Reader r2971 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 0), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2971

def r2972 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2972 : ¬ Reader r2972 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2972

def r2973 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2973 : ¬ Reader r2973 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2973

def r2974 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2974 : ¬ Reader r2974 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2974

def r2975 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2975 : ¬ Reader r2975 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 0), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2975

def r2976 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2976 : ¬ Reader r2976 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.var 0)), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2976

def r2977 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2977 : ¬ Reader r2977 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2977

def r2978 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2978 : ¬ Reader r2978 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 0), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2978

def r2979 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2979 : ¬ Reader r2979 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2979

def r2980 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2980 : ¬ Reader r2980 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 0), (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2980

def r2981 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2981 : ¬ Reader r2981 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 0), (.var 0), (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2981

def r2982 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2982 : ¬ Reader r2982 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.var 0)), (.var 0), (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2982

def r2983 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2983 : ¬ Reader r2983 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 0), (.lam (.var 0)), (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2983

def r2984 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2984 : ¬ Reader r2984 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 0), (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2984

def r2985 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2985 : ¬ Reader r2985 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.var 0)), (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2985

def r2986 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2986 : ¬ Reader r2986 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2986

def r2987 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2987 : ¬ Reader r2987 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2987

def r2988 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2988 : ¬ Reader r2988 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2988

def r2989 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2989 : ¬ Reader r2989 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2989

def r2990 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2990 : ¬ Reader r2990 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2990

def r2991 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2991 : ¬ Reader r2991 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2991

def r2992 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2992 : ¬ Reader r2992 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2992

def r2993 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2993 : ¬ Reader r2993 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2993

def r2994 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2994 : ¬ Reader r2994 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2994

def r2995 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2995 : ¬ Reader r2995 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2995

def r2996 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2996 : ¬ Reader r2996 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2996

def r2997 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2997 : ¬ Reader r2997 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2997

def r2998 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2998 : ¬ Reader r2998 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2998

def r2999 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2999 : ¬ Reader r2999 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2999

def r3000 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3000 : ¬ Reader r3000 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3000

def r3001 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3001 : ¬ Reader r3001 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3001

def r3002 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3002 : ¬ Reader r3002 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3002

def r3003 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3003 : ¬ Reader r3003 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3003

def r3004 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3004 : ¬ Reader r3004 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3004

def r3005 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3005 : ¬ Reader r3005 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3005

def r3006 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3006 : ¬ Reader r3006 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3006

def r3007 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3007 : ¬ Reader r3007 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3007

def r3008 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3008 : ¬ Reader r3008 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3008

def r3009 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3009 : ¬ Reader r3009 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3009

def r3010 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3010 : ¬ Reader r3010 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3010

def r3011 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3011 : ¬ Reader r3011 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3011

def r3012 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3012 : ¬ Reader r3012 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3012

def r3013 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3013 : ¬ Reader r3013 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3013

def r3014 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3014 : ¬ Reader r3014 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3014

def r3015 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3015 : ¬ Reader r3015 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3015

def r3016 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3016 : ¬ Reader r3016 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3016

def r3017 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3017 : ¬ Reader r3017 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3017

def r3018 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3018 : ¬ Reader r3018 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3018

def r3019 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3019 : ¬ Reader r3019 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3019

def r3020 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3020 : ¬ Reader r3020 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3020

def r3021 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3021 : ¬ Reader r3021 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3021

def r3022 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3022 : ¬ Reader r3022 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3022

def r3023 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3023 : ¬ Reader r3023 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3023

def r3024 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3024 : ¬ Reader r3024 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3024

def r3025 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3025 : ¬ Reader r3025 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3025

def r3026 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3026 : ¬ Reader r3026 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3026

def r3027 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3027 : ¬ Reader r3027 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3027

def r3028 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3028 : ¬ Reader r3028 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3028

def r3029 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3029 : ¬ Reader r3029 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3029

def r3030 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3030 : ¬ Reader r3030 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3030

def r3031 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3031 : ¬ Reader r3031 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3031

def r3032 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3032 : ¬ Reader r3032 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3032

def r3033 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3033 : ¬ Reader r3033 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3033

def r3034 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3034 : ¬ Reader r3034 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3034

def r3035 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3035 : ¬ Reader r3035 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3035

def r3036 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3036 : ¬ Reader r3036 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3036

def r3037 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3037 : ¬ Reader r3037 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3037

def r3038 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3038 : ¬ Reader r3038 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3038

def r3039 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3039 : ¬ Reader r3039 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3039

def r3040 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3040 : ¬ Reader r3040 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3040

def r3041 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3041 : ¬ Reader r3041 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3041

def r3042 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3042 : ¬ Reader r3042 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3042

def r3043 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3043 : ¬ Reader r3043 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3043

def r3044 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3044 : ¬ Reader r3044 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3044

def r3045 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3045 : ¬ Reader r3045 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3045

def r3046 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3046 : ¬ Reader r3046 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3046

def r3047 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3047 : ¬ Reader r3047 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3047

def r3048 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3048 : ¬ Reader r3048 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3048

def r3049 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3049 : ¬ Reader r3049 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3049

def r3050 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3050 : ¬ Reader r3050 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3050

def r3051 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3051 : ¬ Reader r3051 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3051

def r3052 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3052 : ¬ Reader r3052 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3052

def r3053 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3053 : ¬ Reader r3053 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3053

def r3054 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3054 : ¬ Reader r3054 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3054

def r3055 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3055 : ¬ Reader r3055 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3055

def r3056 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3056 : ¬ Reader r3056 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3056

def r3057 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3057 : ¬ Reader r3057 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3057

def r3058 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3058 : ¬ Reader r3058 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3058

def r3059 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3059 : ¬ Reader r3059 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3059

def r3060 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3060 : ¬ Reader r3060 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3060

def r3061 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3061 : ¬ Reader r3061 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3061

def r3062 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3062 : ¬ Reader r3062 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3062

def r3063 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3063 : ¬ Reader r3063 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3063

def r3064 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3064 : ¬ Reader r3064 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3064

def r3065 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3065 : ¬ Reader r3065 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3065

def r3066 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3066 : ¬ Reader r3066 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3066

def r3067 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3067 : ¬ Reader r3067 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3067

def r3068 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3068 : ¬ Reader r3068 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3068

def r3069 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3069 : ¬ Reader r3069 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3069

def r3070 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3070 : ¬ Reader r3070 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3070

def r3071 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3071 : ¬ Reader r3071 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3071

def r3072 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3072 : ¬ Reader r3072 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3072

def r3073 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3073 : ¬ Reader r3073 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3073

def r3074 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3074 : ¬ Reader r3074 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3074

def r3075 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3075 : ¬ Reader r3075 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3075

def r3076 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3076 : ¬ Reader r3076 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3076

def r3077 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3077 : ¬ Reader r3077 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3077

def r3078 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3078 : ¬ Reader r3078 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3078

def r3079 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3079 : ¬ Reader r3079 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3079

def r3080 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3080 : ¬ Reader r3080 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3080

def r3081 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3081 : ¬ Reader r3081 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3081

def r3082 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3082 : ¬ Reader r3082 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3082

def r3083 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3083 : ¬ Reader r3083 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3083

def r3084 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3084 : ¬ Reader r3084 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3084

def r3085 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3085 : ¬ Reader r3085 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3085

def r3086 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3086 : ¬ Reader r3086 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3086

def r3087 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3087 : ¬ Reader r3087 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3087

def r3088 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3088 : ¬ Reader r3088 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3088

def r3089 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3089 : ¬ Reader r3089 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3089

def r3090 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3090 : ¬ Reader r3090 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3090

def r3091 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3091 : ¬ Reader r3091 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3091

def r3092 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3092 : ¬ Reader r3092 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3092

def r3093 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3093 : ¬ Reader r3093 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3093

def r3094 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3094 : ¬ Reader r3094 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3094

def r3095 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3095 : ¬ Reader r3095 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3095

def r3096 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3096 : ¬ Reader r3096 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3096

def r3097 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3097 : ¬ Reader r3097 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3097

def r3098 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3098 : ¬ Reader r3098 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3098

def r3099 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3099 : ¬ Reader r3099 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3099

def r3100 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3100 : ¬ Reader r3100 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3100

def r3101 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3101 : ¬ Reader r3101 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3101

def r3102 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3102 : ¬ Reader r3102 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3102

def r3103 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3103 : ¬ Reader r3103 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3103

def r3104 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3104 : ¬ Reader r3104 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3104

def r3105 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3105 : ¬ Reader r3105 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3105

def r3106 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3106 : ¬ Reader r3106 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3106

def r3107 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3107 : ¬ Reader r3107 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3107

def r3108 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3108 : ¬ Reader r3108 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3108

def r3109 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3109 : ¬ Reader r3109 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3109

def r3110 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3110 : ¬ Reader r3110 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3110

def r3111 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3111 : ¬ Reader r3111 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3111

def r3112 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3112 : ¬ Reader r3112 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3112

def r3113 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3113 : ¬ Reader r3113 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3113

def r3114 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3114 : ¬ Reader r3114 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3114

def r3115 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 1)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3115 : ¬ Reader r3115 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3115

def r3116 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 1) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3116 : ¬ Reader r3116 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3116

def r3117 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3117 : ¬ Reader r3117 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3117

def r3118 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3118 : ¬ Reader r3118 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3118

def r3119 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3119 : ¬ Reader r3119 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3119

def r3120 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3120 : ¬ Reader r3120 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3120

def r3121 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3121 : ¬ Reader r3121 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3121

def r3122 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 1) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3122 : ¬ Reader r3122 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3122

def r3123 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 0) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3123 : ¬ Reader r3123 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3123

def r3124 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3124 : ¬ Reader r3124 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3124

def r3125 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3125 : ¬ Reader r3125 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3125

def r3126 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3126 : ¬ Reader r3126 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.var 0)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3126

def r3127 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3127 : ¬ Reader r3127 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3127

def r3128 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3128 : ¬ Reader r3128 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3128

def r3129 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3129 : ¬ Reader r3129 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3129

def r3130 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 1)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3130 : ¬ Reader r3130 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3130

def r3131 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 1) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3131 : ¬ Reader r3131 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3131

def r3132 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3132 : ¬ Reader r3132 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3132

def r3133 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3133 : ¬ Reader r3133 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3133

def r3134 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3134 : ¬ Reader r3134 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3134

def r3135 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3135 : ¬ Reader r3135 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3135

def r3136 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3136 : ¬ Reader r3136 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3136

def r3137 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3137 : ¬ Reader r3137 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3137

def r3138 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3138 : ¬ Reader r3138 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3138

def r3139 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3139 : ¬ Reader r3139 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3139

def r3140 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3140 : ¬ Reader r3140 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3140

def r3141 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3141 : ¬ Reader r3141 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3141

def r3142 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3142 : ¬ Reader r3142 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3142

def r3143 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3143 : ¬ Reader r3143 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3143

def r3144 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3144 : ¬ Reader r3144 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3144

def r3145 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3145 : ¬ Reader r3145 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3145

def r3146 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3146 : ¬ Reader r3146 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3146

def r3147 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3147 : ¬ Reader r3147 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3147

def r3148 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3148 : ¬ Reader r3148 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3148

def r3149 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3149 : ¬ Reader r3149 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3149

def r3150 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3150 : ¬ Reader r3150 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3150

def r3151 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3151 : ¬ Reader r3151 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3151

def r3152 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3152 : ¬ Reader r3152 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3152

def r3153 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3153 : ¬ Reader r3153 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3153

def r3154 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3154 : ¬ Reader r3154 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3154

def r3155 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3155 : ¬ Reader r3155 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3155

def r3156 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3156 : ¬ Reader r3156 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3156

def r3157 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3157 : ¬ Reader r3157 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3157

def r3158 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3158 : ¬ Reader r3158 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3158

def r3159 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3159 : ¬ Reader r3159 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3159

def r3160 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3160 : ¬ Reader r3160 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3160

def r3161 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3161 : ¬ Reader r3161 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3161

def r3162 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3162 : ¬ Reader r3162 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3162

def r3163 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3163 : ¬ Reader r3163 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3163

def r3164 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3164 : ¬ Reader r3164 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3164

def r3165 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3165 : ¬ Reader r3165 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3165

def r3166 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3166 : ¬ Reader r3166 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3166

def r3167 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3167 : ¬ Reader r3167 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3167

def r3168 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3168 : ¬ Reader r3168 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3168

def r3169 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3169 : ¬ Reader r3169 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3169

def r3170 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3170 : ¬ Reader r3170 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3170

def r3171 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3171 : ¬ Reader r3171 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3171

def r3172 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3172 : ¬ Reader r3172 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3172

def r3173 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3173 : ¬ Reader r3173 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3173

def r3174 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3174 : ¬ Reader r3174 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3174

def r3175 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3175 : ¬ Reader r3175 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3175

def r3176 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3176 : ¬ Reader r3176 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3176

def r3177 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3177 : ¬ Reader r3177 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3177

def r3178 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3178 : ¬ Reader r3178 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3178

def r3179 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3179 : ¬ Reader r3179 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3179

def r3180 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3180 : ¬ Reader r3180 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3180

def r3181 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3181 : ¬ Reader r3181 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3181

def r3182 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3182 : ¬ Reader r3182 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3182

def r3183 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3183 : ¬ Reader r3183 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3183

def r3184 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3184 : ¬ Reader r3184 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3184

def r3185 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3185 : ¬ Reader r3185 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3185

def r3186 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3186 : ¬ Reader r3186 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3186

def r3187 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3187 : ¬ Reader r3187 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3187

def r3188 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3188 : ¬ Reader r3188 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3188

def r3189 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3189 : ¬ Reader r3189 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3189

def r3190 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3190 : ¬ Reader r3190 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3190

def r3191 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3191 : ¬ Reader r3191 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3191

def r3192 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3192 : ¬ Reader r3192 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3192

def r3193 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3193 : ¬ Reader r3193 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3193

def r3194 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3194 : ¬ Reader r3194 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3194

def r3195 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3195 : ¬ Reader r3195 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3195

def r3196 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3196 : ¬ Reader r3196 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3196

def r3197 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3197 : ¬ Reader r3197 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3197

def r3198 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3198 : ¬ Reader r3198 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3198

def r3199 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3199 : ¬ Reader r3199 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3199

def r3200 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3200 : ¬ Reader r3200 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3200

def r3201 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3201 : ¬ Reader r3201 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3201

def r3202 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3202 : ¬ Reader r3202 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3202

def r3203 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3203 : ¬ Reader r3203 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3203

def r3204 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3204 : ¬ Reader r3204 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3204

def r3205 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3205 : ¬ Reader r3205 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3205

def r3206 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3206 : ¬ Reader r3206 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3206

def r3207 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3207 : ¬ Reader r3207 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3207

def r3208 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3208 : ¬ Reader r3208 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3208

def r3209 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3209 : ¬ Reader r3209 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3209

def r3210 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3210 : ¬ Reader r3210 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3210

def r3211 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3211 : ¬ Reader r3211 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3211

def r3212 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3212 : ¬ Reader r3212 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3212

def r3213 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3213 : ¬ Reader r3213 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3213

def r3214 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3214 : ¬ Reader r3214 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3214

def r3215 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3215 : ¬ Reader r3215 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3215

def r3216 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3216 : ¬ Reader r3216 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3216

def r3217 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3217 : ¬ Reader r3217 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3217

def r3218 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3218 : ¬ Reader r3218 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3218

def r3219 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3219 : ¬ Reader r3219 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3219

def r3220 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3220 : ¬ Reader r3220 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3220

def r3221 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3221 : ¬ Reader r3221 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3221

def r3222 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3222 : ¬ Reader r3222 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3222

def r3223 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3223 : ¬ Reader r3223 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3223

def r3224 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3224 : ¬ Reader r3224 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3224

def r3225 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3225 : ¬ Reader r3225 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3225

def r3226 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3226 : ¬ Reader r3226 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3226

def r3227 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3227 : ¬ Reader r3227 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3227

def r3228 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3228 : ¬ Reader r3228 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3228

def r3229 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3229 : ¬ Reader r3229 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3229

def r3230 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3230 : ¬ Reader r3230 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3230

def r3231 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3231 : ¬ Reader r3231 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3231

def r3232 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3232 : ¬ Reader r3232 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3232

def r3233 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3233 : ¬ Reader r3233 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3233

def r3234 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 0)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3234 : ¬ Reader r3234 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3234

def r3235 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3235 : ¬ Reader r3235 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3235

def r3236 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3236 : ¬ Reader r3236 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3236
end Blc.HandlerLet.Proof4_Cs_x_1_1_06
