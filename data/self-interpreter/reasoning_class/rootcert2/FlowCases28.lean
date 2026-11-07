import Flow
namespace Blc.Rootcert2.FlowCases28
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r252 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.var 0))))) (.var 1))
def d252 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c252 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a252 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) (.var 2 [0]) []) (.var 0 [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject252 : ¬ Reader r252 :=
 Rootcert2Flow.reject [] d252 c252 a252 (by decide) (by decide) (by decide)
#print axioms reject252
end Blc.Rootcert2.FlowCases28
