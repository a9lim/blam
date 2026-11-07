import Flow
namespace Blc.Rootcert2.FlowCases00
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r0 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 1)))) (.var 1))
def d0 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c0 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a0 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject0 : ¬ Reader r0 :=
 Rootcert2Flow.reject [] d0 c0 a0 (by decide) (by decide) (by decide)
#print axioms reject0

def r2 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 1)))) (.var 1))
def d2 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c2 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a2 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject2 : ¬ Reader r2 :=
 Rootcert2Flow.reject [] d2 c2 a2 (by decide) (by decide) (by decide)
#print axioms reject2

def r4 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 1)))) (.var 1))
def d4 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c4 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a4 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject4 : ¬ Reader r4 :=
 Rootcert2Flow.reject [] d4 c4 a4 (by decide) (by decide) (by decide)
#print axioms reject4

def r6 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 1)))) (.var 1))
def d6 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c6 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a6 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject6 : ¬ Reader r6 :=
 Rootcert2Flow.reject [] d6 c6 a6 (by decide) (by decide) (by decide)
#print axioms reject6

def r8 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 1)))) (.var 1))
def d8 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c8 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a8 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject8 : ¬ Reader r8 :=
 Rootcert2Flow.reject [] d8 c8 a8 (by decide) (by decide) (by decide)
#print axioms reject8
end Blc.Rootcert2.FlowCases00
