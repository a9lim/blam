import Flow
namespace Blc.Rootcert2.FlowCases64
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r608 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0)))))) (.var 1)) (.var 0))
def d608 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c608 : List FTy := [[],[],[],[],[],[6],[],[],[],[10],[]]
def a608 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject608 : ¬ Reader r608 :=
 Rootcert2Flow.reject [] d608 c608 a608 (by decide) (by decide) (by decide)
#print axioms reject608

def r609 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0)))))) (.var 0)) (.var 1))
def d609 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c609 : List FTy := [[],[],[],[],[],[6],[],[],[],[10],[]]
def a609 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject609 : ¬ Reader r609 :=
 Rootcert2Flow.reject [] d609 c609 a609 (by decide) (by decide) (by decide)
#print axioms reject609
end Blc.Rootcert2.FlowCases64
