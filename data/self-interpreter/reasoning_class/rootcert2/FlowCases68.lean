import Flow
namespace Blc.Rootcert2.FlowCases68
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r644 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.var 1)) (.var 0))
def d644 : List FTy := [[],[],[],[],[5],[5],[6],[1,8],[],[],[],[]]
def c644 : List FTy := [[],[],[],[],[7],[6],[7],[],[1,8],[],[11],[]]
def a644 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [7]) [4]) (.lam 5 (.lam 6 (.lam 7 (.app (.app (.var 1 [6]) (.var 1 [6]) [7]) (.lam 8 (.var 1 [1,8]) [8]) []) [7]) [6]) [5]) [7]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject644 : ¬ Reader r644 :=
 Rootcert2Flow.reject [] d644 c644 a644 (by decide) (by decide) (by decide)
#print axioms reject644

def r645 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1))))))) (.var 0)) (.var 1))
def d645 : List FTy := [[],[],[],[],[5],[5],[6],[0,8],[],[],[],[]]
def c645 : List FTy := [[],[],[],[],[7],[6],[7],[],[0,8],[],[11],[]]
def a645 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [7]) [4]) (.lam 5 (.lam 6 (.lam 7 (.app (.app (.var 1 [6]) (.var 1 [6]) [7]) (.lam 8 (.var 1 [0,8]) [8]) []) [7]) [6]) [5]) [7]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject645 : ¬ Reader r645 :=
 Rootcert2Flow.reject [] d645 c645 a645 (by decide) (by decide) (by decide)
#print axioms reject645
end Blc.Rootcert2.FlowCases68
