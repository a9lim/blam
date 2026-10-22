import Flow
namespace Blc.Rootcert2.FlowCases24
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r248 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 2)))))) (.var 1))
def d248 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c248 : List FTy := [[],[],[],[],[0],[6],[0],[],[9],[]]
def a248 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 0 [0,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0,6]) [0]) (.app (.var 0 [0,6]) (.var 2 [0]) [0]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject248 : ¬ Reader r248 :=
 Rootcert2Flow.reject [] d248 c248 a248 (by decide) (by decide) (by decide)
#print axioms reject248
end Blc.Rootcert2.FlowCases24
