import Flow
namespace Blc.Rootcert2.FlowCases14
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r106 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d106 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c106 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a106 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject106 : ¬ Reader r106 :=
 Rootcert2Flow.reject [] d106 c106 a106 (by decide) (by decide) (by decide)
#print axioms reject106

def r108 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d108 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c108 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a108 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject108 : ¬ Reader r108 :=
 Rootcert2Flow.reject [] d108 c108 a108 (by decide) (by decide) (by decide)
#print axioms reject108

def r110 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d110 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c110 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a110 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.var 1 [0,5,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject110 : ¬ Reader r110 :=
 Rootcert2Flow.reject [] d110 c110 a110 (by decide) (by decide) (by decide)
#print axioms reject110

def r112 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d112 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c112 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a112 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject112 : ¬ Reader r112 :=
 Rootcert2Flow.reject [] d112 c112 a112 (by decide) (by decide) (by decide)
#print axioms reject112

def r114 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d114 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c114 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a114 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 1 [0]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject114 : ¬ Reader r114 :=
 Rootcert2Flow.reject [] d114 c114 a114 (by decide) (by decide) (by decide)
#print axioms reject114

def r116 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d116 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c116 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a116 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 1 [0]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject116 : ¬ Reader r116 :=
 Rootcert2Flow.reject [] d116 c116 a116 (by decide) (by decide) (by decide)
#print axioms reject116

def r118 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d118 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c118 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a118 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject118 : ¬ Reader r118 :=
 Rootcert2Flow.reject [] d118 c118 a118 (by decide) (by decide) (by decide)
#print axioms reject118

def r120 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d120 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c120 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a120 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [0]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.var 1 [0,5,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject120 : ¬ Reader r120 :=
 Rootcert2Flow.reject [] d120 c120 a120 (by decide) (by decide) (by decide)
#print axioms reject120

def r122 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d122 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c122 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a122 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 1 [0]) (.app (.var 0 [5]) (.var 0 [5]) []) [0]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject122 : ¬ Reader r122 :=
 Rootcert2Flow.reject [] d122 c122 a122 (by decide) (by decide) (by decide)
#print axioms reject122

def r124 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d124 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c124 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a124 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.app (.var 1 [0]) (.var 0 [5]) [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.var 1 [0,5,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject124 : ¬ Reader r124 :=
 Rootcert2Flow.reject [] d124 c124 a124 (by decide) (by decide) (by decide)
#print axioms reject124

def r126 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d126 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c126 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a126 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.var 1 [0,5,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject126 : ¬ Reader r126 :=
 Rootcert2Flow.reject [] d126 c126 a126 (by decide) (by decide) (by decide)
#print axioms reject126

def r128 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d128 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c128 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a128 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.app (.var 1 [0]) (.var 0 [5]) [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject128 : ¬ Reader r128 :=
 Rootcert2Flow.reject [] d128 c128 a128 (by decide) (by decide) (by decide)
#print axioms reject128

def r130 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d130 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c130 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a130 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.app (.var 0 [5]) (.var 1 [0]) [0]) (.var 0 [5]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.var 1 [0,5,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject130 : ¬ Reader r130 :=
 Rootcert2Flow.reject [] d130 c130 a130 (by decide) (by decide) (by decide)
#print axioms reject130

def r132 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d132 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c132 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a132 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject132 : ¬ Reader r132 :=
 Rootcert2Flow.reject [] d132 c132 a132 (by decide) (by decide) (by decide)
#print axioms reject132

def r134 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d134 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c134 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a134 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject134 : ¬ Reader r134 :=
 Rootcert2Flow.reject [] d134 c134 a134 (by decide) (by decide) (by decide)
#print axioms reject134

def r136 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d136 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c136 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a136 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject136 : ¬ Reader r136 :=
 Rootcert2Flow.reject [] d136 c136 a136 (by decide) (by decide) (by decide)
#print axioms reject136

def r138 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d138 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c138 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a138 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.var 1 [0,5,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject138 : ¬ Reader r138 :=
 Rootcert2Flow.reject [] d138 c138 a138 (by decide) (by decide) (by decide)
#print axioms reject138

def r140 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d140 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c140 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a140 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject140 : ¬ Reader r140 :=
 Rootcert2Flow.reject [] d140 c140 a140 (by decide) (by decide) (by decide)
#print axioms reject140

def r142 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d142 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c142 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a142 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 1 [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject142 : ¬ Reader r142 :=
 Rootcert2Flow.reject [] d142 c142 a142 (by decide) (by decide) (by decide)
#print axioms reject142

def r144 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d144 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c144 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a144 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject144 : ¬ Reader r144 :=
 Rootcert2Flow.reject [] d144 c144 a144 (by decide) (by decide) (by decide)
#print axioms reject144

def r146 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d146 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c146 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a146 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) (.var 0 [5]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.var 1 [0,5,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject146 : ¬ Reader r146 :=
 Rootcert2Flow.reject [] d146 c146 a146 (by decide) (by decide) (by decide)
#print axioms reject146

def r148 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d148 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c148 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a148 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject148 : ¬ Reader r148 :=
 Rootcert2Flow.reject [] d148 c148 a148 (by decide) (by decide) (by decide)
#print axioms reject148

def r150 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1))
def d150 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c150 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a150 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 1 [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject150 : ¬ Reader r150 :=
 Rootcert2Flow.reject [] d150 c150 a150 (by decide) (by decide) (by decide)
#print axioms reject150

def r360 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))
def d360 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c360 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a360 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject360 : ¬ Reader r360 :=
 Rootcert2Flow.reject [] d360 c360 a360 (by decide) (by decide) (by decide)
#print axioms reject360

def r361 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1))
def d361 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c361 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a361 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject361 : ¬ Reader r361 :=
 Rootcert2Flow.reject [] d361 c361 a361 (by decide) (by decide) (by decide)
#print axioms reject361

def r364 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))
def d364 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c364 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a364 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject364 : ¬ Reader r364 :=
 Rootcert2Flow.reject [] d364 c364 a364 (by decide) (by decide) (by decide)
#print axioms reject364

def r365 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1))
def d365 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c365 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a365 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject365 : ¬ Reader r365 :=
 Rootcert2Flow.reject [] d365 c365 a365 (by decide) (by decide) (by decide)
#print axioms reject365

def r368 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))
def d368 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c368 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a368 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject368 : ¬ Reader r368 :=
 Rootcert2Flow.reject [] d368 c368 a368 (by decide) (by decide) (by decide)
#print axioms reject368

def r369 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1))
def d369 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c369 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a369 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject369 : ¬ Reader r369 :=
 Rootcert2Flow.reject [] d369 c369 a369 (by decide) (by decide) (by decide)
#print axioms reject369

def r372 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))
def d372 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c372 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a372 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject372 : ¬ Reader r372 :=
 Rootcert2Flow.reject [] d372 c372 a372 (by decide) (by decide) (by decide)
#print axioms reject372

def r373 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1))
def d373 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c373 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a373 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject373 : ¬ Reader r373 :=
 Rootcert2Flow.reject [] d373 c373 a373 (by decide) (by decide) (by decide)
#print axioms reject373

def r376 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))
def d376 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c376 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a376 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject376 : ¬ Reader r376 :=
 Rootcert2Flow.reject [] d376 c376 a376 (by decide) (by decide) (by decide)
#print axioms reject376

def r377 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1))
def d377 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c377 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a377 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject377 : ¬ Reader r377 :=
 Rootcert2Flow.reject [] d377 c377 a377 (by decide) (by decide) (by decide)
#print axioms reject377
end Blc.Rootcert2.FlowCases14
