import Flow
namespace Blc.Rootcert2.FlowCases62
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r582 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))) (.var 1)) (.var 0))
def d582 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c582 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a582 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) (.var 2 [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject582 : ¬ Reader r582 :=
 Rootcert2Flow.reject [] d582 c582 a582 (by decide) (by decide) (by decide)
#print axioms reject582

def r583 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))) (.var 0)) (.var 1))
def d583 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c583 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a583 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) (.var 2 [0]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject583 : ¬ Reader r583 :=
 Rootcert2Flow.reject [] d583 c583 a583 (by decide) (by decide) (by decide)
#print axioms reject583
end Blc.Rootcert2.FlowCases62
