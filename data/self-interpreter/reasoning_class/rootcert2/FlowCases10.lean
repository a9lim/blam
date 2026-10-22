import Flow
namespace Blc.Rootcert2.FlowCases10
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r86 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 1))
def d86 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c86 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a86 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject86 : ¬ Reader r86 :=
 Rootcert2Flow.reject [] d86 c86 a86 (by decide) (by decide) (by decide)
#print axioms reject86

def r87 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 1))
def d87 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c87 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a87 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject87 : ¬ Reader r87 :=
 Rootcert2Flow.reject [] d87 c87 a87 (by decide) (by decide) (by decide)
#print axioms reject87

def r94 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 1))
def d94 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c94 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a94 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject94 : ¬ Reader r94 :=
 Rootcert2Flow.reject [] d94 c94 a94 (by decide) (by decide) (by decide)
#print axioms reject94

def r98 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 1))
def d98 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c98 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a98 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject98 : ¬ Reader r98 :=
 Rootcert2Flow.reject [] d98 c98 a98 (by decide) (by decide) (by decide)
#print axioms reject98

def r102 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 1))
def d102 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c102 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a102 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject102 : ¬ Reader r102 :=
 Rootcert2Flow.reject [] d102 c102 a102 (by decide) (by decide) (by decide)
#print axioms reject102
end Blc.Rootcert2.FlowCases10
