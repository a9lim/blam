import Flow
namespace Blc.Rootcert2.FlowCases51
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r410 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 1)) (.var 0))
def d410 : List FTy := [[],[],[],[],[5],[5,6],[6,7],[7],[],[],[]]
def c410 : List FTy := [[],[],[],[],[],[7],[7],[],[],[10],[]]
def a410 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [7]) (.app (.var 0 [5]) (.var 0 [5]) [7]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [6,7]) (.var 0 [7]) [7]) []) [7]) [6]) [7]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject410 : ¬ Reader r410 :=
 Rootcert2Flow.reject [] d410 c410 a410 (by decide) (by decide) (by decide)
#print axioms reject410

def r411 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 1))
def d411 : List FTy := [[],[],[],[],[5],[5,6],[6,7],[7],[],[],[]]
def c411 : List FTy := [[],[],[],[],[],[7],[7],[],[],[10],[]]
def a411 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [7]) (.app (.var 0 [5]) (.var 0 [5]) [7]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [6,7]) (.var 0 [7]) [7]) []) [7]) [6]) [7]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject411 : ¬ Reader r411 :=
 Rootcert2Flow.reject [] d411 c411 a411 (by decide) (by decide) (by decide)
#print axioms reject411
end Blc.Rootcert2.FlowCases51
