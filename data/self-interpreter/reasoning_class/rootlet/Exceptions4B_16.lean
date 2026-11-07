import Certificates
namespace Blc.HandlerLet.Exceptions4B_16
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r9938 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9938 : ¬ Reader r9938 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9938

def r9939 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.lam (.lam (.var 0)))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9939 : ¬ Reader r9939 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 1) (.lam (.lam (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9939

def r9940 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9940 : ¬ Reader r9940 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))), (.var 1), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9940

def r9941 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 0)) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9941 : ¬ Reader r9941 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9941

def r9942 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 0)))) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9942 : ¬ Reader r9942 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.var 1), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9942

def r9943 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9943 : ¬ Reader r9943 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.lam (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9943

def r9944 : Term := (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9944 : ¬ Reader r9944 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9944

def r9945 : Term := (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9945 : ¬ Reader r9945 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9945

def r9946 : Term := (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9946 : ¬ Reader r9946 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9946

def r9947 : Term := (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9947 : ¬ Reader r9947 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9947

def r9948 : Term := (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9948 : ¬ Reader r9948 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9948

def r9949 : Term := (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9949 : ¬ Reader r9949 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9949

def r9950 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9950 : ¬ Reader r9950 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9950

def r9951 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9951 : ¬ Reader r9951 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9951

def r9952 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9952 : ¬ Reader r9952 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9952

def r9953 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9953 : ¬ Reader r9953 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9953

def r9954 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0)))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9954 : ¬ Reader r9954 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9954

def r9955 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9955 : ¬ Reader r9955 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9955

def r9956 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9956 : ¬ Reader r9956 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9956

def r9957 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9957 : ¬ Reader r9957 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9957

def r9958 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9958 : ¬ Reader r9958 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9958

def r9959 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9959 : ¬ Reader r9959 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9959

def r9960 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9960 : ¬ Reader r9960 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9960

def r9961 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9961 : ¬ Reader r9961 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9961

def r9962 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9962 : ¬ Reader r9962 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9962

def r9963 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9963 : ¬ Reader r9963 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9963

def r9964 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9964 : ¬ Reader r9964 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9964

def r9965 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9965 : ¬ Reader r9965 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9965

def r9966 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9966 : ¬ Reader r9966 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9966

def r9967 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9967 : ¬ Reader r9967 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9967

def r9968 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9968 : ¬ Reader r9968 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9968

def r9969 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9969 : ¬ Reader r9969 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9969

def r9970 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.lam (.var 0)))))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9970 : ¬ Reader r9970 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.lam (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.lam (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9970

def r9971 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 2))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9971 : ¬ Reader r9971 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 1), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9971

def r9972 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.lam (.var 0))))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9972 : ¬ Reader r9972 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9972

def r9973 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9973 : ¬ Reader r9973 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9973

def r9974 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9974 : ¬ Reader r9974 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9974

def r9975 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9975 : ¬ Reader r9975 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 1) (.lam (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9975

def r9976 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.var 2)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9976 : ¬ Reader r9976 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9976

def r9977 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 2)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9977 : ¬ Reader r9977 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9977

def r9978 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.var 2)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9978 : ¬ Reader r9978 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9978

def r9979 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)) (.var 2)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9979 : ¬ Reader r9979 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9979

def r9980 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 2)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9980 : ¬ Reader r9980 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9980

def r9981 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9981 : ¬ Reader r9981 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9981

def r9982 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9982 : ¬ Reader r9982 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9982

def r9983 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9983 : ¬ Reader r9983 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9983

def r9984 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9984 : ¬ Reader r9984 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9984

def r9985 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9985 : ¬ Reader r9985 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9985

def r9986 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9986 : ¬ Reader r9986 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9986

def r9987 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9987 : ¬ Reader r9987 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9987

def r9988 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9988 : ¬ Reader r9988 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9988

def r9989 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9989 : ¬ Reader r9989 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9989

def r9990 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9990 : ¬ Reader r9990 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9990

def r9991 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject9991 : ¬ Reader r9991 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9991

def r9992 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject9992 : ¬ Reader r9992 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9992

def r9993 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject9993 : ¬ Reader r9993 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9993

def r9994 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject9994 : ¬ Reader r9994 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9994

def r9995 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject9995 : ¬ Reader r9995 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9995

def r9996 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject9996 : ¬ Reader r9996 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9996

def r9997 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject9997 : ¬ Reader r9997 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9997

def r9998 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject9998 : ¬ Reader r9998 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9998

def r9999 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject9999 : ¬ Reader r9999 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject9999

def r10000 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10000 : ¬ Reader r10000 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10000

def r10001 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10001 : ¬ Reader r10001 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10001

def r10002 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10002 : ¬ Reader r10002 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10002

def r10003 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10003 : ¬ Reader r10003 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10003

def r10004 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10004 : ¬ Reader r10004 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10004

def r10005 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10005 : ¬ Reader r10005 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10005

def r10006 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10006 : ¬ Reader r10006 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10006

def r10007 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10007 : ¬ Reader r10007 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10007

def r10008 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10008 : ¬ Reader r10008 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10008

def r10009 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10009 : ¬ Reader r10009 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10009

def r10010 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10010 : ¬ Reader r10010 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10010

def r10011 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10011 : ¬ Reader r10011 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10011

def r10012 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10012 : ¬ Reader r10012 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10012

def r10013 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10013 : ¬ Reader r10013 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10013

def r10014 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10014 : ¬ Reader r10014 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 1)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10014

def r10015 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10015 : ¬ Reader r10015 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10015

def r10016 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10016 : ¬ Reader r10016 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10016

def r10017 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10017 : ¬ Reader r10017 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10017

def r10018 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10018 : ¬ Reader r10018 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10018

def r10019 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10019 : ¬ Reader r10019 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10019

def r10020 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10020 : ¬ Reader r10020 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 1) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10020

def r10021 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10021 : ¬ Reader r10021 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10021

def r10022 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10022 : ¬ Reader r10022 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10022

def r10023 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10023 : ¬ Reader r10023 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10023

def r10024 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10024 : ¬ Reader r10024 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10024

def r10025 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10025 : ¬ Reader r10025 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 1) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10025

def r10026 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10026 : ¬ Reader r10026 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 1)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10026

def r10027 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10027 : ¬ Reader r10027 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10027

def r10028 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10028 : ¬ Reader r10028 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10028

def r10029 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10029 : ¬ Reader r10029 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10029

def r10030 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10030 : ¬ Reader r10030 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10030

def r10031 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10031 : ¬ Reader r10031 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10031

def r10032 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.app (.var 1) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10032 : ¬ Reader r10032 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10032

def r10033 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10033 : ¬ Reader r10033 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10033

def r10034 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10034 : ¬ Reader r10034 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10034

def r10035 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 2) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10035 : ¬ Reader r10035 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10035

def r10036 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10036 : ¬ Reader r10036 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10036

def r10037 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10037 : ¬ Reader r10037 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10037

def r10038 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10038 : ¬ Reader r10038 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10038

def r10039 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10039 : ¬ Reader r10039 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10039

def r10040 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10040 : ¬ Reader r10040 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10040

def r10041 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10041 : ¬ Reader r10041 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10041

def r10042 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10042 : ¬ Reader r10042 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10042

def r10043 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10043 : ¬ Reader r10043 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10043

def r10044 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10044 : ¬ Reader r10044 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10044

def r10045 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10045 : ¬ Reader r10045 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10045

def r10046 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10046 : ¬ Reader r10046 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10046

def r10047 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10047 : ¬ Reader r10047 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10047

def r10048 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10048 : ¬ Reader r10048 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10048

def r10049 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10049 : ¬ Reader r10049 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10049

def r10050 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10050 : ¬ Reader r10050 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10050

def r10051 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10051 : ¬ Reader r10051 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10051

def r10052 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10052 : ¬ Reader r10052 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10052

def r10053 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10053 : ¬ Reader r10053 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10053

def r10054 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10054 : ¬ Reader r10054 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10054

def r10055 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10055 : ¬ Reader r10055 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10055

def r10056 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10056 : ¬ Reader r10056 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10056

def r10057 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10057 : ¬ Reader r10057 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 1) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10057

def r10058 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10058 : ¬ Reader r10058 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10058

def r10059 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10059 : ¬ Reader r10059 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10059

def r10060 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10060 : ¬ Reader r10060 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10060

def r10061 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 2)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10061 : ¬ Reader r10061 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10061

def r10062 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10062 : ¬ Reader r10062 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10062

def r10063 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0)))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10063 : ¬ Reader r10063 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10063

def r10064 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2)))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10064 : ¬ Reader r10064 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10064

def r10065 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10065 : ¬ Reader r10065 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10065

def r10066 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10066 : ¬ Reader r10066 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10066

def r10067 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10067 : ¬ Reader r10067 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10067

def r10068 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10068 : ¬ Reader r10068 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10068

def r10069 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10069 : ¬ Reader r10069 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10069

def r10070 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10070 : ¬ Reader r10070 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10070

def r10071 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10071 : ¬ Reader r10071 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10071

def r10072 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10072 : ¬ Reader r10072 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10072

def r10073 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10073 : ¬ Reader r10073 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10073

def r10074 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10074 : ¬ Reader r10074 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10074

def r10075 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10075 : ¬ Reader r10075 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10075

def r10076 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10076 : ¬ Reader r10076 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10076

def r10077 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10077 : ¬ Reader r10077 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10077

def r10078 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10078 : ¬ Reader r10078 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10078

def r10079 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10079 : ¬ Reader r10079 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10079

def r10080 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10080 : ¬ Reader r10080 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10080

def r10081 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10081 : ¬ Reader r10081 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10081

def r10082 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10082 : ¬ Reader r10082 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10082

def r10083 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10083 : ¬ Reader r10083 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10083

def r10084 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10084 : ¬ Reader r10084 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10084

def r10085 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10085 : ¬ Reader r10085 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10085

def r10086 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10086 : ¬ Reader r10086 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10086

def r10087 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10087 : ¬ Reader r10087 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10087

def r10088 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10088 : ¬ Reader r10088 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10088

def r10089 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10089 : ¬ Reader r10089 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10089

def r10090 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10090 : ¬ Reader r10090 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10090

def r10091 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10091 : ¬ Reader r10091 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10091

def r10092 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10092 : ¬ Reader r10092 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10092

def r10093 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10093 : ¬ Reader r10093 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10093

def r10094 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10094 : ¬ Reader r10094 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10094

def r10095 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10095 : ¬ Reader r10095 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10095

def r10096 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10096 : ¬ Reader r10096 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10096

def r10097 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10097 : ¬ Reader r10097 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10097

def r10098 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10098 : ¬ Reader r10098 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10098

def r10099 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10099 : ¬ Reader r10099 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10099

def r10100 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10100 : ¬ Reader r10100 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10100

def r10101 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10101 : ¬ Reader r10101 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10101

def r10102 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10102 : ¬ Reader r10102 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10102

def r10103 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10103 : ¬ Reader r10103 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10103

def r10104 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10104 : ¬ Reader r10104 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10104

def r10105 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10105 : ¬ Reader r10105 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10105

def r10106 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10106 : ¬ Reader r10106 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10106

def r10107 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10107 : ¬ Reader r10107 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10107

def r10108 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10108 : ¬ Reader r10108 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10108

def r10109 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10109 : ¬ Reader r10109 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10109

def r10110 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10110 : ¬ Reader r10110 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10110

def r10111 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10111 : ¬ Reader r10111 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10111

def r10112 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10112 : ¬ Reader r10112 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10112

def r10113 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10113 : ¬ Reader r10113 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10113

def r10114 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10114 : ¬ Reader r10114 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10114

def r10115 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10115 : ¬ Reader r10115 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10115

def r10116 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10116 : ¬ Reader r10116 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10116

def r10117 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10117 : ¬ Reader r10117 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10117

def r10118 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10118 : ¬ Reader r10118 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10118

def r10119 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10119 : ¬ Reader r10119 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10119

def r10120 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10120 : ¬ Reader r10120 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10120

def r10121 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10121 : ¬ Reader r10121 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10121

def r10122 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10122 : ¬ Reader r10122 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10122

def r10123 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0)))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10123 : ¬ Reader r10123 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10123

def r10124 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10124 : ¬ Reader r10124 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10124

def r10125 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10125 : ¬ Reader r10125 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10125

def r10126 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10126 : ¬ Reader r10126 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10126

def r10127 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10127 : ¬ Reader r10127 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10127

def r10128 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10128 : ¬ Reader r10128 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10128

def r10129 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10129 : ¬ Reader r10129 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10129

def r10130 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10130 : ¬ Reader r10130 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10130

def r10131 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 1)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10131 : ¬ Reader r10131 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10131

def r10132 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10132 : ¬ Reader r10132 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10132

def r10133 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10133 : ¬ Reader r10133 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10133

def r10134 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10134 : ¬ Reader r10134 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10134

def r10135 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10135 : ¬ Reader r10135 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10135

def r10136 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10136 : ¬ Reader r10136 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10136

def r10137 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10137 : ¬ Reader r10137 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10137

def r10138 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10138 : ¬ Reader r10138 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10138

def r10139 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10139 : ¬ Reader r10139 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10139

def r10140 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10140 : ¬ Reader r10140 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10140

def r10141 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10141 : ¬ Reader r10141 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10141

def r10142 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10142 : ¬ Reader r10142 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10142

def r10143 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10143 : ¬ Reader r10143 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10143

def r10144 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10144 : ¬ Reader r10144 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10144

def r10145 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10145 : ¬ Reader r10145 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10145

def r10146 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10146 : ¬ Reader r10146 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10146

def r10147 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10147 : ¬ Reader r10147 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10147

def r10148 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10148 : ¬ Reader r10148 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10148

def r10149 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10149 : ¬ Reader r10149 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10149

def r10150 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10150 : ¬ Reader r10150 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10150

def r10151 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10151 : ¬ Reader r10151 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10151

def r10152 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10152 : ¬ Reader r10152 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10152

def r10153 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10153 : ¬ Reader r10153 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10153

def r10154 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10154 : ¬ Reader r10154 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10154

def r10155 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10155 : ¬ Reader r10155 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10155

def r10156 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10156 : ¬ Reader r10156 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10156

def r10157 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10157 : ¬ Reader r10157 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10157

def r10158 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10158 : ¬ Reader r10158 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10158

def r10159 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10159 : ¬ Reader r10159 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10159

def r10160 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10160 : ¬ Reader r10160 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10160

def r10161 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10161 : ¬ Reader r10161 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10161

def r10162 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10162 : ¬ Reader r10162 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10162

def r10163 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10163 : ¬ Reader r10163 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10163

def r10164 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10164 : ¬ Reader r10164 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10164

def r10165 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10165 : ¬ Reader r10165 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10165

def r10166 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10166 : ¬ Reader r10166 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10166

def r10167 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10167 : ¬ Reader r10167 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10167

def r10168 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10168 : ¬ Reader r10168 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10168

def r10169 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10169 : ¬ Reader r10169 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10169

def r10170 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10170 : ¬ Reader r10170 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10170

def r10171 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10171 : ¬ Reader r10171 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10171

def r10172 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10172 : ¬ Reader r10172 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10172

def r10173 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10173 : ¬ Reader r10173 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10173

def r10174 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10174 : ¬ Reader r10174 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10174

def r10175 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10175 : ¬ Reader r10175 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10175

def r10176 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10176 : ¬ Reader r10176 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10176

def r10177 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10177 : ¬ Reader r10177 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10177

def r10178 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10178 : ¬ Reader r10178 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10178

def r10179 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10179 : ¬ Reader r10179 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10179

def r10180 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10180 : ¬ Reader r10180 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10180

def r10181 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10181 : ¬ Reader r10181 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10181

def r10182 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10182 : ¬ Reader r10182 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10182

def r10183 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10183 : ¬ Reader r10183 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10183

def r10184 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10184 : ¬ Reader r10184 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10184

def r10185 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10185 : ¬ Reader r10185 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10185

def r10186 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10186 : ¬ Reader r10186 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10186

def r10187 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10187 : ¬ Reader r10187 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10187

def r10188 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10188 : ¬ Reader r10188 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10188

def r10189 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10189 : ¬ Reader r10189 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10189

def r10190 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10190 : ¬ Reader r10190 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10190

def r10191 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.app (.var 2) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10191 : ¬ Reader r10191 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10191

def r10192 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10192 : ¬ Reader r10192 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10192

def r10193 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10193 : ¬ Reader r10193 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10193

def r10194 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10194 : ¬ Reader r10194 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 1)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10194

def r10195 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10195 : ¬ Reader r10195 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 1)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10195

def r10196 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10196 : ¬ Reader r10196 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10196

def r10197 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10197 : ¬ Reader r10197 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10197

def r10198 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10198 : ¬ Reader r10198 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10198

def r10199 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10199 : ¬ Reader r10199 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10199

def r10200 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10200 : ¬ Reader r10200 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10200

def r10201 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10201 : ¬ Reader r10201 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10201

def r10202 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10202 : ¬ Reader r10202 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10202

def r10203 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10203 : ¬ Reader r10203 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10203

def r10204 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10204 : ¬ Reader r10204 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10204

def r10205 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10205 : ¬ Reader r10205 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10205

def r10206 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10206 : ¬ Reader r10206 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10206

def r10207 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10207 : ¬ Reader r10207 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10207

def r10208 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0)))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10208 : ¬ Reader r10208 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10208

def r10209 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10209 : ¬ Reader r10209 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10209

def r10210 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10210 : ¬ Reader r10210 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10210

def r10211 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10211 : ¬ Reader r10211 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10211

def r10212 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10212 : ¬ Reader r10212 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10212

def r10213 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10213 : ¬ Reader r10213 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10213

def r10214 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10214 : ¬ Reader r10214 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10214

def r10215 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10215 : ¬ Reader r10215 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10215

def r10216 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 2)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10216 : ¬ Reader r10216 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10216

def r10217 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10217 : ¬ Reader r10217 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10217

def r10218 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10218 : ¬ Reader r10218 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10218

def r10219 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10219 : ¬ Reader r10219 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10219

def r10220 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10220 : ¬ Reader r10220 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10220

def r10221 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10221 : ¬ Reader r10221 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10221

def r10222 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10222 : ¬ Reader r10222 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10222

def r10223 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10223 : ¬ Reader r10223 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10223

def r10224 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10224 : ¬ Reader r10224 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10224

def r10225 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10225 : ¬ Reader r10225 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10225

def r10226 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10226 : ¬ Reader r10226 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10226

def r10227 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10227 : ¬ Reader r10227 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10227

def r10228 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10228 : ¬ Reader r10228 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10228

def r10229 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10229 : ¬ Reader r10229 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10229

def r10230 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10230 : ¬ Reader r10230 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10230

def r10231 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10231 : ¬ Reader r10231 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10231

def r10232 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10232 : ¬ Reader r10232 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10232

def r10233 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10233 : ¬ Reader r10233 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10233

def r10234 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10234 : ¬ Reader r10234 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10234

def r10235 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10235 : ¬ Reader r10235 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10235

def r10236 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10236 : ¬ Reader r10236 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10236

def r10237 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10237 : ¬ Reader r10237 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10237

def r10238 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10238 : ¬ Reader r10238 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10238

def r10239 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10239 : ¬ Reader r10239 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10239

def r10240 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10240 : ¬ Reader r10240 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10240

def r10241 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10241 : ¬ Reader r10241 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10241

def r10242 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10242 : ¬ Reader r10242 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10242

def r10243 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10243 : ¬ Reader r10243 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10243

def r10244 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10244 : ¬ Reader r10244 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10244

def r10245 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10245 : ¬ Reader r10245 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10245

def r10246 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10246 : ¬ Reader r10246 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10246

def r10247 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10247 : ¬ Reader r10247 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10247

def r10248 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10248 : ¬ Reader r10248 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10248

def r10249 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10249 : ¬ Reader r10249 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10249

def r10250 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10250 : ¬ Reader r10250 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10250

def r10251 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10251 : ¬ Reader r10251 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10251

def r10252 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10252 : ¬ Reader r10252 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10252

def r10253 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10253 : ¬ Reader r10253 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10253

def r10254 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10254 : ¬ Reader r10254 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10254

def r10255 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10255 : ¬ Reader r10255 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10255

def r10256 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10256 : ¬ Reader r10256 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10256

def r10257 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10257 : ¬ Reader r10257 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10257

def r10258 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10258 : ¬ Reader r10258 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10258

def r10259 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10259 : ¬ Reader r10259 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10259

def r10260 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 2)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10260 : ¬ Reader r10260 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10260

def r10261 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10261 : ¬ Reader r10261 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10261

def r10262 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10262 : ¬ Reader r10262 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10262

def r10263 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10263 : ¬ Reader r10263 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10263

def r10264 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10264 : ¬ Reader r10264 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10264

def r10265 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10265 : ¬ Reader r10265 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10265

def r10266 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 1)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10266 : ¬ Reader r10266 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10266

def r10267 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10267 : ¬ Reader r10267 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10267

def r10268 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 0))))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10268 : ¬ Reader r10268 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10268

def r10269 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 2)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10269 : ¬ Reader r10269 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10269

def r10270 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10270 : ¬ Reader r10270 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10270

def r10271 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10271 : ¬ Reader r10271 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10271

def r10272 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10272 : ¬ Reader r10272 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10272

def r10273 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10273 : ¬ Reader r10273 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10273

def r10274 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10274 : ¬ Reader r10274 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10274

def r10275 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10275 : ¬ Reader r10275 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10275

def r10276 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10276 : ¬ Reader r10276 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10276

def r10277 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10277 : ¬ Reader r10277 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10277

def r10278 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10278 : ¬ Reader r10278 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10278

def r10279 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10279 : ¬ Reader r10279 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10279

def r10280 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10280 : ¬ Reader r10280 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10280

def r10281 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10281 : ¬ Reader r10281 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10281

def r10282 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10282 : ¬ Reader r10282 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10282

def r10283 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10283 : ¬ Reader r10283 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10283

def r10284 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10284 : ¬ Reader r10284 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10284

def r10285 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10285 : ¬ Reader r10285 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10285

def r10286 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10286 : ¬ Reader r10286 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10286

def r10287 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10287 : ¬ Reader r10287 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10287

def r10288 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10288 : ¬ Reader r10288 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10288

def r10289 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10289 : ¬ Reader r10289 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10289

def r10290 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10290 : ¬ Reader r10290 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10290

def r10291 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10291 : ¬ Reader r10291 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10291

def r10292 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10292 : ¬ Reader r10292 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10292

def r10293 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10293 : ¬ Reader r10293 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10293

def r10294 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10294 : ¬ Reader r10294 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10294

def r10295 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10295 : ¬ Reader r10295 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10295

def r10296 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10296 : ¬ Reader r10296 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10296

def r10297 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10297 : ¬ Reader r10297 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10297

def r10298 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10298 : ¬ Reader r10298 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10298

def r10299 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10299 : ¬ Reader r10299 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10299

def r10300 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10300 : ¬ Reader r10300 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10300

def r10301 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10301 : ¬ Reader r10301 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10301

def r10302 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10302 : ¬ Reader r10302 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10302

def r10303 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 2) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10303 : ¬ Reader r10303 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10303

def r10304 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10304 : ¬ Reader r10304 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10304

def r10305 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10305 : ¬ Reader r10305 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10305

def r10306 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10306 : ¬ Reader r10306 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10306

def r10307 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10307 : ¬ Reader r10307 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10307

def r10308 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10308 : ¬ Reader r10308 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10308

def r10309 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10309 : ¬ Reader r10309 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10309

def r10310 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10310 : ¬ Reader r10310 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10310

def r10311 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10311 : ¬ Reader r10311 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10311

def r10312 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10312 : ¬ Reader r10312 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10312

def r10313 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10313 : ¬ Reader r10313 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10313

def r10314 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10314 : ¬ Reader r10314 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10314

def r10315 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10315 : ¬ Reader r10315 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10315

def r10316 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10316 : ¬ Reader r10316 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10316

def r10317 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10317 : ¬ Reader r10317 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10317

def r10318 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10318 : ¬ Reader r10318 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10318

def r10319 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10319 : ¬ Reader r10319 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10319

def r10320 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10320 : ¬ Reader r10320 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10320

def r10321 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10321 : ¬ Reader r10321 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10321

def r10322 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10322 : ¬ Reader r10322 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10322

def r10323 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10323 : ¬ Reader r10323 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10323

def r10324 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10324 : ¬ Reader r10324 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10324

def r10325 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10325 : ¬ Reader r10325 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10325

def r10326 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10326 : ¬ Reader r10326 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10326

def r10327 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10327 : ¬ Reader r10327 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10327

def r10328 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10328 : ¬ Reader r10328 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10328

def r10329 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10329 : ¬ Reader r10329 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10329

def r10330 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10330 : ¬ Reader r10330 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10330

def r10331 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10331 : ¬ Reader r10331 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10331

def r10332 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10332 : ¬ Reader r10332 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10332

def r10333 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 0)))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10333 : ¬ Reader r10333 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10333

def r10334 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10334 : ¬ Reader r10334 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10334

def r10335 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10335 : ¬ Reader r10335 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10335

def r10336 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 0)))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10336 : ¬ Reader r10336 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10336

def r10337 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10337 : ¬ Reader r10337 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10337

def r10338 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10338 : ¬ Reader r10338 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10338

def r10339 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10339 : ¬ Reader r10339 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10339

def r10340 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10340 : ¬ Reader r10340 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10340

def r10341 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10341 : ¬ Reader r10341 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10341

def r10342 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10342 : ¬ Reader r10342 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10342

def r10343 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10343 : ¬ Reader r10343 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10343

def r10344 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0)))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10344 : ¬ Reader r10344 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10344

def r10345 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10345 : ¬ Reader r10345 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10345

def r10346 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10346 : ¬ Reader r10346 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10346

def r10347 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10347 : ¬ Reader r10347 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10347

def r10348 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10348 : ¬ Reader r10348 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10348

def r10349 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10349 : ¬ Reader r10349 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10349

def r10350 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10350 : ¬ Reader r10350 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10350

def r10351 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10351 : ¬ Reader r10351 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.var 0)) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10351

def r10352 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10352 : ¬ Reader r10352 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10352

def r10353 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10353 : ¬ Reader r10353 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10353

def r10354 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 1) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10354 : ¬ Reader r10354 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.app (.var 0) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10354

def r10355 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10355 : ¬ Reader r10355 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10355

def r10356 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10356 : ¬ Reader r10356 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10356

def r10357 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10357 : ¬ Reader r10357 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10357

def r10358 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0)))))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10358 : ¬ Reader r10358 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10358

def r10359 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10359 : ¬ Reader r10359 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10359

def r10360 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10360 : ¬ Reader r10360 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10360

def r10361 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10361 : ¬ Reader r10361 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10361

def r10362 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10362 : ¬ Reader r10362 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10362

def r10363 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 2))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10363 : ¬ Reader r10363 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10363

def r10364 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10364 : ¬ Reader r10364 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10364

def r10365 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10365 : ¬ Reader r10365 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10365

def r10366 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10366 : ¬ Reader r10366 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10366

def r10367 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0)))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10367 : ¬ Reader r10367 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10367

def r10368 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10368 : ¬ Reader r10368 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10368

def r10369 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10369 : ¬ Reader r10369 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10369

def r10370 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10370 : ¬ Reader r10370 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10370

def r10371 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10371 : ¬ Reader r10371 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10371

def r10372 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10372 : ¬ Reader r10372 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10372

def r10373 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10373 : ¬ Reader r10373 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10373

def r10374 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10374 : ¬ Reader r10374 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10374

def r10375 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10375 : ¬ Reader r10375 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10375

def r10376 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10376 : ¬ Reader r10376 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10376

def r10377 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10377 : ¬ Reader r10377 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10377

def r10378 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10378 : ¬ Reader r10378 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10378

def r10379 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10379 : ¬ Reader r10379 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10379

def r10380 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10380 : ¬ Reader r10380 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10380

def r10381 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10381 : ¬ Reader r10381 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10381

def r10382 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10382 : ¬ Reader r10382 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10382

def r10383 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10383 : ¬ Reader r10383 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10383

def r10384 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10384 : ¬ Reader r10384 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10384

def r10385 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10385 : ¬ Reader r10385 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10385

def r10386 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10386 : ¬ Reader r10386 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10386

def r10387 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10387 : ¬ Reader r10387 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10387

def r10388 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10388 : ¬ Reader r10388 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10388

def r10389 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10389 : ¬ Reader r10389 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10389

def r10390 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10390 : ¬ Reader r10390 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10390

def r10391 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10391 : ¬ Reader r10391 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10391

def r10392 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10392 : ¬ Reader r10392 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.var 0)) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10392

def r10393 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10393 : ¬ Reader r10393 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10393

def r10394 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10394 : ¬ Reader r10394 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10394

def r10395 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10395 : ¬ Reader r10395 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10395

def r10396 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10396 : ¬ Reader r10396 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10396

def r10397 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10397 : ¬ Reader r10397 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10397

def r10398 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10398 : ¬ Reader r10398 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10398

def r10399 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10399 : ¬ Reader r10399 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10399

def r10400 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10400 : ¬ Reader r10400 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10400

def r10401 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10401 : ¬ Reader r10401 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10401

def r10402 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10402 : ¬ Reader r10402 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10402

def r10403 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10403 : ¬ Reader r10403 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10403

def r10404 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0)))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10404 : ¬ Reader r10404 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10404

def r10405 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10405 : ¬ Reader r10405 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10405

def r10406 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10406 : ¬ Reader r10406 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10406

def r10407 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10407 : ¬ Reader r10407 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10407

def r10408 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0)))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10408 : ¬ Reader r10408 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10408

def r10409 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10409 : ¬ Reader r10409 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10409

def r10410 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10410 : ¬ Reader r10410 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10410

def r10411 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10411 : ¬ Reader r10411 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10411

def r10412 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10412 : ¬ Reader r10412 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10412

def r10413 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10413 : ¬ Reader r10413 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10413

def r10414 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10414 : ¬ Reader r10414 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10414

def r10415 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10415 : ¬ Reader r10415 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10415

def r10416 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10416 : ¬ Reader r10416 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10416

def r10417 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10417 : ¬ Reader r10417 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10417

def r10418 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10418 : ¬ Reader r10418 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10418

def r10419 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10419 : ¬ Reader r10419 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10419

def r10420 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10420 : ¬ Reader r10420 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10420

def r10421 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10421 : ¬ Reader r10421 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10421

def r10422 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10422 : ¬ Reader r10422 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10422

def r10423 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10423 : ¬ Reader r10423 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10423

def r10424 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10424 : ¬ Reader r10424 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10424

def r10425 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10425 : ¬ Reader r10425 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10425

def r10426 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10426 : ¬ Reader r10426 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10426

def r10427 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10427 : ¬ Reader r10427 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10427

def r10428 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10428 : ¬ Reader r10428 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10428

def r10429 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10429 : ¬ Reader r10429 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10429

def r10430 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10430 : ¬ Reader r10430 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10430

def r10431 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10431 : ¬ Reader r10431 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10431

def r10432 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10432 : ¬ Reader r10432 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10432

def r10433 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10433 : ¬ Reader r10433 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10433

def r10434 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10434 : ¬ Reader r10434 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10434

def r10435 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10435 : ¬ Reader r10435 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10435

def r10436 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10436 : ¬ Reader r10436 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10436

def r10437 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10437 : ¬ Reader r10437 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10437

def r10438 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10438 : ¬ Reader r10438 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10438

def r10439 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 2)) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10439 : ¬ Reader r10439 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10439

def r10440 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10440 : ¬ Reader r10440 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10440

def r10441 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10441 : ¬ Reader r10441 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10441

def r10442 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10442 : ¬ Reader r10442 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10442

def r10443 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10443 : ¬ Reader r10443 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10443

def r10444 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0)))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10444 : ¬ Reader r10444 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10444

def r10445 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10445 : ¬ Reader r10445 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10445

def r10446 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10446 : ¬ Reader r10446 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10446

def r10447 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10447 : ¬ Reader r10447 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10447

def r10448 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10448 : ¬ Reader r10448 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10448

def r10449 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10449 : ¬ Reader r10449 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10449

def r10450 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10450 : ¬ Reader r10450 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10450

def r10451 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10451 : ¬ Reader r10451 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10451

def r10452 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10452 : ¬ Reader r10452 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10452

def r10453 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 2)) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10453 : ¬ Reader r10453 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.var 1)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10453

def r10454 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 2)) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10454 : ¬ Reader r10454 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10454

def r10455 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10455 : ¬ Reader r10455 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10455

def r10456 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 2) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10456 : ¬ Reader r10456 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10456

def r10457 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10457 : ¬ Reader r10457 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10457

def r10458 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10458 : ¬ Reader r10458 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10458

def r10459 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10459 : ¬ Reader r10459 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10459

def r10460 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0)))))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10460 : ¬ Reader r10460 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10460

def r10461 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10461 : ¬ Reader r10461 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10461

def r10462 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0))))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10462 : ¬ Reader r10462 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10462

def r10463 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0))))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10463 : ¬ Reader r10463 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10463

def r10464 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 0))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10464 : ¬ Reader r10464 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10464

def r10465 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 1))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10465 : ¬ Reader r10465 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10465

def r10466 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10466 : ¬ Reader r10466 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10466

def r10467 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10467 : ¬ Reader r10467 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10467

def r10468 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10468 : ¬ Reader r10468 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10468

def r10469 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10469 : ¬ Reader r10469 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10469

def r10470 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10470 : ¬ Reader r10470 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.var 0)) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10470

def r10471 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 1)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10471 : ¬ Reader r10471 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10471

def r10472 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0)))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10472 : ¬ Reader r10472 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10472

def r10473 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0)))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10473 : ¬ Reader r10473 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10473

def r10474 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.lam (.var 0)))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10474 : ¬ Reader r10474 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10474

def r10475 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10475 : ¬ Reader r10475 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10475

def r10476 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10476 : ¬ Reader r10476 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10476

def r10477 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10477 : ¬ Reader r10477 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10477

def r10478 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 2) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10478 : ¬ Reader r10478 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.app (.var 1) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10478

def r10479 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10479 : ¬ Reader r10479 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10479

def r10480 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10480 : ¬ Reader r10480 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10480

def r10481 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10481 : ¬ Reader r10481 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10481

def r10482 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10482 : ¬ Reader r10482 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10482

def r10483 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10483 : ¬ Reader r10483 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10483

def r10484 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10484 : ¬ Reader r10484 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10484

def r10485 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10485 : ¬ Reader r10485 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10485

def r10486 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10486 : ¬ Reader r10486 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10486

def r10487 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 2) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10487 : ¬ Reader r10487 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10487

def r10488 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10488 : ¬ Reader r10488 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10488

def r10489 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10489 : ¬ Reader r10489 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10489

def r10490 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.lam (.var 0)))) (.var 2)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10490 : ¬ Reader r10490 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10490

def r10491 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10491 : ¬ Reader r10491 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10491

def r10492 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10492 : ¬ Reader r10492 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10492

def r10493 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10493 : ¬ Reader r10493 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10493

def r10494 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10494 : ¬ Reader r10494 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10494

def r10495 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10495 : ¬ Reader r10495 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10495

def r10496 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10496 : ¬ Reader r10496 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10496

def r10497 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10497 : ¬ Reader r10497 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10497

def r10498 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10498 : ¬ Reader r10498 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10498

def r10499 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10499 : ¬ Reader r10499 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10499

def r10500 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10500 : ¬ Reader r10500 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10500

def r10501 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10501 : ¬ Reader r10501 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10501

def r10502 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10502 : ¬ Reader r10502 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10502

def r10503 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10503 : ¬ Reader r10503 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10503

def r10504 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10504 : ¬ Reader r10504 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10504

def r10505 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10505 : ¬ Reader r10505 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10505

def r10506 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10506 : ¬ Reader r10506 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10506

def r10507 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10507 : ¬ Reader r10507 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10507

def r10508 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10508 : ¬ Reader r10508 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10508

def r10509 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10509 : ¬ Reader r10509 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10509

def r10510 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10510 : ¬ Reader r10510 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10510

def r10511 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10511 : ¬ Reader r10511 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10511

def r10512 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10512 : ¬ Reader r10512 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10512

def r10513 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10513 : ¬ Reader r10513 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10513

def r10514 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10514 : ¬ Reader r10514 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10514

def r10515 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10515 : ¬ Reader r10515 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10515

def r10516 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10516 : ¬ Reader r10516 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10516

def r10517 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10517 : ¬ Reader r10517 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10517

def r10518 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10518 : ¬ Reader r10518 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10518

def r10519 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10519 : ¬ Reader r10519 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10519

def r10520 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10520 : ¬ Reader r10520 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10520

def r10521 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10521 : ¬ Reader r10521 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10521

def r10522 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10522 : ¬ Reader r10522 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10522

def r10523 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10523 : ¬ Reader r10523 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10523

def r10524 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10524 : ¬ Reader r10524 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10524

def r10525 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10525 : ¬ Reader r10525 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10525

def r10526 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10526 : ¬ Reader r10526 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10526

def r10527 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10527 : ¬ Reader r10527 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10527

def r10528 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10528 : ¬ Reader r10528 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10528

def r10529 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10529 : ¬ Reader r10529 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10529

def r10530 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10530 : ¬ Reader r10530 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10530

def r10531 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10531 : ¬ Reader r10531 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10531

def r10532 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10532 : ¬ Reader r10532 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10532

def r10533 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10533 : ¬ Reader r10533 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10533

def r10534 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10534 : ¬ Reader r10534 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10534

def r10535 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0))))
theorem reject10535 : ¬ Reader r10535 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10535

def r10536 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10536 : ¬ Reader r10536 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10536

def r10537 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0))))
theorem reject10537 : ¬ Reader r10537 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject10537
end Blc.HandlerLet.Exceptions4B_16
