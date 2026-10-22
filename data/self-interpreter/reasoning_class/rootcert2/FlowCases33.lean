import Flow
namespace Blc.Rootcert2.FlowCases33
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r263 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 2))))) (.var 1))
def d263 : List FTy := [[],[],[],[],[5],[5,6,7],[5],[],[],[],[]]
def c263 : List FTy := [[],[],[],[],[],[6],[],[5,6,7],[],[10],[]]
def a263 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 0 [5]) (.lam 7 (.var 2 [5,6,7]) [7]) [6]) (.var 0 [5]) []) (.var 2 [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject263 : ¬ Reader r263 :=
 Rootcert2Flow.reject [] d263 c263 a263 (by decide) (by decide) (by decide)
#print axioms reject263

def r265 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 2))))) (.var 1))
def d265 : List FTy := [[],[],[],[],[5],[5,7],[5],[],[],[],[]]
def c265 : List FTy := [[],[],[],[],[],[6],[],[5,7],[],[10],[]]
def a265 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 0 [5]) (.lam 7 (.var 2 [5,7]) [7]) [6]) (.var 0 [5]) []) (.var 2 [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject265 : ¬ Reader r265 :=
 Rootcert2Flow.reject [] d265 c265 a265 (by decide) (by decide) (by decide)
#print axioms reject265
end Blc.Rootcert2.FlowCases33
