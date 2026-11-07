import Flow
namespace Blc.Rootcert2.FlowCases40
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r296 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 1) (.var 2)))))) (.var 1))
def d296 : List FTy := [[],[],[],[],[5],[0,5,7],[0,6],[0,7],[],[],[]]
def c296 : List FTy := [[],[],[],[],[0],[6],[0],[0,6],[],[10],[]]
def a296 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5,7]) (.lam 7 (.var 1 [0,6]) [7]) [0,6]) (.app (.var 1 [0,5,7]) (.var 2 [0]) [0,6]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject296 : ¬ Reader r296 :=
 Rootcert2Flow.reject [] d296 c296 a296 (by decide) (by decide) (by decide)
#print axioms reject296
end Blc.Rootcert2.FlowCases40
