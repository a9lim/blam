import Flow
namespace Blc.Rootcert2.FlowCases46
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r328 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.lam (.var 0)))))))) (.var 1))
def d328 : List FTy := [[],[],[],[],[5],[0,5,8],[5,7],[0,8],[],[],[],[]]
def c328 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a328 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 0 [5,7]) (.var 2 [0]) [6]) (.lam 7 (.app (.var 1 [5,7]) (.lam 8 (.var 0 []) [8]) [6]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject328 : ¬ Reader r328 :=
 Rootcert2Flow.reject [] d328 c328 a328 (by decide) (by decide) (by decide)
#print axioms reject328
end Blc.Rootcert2.FlowCases46
