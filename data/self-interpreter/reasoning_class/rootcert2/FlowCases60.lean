import Flow
namespace Blc.Rootcert2.FlowCases60
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r528 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
def d528 : List FTy := [[],[],[],[],[5],[1,5,6],[1,5,6],[],[],[]]
def c528 : List FTy := [[],[],[],[],[6],[6],[1],[],[9],[]]
def a528 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [1,5,6]) (.var 1 [1,5,6]) [1,6]) (.app (.var 1 [1,5,6]) (.var 0 [1,5,6]) [1,6]) [1]) [6]) [5]) [6]) (.var 1 [1]) [1]) (.var 0 [0]) [1]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [1])
theorem reject528 : ¬ Reader r528 :=
 Rootcert2Flow.reject [] d528 c528 a528 (by decide) (by decide) (by decide)
#print axioms reject528

def r529 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
def d529 : List FTy := [[],[],[],[],[5],[0,5,6],[0,5,6],[],[],[]]
def c529 : List FTy := [[],[],[],[],[6],[6],[0],[],[9],[]]
def a529 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 1 [0,5,6]) [0,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,5,6]) [0,6]) [0]) [6]) [5]) [6]) (.var 0 [0]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject529 : ¬ Reader r529 :=
 Rootcert2Flow.reject [] d529 c529 a529 (by decide) (by decide) (by decide)
#print axioms reject529

def r532 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
def d532 : List FTy := [[],[],[],[],[5],[1,5,6],[1,5,6],[],[],[]]
def c532 : List FTy := [[],[],[],[],[6],[6],[1],[],[9],[]]
def a532 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [1]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [1,5,6]) (.var 1 [1,5,6]) [1,6]) (.app (.var 1 [1,5,6]) (.var 0 [1,5,6]) [1,6]) [1]) [6]) [5]) [6]) (.var 1 [1]) [1]) (.var 0 [0]) [1]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [1])
theorem reject532 : ¬ Reader r532 :=
 Rootcert2Flow.reject [] d532 c532 a532 (by decide) (by decide) (by decide)
#print axioms reject532

def r533 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
def d533 : List FTy := [[],[],[],[],[5],[0,5,6],[0,5,6],[],[],[]]
def c533 : List FTy := [[],[],[],[],[6],[6],[0],[],[9],[]]
def a533 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [0]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 1 [0,5,6]) [0,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,5,6]) [0,6]) [0]) [6]) [5]) [6]) (.var 0 [0]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject533 : ¬ Reader r533 :=
 Rootcert2Flow.reject [] d533 c533 a533 (by decide) (by decide) (by decide)
#print axioms reject533

def r548 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
def d548 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c548 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a548 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject548 : ¬ Reader r548 :=
 Rootcert2Flow.reject [] d548 c548 a548 (by decide) (by decide) (by decide)
#print axioms reject548

def r549 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
def d549 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c549 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a549 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject549 : ¬ Reader r549 :=
 Rootcert2Flow.reject [] d549 c549 a549 (by decide) (by decide) (by decide)
#print axioms reject549

def r562 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
def d562 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c562 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a562 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject562 : ¬ Reader r562 :=
 Rootcert2Flow.reject [] d562 c562 a562 (by decide) (by decide) (by decide)
#print axioms reject562

def r563 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
def d563 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c563 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a563 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject563 : ¬ Reader r563 :=
 Rootcert2Flow.reject [] d563 c563 a563 (by decide) (by decide) (by decide)
#print axioms reject563

def r578 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
def d578 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c578 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a578 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject578 : ¬ Reader r578 :=
 Rootcert2Flow.reject [] d578 c578 a578 (by decide) (by decide) (by decide)
#print axioms reject578

def r579 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
def d579 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c579 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a579 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject579 : ¬ Reader r579 :=
 Rootcert2Flow.reject [] d579 c579 a579 (by decide) (by decide) (by decide)
#print axioms reject579
end Blc.Rootcert2.FlowCases60
