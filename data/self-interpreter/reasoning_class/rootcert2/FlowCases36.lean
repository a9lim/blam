import Flow
namespace Blc.Rootcert2.FlowCases36
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r289 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 1))))))) (.var 1))
def d289 : List FTy := [[],[],[],[],[5],[5,6],[0,1,5,6],[],[],[],[]]
def c289 : List FTy := [[],[],[],[],[6],[6],[],[0,1,5,6],[],[10],[]]
def a289 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 2 [0]) (.lam 7 (.var 1 [0,1,5,6]) [7]) [0]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject289 : ¬ Reader r289 :=
 Rootcert2Flow.reject [] d289 c289 a289 (by decide) (by decide) (by decide)
#print axioms reject289

def r291 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 1))))))) (.var 1))
def d291 : List FTy := [[],[],[],[],[5],[5],[0,1,5],[],[],[],[]]
def c291 : List FTy := [[],[],[],[],[6],[6],[],[0,1,5],[],[10],[]]
def a291 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 2 [0]) (.lam 7 (.var 1 [0,1,5]) [7]) [0]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject291 : ¬ Reader r291 :=
 Rootcert2Flow.reject [] d291 c291 a291 (by decide) (by decide) (by decide)
#print axioms reject291

def r297 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 1))))))) (.var 1))
def d297 : List FTy := [[],[],[],[],[5],[5],[0,6],[],[],[],[]]
def c297 : List FTy := [[],[],[],[],[],[6],[],[0,6],[],[10],[]]
def a297 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 2 [0]) (.lam 7 (.var 1 [0,6]) [7]) [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject297 : ¬ Reader r297 :=
 Rootcert2Flow.reject [] d297 c297 a297 (by decide) (by decide) (by decide)
#print axioms reject297

def r302 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 1))))))) (.var 1))
def d302 : List FTy := [[],[],[],[],[5],[5,6],[0,5,6],[],[],[],[]]
def c302 : List FTy := [[],[],[],[],[],[6],[],[0,5,6],[],[10],[]]
def a302 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 2 [0]) (.lam 7 (.var 1 [0,5,6]) [7]) [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject302 : ¬ Reader r302 :=
 Rootcert2Flow.reject [] d302 c302 a302 (by decide) (by decide) (by decide)
#print axioms reject302

def r307 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 1))))))) (.var 1))
def d307 : List FTy := [[],[],[],[],[5],[5],[0,5],[],[],[],[]]
def c307 : List FTy := [[],[],[],[],[],[6],[],[0,5],[],[10],[]]
def a307 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 2 [0]) (.lam 7 (.var 1 [0,5]) [7]) [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject307 : ¬ Reader r307 :=
 Rootcert2Flow.reject [] d307 c307 a307 (by decide) (by decide) (by decide)
#print axioms reject307
end Blc.Rootcert2.FlowCases36
