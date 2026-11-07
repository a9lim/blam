import Flow
namespace Blc.Rootcert2.FlowCases08
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r60 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))) (.var 1))
def d60 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c60 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a60 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject60 : ¬ Reader r60 :=
 Rootcert2Flow.reject [] d60 c60 a60 (by decide) (by decide) (by decide)
#print axioms reject60

def r66 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))) (.var 1))
def d66 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c66 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a66 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject66 : ¬ Reader r66 :=
 Rootcert2Flow.reject [] d66 c66 a66 (by decide) (by decide) (by decide)
#print axioms reject66

def r72 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))) (.var 1))
def d72 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c72 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a72 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject72 : ¬ Reader r72 :=
 Rootcert2Flow.reject [] d72 c72 a72 (by decide) (by decide) (by decide)
#print axioms reject72

def r78 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))) (.var 1))
def d78 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c78 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a78 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject78 : ¬ Reader r78 :=
 Rootcert2Flow.reject [] d78 c78 a78 (by decide) (by decide) (by decide)
#print axioms reject78

def r84 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))) (.var 1))
def d84 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c84 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a84 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject84 : ¬ Reader r84 :=
 Rootcert2Flow.reject [] d84 c84 a84 (by decide) (by decide) (by decide)
#print axioms reject84
end Blc.Rootcert2.FlowCases08
