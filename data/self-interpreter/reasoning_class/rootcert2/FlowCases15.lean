import Flow
namespace Blc.Rootcert2.FlowCases15
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r107 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d107 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c107 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a107 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject107 : ¬ Reader r107 :=
 Rootcert2Flow.reject [] d107 c107 a107 (by decide) (by decide) (by decide)
#print axioms reject107

def r109 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d109 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c109 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a109 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject109 : ¬ Reader r109 :=
 Rootcert2Flow.reject [] d109 c109 a109 (by decide) (by decide) (by decide)
#print axioms reject109

def r111 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d111 : List FTy := [[],[],[],[],[5],[0,5,6],[6],[],[],[]]
def c111 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a111 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [6]) [0]) (.var 1 [0,5,6]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject111 : ¬ Reader r111 :=
 Rootcert2Flow.reject [] d111 c111 a111 (by decide) (by decide) (by decide)
#print axioms reject111

def r113 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d113 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c113 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a113 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject113 : ¬ Reader r113 :=
 Rootcert2Flow.reject [] d113 c113 a113 (by decide) (by decide) (by decide)
#print axioms reject113

def r115 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d115 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c115 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a115 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 1 [0]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject115 : ¬ Reader r115 :=
 Rootcert2Flow.reject [] d115 c115 a115 (by decide) (by decide) (by decide)
#print axioms reject115

def r117 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d117 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c117 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a117 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 1 [0]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject117 : ¬ Reader r117 :=
 Rootcert2Flow.reject [] d117 c117 a117 (by decide) (by decide) (by decide)
#print axioms reject117

def r119 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d119 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c119 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a119 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject119 : ¬ Reader r119 :=
 Rootcert2Flow.reject [] d119 c119 a119 (by decide) (by decide) (by decide)
#print axioms reject119

def r121 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d121 : List FTy := [[],[],[],[],[5],[0,5,6],[6],[],[],[]]
def c121 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a121 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [0]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [6]) [0]) (.var 1 [0,5,6]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject121 : ¬ Reader r121 :=
 Rootcert2Flow.reject [] d121 c121 a121 (by decide) (by decide) (by decide)
#print axioms reject121

def r123 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d123 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c123 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a123 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 1 [0]) (.app (.var 0 [5]) (.var 0 [5]) []) [0]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject123 : ¬ Reader r123 :=
 Rootcert2Flow.reject [] d123 c123 a123 (by decide) (by decide) (by decide)
#print axioms reject123

def r125 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d125 : List FTy := [[],[],[],[],[5],[0,5,6],[6],[],[],[]]
def c125 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a125 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.app (.var 1 [0]) (.var 0 [5]) [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [6]) [0]) (.var 1 [0,5,6]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject125 : ¬ Reader r125 :=
 Rootcert2Flow.reject [] d125 c125 a125 (by decide) (by decide) (by decide)
#print axioms reject125

def r127 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d127 : List FTy := [[],[],[],[],[5],[0,5,6],[6],[],[],[]]
def c127 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a127 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [6]) [0]) (.var 1 [0,5,6]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject127 : ¬ Reader r127 :=
 Rootcert2Flow.reject [] d127 c127 a127 (by decide) (by decide) (by decide)
#print axioms reject127

def r129 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d129 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c129 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a129 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.app (.var 1 [0]) (.var 0 [5]) [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject129 : ¬ Reader r129 :=
 Rootcert2Flow.reject [] d129 c129 a129 (by decide) (by decide) (by decide)
#print axioms reject129

def r131 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d131 : List FTy := [[],[],[],[],[5],[0,5,6],[6],[],[],[]]
def c131 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a131 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.app (.var 0 [5]) (.var 1 [0]) [0]) (.var 0 [5]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [6]) [0]) (.var 1 [0,5,6]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject131 : ¬ Reader r131 :=
 Rootcert2Flow.reject [] d131 c131 a131 (by decide) (by decide) (by decide)
#print axioms reject131

def r133 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d133 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c133 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a133 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject133 : ¬ Reader r133 :=
 Rootcert2Flow.reject [] d133 c133 a133 (by decide) (by decide) (by decide)
#print axioms reject133

def r135 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d135 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c135 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a135 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject135 : ¬ Reader r135 :=
 Rootcert2Flow.reject [] d135 c135 a135 (by decide) (by decide) (by decide)
#print axioms reject135

def r137 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d137 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c137 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a137 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject137 : ¬ Reader r137 :=
 Rootcert2Flow.reject [] d137 c137 a137 (by decide) (by decide) (by decide)
#print axioms reject137

def r139 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d139 : List FTy := [[],[],[],[],[5],[0,5,6],[6],[],[],[]]
def c139 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a139 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [6]) [0]) (.var 1 [0,5,6]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject139 : ¬ Reader r139 :=
 Rootcert2Flow.reject [] d139 c139 a139 (by decide) (by decide) (by decide)
#print axioms reject139

def r141 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d141 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c141 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a141 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject141 : ¬ Reader r141 :=
 Rootcert2Flow.reject [] d141 c141 a141 (by decide) (by decide) (by decide)
#print axioms reject141

def r143 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d143 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c143 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a143 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 1 [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject143 : ¬ Reader r143 :=
 Rootcert2Flow.reject [] d143 c143 a143 (by decide) (by decide) (by decide)
#print axioms reject143

def r145 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d145 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c145 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a145 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject145 : ¬ Reader r145 :=
 Rootcert2Flow.reject [] d145 c145 a145 (by decide) (by decide) (by decide)
#print axioms reject145

def r147 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d147 : List FTy := [[],[],[],[],[5],[0,5,6],[6],[],[],[]]
def c147 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a147 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) (.var 0 [5]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [6]) [0]) (.var 1 [0,5,6]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject147 : ¬ Reader r147 :=
 Rootcert2Flow.reject [] d147 c147 a147 (by decide) (by decide) (by decide)
#print axioms reject147

def r149 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d149 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c149 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a149 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject149 : ¬ Reader r149 :=
 Rootcert2Flow.reject [] d149 c149 a149 (by decide) (by decide) (by decide)
#print axioms reject149

def r151 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1))
def d151 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c151 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a151 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 1 [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject151 : ¬ Reader r151 :=
 Rootcert2Flow.reject [] d151 c151 a151 (by decide) (by decide) (by decide)
#print axioms reject151

def r362 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.var 0))
def d362 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c362 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a362 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject362 : ¬ Reader r362 :=
 Rootcert2Flow.reject [] d362 c362 a362 (by decide) (by decide) (by decide)
#print axioms reject362

def r363 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.var 1))
def d363 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c363 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a363 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject363 : ¬ Reader r363 :=
 Rootcert2Flow.reject [] d363 c363 a363 (by decide) (by decide) (by decide)
#print axioms reject363

def r366 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.var 0))
def d366 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c366 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a366 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject366 : ¬ Reader r366 :=
 Rootcert2Flow.reject [] d366 c366 a366 (by decide) (by decide) (by decide)
#print axioms reject366

def r367 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.var 1))
def d367 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c367 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a367 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject367 : ¬ Reader r367 :=
 Rootcert2Flow.reject [] d367 c367 a367 (by decide) (by decide) (by decide)
#print axioms reject367

def r370 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.var 0))
def d370 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c370 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a370 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject370 : ¬ Reader r370 :=
 Rootcert2Flow.reject [] d370 c370 a370 (by decide) (by decide) (by decide)
#print axioms reject370

def r371 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.var 1))
def d371 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c371 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a371 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject371 : ¬ Reader r371 :=
 Rootcert2Flow.reject [] d371 c371 a371 (by decide) (by decide) (by decide)
#print axioms reject371

def r374 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.var 0))
def d374 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c374 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a374 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject374 : ¬ Reader r374 :=
 Rootcert2Flow.reject [] d374 c374 a374 (by decide) (by decide) (by decide)
#print axioms reject374

def r375 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.var 1))
def d375 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c375 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a375 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject375 : ¬ Reader r375 :=
 Rootcert2Flow.reject [] d375 c375 a375 (by decide) (by decide) (by decide)
#print axioms reject375

def r378 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.var 0))
def d378 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c378 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a378 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject378 : ¬ Reader r378 :=
 Rootcert2Flow.reject [] d378 c378 a378 (by decide) (by decide) (by decide)
#print axioms reject378

def r379 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.var 1))
def d379 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c379 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a379 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject379 : ¬ Reader r379 :=
 Rootcert2Flow.reject [] d379 c379 a379 (by decide) (by decide) (by decide)
#print axioms reject379
end Blc.Rootcert2.FlowCases15
