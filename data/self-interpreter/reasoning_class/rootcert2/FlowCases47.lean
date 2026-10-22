import Flow
namespace Blc.Rootcert2.FlowCases47
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r329 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 3) (.var 0))))))) (.var 1))
def d329 : List FTy := [[],[],[],[],[5],[5],[6],[0,1],[],[],[]]
def c329 : List FTy := [[],[],[],[],[7],[6],[7],[],[],[10],[]]
def a329 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [7]) [4]) (.lam 5 (.lam 6 (.lam 7 (.app (.app (.var 1 [6]) (.var 1 [6]) [7]) (.app (.var 3 [0]) (.var 0 [0,1]) [0]) []) [7]) [6]) [5]) [7]) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject329 : ¬ Reader r329 :=
 Rootcert2Flow.reject [] d329 c329 a329 (by decide) (by decide) (by decide)
#print axioms reject329
end Blc.Rootcert2.FlowCases47
