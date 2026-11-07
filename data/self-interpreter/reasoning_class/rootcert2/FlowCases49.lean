import Flow
namespace Blc.Rootcert2.FlowCases49
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r332 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) (.var 1))
def d332 : List FTy := [[],[],[],[],[5],[5],[0,8],[6],[],[],[],[]]
def c332 : List FTy := [[],[],[],[],[],[6],[7],[],[0,8],[],[11],[]]
def a332 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 1 [0]) [7]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.lam 7 (.app (.app (.var 0 [6]) (.lam 8 (.var 2 [0,8]) [8]) [7]) (.var 0 [6]) []) [7]) [6]) [5]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject332 : ¬ Reader r332 :=
 Rootcert2Flow.reject [] d332 c332 a332 (by decide) (by decide) (by decide)
#print axioms reject332

def r333 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) (.var 1))
def d333 : List FTy := [[],[],[],[],[5],[0,5],[5,8],[6],[],[],[],[]]
def c333 : List FTy := [[],[],[],[],[],[6],[7],[],[5,8],[],[11],[]]
def a333 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [7]) (.app (.var 0 [5]) (.var 1 [0]) [6]) []) [4]) (.lam 5 (.lam 6 (.lam 7 (.app (.app (.var 0 [6]) (.lam 8 (.var 2 [5,8]) [8]) [7]) (.var 0 [6]) []) [7]) [6]) [5]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject333 : ¬ Reader r333 :=
 Rootcert2Flow.reject [] d333 c333 a333 (by decide) (by decide) (by decide)
#print axioms reject333
end Blc.Rootcert2.FlowCases49
