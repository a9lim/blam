import Flow
namespace Blc.Rootcert2.FlowCases41
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r300 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 2))))))) (.var 1))
def d300 : List FTy := [[],[],[],[],[5],[0,5,6],[5,7],[0,5,6],[],[],[]]
def c300 : List FTy := [[],[],[],[],[],[6],[],[6],[],[10],[]]
def a300 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 0 [5,7]) (.var 2 [0]) [6]) (.lam 7 (.app (.var 1 [5,7]) (.var 2 [0,5,6]) [6]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject300 : ¬ Reader r300 :=
 Rootcert2Flow.reject [] d300 c300 a300 (by decide) (by decide) (by decide)
#print axioms reject300

def r305 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 2))))))) (.var 1))
def d305 : List FTy := [[],[],[],[],[5],[0,5],[5,7],[0,5],[],[],[]]
def c305 : List FTy := [[],[],[],[],[],[6],[],[6],[],[10],[]]
def a305 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 0 [5,7]) (.var 2 [0]) [6]) (.lam 7 (.app (.var 1 [5,7]) (.var 2 [0,5]) [6]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject305 : ¬ Reader r305 :=
 Rootcert2Flow.reject [] d305 c305 a305 (by decide) (by decide) (by decide)
#print axioms reject305
end Blc.Rootcert2.FlowCases41
