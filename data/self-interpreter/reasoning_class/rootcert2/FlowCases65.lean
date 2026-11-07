import Flow
namespace Blc.Rootcert2.FlowCases65
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r636 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 1)) (.var 0))
def d636 : List FTy := [[],[],[],[],[5],[5],[6,7],[7],[],[],[]]
def c636 : List FTy := [[],[],[],[],[],[6],[],[],[],[10],[]]
def a636 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [6,7]) (.var 0 [7]) []) []) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject636 : ¬ Reader r636 :=
 Rootcert2Flow.reject [] d636 c636 a636 (by decide) (by decide) (by decide)
#print axioms reject636

def r637 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 1))
def d637 : List FTy := [[],[],[],[],[5],[5],[6,7],[7],[],[],[]]
def c637 : List FTy := [[],[],[],[],[],[6],[],[],[],[10],[]]
def a637 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [6,7]) (.var 0 [7]) []) []) [7]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject637 : ¬ Reader r637 :=
 Rootcert2Flow.reject [] d637 c637 a637 (by decide) (by decide) (by decide)
#print axioms reject637
end Blc.Rootcert2.FlowCases65
