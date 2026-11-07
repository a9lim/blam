import Flow
namespace Blc.Rootcert2.FlowCases44
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r321 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))) (.var 1))
def d321 : List FTy := [[],[],[],[],[6],[0],[0,1,6,7],[0,1,5,7,8],[0],[],[]]
def c321 : List FTy := [[],[],[],[],[0,1,7],[7],[7],[0,1,7],[0],[10],[]]
def a321 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.var 0 [6]) [7]) (.lam 5 (.app (.var 1 [6]) (.var 1 [6]) [7]) [5]) [0,1,7]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [0,1,6,7]) (.app (.app (.var 0 [0,1,5,7,8]) (.var 2 [0]) [0,1,7]) (.var 0 [0,1,5,7,8]) [0,1,7]) [0,1,7]) [7]) [6]) [0,1,7]) (.var 1 [1]) [0,1,7]) (.lam 8 (.app (.app (.var 0 [0]) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) [0]) (.var 4 [3]) [0]) [8]) [0,1,7])
theorem reject321 : ¬ Reader r321 :=
 Rootcert2Flow.reject [] d321 c321 a321 (by decide) (by decide) (by decide)
#print axioms reject321
end Blc.Rootcert2.FlowCases44
