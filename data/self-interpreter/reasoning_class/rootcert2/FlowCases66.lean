import Flow
namespace Blc.Rootcert2.FlowCases66
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r638 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 1)) (.var 0))
def d638 : List FTy := [[],[],[],[],[5],[5],[6,7],[7],[],[],[]]
def c638 : List FTy := [[],[],[],[],[],[6],[],[],[],[10],[]]
def a638 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.app (.var 1 [6,7]) (.var 0 [7]) []) (.var 0 [7]) []) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject638 : ¬ Reader r638 :=
 Rootcert2Flow.reject [] d638 c638 a638 (by decide) (by decide) (by decide)
#print axioms reject638

def r639 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 0)) (.var 1))
def d639 : List FTy := [[],[],[],[],[5],[5],[6,7],[7],[],[],[]]
def c639 : List FTy := [[],[],[],[],[],[6],[],[],[],[10],[]]
def a639 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.app (.var 1 [6,7]) (.var 0 [7]) []) (.var 0 [7]) []) [7]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject639 : ¬ Reader r639 :=
 Rootcert2Flow.reject [] d639 c639 a639 (by decide) (by decide) (by decide)
#print axioms reject639
end Blc.Rootcert2.FlowCases66
