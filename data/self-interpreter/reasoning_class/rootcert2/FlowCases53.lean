import Flow
namespace Blc.Rootcert2.FlowCases53
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r448 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 1)) (.var 0))
def d448 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c448 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a448 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) (.var 0 [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject448 : ¬ Reader r448 :=
 Rootcert2Flow.reject [] d448 c448 a448 (by decide) (by decide) (by decide)
#print axioms reject448

def r449 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0))))) (.var 0)) (.var 1))
def d449 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c449 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a449 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) (.var 0 [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject449 : ¬ Reader r449 :=
 Rootcert2Flow.reject [] d449 c449 a449 (by decide) (by decide) (by decide)
#print axioms reject449
end Blc.Rootcert2.FlowCases53
