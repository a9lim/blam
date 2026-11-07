import Flow
namespace Blc.Rootcert2.FlowCases04
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r56 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 1))
def d56 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c56 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a56 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject56 : ¬ Reader r56 :=
 Rootcert2Flow.reject [] d56 c56 a56 (by decide) (by decide) (by decide)
#print axioms reject56

def r62 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 1))
def d62 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c62 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a62 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject62 : ¬ Reader r62 :=
 Rootcert2Flow.reject [] d62 c62 a62 (by decide) (by decide) (by decide)
#print axioms reject62

def r68 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 1))
def d68 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c68 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a68 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject68 : ¬ Reader r68 :=
 Rootcert2Flow.reject [] d68 c68 a68 (by decide) (by decide) (by decide)
#print axioms reject68

def r74 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 1))
def d74 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c74 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a74 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject74 : ¬ Reader r74 :=
 Rootcert2Flow.reject [] d74 c74 a74 (by decide) (by decide) (by decide)
#print axioms reject74

def r80 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 1))
def d80 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c80 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a80 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject80 : ¬ Reader r80 :=
 Rootcert2Flow.reject [] d80 c80 a80 (by decide) (by decide) (by decide)
#print axioms reject80
end Blc.Rootcert2.FlowCases04
