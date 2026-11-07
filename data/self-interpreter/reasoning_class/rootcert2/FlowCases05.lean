import Flow
namespace Blc.Rootcert2.FlowCases05
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r57 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 1))
def d57 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c57 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a57 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 2 [0]) (.var 0 [6]) [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject57 : ¬ Reader r57 :=
 Rootcert2Flow.reject [] d57 c57 a57 (by decide) (by decide) (by decide)
#print axioms reject57

def r63 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 1))
def d63 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c63 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a63 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 2 [0]) (.var 0 [6]) [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject63 : ¬ Reader r63 :=
 Rootcert2Flow.reject [] d63 c63 a63 (by decide) (by decide) (by decide)
#print axioms reject63

def r69 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 1))
def d69 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c69 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a69 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 2 [0]) (.var 0 [6]) [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject69 : ¬ Reader r69 :=
 Rootcert2Flow.reject [] d69 c69 a69 (by decide) (by decide) (by decide)
#print axioms reject69

def r75 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 1))
def d75 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c75 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a75 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 2 [0]) (.var 0 [6]) [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject75 : ¬ Reader r75 :=
 Rootcert2Flow.reject [] d75 c75 a75 (by decide) (by decide) (by decide)
#print axioms reject75

def r81 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 1))
def d81 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c81 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a81 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 2 [0]) (.var 0 [6]) [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject81 : ¬ Reader r81 :=
 Rootcert2Flow.reject [] d81 c81 a81 (by decide) (by decide) (by decide)
#print axioms reject81
end Blc.Rootcert2.FlowCases05
