import Flow
namespace Blc.Rootcert2.FlowCases52
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r444 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))
def d444 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c444 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a444 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject444 : ¬ Reader r444 :=
 Rootcert2Flow.reject [] d444 c444 a444 (by decide) (by decide) (by decide)
#print axioms reject444

def r445 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1))
def d445 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c445 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a445 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject445 : ¬ Reader r445 :=
 Rootcert2Flow.reject [] d445 c445 a445 (by decide) (by decide) (by decide)
#print axioms reject445
end Blc.Rootcert2.FlowCases52
