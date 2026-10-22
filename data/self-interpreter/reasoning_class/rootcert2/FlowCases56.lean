import Flow
namespace Blc.Rootcert2.FlowCases56
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r480 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))
def d480 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c480 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a480 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject480 : ¬ Reader r480 :=
 Rootcert2Flow.reject [] d480 c480 a480 (by decide) (by decide) (by decide)
#print axioms reject480

def r481 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1))
def d481 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c481 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a481 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject481 : ¬ Reader r481 :=
 Rootcert2Flow.reject [] d481 c481 a481 (by decide) (by decide) (by decide)
#print axioms reject481
end Blc.Rootcert2.FlowCases56
