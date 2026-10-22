import Certificates
namespace Blc.HandlerLet.Proof4_Cs_x_1_1_17
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r7902 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject7902 : ¬ Reader r7902 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)), (.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7902

def r7903 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject7903 : ¬ Reader r7903 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7903

def r7904 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject7904 : ¬ Reader r7904 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7904

def r7905 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject7905 : ¬ Reader r7905 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7905

def r7906 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject7906 : ¬ Reader r7906 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7906

def r7907 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject7907 : ¬ Reader r7907 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7907

def r7908 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 2))) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject7908 : ¬ Reader r7908 := by
  exact replay_loop true [] 4 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.var 0), (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) (.var 0)), (.lam (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.app (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7908

def r7909 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 1) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject7909 : ¬ Reader r7909 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0)), (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7909

def r7910 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 0) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject7910 : ¬ Reader r7910 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))), (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7910

def r7911 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 0)) (.var 1))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject7911 : ¬ Reader r7911 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.var 0), (.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) (.var 0)) (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7911

def r7912 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 2) (.var 0)))))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject7912 : ¬ Reader r7912 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 3)) (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 3)) (.var 0))) (.var 0))))))) [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 3)) (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 3)) (.var 0))) (.var 0))))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7912

def r7913 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject7913 : ¬ Reader r7913 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 3)) (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))))) [(.lam (.app (.app (.var 0) (.var 1)) (.var 0)))] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 3)) (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7913

def r7914 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7914 : ¬ Reader r7914 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7914

def r7915 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7915 : ¬ Reader r7915 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7915

def r7916 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7916 : ¬ Reader r7916 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7916

def r7917 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.lam (.var 2)))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7917 : ¬ Reader r7917 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.var 0), (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7917

def r7918 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7918 : ¬ Reader r7918 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 0), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7918

def r7919 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7919 : ¬ Reader r7919 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7919

def r7920 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7920 : ¬ Reader r7920 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7920

def r7921 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7921 : ¬ Reader r7921 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7921

def r7922 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7922 : ¬ Reader r7922 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))), (.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7922

def r7923 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7923 : ¬ Reader r7923 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7923

def r7924 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7924 : ¬ Reader r7924 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7924

def r7925 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7925 : ¬ Reader r7925 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7925

def r7926 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7926 : ¬ Reader r7926 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7926

def r7927 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 1) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7927 : ¬ Reader r7927 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7927

def r7928 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7928 : ¬ Reader r7928 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7928

def r7929 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7929 : ¬ Reader r7929 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7929

def r7930 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7930 : ¬ Reader r7930 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7930

def r7931 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7931 : ¬ Reader r7931 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7931

def r7932 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7932 : ¬ Reader r7932 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7932

def r7933 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 2))) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7933 : ¬ Reader r7933 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))))) [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7933

def r7934 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 2))) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7934 : ¬ Reader r7934 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7934

def r7935 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7935 : ¬ Reader r7935 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7935

def r7936 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 2)))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7936 : ¬ Reader r7936 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7936

def r7937 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7937 : ¬ Reader r7937 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))) (.lam (.var 1)))))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))) (.lam (.var 1))))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7937

def r7938 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7938 : ¬ Reader r7938 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.var 1))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7938

def r7939 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7939 : ¬ Reader r7939 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))) (.lam (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7939

def r7940 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7940 : ¬ Reader r7940 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))) (.lam (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7940

def r7941 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7941 : ¬ Reader r7941 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7941

def r7942 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1)))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7942 : ¬ Reader r7942 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.var 1)))))) [(.var 0), (.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7942

def r7943 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7943 : ¬ Reader r7943 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.var 0), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7943

def r7944 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 2) (.app (.var 2) (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7944 : ¬ Reader r7944 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7944

def r7945 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7945 : ¬ Reader r7945 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7945

def r7946 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7946 : ¬ Reader r7946 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7946

def r7947 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7947 : ¬ Reader r7947 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7947

def r7948 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7948 : ¬ Reader r7948 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7948

def r7949 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7949 : ¬ Reader r7949 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7949

def r7950 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7950 : ¬ Reader r7950 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7950

def r7951 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7951 : ¬ Reader r7951 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7951

def r7952 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 2) (.var 0)))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject7952 : ¬ Reader r7952 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 3)) (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 3)) (.var 0))) (.var 0)))))) [(.var 0), (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 3)) (.var 0))) (.app (.lam (.app (.app (.var 0) (.var 3)) (.var 0))) (.var 0))))))] [(.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7952

def r7953 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 2))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.var 1))
theorem reject7953 : ¬ Reader r7953 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 3)) (.var 0))) (.var 0)) (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))))) [(.lam (.app (.app (.var 0) (.var 1)) (.var 0)))] [(.lam (.app (.app (.var 0) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7953

def r7954 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 2)))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7954 : ¬ Reader r7954 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7954

def r7955 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1)))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7955 : ¬ Reader r7955 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 3))) (.var 1)))))) [(.var 0), (.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7955

def r7956 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject7956 : ¬ Reader r7956 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7956

def r7957 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7957 : ¬ Reader r7957 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7957

def r7958 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7958 : ¬ Reader r7958 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7958

def r7959 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7959 : ¬ Reader r7959 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7959

def r7960 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7960 : ¬ Reader r7960 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7960

def r7961 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 2))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7961 : ¬ Reader r7961 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7961

def r7962 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.app (.var 2) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7962 : ¬ Reader r7962 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7962

def r7963 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7963 : ¬ Reader r7963 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7963

def r7964 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7964 : ¬ Reader r7964 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7964

def r7965 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7965 : ¬ Reader r7965 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7965

def r7966 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7966 : ¬ Reader r7966 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7966

def r7967 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7967 : ¬ Reader r7967 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7967

def r7968 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7968 : ¬ Reader r7968 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7968

def r7969 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7969 : ¬ Reader r7969 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7969

def r7970 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7970 : ¬ Reader r7970 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7970

def r7971 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7971 : ¬ Reader r7971 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7971

def r7972 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7972 : ¬ Reader r7972 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7972

def r7973 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7973 : ¬ Reader r7973 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7973

def r7974 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7974 : ¬ Reader r7974 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7974

def r7975 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7975 : ¬ Reader r7975 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7975

def r7976 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7976 : ¬ Reader r7976 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7976

def r7977 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7977 : ¬ Reader r7977 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7977

def r7978 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2))) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7978 : ¬ Reader r7978 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7978

def r7979 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7979 : ¬ Reader r7979 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7979

def r7980 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7980 : ¬ Reader r7980 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7980

def r7981 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7981 : ¬ Reader r7981 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7981

def r7982 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7982 : ¬ Reader r7982 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7982

def r7983 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.app (.var 2) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7983 : ¬ Reader r7983 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7983

def r7984 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7984 : ¬ Reader r7984 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7984

def r7985 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7985 : ¬ Reader r7985 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7985

def r7986 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7986 : ¬ Reader r7986 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7986

def r7987 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7987 : ¬ Reader r7987 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7987

def r7988 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7988 : ¬ Reader r7988 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7988

def r7989 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7989 : ¬ Reader r7989 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7989

def r7990 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7990 : ¬ Reader r7990 := by
  exact replay_loop true [] 6 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7990

def r7991 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 2)))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7991 : ¬ Reader r7991 := by
  exact replay_loop true [] 5 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7991

def r7992 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7992 : ¬ Reader r7992 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0)))))))) [(.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7992

def r7993 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7993 : ¬ Reader r7993 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7993

def r7994 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7994 : ¬ Reader r7994 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7994

def r7995 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7995 : ¬ Reader r7995 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7995

def r7996 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7996 : ¬ Reader r7996 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0))))))) [(.var 0), (.lam (.lam (.app (.var 0) (.var 0))))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7996

def r7997 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 2))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7997 : ¬ Reader r7997 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)))) [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0)] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7997

def r7998 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7998 : ¬ Reader r7998 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7998

def r7999 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 2))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject7999 : ¬ Reader r7999 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject7999

def r8000 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1)))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8000 : ¬ Reader r8000 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8000

def r8001 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8001 : ¬ Reader r8001 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8001

def r8002 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 2)))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8002 : ¬ Reader r8002 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8002

def r8003 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8003 : ¬ Reader r8003 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8003

def r8004 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8004 : ¬ Reader r8004 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 2)))))) [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1)))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8004

def r8005 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8005 : ¬ Reader r8005 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.lam (.var 1)), (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8005

def r8007 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8007 : ¬ Reader r8007 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 2)))))) [(.lam (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 2)))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8007

def r8008 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8008 : ¬ Reader r8008 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8008

def r8009 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8009 : ¬ Reader r8009 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.lam (.var 1))))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8009

def r8010 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8010 : ¬ Reader r8010 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 2))))) (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8010

def r8011 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8011 : ¬ Reader r8011 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8011

def r8012 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8012 : ¬ Reader r8012 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.lam (.var 1))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8012

def r8013 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8013 : ¬ Reader r8013 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 2)))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8013

def r8014 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8014 : ¬ Reader r8014 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8014

def r8015 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8015 : ¬ Reader r8015 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.lam (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8015

def r8016 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8016 : ¬ Reader r8016 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 2)))))) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8016

def r8017 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8017 : ¬ Reader r8017 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8017

def r8018 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8018 : ¬ Reader r8018 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 2))) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.var 1)), (.lam (.app (.var 0) (.var 0)))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 2))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8018

def r8019 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8019 : ¬ Reader r8019 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8019

def r8020 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8020 : ¬ Reader r8020 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 2)))), (.lam (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8020

def r8021 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8021 : ¬ Reader r8021 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) [(.lam (.app (.var 0) (.var 0))), (.lam (.var 1))] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8021

def r8022 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8022 : ¬ Reader r8022 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8022

def r8023 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8023 : ¬ Reader r8023 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 2)))))) [(.var 0)] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8023

def r8024 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8024 : ¬ Reader r8024 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8024

def r8025 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8025 : ¬ Reader r8025 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8025

def r8026 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8026 : ¬ Reader r8026 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8026

def r8027 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8027 : ¬ Reader r8027 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8027

def r8028 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8028 : ¬ Reader r8028 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8028

def r8029 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8029 : ¬ Reader r8029 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8029

def r8030 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8030 : ¬ Reader r8030 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 2))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8030

def r8031 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8031 : ¬ Reader r8031 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8031

def r8032 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8032 : ¬ Reader r8032 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8032

def r8033 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8033 : ¬ Reader r8033 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 2)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8033

def r8034 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8034 : ¬ Reader r8034 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8034

def r8035 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8035 : ¬ Reader r8035 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8035

def r8036 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8036 : ¬ Reader r8036 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8036

def r8037 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8037 : ¬ Reader r8037 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8037

def r8038 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8038 : ¬ Reader r8038 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 2))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8038

def r8039 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8039 : ¬ Reader r8039 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8039

def r8040 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8040 : ¬ Reader r8040 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8040

def r8041 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.app (.var 3) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8041 : ¬ Reader r8041 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.var 1))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8041

def r8042 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8042 : ¬ Reader r8042 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 2))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8042

def r8043 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8043 : ¬ Reader r8043 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject8043

def r8044 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8044 : ¬ Reader r8044 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject8044

def r8045 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8045 : ¬ Reader r8045 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject8045

def r8046 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8046 : ¬ Reader r8046 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject8046

def r8047 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8047 : ¬ Reader r8047 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject8047

def r8048 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8048 : ¬ Reader r8048 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject8048

def r8049 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8049 : ¬ Reader r8049 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8049

def r8050 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8050 : ¬ Reader r8050 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8050

def r8051 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8051 : ¬ Reader r8051 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8051

def r8052 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8052 : ¬ Reader r8052 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8052

def r8053 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8053 : ¬ Reader r8053 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8053

def r8054 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8054 : ¬ Reader r8054 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8054

def r8055 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8055 : ¬ Reader r8055 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1))))) (.var 0))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8055

def r8056 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8056 : ¬ Reader r8056 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 0), (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8056

def r8057 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8057 : ¬ Reader r8057 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.var 1)))) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.var 1)))), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8057

def r8058 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8058 : ¬ Reader r8058 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8058

def r8059 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8059 : ¬ Reader r8059 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8059

def r8060 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8060 : ¬ Reader r8060 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8060

def r8061 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8061 : ¬ Reader r8061 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8061

def r8062 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8062 : ¬ Reader r8062 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8062

def r8063 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8063 : ¬ Reader r8063 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) [(.app (.var 0) (.lam (.app (.var 0) (.var 0))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8063

def r8064 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8064 : ¬ Reader r8064 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))))) [(.app (.lam (.app (.var 0) (.var 0))) (.var 0))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8064

def r8065 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8065 : ¬ Reader r8065 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8065

def r8066 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8066 : ¬ Reader r8066 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8066

def r8067 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8067 : ¬ Reader r8067 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0)))))) [(.var 0), (.lam (.app (.var 0) (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8067

def r8068 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8068 : ¬ Reader r8068 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8068

def r8069 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8069 : ¬ Reader r8069 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8069

def r8070 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8070 : ¬ Reader r8070 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) [(.lam (.app (.var 0) (.var 0))), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8070

def r8071 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8071 : ¬ Reader r8071 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8071

def r8072 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8072 : ¬ Reader r8072 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8072

def r8073 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8073 : ¬ Reader r8073 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8073

def r8074 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8074 : ¬ Reader r8074 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))))] [(.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8074

def r8075 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8075 : ¬ Reader r8075 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8075

def r8076 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8076 : ¬ Reader r8076 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8076

def r8077 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8077 : ¬ Reader r8077 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8077

def r8078 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8078 : ¬ Reader r8078 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8078

def r8079 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8079 : ¬ Reader r8079 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))))] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8079

def r8080 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8080 : ¬ Reader r8080 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8080

def r8081 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8081 : ¬ Reader r8081 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8081

def r8082 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8082 : ¬ Reader r8082 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8082

def r8083 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8083 : ¬ Reader r8083 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8083

def r8084 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8084 : ¬ Reader r8084 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8084

def r8085 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8085 : ¬ Reader r8085 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8085

def r8086 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8086 : ¬ Reader r8086 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8086

def r8087 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8087 : ¬ Reader r8087 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8087

def r8088 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8088 : ¬ Reader r8088 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8088

def r8089 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8089 : ¬ Reader r8089 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8089

def r8090 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8090 : ¬ Reader r8090 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8090

def r8091 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8091 : ¬ Reader r8091 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8091

def r8092 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8092 : ¬ Reader r8092 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8092

def r8093 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8093 : ¬ Reader r8093 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8093

def r8094 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1)))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8094 : ¬ Reader r8094 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8094

def r8095 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8095 : ¬ Reader r8095 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8095

def r8096 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1)))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8096 : ¬ Reader r8096 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8096

def r8097 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8097 : ¬ Reader r8097 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8097

def r8098 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8098 : ¬ Reader r8098 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1))))) [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1))))) (.var 0))] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8098

def r8099 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8099 : ¬ Reader r8099 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 0), (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8099

def r8100 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8100 : ¬ Reader r8100 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.var 1)))) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.var 1)))), (.var 0)] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8100

def r8101 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8101 : ¬ Reader r8101 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8101

def r8102 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8102 : ¬ Reader r8102 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8102

def r8103 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8103 : ¬ Reader r8103 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))) (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8103

def r8104 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8104 : ¬ Reader r8104 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8104

def r8105 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8105 : ¬ Reader r8105 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8105

def r8106 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8106 : ¬ Reader r8106 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))) [(.app (.var 0) (.lam (.app (.var 0) (.var 0))))] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8106

def r8107 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8107 : ¬ Reader r8107 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))))) [(.app (.lam (.app (.var 0) (.var 0))) (.var 0))] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8107

def r8108 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8108 : ¬ Reader r8108 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8108

def r8109 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2))))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8109 : ¬ Reader r8109 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8109

def r8110 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8110 : ¬ Reader r8110 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0)))))) [(.var 0), (.lam (.app (.var 0) (.var 0)))] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8110

def r8111 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8111 : ¬ Reader r8111 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8111

def r8112 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8112 : ¬ Reader r8112 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))), (.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8112

def r8113 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8113 : ¬ Reader r8113 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) [(.lam (.app (.var 0) (.var 0))), (.var 0)] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8113

def r8114 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8114 : ¬ Reader r8114 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8114

def r8115 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8115 : ¬ Reader r8115 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8115

def r8116 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8116 : ¬ Reader r8116 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8116

def r8117 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8117 : ¬ Reader r8117 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8117

def r8118 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8118 : ¬ Reader r8118 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8118

def r8119 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8119 : ¬ Reader r8119 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8119

def r8120 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8120 : ¬ Reader r8120 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8120

def r8121 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8121 : ¬ Reader r8121 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8121

def r8122 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 2)))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8122 : ¬ Reader r8122 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8122

def r8123 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 2)))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8123 : ¬ Reader r8123 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8123

def r8124 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8124 : ¬ Reader r8124 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8124

def r8125 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8125 : ¬ Reader r8125 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8125

def r8126 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8126 : ¬ Reader r8126 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8126

def r8127 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8127 : ¬ Reader r8127 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8127

def r8128 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8128 : ¬ Reader r8128 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8128

def r8129 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.var 2)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8129 : ¬ Reader r8129 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8129

def r8130 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8130 : ¬ Reader r8130 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8130

def r8131 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8131 : ¬ Reader r8131 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8131

def r8132 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8132 : ¬ Reader r8132 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8132

def r8133 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8133 : ¬ Reader r8133 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8133

def r8134 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 2))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8134 : ¬ Reader r8134 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8134

def r8135 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8135 : ¬ Reader r8135 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8135

def r8136 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8136 : ¬ Reader r8136 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8136

def r8137 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8137 : ¬ Reader r8137 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8137

def r8138 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8138 : ¬ Reader r8138 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8138

def r8139 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8139 : ¬ Reader r8139 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8139

def r8140 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8140 : ¬ Reader r8140 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8140

def r8141 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8141 : ¬ Reader r8141 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8141

def r8142 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8142 : ¬ Reader r8142 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8142

def r8143 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8143 : ¬ Reader r8143 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8143

def r8144 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8144 : ¬ Reader r8144 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8144

def r8145 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8145 : ¬ Reader r8145 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8145

def r8146 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8146 : ¬ Reader r8146 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8146

def r8147 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8147 : ¬ Reader r8147 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8147

def r8148 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8148 : ¬ Reader r8148 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8148

def r8149 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8149 : ¬ Reader r8149 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8149

def r8150 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8150 : ¬ Reader r8150 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8150

def r8151 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8151 : ¬ Reader r8151 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8151

def r8152 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8152 : ¬ Reader r8152 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8152

def r8153 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8153 : ¬ Reader r8153 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8153

def r8154 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8154 : ¬ Reader r8154 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8154

def r8155 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8155 : ¬ Reader r8155 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8155

def r8156 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8156 : ¬ Reader r8156 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8156

def r8157 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8157 : ¬ Reader r8157 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8157

def r8158 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8158 : ¬ Reader r8158 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8158

def r8159 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8159 : ¬ Reader r8159 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8159

def r8160 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8160 : ¬ Reader r8160 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8160

def r8161 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 2)))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8161 : ¬ Reader r8161 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8161

def r8162 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8162 : ¬ Reader r8162 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8162

def r8163 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8163 : ¬ Reader r8163 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8163

def r8164 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8164 : ¬ Reader r8164 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8164

def r8165 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8165 : ¬ Reader r8165 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8165

def r8166 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8166 : ¬ Reader r8166 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8166

def r8167 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8167 : ¬ Reader r8167 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8167

def r8168 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8168 : ¬ Reader r8168 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8168

def r8169 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8169 : ¬ Reader r8169 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8169

def r8170 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8170 : ¬ Reader r8170 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8170

def r8171 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8171 : ¬ Reader r8171 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8171

def r8172 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8172 : ¬ Reader r8172 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8172

def r8173 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8173 : ¬ Reader r8173 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8173

def r8174 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8174 : ¬ Reader r8174 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8174

def r8175 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 2))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8175 : ¬ Reader r8175 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8175

def r8176 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8176 : ¬ Reader r8176 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8176

def r8177 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 2))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8177 : ¬ Reader r8177 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8177

def r8178 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8178 : ¬ Reader r8178 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8178

def r8179 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8179 : ¬ Reader r8179 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8179

def r8180 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8180 : ¬ Reader r8180 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8180

def r8181 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8181 : ¬ Reader r8181 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8181

def r8182 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8182 : ¬ Reader r8182 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8182

def r8183 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8183 : ¬ Reader r8183 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8183

def r8184 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8184 : ¬ Reader r8184 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8184

def r8185 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8185 : ¬ Reader r8185 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8185

def r8186 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8186 : ¬ Reader r8186 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8186

def r8187 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 3)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8187 : ¬ Reader r8187 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8187

def r8188 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8188 : ¬ Reader r8188 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8188

def r8189 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8189 : ¬ Reader r8189 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8189

def r8190 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8190 : ¬ Reader r8190 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8190

def r8191 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8191 : ¬ Reader r8191 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8191

def r8192 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8192 : ¬ Reader r8192 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8192

def r8193 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8193 : ¬ Reader r8193 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8193

def r8194 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8194 : ¬ Reader r8194 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8194

def r8195 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8195 : ¬ Reader r8195 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8195

def r8196 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8196 : ¬ Reader r8196 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8196

def r8197 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8197 : ¬ Reader r8197 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8197

def r8198 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8198 : ¬ Reader r8198 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8198

def r8199 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8199 : ¬ Reader r8199 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 2))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8199

def r8200 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8200 : ¬ Reader r8200 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8200

def r8201 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8201 : ¬ Reader r8201 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 2))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8201

def r8202 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8202 : ¬ Reader r8202 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8202

def r8203 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8203 : ¬ Reader r8203 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8203

def r8204 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8204 : ¬ Reader r8204 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8204

def r8205 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8205 : ¬ Reader r8205 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8205

def r8206 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8206 : ¬ Reader r8206 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8206

def r8207 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8207 : ¬ Reader r8207 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8207

def r8208 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8208 : ¬ Reader r8208 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8208

def r8209 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8209 : ¬ Reader r8209 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8209

def r8210 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 1)))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8210 : ¬ Reader r8210 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8210

def r8211 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8211 : ¬ Reader r8211 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 2))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8211

def r8212 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8212 : ¬ Reader r8212 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 2))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8212

def r8213 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8213 : ¬ Reader r8213 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8213

def r8214 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8214 : ¬ Reader r8214 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8214

def r8215 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8215 : ¬ Reader r8215 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8215

def r8216 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8216 : ¬ Reader r8216 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8216

def r8217 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8217 : ¬ Reader r8217 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8217

def r8218 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8218 : ¬ Reader r8218 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8218

def r8219 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8219 : ¬ Reader r8219 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8219

def r8220 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8220 : ¬ Reader r8220 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8220

def r8221 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8221 : ¬ Reader r8221 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8221

def r8222 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8222 : ¬ Reader r8222 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8222

def r8223 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8223 : ¬ Reader r8223 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8223

def r8224 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8224 : ¬ Reader r8224 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8224

def r8225 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8225 : ¬ Reader r8225 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 2))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8225

def r8226 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8226 : ¬ Reader r8226 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8226

def r8227 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8227 : ¬ Reader r8227 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8227

def r8228 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8228 : ¬ Reader r8228 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8228

def r8229 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8229 : ¬ Reader r8229 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8229

def r8230 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8230 : ¬ Reader r8230 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8230

def r8231 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8231 : ¬ Reader r8231 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8231

def r8232 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8232 : ¬ Reader r8232 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8232

def r8233 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8233 : ¬ Reader r8233 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 2)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8233

def r8234 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8234 : ¬ Reader r8234 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8234

def r8235 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8235 : ¬ Reader r8235 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8235

def r8236 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8236 : ¬ Reader r8236 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))) (.var 1)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8236

def r8237 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8237 : ¬ Reader r8237 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 2))) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8237

def r8238 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8238 : ¬ Reader r8238 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 2)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8238

def r8239 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8239 : ¬ Reader r8239 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8239

def r8240 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8240 : ¬ Reader r8240 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8240

def r8241 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8241 : ¬ Reader r8241 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 2))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8241

def r8242 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8242 : ¬ Reader r8242 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8242

def r8243 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8243 : ¬ Reader r8243 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8243

def r8244 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8244 : ¬ Reader r8244 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8244

def r8245 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8245 : ¬ Reader r8245 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8245

def r8246 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8246 : ¬ Reader r8246 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8246

def r8247 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8247 : ¬ Reader r8247 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8247

def r8248 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8248 : ¬ Reader r8248 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8248

def r8249 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8249 : ¬ Reader r8249 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8249

def r8250 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8250 : ¬ Reader r8250 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8250

def r8251 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8251 : ¬ Reader r8251 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8251

def r8252 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8252 : ¬ Reader r8252 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8252

def r8253 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8253 : ¬ Reader r8253 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8253

def r8254 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8254 : ¬ Reader r8254 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8254

def r8255 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8255 : ¬ Reader r8255 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8255

def r8256 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8256 : ¬ Reader r8256 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8256

def r8257 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8257 : ¬ Reader r8257 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8257

def r8258 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8258 : ¬ Reader r8258 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8258

def r8259 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8259 : ¬ Reader r8259 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8259

def r8260 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 2) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8260 : ¬ Reader r8260 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8260

def r8261 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8261 : ¬ Reader r8261 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8261

def r8262 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8262 : ¬ Reader r8262 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8262

def r8263 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8263 : ¬ Reader r8263 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8263

def r8264 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8264 : ¬ Reader r8264 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8264

def r8265 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 2)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8265 : ¬ Reader r8265 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8265

def r8266 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 3) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8266 : ¬ Reader r8266 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.var 1)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8266

def r8267 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 3)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8267 : ¬ Reader r8267 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8267

def r8268 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 2) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8268 : ¬ Reader r8268 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8268

def r8269 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8269 : ¬ Reader r8269 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8269

def r8270 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8270 : ¬ Reader r8270 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8270

def r8271 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8271 : ¬ Reader r8271 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8271

def r8272 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8272 : ¬ Reader r8272 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8272

def r8273 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8273 : ¬ Reader r8273 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8273

def r8274 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8274 : ¬ Reader r8274 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8274

def r8275 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8275 : ¬ Reader r8275 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8275

def r8276 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 3)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8276 : ¬ Reader r8276 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8276

def r8277 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8277 : ¬ Reader r8277 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8277

def r8278 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8278 : ¬ Reader r8278 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8278

def r8279 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8279 : ¬ Reader r8279 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8279

def r8280 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8280 : ¬ Reader r8280 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8280

def r8281 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8281 : ¬ Reader r8281 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8281

def r8282 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8282 : ¬ Reader r8282 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8282

def r8283 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8283 : ¬ Reader r8283 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8283

def r8284 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8284 : ¬ Reader r8284 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8284

def r8285 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8285 : ¬ Reader r8285 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8285

def r8286 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8286 : ¬ Reader r8286 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8286

def r8287 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8287 : ¬ Reader r8287 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8287

def r8288 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8288 : ¬ Reader r8288 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8288

def r8289 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8289 : ¬ Reader r8289 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8289

def r8290 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8290 : ¬ Reader r8290 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8290

def r8291 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8291 : ¬ Reader r8291 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8291

def r8292 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8292 : ¬ Reader r8292 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8292

def r8293 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8293 : ¬ Reader r8293 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8293

def r8294 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8294 : ¬ Reader r8294 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8294

def r8295 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8295 : ¬ Reader r8295 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8295

def r8296 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 3) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8296 : ¬ Reader r8296 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8296

def r8297 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8297 : ¬ Reader r8297 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8297

def r8298 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8298 : ¬ Reader r8298 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8298

def r8299 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8299 : ¬ Reader r8299 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8299

def r8300 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8300 : ¬ Reader r8300 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8300

def r8301 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8301 : ¬ Reader r8301 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8301

def r8302 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8302 : ¬ Reader r8302 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8302

def r8303 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8303 : ¬ Reader r8303 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8303

def r8304 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8304 : ¬ Reader r8304 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8304

def r8305 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8305 : ¬ Reader r8305 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8305

def r8306 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8306 : ¬ Reader r8306 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8306

def r8307 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8307 : ¬ Reader r8307 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8307

def r8308 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8308 : ¬ Reader r8308 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8308

def r8309 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8309 : ¬ Reader r8309 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8309

def r8310 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8310 : ¬ Reader r8310 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8310

def r8311 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8311 : ¬ Reader r8311 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8311

def r8312 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 1) (.lam (.app (.var 3) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8312 : ¬ Reader r8312 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8312

def r8313 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 3))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8313 : ¬ Reader r8313 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8313

def r8314 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8314 : ¬ Reader r8314 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8314

def r8315 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8315 : ¬ Reader r8315 := by
  exact replay_loop true [] 5 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8315

def r8316 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 2)))) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8316 : ¬ Reader r8316 := by
  exact replay_loop true [] 4 3 (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8316

def r8317 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 2)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8317 : ¬ Reader r8317 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 1) (.lam (.lam (.app (.var 0) (.var 0)))))))) [(.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0)))))] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8317

def r8318 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 2)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8318 : ¬ Reader r8318 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8318

def r8319 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 0)) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8319 : ¬ Reader r8319 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8319

def r8320 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 1)) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8320 : ¬ Reader r8320 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8320

def r8321 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8321 : ¬ Reader r8321 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 0) (.var 0))))))) [(.var 0), (.lam (.lam (.app (.var 0) (.var 0))))] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8321

def r8322 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 2))) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8322 : ¬ Reader r8322 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)))) [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0)] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8322

def r8323 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8323 : ¬ Reader r8323 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8323

def r8324 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 2))) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8324 : ¬ Reader r8324 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8324

def r8325 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.var 3)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8325 : ¬ Reader r8325 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8325

def r8326 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8326 : ¬ Reader r8326 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 2)))))) [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 2)))))) (.lam (.var 1)))] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8326

def r8327 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8327 : ¬ Reader r8327 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.lam (.var 1)), (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8327

def r8329 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.var 3))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8329 : ¬ Reader r8329 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 2))))) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 2))))), (.lam (.var 1))] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8329

def r8330 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 3))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8330 : ¬ Reader r8330 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 2)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8330

def r8331 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 1)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8331 : ¬ Reader r8331 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.lam (.var 1))))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8331

def r8332 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 3)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8332 : ¬ Reader r8332 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 2))))) (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8332

def r8333 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 1)) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8333 : ¬ Reader r8333 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8333

def r8334 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8334 : ¬ Reader r8334 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.lam (.var 1))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8334

def r8335 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8335 : ¬ Reader r8335 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))) (.var 2)))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8335

def r8336 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 3)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8336 : ¬ Reader r8336 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8336

def r8337 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 3))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8337 : ¬ Reader r8337 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 1)), (.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8337

def r8338 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.var 3)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8338 : ¬ Reader r8338 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 2)))))) [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8338

def r8339 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 3)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8339 : ¬ Reader r8339 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8339

def r8340 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8340 : ¬ Reader r8340 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 2))) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.var 1)), (.lam (.app (.var 0) (.var 0)))] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8340

def r8341 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8341 : ¬ Reader r8341 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8341

def r8342 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 3))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8342 : ¬ Reader r8342 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 2)))), (.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8342

def r8343 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 3))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8343 : ¬ Reader r8343 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 2))))) [(.lam (.app (.var 0) (.var 0))), (.lam (.var 1))] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8343

def r8344 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 3))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8344 : ¬ Reader r8344 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.var 1)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8344

def r8345 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8345 : ¬ Reader r8345 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 2)))))) [(.var 0)] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8345

def r8346 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8346 : ¬ Reader r8346 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8346

def r8347 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 2)))))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8347 : ¬ Reader r8347 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8347

def r8348 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1)))))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8348 : ¬ Reader r8348 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8348

def r8349 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8349 : ¬ Reader r8349 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8349

def r8350 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8350 : ¬ Reader r8350 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 2) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8350

def r8351 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 2)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8351 : ¬ Reader r8351 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8351

def r8352 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8352 : ¬ Reader r8352 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8352

def r8353 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 3)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject8353 : ¬ Reader r8353 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject8353
end Blc.HandlerLet.Proof4_Cs_x_1_1_17
