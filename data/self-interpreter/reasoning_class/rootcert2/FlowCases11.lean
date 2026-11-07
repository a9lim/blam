import Flow
namespace Blc.Rootcert2.FlowCases11
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r88 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 0)))) (.var 1))
def d88 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c88 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a88 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject88 : ¬ Reader r88 :=
 Rootcert2Flow.reject [] d88 c88 a88 (by decide) (by decide) (by decide)
#print axioms reject88

def r89 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 0)))) (.var 1))
def d89 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c89 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a89 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject89 : ¬ Reader r89 :=
 Rootcert2Flow.reject [] d89 c89 a89 (by decide) (by decide) (by decide)
#print axioms reject89

def r95 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 0)))) (.var 1))
def d95 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c95 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a95 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject95 : ¬ Reader r95 :=
 Rootcert2Flow.reject [] d95 c95 a95 (by decide) (by decide) (by decide)
#print axioms reject95

def r99 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 0)))) (.var 1))
def d99 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c99 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a99 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject99 : ¬ Reader r99 :=
 Rootcert2Flow.reject [] d99 c99 a99 (by decide) (by decide) (by decide)
#print axioms reject99

def r103 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 0)))) (.var 1))
def d103 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c103 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a103 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject103 : ¬ Reader r103 :=
 Rootcert2Flow.reject [] d103 c103 a103 (by decide) (by decide) (by decide)
#print axioms reject103
end Blc.Rootcert2.FlowCases11
