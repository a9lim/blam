import Flow
namespace Blc.Rootcert2.FlowCases29
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r255 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.var 0))))) (.var 1))
def d255 : List FTy := [[],[],[],[],[5],[0,5,6],[5],[],[],[]]
def c255 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a255 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 0 [5]) (.app (.var 2 [0]) (.var 1 [0,5,6]) [0]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject255 : ¬ Reader r255 :=
 Rootcert2Flow.reject [] d255 c255 a255 (by decide) (by decide) (by decide)
#print axioms reject255

def r259 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.var 0))))) (.var 1))
def d259 : List FTy := [[],[],[],[],[5],[0,5],[5],[],[],[]]
def c259 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a259 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 0 [5]) (.app (.var 2 [0]) (.var 1 [0,5]) [0]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject259 : ¬ Reader r259 :=
 Rootcert2Flow.reject [] d259 c259 a259 (by decide) (by decide) (by decide)
#print axioms reject259
end Blc.Rootcert2.FlowCases29
