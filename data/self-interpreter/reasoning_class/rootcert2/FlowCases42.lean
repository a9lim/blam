import Flow
namespace Blc.Rootcert2.FlowCases42
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r310 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.var 1))
def d310 : List FTy := [[],[],[],[],[6],[],[6],[0,1,5],[],[],[]]
def c310 : List FTy := [[],[],[],[],[7],[6],[7],[],[],[10],[]]
def a310 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.app (.app (.var 0 [6]) (.var 0 [6]) [7]) (.lam 5 (.var 1 [6]) [5]) []) [7]) [4]) (.lam 6 (.lam 7 (.app (.app (.var 1 [6]) (.var 1 [6]) [7]) (.app (.var 2 [0]) (.var 0 [0,1,5]) [0]) []) [7]) [6]) [7]) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject310 : ¬ Reader r310 :=
 Rootcert2Flow.reject [] d310 c310 a310 (by decide) (by decide) (by decide)
#print axioms reject310

def r312 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.var 1))
def d312 : List FTy := [[],[],[],[],[6],[0,5,6],[0,5,6],[0,1,7,8],[],[],[]]
def c312 : List FTy := [[],[],[],[],[0,7],[6],[7],[0,7],[],[10],[]]
def a312 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.var 0 [6]) [7]) (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) [0,7]) [4]) (.lam 6 (.lam 7 (.app (.app (.var 1 [0,5,6]) (.var 1 [0,5,6]) [0,6,7]) (.app (.var 2 [0]) (.var 0 [0,1,7,8]) [0]) [0,7]) [7]) [6]) [0,7]) (.var 1 [1]) [0,7]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0,7])
theorem reject312 : ¬ Reader r312 :=
 Rootcert2Flow.reject [] d312 c312 a312 (by decide) (by decide) (by decide)
#print axioms reject312

def r315 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.var 1))
def d315 : List FTy := [[],[],[],[],[6],[],[6,7],[0,5,6,7],[],[],[]]
def c315 : List FTy := [[],[],[],[],[],[6],[7],[],[],[10],[]]
def a315 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.app (.var 0 [6]) (.var 0 [6]) [7]) [7]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.lam 7 (.app (.app (.var 1 [6,7]) (.var 1 [6,7]) [7]) (.app (.var 2 [0]) (.var 0 [0,5,6,7]) [0]) []) [7]) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject315 : ¬ Reader r315 :=
 Rootcert2Flow.reject [] d315 c315 a315 (by decide) (by decide) (by decide)
#print axioms reject315

def r317 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.var 1))
def d317 : List FTy := [[],[],[],[],[6],[],[6],[0,6],[],[],[]]
def c317 : List FTy := [[],[],[],[],[],[6],[7],[],[],[10],[]]
def a317 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [6]) (.var 0 [6]) [7]) (.var 0 [6]) []) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.lam 7 (.app (.app (.var 1 [6]) (.var 1 [6]) [7]) (.app (.var 2 [0]) (.var 0 [0,6]) [0]) []) [7]) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject317 : ¬ Reader r317 :=
 Rootcert2Flow.reject [] d317 c317 a317 (by decide) (by decide) (by decide)
#print axioms reject317

def r319 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.var 1))
def d319 : List FTy := [[],[],[],[],[6],[],[6],[0,5],[],[],[]]
def c319 : List FTy := [[],[],[],[],[],[6],[7],[],[],[10],[]]
def a319 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [6]) (.var 0 [6]) [7]) (.lam 5 (.var 1 [6]) [5]) []) (.var 0 [6]) []) [4]) (.lam 6 (.lam 7 (.app (.app (.var 1 [6]) (.var 1 [6]) [7]) (.app (.var 2 [0]) (.var 0 [0,5]) [0]) []) [7]) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject319 : ¬ Reader r319 :=
 Rootcert2Flow.reject [] d319 c319 a319 (by decide) (by decide) (by decide)
#print axioms reject319
end Blc.Rootcert2.FlowCases42
