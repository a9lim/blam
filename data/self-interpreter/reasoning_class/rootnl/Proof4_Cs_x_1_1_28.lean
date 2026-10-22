import Certificates
namespace Blc.HandlerLet.Proof4_Cs_x_1_1_28
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r12901 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12901 : ¬ Reader r12901 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12901

def r12902 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12902 : ¬ Reader r12902 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12902

def r12903 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12903 : ¬ Reader r12903 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12903

def r12904 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12904 : ¬ Reader r12904 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12904

def r12905 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12905 : ¬ Reader r12905 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12905

def r12906 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 2))))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12906 : ¬ Reader r12906 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12906

def r12907 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12907 : ¬ Reader r12907 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12907

def r12908 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12908 : ¬ Reader r12908 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12908

def r12909 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12909 : ¬ Reader r12909 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12909

def r12910 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 2)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12910 : ¬ Reader r12910 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12910

def r12911 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 1)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12911 : ¬ Reader r12911 := by
  exact replay_loop true [] 1 7 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12911

def r12912 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12912 : ¬ Reader r12912 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12912

def r12913 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12913 : ¬ Reader r12913 := by
  exact replay_loop true [] 1 7 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.var 0)) (.lam (.app (.var 0) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12913

def r12914 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 2)))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12914 : ¬ Reader r12914 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.app (.var 0) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12914

def r12915 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1)) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12915 : ¬ Reader r12915 := by
  exact replay_loop true [] 1 7 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12915

def r12916 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.app (.var 1) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12916 : ¬ Reader r12916 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12916

def r12917 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 0)))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12917 : ¬ Reader r12917 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12917

def r12918 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 2))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12918 : ¬ Reader r12918 := by
  exact replay_loop true [] 1 7 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) (.var 0))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12918

def r12919 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12919 : ¬ Reader r12919 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12919

def r12920 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12920 : ¬ Reader r12920 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12920

def r12921 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12921 : ¬ Reader r12921 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12921

def r12922 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12922 : ¬ Reader r12922 := by
  exact replay_loop true [] 1 7 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) (.var 0))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12922

def r12923 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12923 : ¬ Reader r12923 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12923

def r12924 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.lam (.var 1))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12924 : ¬ Reader r12924 := by
  exact replay_loop true [] 1 7 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12924

def r12925 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12925 : ¬ Reader r12925 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12925

def r12926 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12926 : ¬ Reader r12926 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12926

def r12927 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 2)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12927 : ¬ Reader r12927 := by
  exact replay_loop true [] 1 7 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12927

def r12928 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 2)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12928 : ¬ Reader r12928 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12928

def r12929 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12929 : ¬ Reader r12929 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12929

def r12930 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12930 : ¬ Reader r12930 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12930

def r12931 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.lam (.var 1))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12931 : ¬ Reader r12931 := by
  exact replay_loop true [] 1 7 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12931

def r12932 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 2)))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12932 : ¬ Reader r12932 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12932

def r12933 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12933 : ¬ Reader r12933 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12933

def r12934 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12934 : ¬ Reader r12934 := by
  exact replay_loop true [] 2 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12934

def r12935 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12935 : ¬ Reader r12935 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12935

def r12936 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12936 : ¬ Reader r12936 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12936

def r12937 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12937 : ¬ Reader r12937 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12937

def r12938 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12938 : ¬ Reader r12938 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12938

def r12939 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12939 : ¬ Reader r12939 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12939

def r12940 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12940 : ¬ Reader r12940 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12940

def r12941 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12941 : ¬ Reader r12941 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12941

def r12942 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.var 1) (.lam (.lam (.var 1))))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12942 : ¬ Reader r12942 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12942

def r12943 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12943 : ¬ Reader r12943 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12943

def r12944 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12944 : ¬ Reader r12944 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12944

def r12945 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12945 : ¬ Reader r12945 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12945

def r12946 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12946 : ¬ Reader r12946 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12946

def r12947 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.app (.var 1) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12947 : ¬ Reader r12947 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12947

def r12948 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12948 : ¬ Reader r12948 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12948

def r12949 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12949 : ¬ Reader r12949 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12949

def r12950 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.var 0))))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12950 : ¬ Reader r12950 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12950

def r12951 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 1))))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12951 : ¬ Reader r12951 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.var 1)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12951

def r12952 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 1)))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12952 : ¬ Reader r12952 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12952

def r12953 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 1)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12953 : ¬ Reader r12953 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12953

def r12954 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 2)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12954 : ¬ Reader r12954 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12954

def r12955 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12955 : ¬ Reader r12955 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12955

def r12956 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 2))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12956 : ¬ Reader r12956 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 1)), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12956

def r12957 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 1)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12957 : ¬ Reader r12957 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12957

def r12958 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12958 : ¬ Reader r12958 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12958

def r12959 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.var 0))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12959 : ¬ Reader r12959 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12959

def r12960 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12960 : ¬ Reader r12960 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12960

def r12961 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12961 : ¬ Reader r12961 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12961

def r12962 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.lam (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12962 : ¬ Reader r12962 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12962

def r12963 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 2) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12963 : ¬ Reader r12963 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.app (.var 1) (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 1) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12963

def r12964 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 1) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12964 : ¬ Reader r12964 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.lam (.lam (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12964

def r12965 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.app (.var 2) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12965 : ¬ Reader r12965 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.lam (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12965

def r12966 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 1) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12966 : ¬ Reader r12966 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.lam (.var 1)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12966

def r12967 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0))))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12967 : ¬ Reader r12967 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.lam (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12967

def r12968 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12968 : ¬ Reader r12968 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12968

def r12969 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.app (.var 2) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12969 : ¬ Reader r12969 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12969

def r12970 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.var 1) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12970 : ¬ Reader r12970 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.var 1)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12970

def r12972 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12972 : ¬ Reader r12972 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.lam (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12972

def r12973 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12973 : ¬ Reader r12973 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 1)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12973

def r12974 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 1)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12974 : ¬ Reader r12974 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.lam (.lam (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12974

def r12975 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 2))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12975 : ¬ Reader r12975 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 1)), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 1))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12975

def r12976 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12976 : ¬ Reader r12976 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12976

def r12977 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12977 : ¬ Reader r12977 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12977

def r12978 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12978 : ¬ Reader r12978 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12978

def r12979 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 2))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12979 : ¬ Reader r12979 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12979

def r12980 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 1))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12980 : ¬ Reader r12980 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12980

def r12981 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.var 0))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12981 : ¬ Reader r12981 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12981

def r12982 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.var 1))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12982 : ¬ Reader r12982 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12982

def r12983 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12983 : ¬ Reader r12983 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12983

def r12984 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 1)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12984 : ¬ Reader r12984 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12984

def r12985 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.var 2))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12985 : ¬ Reader r12985 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12985

def r12986 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 1))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12986 : ¬ Reader r12986 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12986

def r12987 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 2))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12987 : ¬ Reader r12987 := by
  exact replay_loop true [] 1 7 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12987

def r12988 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 3) (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12988 : ¬ Reader r12988 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 2) (.lam (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.lam (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12988

def r12989 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.lam (.var 1))))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12989 : ¬ Reader r12989 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.lam (.var 1))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12989

def r12990 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.lam (.var 2))))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12990 : ¬ Reader r12990 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.lam (.var 2))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.lam (.var 2)))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.lam (.var 2))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12990

def r12991 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12991 : ¬ Reader r12991 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 2))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.var 2)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12991

def r12992 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12992 : ¬ Reader r12992 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12992

def r12993 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 2))))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12993 : ¬ Reader r12993 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 2)))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12993

def r12994 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12994 : ¬ Reader r12994 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.lam (.var 2)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.var 2))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12994

def r12995 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12995 : ¬ Reader r12995 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.var 1)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12995

def r12996 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12996 : ¬ Reader r12996 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12996

def r12997 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12997 : ¬ Reader r12997 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12997

def r12998 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12998 : ¬ Reader r12998 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.lam (.var 2)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12998

def r12999 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject12999 : ¬ Reader r12999 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject12999

def r13000 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13000 : ¬ Reader r13000 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13000

def r13001 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 2))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13001 : ¬ Reader r13001 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13001

def r13002 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.var 2))))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13002 : ¬ Reader r13002 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2)))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13002

def r13003 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.lam (.var 2))))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13003 : ¬ Reader r13003 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13003

def r13004 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.var 3) (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13004 : ¬ Reader r13004 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 2) (.lam (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13004

def r13005 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.lam (.lam (.var 1))))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13005 : ¬ Reader r13005 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13005

def r13006 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 2))))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13006 : ¬ Reader r13006 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.var 2)))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.var 2))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13006

def r13007 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13007 : ¬ Reader r13007 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.var 2)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13007

def r13008 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13008 : ¬ Reader r13008 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13008

def r13009 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13009 : ¬ Reader r13009 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13009

def r13010 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13010 : ¬ Reader r13010 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.lam (.var 2))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.lam (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13010

def r13011 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 2))) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13011 : ¬ Reader r13011 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.lam (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13011

def r13012 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13012 : ¬ Reader r13012 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13012

def r13013 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13013 : ¬ Reader r13013 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13013

def r13014 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13014 : ¬ Reader r13014 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13014

def r13015 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.app (.var 0) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13015 : ¬ Reader r13015 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13015

def r13016 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 2))))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13016 : ¬ Reader r13016 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 2)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13016

def r13017 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 2))))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13017 : ¬ Reader r13017 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 2)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13017

def r13018 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.lam (.lam (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13018 : ¬ Reader r13018 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13018

def r13019 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13019 : ¬ Reader r13019 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13019

def r13020 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13020 : ¬ Reader r13020 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13020

def r13021 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13021 : ¬ Reader r13021 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 2)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13021

def r13022 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13022 : ¬ Reader r13022 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.lam (.var 2)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13022

def r13023 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 2)))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13023 : ¬ Reader r13023 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.lam (.lam (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13023

def r13024 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 3))))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13024 : ¬ Reader r13024 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13024

def r13025 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 2))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13025 : ¬ Reader r13025 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13025

def r13026 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 3) (.lam (.var 0)))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13026 : ¬ Reader r13026 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 2) (.lam (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13026

def r13027 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.lam (.var 1)))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13027 : ¬ Reader r13027 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.lam (.var 1))))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13027

def r13028 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.lam (.var 2)))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13028 : ¬ Reader r13028 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.lam (.var 2))))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13028

def r13029 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 3)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13029 : ¬ Reader r13029 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.var 2))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.var 2)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13029

def r13030 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13030 : ¬ Reader r13030 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13030

def r13031 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 2))))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13031 : ¬ Reader r13031 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 2)))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13031

def r13032 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 2))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13032 : ¬ Reader r13032 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13032

def r13033 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13033 : ¬ Reader r13033 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13033

def r13034 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13034 : ¬ Reader r13034 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13034

def r13035 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13035 : ¬ Reader r13035 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 2) (.lam (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13035

def r13036 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13036 : ¬ Reader r13036 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.lam (.lam (.var 1))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13036

def r13037 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.lam (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13037 : ¬ Reader r13037 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.lam (.lam (.var 2))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.lam (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13037

def r13038 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13038 : ¬ Reader r13038 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.lam (.lam (.var 2))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13038

def r13039 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13039 : ¬ Reader r13039 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.lam (.lam (.var 2))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13039

def r13040 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13040 : ¬ Reader r13040 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13040

def r13041 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 2)))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13041 : ¬ Reader r13041 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 2)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13041

def r13042 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.app (.var 3) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13042 : ¬ Reader r13042 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 2) (.lam (.var 0))))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13042

def r13043 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 2) (.lam (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13043 : ¬ Reader r13043 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.lam (.lam (.var 1))))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13043

def r13044 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.lam (.lam (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13044 : ¬ Reader r13044 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.lam (.lam (.var 2))))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.lam (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13044

def r13045 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13045 : ¬ Reader r13045 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13045

def r13046 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13046 : ¬ Reader r13046 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.lam (.var 2))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13046

def r13047 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13047 : ¬ Reader r13047 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.lam (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13047

def r13048 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13048 : ¬ Reader r13048 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 2)))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 2))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13048

def r13049 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13049 : ¬ Reader r13049 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.lam (.var 2)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13049

def r13050 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13050 : ¬ Reader r13050 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.lam (.lam (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13050

def r13051 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 3)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13051 : ¬ Reader r13051 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 2))), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 2)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13051

def r13052 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13052 : ¬ Reader r13052 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.lam (.lam (.var 2))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13052

def r13053 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13053 : ¬ Reader r13053 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.lam (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13053

def r13054 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.var 2)))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13054 : ¬ Reader r13054 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13054

def r13055 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13055 : ¬ Reader r13055 := by
  exact replay_loop true [] 1 7 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13055

def r13056 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.lam (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13056 : ¬ Reader r13056 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13056

def r13057 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13057 : ¬ Reader r13057 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13057

def r13058 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13058 : ¬ Reader r13058 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 2))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13058

def r13059 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13059 : ¬ Reader r13059 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13059

def r13060 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 2))))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13060 : ¬ Reader r13060 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 2)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13060

def r13061 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13061 : ¬ Reader r13061 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.lam (.lam (.var 2))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13061

def r13062 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13062 : ¬ Reader r13062 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.lam (.var 1)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13062

def r13063 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.lam (.var 2))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13063 : ¬ Reader r13063 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13063

def r13064 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13064 : ¬ Reader r13064 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.lam (.var 2)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13064

def r13065 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 2))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13065 : ¬ Reader r13065 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13065

def r13066 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 3)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13066 : ¬ Reader r13066 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 2))), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13066

def r13067 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13067 : ¬ Reader r13067 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13067

def r13068 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13068 : ¬ Reader r13068 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13068

def r13069 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13069 : ¬ Reader r13069 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13069

def r13070 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13070 : ¬ Reader r13070 := by
  exact replay_loop true [] 4 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13070

def r13071 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13071 : ¬ Reader r13071 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13071

def r13072 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13072 : ¬ Reader r13072 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13072

def r13073 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13073 : ¬ Reader r13073 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13073

def r13074 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13074 : ¬ Reader r13074 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13074

def r13075 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13075 : ¬ Reader r13075 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13075

def r13076 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13076 : ¬ Reader r13076 := by
  exact replay_loop true [] 3 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13076

def r13077 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13077 : ¬ Reader r13077 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13077

def r13078 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13078 : ¬ Reader r13078 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13078

def r13079 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13079 : ¬ Reader r13079 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13079

def r13080 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 1) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13080 : ¬ Reader r13080 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13080

def r13081 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 1) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13081 : ¬ Reader r13081 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13081

def r13082 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13082 : ¬ Reader r13082 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13082

def r13083 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13083 : ¬ Reader r13083 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13083

def r13084 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13084 : ¬ Reader r13084 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13084

def r13085 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13085 : ¬ Reader r13085 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13085

def r13086 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13086 : ¬ Reader r13086 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13086

def r13087 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13087 : ¬ Reader r13087 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13087

def r13088 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13088 : ¬ Reader r13088 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13088

def r13089 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13089 : ¬ Reader r13089 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13089

def r13090 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13090 : ¬ Reader r13090 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13090

def r13091 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 0)))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13091 : ¬ Reader r13091 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13091

def r13092 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0)))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13092 : ¬ Reader r13092 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13092

def r13093 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 0)))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13093 : ¬ Reader r13093 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13093

def r13094 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0)))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13094 : ¬ Reader r13094 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13094

def r13095 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.var 2) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13095 : ¬ Reader r13095 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13095

def r13096 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13096 : ¬ Reader r13096 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13096

def r13097 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13097 : ¬ Reader r13097 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13097

def r13098 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13098 : ¬ Reader r13098 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13098

def r13099 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 1))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13099 : ¬ Reader r13099 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13099

def r13100 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13100 : ¬ Reader r13100 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13100

def r13101 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13101 : ¬ Reader r13101 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13101

def r13102 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13102 : ¬ Reader r13102 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13102

def r13103 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 1) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13103 : ¬ Reader r13103 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13103

def r13104 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13104 : ¬ Reader r13104 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13104

def r13105 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 2)))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13105 : ¬ Reader r13105 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13105

def r13106 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 2))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13106 : ¬ Reader r13106 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13106

def r13107 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1)) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13107 : ¬ Reader r13107 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13107

def r13108 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 2)))) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13108 : ¬ Reader r13108 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13108

def r13109 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13109 : ¬ Reader r13109 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13109

def r13110 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13110 : ¬ Reader r13110 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13110

def r13111 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13111 : ¬ Reader r13111 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13111

def r13112 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13112 : ¬ Reader r13112 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13112

def r13113 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13113 : ¬ Reader r13113 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13113

def r13114 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13114 : ¬ Reader r13114 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13114

def r13115 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13115 : ¬ Reader r13115 := by
  exact replay_absent true [] 7 1 (by decide) (by decide)
#print axioms reject13115

def r13116 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13116 : ¬ Reader r13116 := by
  exact replay_absent true [] 8 1 (by decide) (by decide)
#print axioms reject13116

def r13117 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.lam (.lam (.lam (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13117 : ¬ Reader r13117 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13117

def r13118 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.lam (.lam (.var 2))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13118 : ¬ Reader r13118 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13118

def r13119 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 3) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13119 : ¬ Reader r13119 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13119

def r13120 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 2) (.lam (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13120 : ¬ Reader r13120 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13120

def r13121 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.lam (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13121 : ¬ Reader r13121 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13121

def r13122 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13122 : ¬ Reader r13122 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13122

def r13123 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13123 : ¬ Reader r13123 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13123

def r13124 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.lam (.var 2))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13124 : ¬ Reader r13124 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13124

def r13125 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13125 : ¬ Reader r13125 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13125

def r13126 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 2))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13126 : ¬ Reader r13126 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13126

def r13127 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13127 : ¬ Reader r13127 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13127

def r13128 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13128 : ¬ Reader r13128 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13128

def r13129 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 0) (.lam (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13129 : ¬ Reader r13129 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13129

def r13130 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.lam (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13130 : ¬ Reader r13130 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13130

def r13131 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13131 : ¬ Reader r13131 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13131

def r13132 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 2)))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13132 : ¬ Reader r13132 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 2)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13132

def r13133 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 2)))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13133 : ¬ Reader r13133 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.lam (.var 2)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.var 2))))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13133

def r13134 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 0) (.lam (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13134 : ¬ Reader r13134 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13134

def r13135 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13135 : ¬ Reader r13135 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13135

def r13136 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13136 : ¬ Reader r13136 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13136

def r13137 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13137 : ¬ Reader r13137 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13137

def r13138 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13138 : ¬ Reader r13138 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13138

def r13139 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13139 : ¬ Reader r13139 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13139

def r13140 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13140 : ¬ Reader r13140 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13140

def r13141 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13141 : ¬ Reader r13141 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13141

def r13142 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13142 : ¬ Reader r13142 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13142

def r13143 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13143 : ¬ Reader r13143 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13143

def r13144 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 2))))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13144 : ¬ Reader r13144 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13144

def r13145 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13145 : ¬ Reader r13145 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13145

def r13146 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13146 : ¬ Reader r13146 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13146

def r13147 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 2)))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13147 : ¬ Reader r13147 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13147

def r13148 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13148 : ¬ Reader r13148 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13148

def r13149 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 3)))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13149 : ¬ Reader r13149 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13149

def r13150 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3)))) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13150 : ¬ Reader r13150 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 2))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13150

def r13151 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 3))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13151 : ¬ Reader r13151 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 2))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 2)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13151

def r13152 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 3))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13152 : ¬ Reader r13152 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 2))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 2)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13152

def r13153 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13153 : ¬ Reader r13153 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13153

def r13154 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13154 : ¬ Reader r13154 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13154

def r13155 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13155 : ¬ Reader r13155 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13155

def r13156 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13156 : ¬ Reader r13156 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13156

def r13157 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13157 : ¬ Reader r13157 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13157

def r13158 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13158 : ¬ Reader r13158 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13158

def r13159 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13159 : ¬ Reader r13159 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13159

def r13160 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13160 : ¬ Reader r13160 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13160

def r13161 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13161 : ¬ Reader r13161 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13161

def r13162 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13162 : ¬ Reader r13162 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13162

def r13163 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13163 : ¬ Reader r13163 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13163

def r13164 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13164 : ¬ Reader r13164 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13164

def r13165 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13165 : ¬ Reader r13165 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13165

def r13166 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13166 : ¬ Reader r13166 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13166

def r13167 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13167 : ¬ Reader r13167 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13167

def r13168 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13168 : ¬ Reader r13168 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13168

def r13169 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13169 : ¬ Reader r13169 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13169

def r13170 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13170 : ¬ Reader r13170 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13170

def r13171 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13171 : ¬ Reader r13171 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13171

def r13172 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13172 : ¬ Reader r13172 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13172

def r13173 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13173 : ¬ Reader r13173 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13173

def r13174 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13174 : ¬ Reader r13174 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13174

def r13175 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13175 : ¬ Reader r13175 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13175

def r13176 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13176 : ¬ Reader r13176 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13176

def r13177 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13177 : ¬ Reader r13177 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13177

def r13178 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13178 : ¬ Reader r13178 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13178

def r13179 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13179 : ¬ Reader r13179 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13179

def r13180 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13180 : ¬ Reader r13180 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13180

def r13181 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13181 : ¬ Reader r13181 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13181

def r13182 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13182 : ¬ Reader r13182 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13182

def r13183 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13183 : ¬ Reader r13183 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13183

def r13184 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13184 : ¬ Reader r13184 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) [] [(.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13184

def r13185 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13185 : ¬ Reader r13185 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13185

def r13186 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13186 : ¬ Reader r13186 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13186

def r13187 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13187 : ¬ Reader r13187 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13187

def r13188 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.app (.var 1) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13188 : ¬ Reader r13188 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13188

def r13189 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 1) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13189 : ¬ Reader r13189 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13189

def r13190 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13190 : ¬ Reader r13190 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13190

def r13191 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.var 0)))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13191 : ¬ Reader r13191 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.var 0))))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13191

def r13192 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 1)))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13192 : ¬ Reader r13192 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 1))))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13192

def r13193 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 2)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13193 : ¬ Reader r13193 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.var 1))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13193

def r13194 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13194 : ¬ Reader r13194 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13194

def r13195 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13195 : ¬ Reader r13195 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 1)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13195

def r13196 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.var 0)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13196 : ¬ Reader r13196 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13196

def r13197 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 1))))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13197 : ¬ Reader r13197 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13197

def r13198 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 1)))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13198 : ¬ Reader r13198 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13198

def r13199 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 1))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13199 : ¬ Reader r13199 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13199

def r13200 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 1))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13200 : ¬ Reader r13200 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13200

def r13201 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 1))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13201 : ¬ Reader r13201 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13201

def r13202 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 1))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13202 : ¬ Reader r13202 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13202

def r13203 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 2))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13203 : ¬ Reader r13203 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13203

def r13204 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13204 : ¬ Reader r13204 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13204

def r13205 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 2)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13205 : ¬ Reader r13205 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13205

def r13206 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.var 2)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13206 : ¬ Reader r13206 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13206

def r13207 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 2)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13207 : ¬ Reader r13207 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13207

def r13208 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13208 : ¬ Reader r13208 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13208

def r13209 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13209 : ¬ Reader r13209 := by
  exact replay_loop true [] 4 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13209

def r13210 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13210 : ¬ Reader r13210 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13210

def r13211 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13211 : ¬ Reader r13211 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13211

def r13212 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13212 : ¬ Reader r13212 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13212

def r13213 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13213 : ¬ Reader r13213 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13213

def r13214 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 1) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13214 : ¬ Reader r13214 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13214

def r13215 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))) (.app (.var 1) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13215 : ¬ Reader r13215 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13215

def r13216 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13216 : ¬ Reader r13216 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13216

def r13217 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13217 : ¬ Reader r13217 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13217

def r13218 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13218 : ¬ Reader r13218 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13218

def r13219 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13219 : ¬ Reader r13219 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13219

def r13220 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.app (.var 2) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13220 : ¬ Reader r13220 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13220

def r13221 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13221 : ¬ Reader r13221 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13221

def r13222 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13222 : ¬ Reader r13222 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13222

def r13223 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13223 : ¬ Reader r13223 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13223

def r13224 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1)) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13224 : ¬ Reader r13224 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13224

def r13225 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13225 : ¬ Reader r13225 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 0), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13225

def r13226 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13226 : ¬ Reader r13226 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13226

def r13227 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13227 : ¬ Reader r13227 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13227

def r13228 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 1) (.lam (.var 0)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13228 : ¬ Reader r13228 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13228

def r13229 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13229 : ¬ Reader r13229 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13229

def r13230 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13230 : ¬ Reader r13230 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13230

def r13231 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 2))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13231 : ¬ Reader r13231 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13231

def r13232 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 1) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13232 : ¬ Reader r13232 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13232

def r13233 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 2)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13233 : ¬ Reader r13233 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13233

def r13234 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13234 : ¬ Reader r13234 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject13234

def r13235 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13235 : ¬ Reader r13235 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject13235

def r13236 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 1)) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13236 : ¬ Reader r13236 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject13236

def r13237 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13237 : ¬ Reader r13237 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13237

def r13238 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13238 : ¬ Reader r13238 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject13238

def r13239 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 1) (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13239 : ¬ Reader r13239 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject13239

def r13240 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13240 : ¬ Reader r13240 := by
  exact replay_absent true [] 8 1 (by decide) (by decide)
#print axioms reject13240

def r13241 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13241 : ¬ Reader r13241 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13241

def r13242 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13242 : ¬ Reader r13242 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13242

def r13243 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13243 : ¬ Reader r13243 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13243

def r13244 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13244 : ¬ Reader r13244 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13244

def r13245 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))) (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13245 : ¬ Reader r13245 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13245

def r13246 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.app (.var 1) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13246 : ¬ Reader r13246 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13246

def r13247 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13247 : ¬ Reader r13247 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13247

def r13248 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13248 : ¬ Reader r13248 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13248

def r13249 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 1) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13249 : ¬ Reader r13249 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13249

def r13250 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13250 : ¬ Reader r13250 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13250

def r13251 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 1)) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13251 : ¬ Reader r13251 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13251

def r13252 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13252 : ¬ Reader r13252 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13252

def r13253 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 1)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13253 : ¬ Reader r13253 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13253

def r13254 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13254 : ¬ Reader r13254 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13254

def r13255 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.var 0))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13255 : ¬ Reader r13255 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.lam (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13255

def r13256 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 1))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13256 : ¬ Reader r13256 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.lam (.var 1)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13256

def r13257 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.var 2))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13257 : ¬ Reader r13257 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.lam (.var 1)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13257

def r13258 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.var 2))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13258 : ¬ Reader r13258 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.lam (.var 1)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13258

def r13259 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.var 1)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13259 : ¬ Reader r13259 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13259

def r13260 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 2))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13260 : ¬ Reader r13260 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13260

def r13261 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13261 : ¬ Reader r13261 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13261

def r13262 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 1)))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13262 : ¬ Reader r13262 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13262

def r13263 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 1) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13263 : ¬ Reader r13263 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13263

def r13264 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 1))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13264 : ¬ Reader r13264 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13264

def r13265 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 1))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13265 : ¬ Reader r13265 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13265

def r13266 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13266 : ¬ Reader r13266 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13266

def r13267 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13267 : ¬ Reader r13267 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13267

def r13268 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13268 : ¬ Reader r13268 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13268

def r13269 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 2)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13269 : ¬ Reader r13269 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13269

def r13270 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13270 : ¬ Reader r13270 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13270

def r13271 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 2))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13271 : ¬ Reader r13271 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject13271

def r13272 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13272 : ¬ Reader r13272 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject13272

def r13273 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 0) (.lam (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13273 : ¬ Reader r13273 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject13273

def r13274 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.var 2)))))) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13274 : ¬ Reader r13274 := by
  exact replay_absent true [] 8 1 (by decide) (by decide)
#print axioms reject13274

def r13275 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13275 : ¬ Reader r13275 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13275

def r13276 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13276 : ¬ Reader r13276 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13276

def r13277 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13277 : ¬ Reader r13277 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13277

def r13278 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13278 : ¬ Reader r13278 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 2)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13278

def r13279 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13279 : ¬ Reader r13279 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 2)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13279

def r13280 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.lam (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13280 : ¬ Reader r13280 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13280

def r13281 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13281 : ¬ Reader r13281 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13281

def r13282 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 3)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13282 : ¬ Reader r13282 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 2))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13282

def r13283 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13283 : ¬ Reader r13283 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13283

def r13284 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))) (.lam (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13284 : ¬ Reader r13284 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13284

def r13285 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 2)))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13285 : ¬ Reader r13285 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13285

def r13286 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 3))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13286 : ¬ Reader r13286 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 2)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13286

def r13287 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13287 : ¬ Reader r13287 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13287

def r13288 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13288 : ¬ Reader r13288 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13288

def r13289 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13289 : ¬ Reader r13289 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13289

def r13290 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13290 : ¬ Reader r13290 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13290

def r13291 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13291 : ¬ Reader r13291 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13291

def r13292 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13292 : ¬ Reader r13292 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13292

def r13293 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13293 : ¬ Reader r13293 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13293

def r13294 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13294 : ¬ Reader r13294 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13294

def r13295 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13295 : ¬ Reader r13295 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13295

def r13296 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13296 : ¬ Reader r13296 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13296

def r13297 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 2) (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13297 : ¬ Reader r13297 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13297

def r13298 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13298 : ¬ Reader r13298 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13298

def r13299 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13299 : ¬ Reader r13299 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13299

def r13300 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13300 : ¬ Reader r13300 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13300

def r13301 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13301 : ¬ Reader r13301 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13301

def r13302 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13302 : ¬ Reader r13302 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13302

def r13303 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 2))))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13303 : ¬ Reader r13303 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13303

def r13304 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13304 : ¬ Reader r13304 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13304

def r13305 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13305 : ¬ Reader r13305 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13305

def r13306 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13306 : ¬ Reader r13306 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13306

def r13307 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 0))))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13307 : ¬ Reader r13307 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13307

def r13308 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13308 : ¬ Reader r13308 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13308

def r13309 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13309 : ¬ Reader r13309 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13309

def r13310 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13310 : ¬ Reader r13310 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13310

def r13311 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13311 : ¬ Reader r13311 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13311

def r13312 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13312 : ¬ Reader r13312 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13312

def r13313 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13313 : ¬ Reader r13313 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13313

def r13314 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.lam (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13314 : ¬ Reader r13314 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13314

def r13315 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 2)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13315 : ¬ Reader r13315 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13315

def r13316 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.var 1))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13316 : ¬ Reader r13316 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13316

def r13317 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 0))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13317 : ¬ Reader r13317 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13317

def r13318 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13318 : ¬ Reader r13318 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13318

def r13319 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13319 : ¬ Reader r13319 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13319

def r13320 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13320 : ¬ Reader r13320 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13320

def r13321 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13321 : ¬ Reader r13321 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13321

def r13322 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13322 : ¬ Reader r13322 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13322

def r13323 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.var 0)))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13323 : ¬ Reader r13323 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13323

def r13324 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.var 2)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13324 : ¬ Reader r13324 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13324

def r13325 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13325 : ¬ Reader r13325 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13325

def r13326 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13326 : ¬ Reader r13326 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13326

def r13327 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.var 1))))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13327 : ¬ Reader r13327 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13327

def r13328 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13328 : ¬ Reader r13328 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13328

def r13329 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13329 : ¬ Reader r13329 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13329

def r13330 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13330 : ¬ Reader r13330 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13330

def r13331 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13331 : ¬ Reader r13331 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13331

def r13332 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13332 : ¬ Reader r13332 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13332

def r13333 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13333 : ¬ Reader r13333 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13333

def r13334 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13334 : ¬ Reader r13334 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13334

def r13335 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13335 : ¬ Reader r13335 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13335

def r13336 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13336 : ¬ Reader r13336 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13336

def r13337 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13337 : ¬ Reader r13337 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13337

def r13338 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.lam (.lam (.var 1))))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13338 : ¬ Reader r13338 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13338

def r13339 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 1)))) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13339 : ¬ Reader r13339 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13339

def r13340 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13340 : ¬ Reader r13340 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13340

def r13341 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13341 : ¬ Reader r13341 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13341

def r13342 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13342 : ¬ Reader r13342 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13342

def r13343 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 1) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13343 : ¬ Reader r13343 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13343

def r13344 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13344 : ¬ Reader r13344 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13344

def r13345 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 2))) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13345 : ¬ Reader r13345 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13345

def r13346 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 0))))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13346 : ¬ Reader r13346 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13346

def r13347 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 1))))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13347 : ¬ Reader r13347 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 1))))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13347

def r13348 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13348 : ¬ Reader r13348 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13348

def r13349 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 2) (.var 1)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13349 : ¬ Reader r13349 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13349

def r13350 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.app (.var 1) (.var 2)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13350 : ¬ Reader r13350 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13350

def r13351 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.lam (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject13351 : ¬ Reader r13351 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject13351
end Blc.HandlerLet.Proof4_Cs_x_1_1_28
