import Flow
namespace Blc.Rootcert2.FlowCases45
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r327 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 2)))))) (.var 1))
def d327 : List FTy := [[],[],[],[],[5],[0,5],[5,8],[6],[0],[],[],[]]
def c327 : List FTy := [[],[],[],[],[],[6],[],[],[6],[],[11],[]]
def a327 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.lam 7 (.app (.var 0 [6]) (.lam 8 (.var 1 [6]) [8]) []) [7]) (.app (.var 0 [5,8]) (.var 2 [0]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject327 : ¬ Reader r327 :=
 Rootcert2Flow.reject [] d327 c327 a327 (by decide) (by decide) (by decide)
#print axioms reject327
end Blc.Rootcert2.FlowCases45
