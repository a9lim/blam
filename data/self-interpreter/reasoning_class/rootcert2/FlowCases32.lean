import Flow
namespace Blc.Rootcert2.FlowCases32
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r262 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 3)))))) (.var 1))
def d262 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c262 : List FTy := [[],[],[],[],[],[6],[],[0],[],[10],[]]
def a262 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) (.lam 7 (.var 3 [0]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject262 : ¬ Reader r262 :=
 Rootcert2Flow.reject [] d262 c262 a262 (by decide) (by decide) (by decide)
#print axioms reject262
end Blc.Rootcert2.FlowCases32
