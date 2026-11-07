import Flow
namespace Blc.Rootcert2.FlowCases67
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r640 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1))))))) (.var 1)) (.var 0))
def d640 : List FTy := [[],[],[],[],[5],[5,7],[5,7],[5,7],[],[],[]]
def c640 : List FTy := [[],[],[],[],[],[6],[],[6],[],[10],[]]
def a640 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 0 [5,7]) (.var 1 [5,7]) [6]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject640 : ¬ Reader r640 :=
 Rootcert2Flow.reject [] d640 c640 a640 (by decide) (by decide) (by decide)
#print axioms reject640

def r641 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1))))))) (.var 0)) (.var 1))
def d641 : List FTy := [[],[],[],[],[5],[5,7],[5,7],[5,7],[],[],[]]
def c641 : List FTy := [[],[],[],[],[],[6],[],[6],[],[10],[]]
def a641 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 0 [5,7]) (.var 1 [5,7]) [6]) [7]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject641 : ¬ Reader r641 :=
 Rootcert2Flow.reject [] d641 c641 a641 (by decide) (by decide) (by decide)
#print axioms reject641
end Blc.Rootcert2.FlowCases67
