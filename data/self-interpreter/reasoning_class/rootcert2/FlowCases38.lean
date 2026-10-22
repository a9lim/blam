import Flow
namespace Blc.Rootcert2.FlowCases38
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r293 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 2))))) (.var 1))
def d293 : List FTy := [[],[],[],[],[5],[5,6],[1,5,6,7],[],[],[],[]]
def c293 : List FTy := [[],[],[],[],[6],[6],[],[1,5,6,7],[],[10],[]]
def a293 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.lam 7 (.var 1 [1,5,6,7]) [7]) []) (.var 2 [0]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject293 : ¬ Reader r293 :=
 Rootcert2Flow.reject [] d293 c293 a293 (by decide) (by decide) (by decide)
#print axioms reject293

def r294 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 2))))) (.var 1))
def d294 : List FTy := [[],[],[],[],[5],[5],[1,5,7],[],[],[],[]]
def c294 : List FTy := [[],[],[],[],[6],[6],[],[1,5,7],[],[10],[]]
def a294 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [1,5,7]) [7]) []) (.var 2 [0]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject294 : ¬ Reader r294 :=
 Rootcert2Flow.reject [] d294 c294 a294 (by decide) (by decide) (by decide)
#print axioms reject294

def r299 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 2))))) (.var 1))
def d299 : List FTy := [[],[],[],[],[5],[5],[6,7],[],[],[],[]]
def c299 : List FTy := [[],[],[],[],[],[6],[],[6,7],[],[10],[]]
def a299 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [6,7]) [7]) []) (.var 2 [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject299 : ¬ Reader r299 :=
 Rootcert2Flow.reject [] d299 c299 a299 (by decide) (by decide) (by decide)
#print axioms reject299

def r304 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 2))))) (.var 1))
def d304 : List FTy := [[],[],[],[],[5],[5,6],[5,6,7],[],[],[],[]]
def c304 : List FTy := [[],[],[],[],[],[6],[],[5,6,7],[],[10],[]]
def a304 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.lam 7 (.var 1 [5,6,7]) [7]) []) (.var 2 [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject304 : ¬ Reader r304 :=
 Rootcert2Flow.reject [] d304 c304 a304 (by decide) (by decide) (by decide)
#print axioms reject304

def r309 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 2))))) (.var 1))
def d309 : List FTy := [[],[],[],[],[5],[5],[5,7],[],[],[],[]]
def c309 : List FTy := [[],[],[],[],[],[6],[],[5,7],[],[10],[]]
def a309 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [5,7]) [7]) []) (.var 2 [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject309 : ¬ Reader r309 :=
 Rootcert2Flow.reject [] d309 c309 a309 (by decide) (by decide) (by decide)
#print axioms reject309
end Blc.Rootcert2.FlowCases38
