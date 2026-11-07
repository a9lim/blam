import Flow
namespace Blc.Rootcert2.FlowCases13
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r91 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 1)))) (.var 1))
def d91 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c91 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a91 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject91 : ¬ Reader r91 :=
 Rootcert2Flow.reject [] d91 c91 a91 (by decide) (by decide) (by decide)
#print axioms reject91

def r93 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 1)))) (.var 1))
def d93 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c93 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a93 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject93 : ¬ Reader r93 :=
 Rootcert2Flow.reject [] d93 c93 a93 (by decide) (by decide) (by decide)
#print axioms reject93

def r97 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 1)))) (.var 1))
def d97 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c97 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a97 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject97 : ¬ Reader r97 :=
 Rootcert2Flow.reject [] d97 c97 a97 (by decide) (by decide) (by decide)
#print axioms reject97

def r101 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 1)))) (.var 1))
def d101 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c101 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a101 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject101 : ¬ Reader r101 :=
 Rootcert2Flow.reject [] d101 c101 a101 (by decide) (by decide) (by decide)
#print axioms reject101

def r105 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 1)))) (.var 1))
def d105 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c105 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a105 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject105 : ¬ Reader r105 :=
 Rootcert2Flow.reject [] d105 c105 a105 (by decide) (by decide) (by decide)
#print axioms reject105
end Blc.Rootcert2.FlowCases13
