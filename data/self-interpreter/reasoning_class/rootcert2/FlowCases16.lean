import Flow
namespace Blc.Rootcert2.FlowCases16
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r152 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))) (.var 1))
def d152 : List FTy := [[],[],[],[],[6],[7],[5],[6],[],[],[]]
def c152 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a152 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 1 [6]) [5]) []) [5]) []) []) [4]) (.lam 6 (.app (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) (.var 1 [0]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject152 : ¬ Reader r152 :=
 Rootcert2Flow.reject [] d152 c152 a152 (by decide) (by decide) (by decide)
#print axioms reject152

def r153 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))) (.var 1))
def d153 : List FTy := [[],[],[],[],[6],[7],[5],[6],[],[],[]]
def c153 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a153 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 1 [6]) [5]) []) [5]) []) (.var 0 [6]) []) [4]) (.lam 6 (.app (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) (.var 1 [0]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject153 : ¬ Reader r153 :=
 Rootcert2Flow.reject [] d153 c153 a153 (by decide) (by decide) (by decide)
#print axioms reject153

def r172 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1))))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))) (.var 1))
def d172 : List FTy := [[],[],[],[],[6],[7],[5],[6],[],[],[]]
def c172 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a172 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 1 [6]) [5]) []) []) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) (.var 1 [0]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject172 : ¬ Reader r172 :=
 Rootcert2Flow.reject [] d172 c172 a172 (by decide) (by decide) (by decide)
#print axioms reject172

def r173 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))) (.var 1))
def d173 : List FTy := [[],[],[],[],[6],[0],[5,8],[6],[0],[11],[12],[0,10],[],[],[],[]]
def c173 : List FTy := [[],[],[],[],[],[6],[],[],[6],[0],[11],[0],[0,10],[],[15],[]]
def a173 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) (.var 1 [0]) []) [4]) (.lam 6 (.app (.lam 7 (.app (.app (.var 0 [6]) (.lam 8 (.var 1 [6]) [8]) []) (.var 2 [0]) []) [7]) (.app (.var 0 [5,8]) (.app (.lam 9 (.app (.app (.var 0 [11]) (.lam 10 (.var 1 [11]) [10]) [0]) (.var 2 [0]) [0]) [9]) (.lam 11 (.app (.app (.var 0 [0,10]) (.lam 12 (.var 1 [0,10]) [12]) [0,11]) (.var 2 [0]) [0]) [11]) [0]) [6]) []) [6]) []) (.var 1 [1]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject173 : ¬ Reader r173 :=
 Rootcert2Flow.reject [[1, 1]] d173 c173 a173 (by decide) (by decide) (by decide)
#print axioms reject173

def r174 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))) (.var 1))
def d174 : List FTy := [[],[],[],[],[6],[7],[5],[6],[],[],[]]
def c174 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a174 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 1 [6]) [5]) []) (.var 1 [6]) []) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) (.var 1 [0]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject174 : ¬ Reader r174 :=
 Rootcert2Flow.reject [] d174 c174 a174 (by decide) (by decide) (by decide)
#print axioms reject174
end Blc.Rootcert2.FlowCases16
