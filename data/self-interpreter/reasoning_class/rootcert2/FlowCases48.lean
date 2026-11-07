import Flow
namespace Blc.Rootcert2.FlowCases48
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r330 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 3))))))) (.var 1))
def d330 : List FTy := [[],[],[],[],[5],[5],[6],[1],[],[],[]]
def c330 : List FTy := [[],[],[],[],[7],[6],[7],[],[],[10],[]]
def a330 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [7]) [4]) (.lam 5 (.lam 6 (.lam 7 (.app (.app (.var 1 [6]) (.var 1 [6]) [7]) (.app (.var 0 [1]) (.var 3 [0]) [1]) []) [7]) [6]) [5]) [7]) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject330 : ¬ Reader r330 :=
 Rootcert2Flow.reject [] d330 c330 a330 (by decide) (by decide) (by decide)
#print axioms reject330

def r331 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 3))))))) (.var 1))
def d331 : List FTy := [[],[],[],[],[5],[0,1,5,6,7],[0,1,5,6,7],[0,1,5,6,7,8],[0],[],[]]
def c331 : List FTy := [[],[],[],[],[0,1,7],[6],[7],[0,1,7],[0],[10],[]]
def a331 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [7]) (.var 0 [5]) [0,1,7]) [4]) (.lam 5 (.lam 6 (.lam 7 (.app (.app (.var 1 [0,1,5,6,7]) (.var 1 [0,1,5,6,7]) [0,1,6,7]) (.app (.var 0 [0,1,5,6,7,8]) (.var 3 [0]) [0,1,6,7]) [0,1,7]) [7]) [6]) [5]) [0,1,7]) (.var 1 [1]) [0,1,7]) (.lam 8 (.app (.app (.var 0 [0]) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) [0]) (.var 4 [3]) [0]) [8]) [0,1,7])
theorem reject331 : ¬ Reader r331 :=
 Rootcert2Flow.reject [] d331 c331 a331 (by decide) (by decide) (by decide)
#print axioms reject331
end Blc.Rootcert2.FlowCases48
