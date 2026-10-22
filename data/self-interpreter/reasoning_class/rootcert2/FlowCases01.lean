import Flow
namespace Blc.Rootcert2.FlowCases01
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r1 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1)))) (.var 1))
def d1 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1 : ¬ Reader r1 :=
 Rootcert2Flow.reject [] d1 c1 a1 (by decide) (by decide) (by decide)
#print axioms reject1

def r3 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1)))) (.var 1))
def d3 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c3 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a3 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject3 : ¬ Reader r3 :=
 Rootcert2Flow.reject [] d3 c3 a3 (by decide) (by decide) (by decide)
#print axioms reject3

def r5 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1)))) (.var 1))
def d5 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c5 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a5 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject5 : ¬ Reader r5 :=
 Rootcert2Flow.reject [] d5 c5 a5 (by decide) (by decide) (by decide)
#print axioms reject5

def r7 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1)))) (.var 1))
def d7 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c7 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a7 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject7 : ¬ Reader r7 :=
 Rootcert2Flow.reject [] d7 c7 a7 (by decide) (by decide) (by decide)
#print axioms reject7

def r9 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1)))) (.var 1))
def d9 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c9 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a9 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject9 : ¬ Reader r9 :=
 Rootcert2Flow.reject [] d9 c9 a9 (by decide) (by decide) (by decide)
#print axioms reject9
end Blc.Rootcert2.FlowCases01
