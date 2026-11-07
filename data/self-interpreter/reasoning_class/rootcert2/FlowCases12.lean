import Flow
namespace Blc.Rootcert2.FlowCases12
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r90 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 1)))) (.var 1))
def d90 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c90 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a90 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject90 : ¬ Reader r90 :=
 Rootcert2Flow.reject [] d90 c90 a90 (by decide) (by decide) (by decide)
#print axioms reject90

def r92 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 1)))) (.var 1))
def d92 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c92 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a92 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject92 : ¬ Reader r92 :=
 Rootcert2Flow.reject [] d92 c92 a92 (by decide) (by decide) (by decide)
#print axioms reject92

def r96 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 1)))) (.var 1))
def d96 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c96 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a96 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject96 : ¬ Reader r96 :=
 Rootcert2Flow.reject [] d96 c96 a96 (by decide) (by decide) (by decide)
#print axioms reject96

def r100 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 1)))) (.var 1))
def d100 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c100 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a100 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject100 : ¬ Reader r100 :=
 Rootcert2Flow.reject [] d100 c100 a100 (by decide) (by decide) (by decide)
#print axioms reject100

def r104 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 1)))) (.var 1))
def d104 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c104 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a104 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject104 : ¬ Reader r104 :=
 Rootcert2Flow.reject [] d104 c104 a104 (by decide) (by decide) (by decide)
#print axioms reject104
end Blc.Rootcert2.FlowCases12
