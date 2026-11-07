import Flow
namespace Blc.Rootcert2.FlowCases07
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r59 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))) (.var 1))
def d59 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c59 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a59 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject59 : ¬ Reader r59 :=
 Rootcert2Flow.reject [] d59 c59 a59 (by decide) (by decide) (by decide)
#print axioms reject59

def r65 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))) (.var 1))
def d65 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c65 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a65 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject65 : ¬ Reader r65 :=
 Rootcert2Flow.reject [] d65 c65 a65 (by decide) (by decide) (by decide)
#print axioms reject65

def r71 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))) (.var 1))
def d71 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c71 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a71 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject71 : ¬ Reader r71 :=
 Rootcert2Flow.reject [] d71 c71 a71 (by decide) (by decide) (by decide)
#print axioms reject71

def r77 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))) (.var 1))
def d77 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c77 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a77 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject77 : ¬ Reader r77 :=
 Rootcert2Flow.reject [] d77 c77 a77 (by decide) (by decide) (by decide)
#print axioms reject77

def r83 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))) (.var 1))
def d83 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c83 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a83 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject83 : ¬ Reader r83 :=
 Rootcert2Flow.reject [] d83 c83 a83 (by decide) (by decide) (by decide)
#print axioms reject83
end Blc.Rootcert2.FlowCases07
