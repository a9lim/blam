import Flow
namespace Blc.Rootcert2.FlowCases06
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r58 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))) (.var 1))
def d58 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c58 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a58 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) (.app (.var 0 [0,6]) (.var 2 [0]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject58 : ¬ Reader r58 :=
 Rootcert2Flow.reject [] d58 c58 a58 (by decide) (by decide) (by decide)
#print axioms reject58

def r64 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))) (.var 1))
def d64 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c64 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a64 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.var 0 [5]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) (.app (.var 0 [0,6]) (.var 2 [0]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject64 : ¬ Reader r64 :=
 Rootcert2Flow.reject [] d64 c64 a64 (by decide) (by decide) (by decide)
#print axioms reject64

def r70 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))) (.var 1))
def d70 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c70 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a70 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.var 0 [5]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) (.app (.var 0 [0,6]) (.var 2 [0]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject70 : ¬ Reader r70 :=
 Rootcert2Flow.reject [] d70 c70 a70 (by decide) (by decide) (by decide)
#print axioms reject70

def r76 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))) (.var 1))
def d76 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c76 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a76 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [0]) [0]) (.var 0 [5]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) (.app (.var 0 [0,6]) (.var 2 [0]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject76 : ¬ Reader r76 :=
 Rootcert2Flow.reject [] d76 c76 a76 (by decide) (by decide) (by decide)
#print axioms reject76

def r82 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))) (.var 1))
def d82 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c82 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a82 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.var 0 [5]) [0]) (.var 0 [5]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) (.app (.var 0 [0,6]) (.var 2 [0]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject82 : ¬ Reader r82 :=
 Rootcert2Flow.reject [] d82 c82 a82 (by decide) (by decide) (by decide)
#print axioms reject82
end Blc.Rootcert2.FlowCases06
