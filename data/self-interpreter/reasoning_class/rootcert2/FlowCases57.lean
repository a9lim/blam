import Flow
namespace Blc.Rootcert2.FlowCases57
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r486 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.var 1)) (.var 0))
def d486 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c486 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a486 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) (.var 1 [5,6]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject486 : ¬ Reader r486 :=
 Rootcert2Flow.reject [] d486 c486 a486 (by decide) (by decide) (by decide)
#print axioms reject486

def r487 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))))) (.var 0)) (.var 1))
def d487 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c487 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a487 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) (.var 1 [5,6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject487 : ¬ Reader r487 :=
 Rootcert2Flow.reject [] d487 c487 a487 (by decide) (by decide) (by decide)
#print axioms reject487
end Blc.Rootcert2.FlowCases57
