import Flow
namespace Blc.Rootcert2.FlowCases39
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r295 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 3))))))) (.var 1))
def d295 : List FTy := [[],[],[],[],[5],[0,5],[0,5,6,7],[0,5],[],[],[]]
def c295 : List FTy := [[],[],[],[],[0],[6],[0],[0,6],[],[10],[]]
def a295 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 0 [0,5,6,7]) (.var 1 [0,5]) [0,6]) (.lam 7 (.app (.var 1 [0,5,6,7]) (.var 3 [0]) [0,6]) [7]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject295 : ¬ Reader r295 :=
 Rootcert2Flow.reject [] d295 c295 a295 (by decide) (by decide) (by decide)
#print axioms reject295

def r301 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 3))))))) (.var 1))
def d301 : List FTy := [[],[],[],[],[5],[0,5,6],[5,7],[0,5,6],[],[],[]]
def c301 : List FTy := [[],[],[],[],[],[6],[],[6],[],[10],[]]
def a301 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 0 [5,7]) (.var 1 [0,5,6]) [6]) (.lam 7 (.app (.var 1 [5,7]) (.var 3 [0]) [6]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject301 : ¬ Reader r301 :=
 Rootcert2Flow.reject [] d301 c301 a301 (by decide) (by decide) (by decide)
#print axioms reject301

def r306 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 3))))))) (.var 1))
def d306 : List FTy := [[],[],[],[],[5],[0,5],[5,7],[0,5],[],[],[]]
def c306 : List FTy := [[],[],[],[],[],[6],[],[6],[],[10],[]]
def a306 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 0 [5,7]) (.var 1 [0,5]) [6]) (.lam 7 (.app (.var 1 [5,7]) (.var 3 [0]) [6]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject306 : ¬ Reader r306 :=
 Rootcert2Flow.reject [] d306 c306 a306 (by decide) (by decide) (by decide)
#print axioms reject306
end Blc.Rootcert2.FlowCases39
