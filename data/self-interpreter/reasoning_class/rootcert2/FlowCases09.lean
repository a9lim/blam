import Flow
namespace Blc.Rootcert2.FlowCases09
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r61 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))) (.var 1))
def d61 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c61 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a61 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject61 : ¬ Reader r61 :=
 Rootcert2Flow.reject [] d61 c61 a61 (by decide) (by decide) (by decide)
#print axioms reject61

def r67 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))) (.var 1))
def d67 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c67 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a67 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject67 : ¬ Reader r67 :=
 Rootcert2Flow.reject [] d67 c67 a67 (by decide) (by decide) (by decide)
#print axioms reject67

def r73 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))) (.var 1))
def d73 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c73 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a73 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject73 : ¬ Reader r73 :=
 Rootcert2Flow.reject [] d73 c73 a73 (by decide) (by decide) (by decide)
#print axioms reject73

def r79 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))) (.var 1))
def d79 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c79 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a79 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject79 : ¬ Reader r79 :=
 Rootcert2Flow.reject [] d79 c79 a79 (by decide) (by decide) (by decide)
#print axioms reject79

def r85 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))) (.var 1))
def d85 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c85 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a85 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject85 : ¬ Reader r85 :=
 Rootcert2Flow.reject [] d85 c85 a85 (by decide) (by decide) (by decide)
#print axioms reject85
end Blc.Rootcert2.FlowCases09
