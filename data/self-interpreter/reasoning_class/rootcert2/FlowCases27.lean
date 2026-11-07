import Flow
namespace Blc.Rootcert2.FlowCases27
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r251 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 2))))) (.var 1))
def d251 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c251 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a251 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.var 1 [5,6]) [6]) [6]) (.var 0 [5,6]) []) (.var 2 [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject251 : ¬ Reader r251 :=
 Rootcert2Flow.reject [] d251 c251 a251 (by decide) (by decide) (by decide)
#print axioms reject251

def r254 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 2))))) (.var 1))
def d254 : List FTy := [[],[],[],[],[5],[5,6],[5],[],[],[]]
def c254 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a254 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 1 [5,6]) [6]) [6]) (.var 0 [5]) []) (.var 2 [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject254 : ¬ Reader r254 :=
 Rootcert2Flow.reject [] d254 c254 a254 (by decide) (by decide) (by decide)
#print axioms reject254

def r258 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 2))))) (.var 1))
def d258 : List FTy := [[],[],[],[],[5],[5,6],[5],[],[],[]]
def c258 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a258 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 1 [5,6]) [6]) [6]) (.var 0 [5]) []) (.var 2 [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject258 : ¬ Reader r258 :=
 Rootcert2Flow.reject [] d258 c258 a258 (by decide) (by decide) (by decide)
#print axioms reject258
end Blc.Rootcert2.FlowCases27
