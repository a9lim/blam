import Flow
namespace Blc.Rootcert2.FlowCases26
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r250 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 2))))) (.var 1))
def d250 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c250 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a250 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) (.var 0 [6]) []) (.var 2 [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject250 : ¬ Reader r250 :=
 Rootcert2Flow.reject [] d250 c250 a250 (by decide) (by decide) (by decide)
#print axioms reject250

def r253 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 2))))) (.var 1))
def d253 : List FTy := [[],[],[],[],[5],[5,6],[5],[],[],[]]
def c253 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a253 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 0 [5]) (.app (.var 1 [5,6]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) (.var 2 [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject253 : ¬ Reader r253 :=
 Rootcert2Flow.reject [] d253 c253 a253 (by decide) (by decide) (by decide)
#print axioms reject253

def r257 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 2))))) (.var 1))
def d257 : List FTy := [[],[],[],[],[5],[5,6],[5],[],[],[]]
def c257 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a257 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 0 [5]) (.app (.var 1 [5,6]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) (.var 2 [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject257 : ¬ Reader r257 :=
 Rootcert2Flow.reject [] d257 c257 a257 (by decide) (by decide) (by decide)
#print axioms reject257
end Blc.Rootcert2.FlowCases26
