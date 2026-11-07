import Flow
namespace Blc.Rootcert2.FlowCases37
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r290 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 3))))))) (.var 1))
def d290 : List FTy := [[],[],[],[],[5],[5,6,7],[0,1,5,6,7],[5,6,7],[],[],[]]
def c290 : List FTy := [[],[],[],[],[6],[6],[0],[0],[],[10],[]]
def a290 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6,7]) (.var 1 [5,6,7]) [0,6]) (.app (.var 0 [0,1,5,6,7]) (.lam 7 (.var 3 [0]) [7]) [0,1,6]) [0]) [6]) [5]) [6]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject290 : ¬ Reader r290 :=
 Rootcert2Flow.reject [] d290 c290 a290 (by decide) (by decide) (by decide)
#print axioms reject290

def r292 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 3))))))) (.var 1))
def d292 : List FTy := [[],[],[],[],[5],[0,5,7],[0,1,5,6,7],[0,5,7],[],[],[]]
def c292 : List FTy := [[],[],[],[],[6],[6],[0],[0],[],[10],[]]
def a292 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [0]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5,7]) (.var 1 [0,5,7]) [0,6]) (.app (.var 0 [0,1,5,6,7]) (.lam 7 (.var 3 [0]) [7]) [0,1,6]) [0]) [6]) [5]) [6]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject292 : ¬ Reader r292 :=
 Rootcert2Flow.reject [] d292 c292 a292 (by decide) (by decide) (by decide)
#print axioms reject292

def r298 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 3))))))) (.var 1))
def d298 : List FTy := [[],[],[],[],[5],[5],[0,6,7],[7],[],[],[]]
def c298 : List FTy := [[],[],[],[],[],[6],[],[0],[],[10],[]]
def a298 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [0,6,7]) (.lam 7 (.var 3 [0]) [7]) [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject298 : ¬ Reader r298 :=
 Rootcert2Flow.reject [] d298 c298 a298 (by decide) (by decide) (by decide)
#print axioms reject298

def r303 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 3))))))) (.var 1))
def d303 : List FTy := [[],[],[],[],[5],[5,6,7],[0,5,6,7],[5,6,7],[],[],[]]
def c303 : List FTy := [[],[],[],[],[0],[6],[0],[0],[],[10],[]]
def a303 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6,7]) (.var 1 [5,6,7]) [0,6]) (.app (.var 0 [0,5,6,7]) (.lam 7 (.var 3 [0]) [7]) [0,6]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject303 : ¬ Reader r303 :=
 Rootcert2Flow.reject [] d303 c303 a303 (by decide) (by decide) (by decide)
#print axioms reject303

def r308 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 3))))))) (.var 1))
def d308 : List FTy := [[],[],[],[],[5],[5,7],[0,5,6,7],[5,7],[],[],[]]
def c308 : List FTy := [[],[],[],[],[0],[6],[0],[0],[],[10],[]]
def a308 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [0]) (.var 0 [5]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,7]) (.var 1 [5,7]) [0,6]) (.app (.var 0 [0,5,6,7]) (.lam 7 (.var 3 [0]) [7]) [0,6]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject308 : ¬ Reader r308 :=
 Rootcert2Flow.reject [] d308 c308 a308 (by decide) (by decide) (by decide)
#print axioms reject308
end Blc.Rootcert2.FlowCases37
