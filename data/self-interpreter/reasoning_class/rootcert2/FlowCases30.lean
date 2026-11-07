import Flow
namespace Blc.Rootcert2.FlowCases30
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r256 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0))))) (.var 1))
def d256 : List FTy := [[],[],[],[],[5],[0,5,6],[0,5],[],[],[]]
def c256 : List FTy := [[],[],[],[],[0],[6],[0],[],[9],[]]
def a256 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 0 [0,5]) (.app (.var 1 [0,5,6]) (.var 2 [0]) [0,6]) [0,6]) (.var 0 [0,5]) [0]) (.var 0 [0,5]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject256 : ¬ Reader r256 :=
 Rootcert2Flow.reject [] d256 c256 a256 (by decide) (by decide) (by decide)
#print axioms reject256

def r260 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0))))) (.var 1))
def d260 : List FTy := [[],[],[],[],[5],[0,5,6],[0,5],[],[],[]]
def c260 : List FTy := [[],[],[],[],[0],[6],[0],[],[9],[]]
def a260 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [0]) (.var 0 [5]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 0 [0,5]) (.app (.var 1 [0,5,6]) (.var 2 [0]) [0,6]) [0,6]) (.var 0 [0,5]) [0]) (.var 0 [0,5]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject260 : ¬ Reader r260 :=
 Rootcert2Flow.reject [] d260 c260 a260 (by decide) (by decide) (by decide)
#print axioms reject260
end Blc.Rootcert2.FlowCases30
