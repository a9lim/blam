import Flow
namespace Blc.Rootcert2.FlowCases18
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r198 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0))))))) (.var 1))
def d198 : List FTy := [[],[],[],[],[6],[0,8],[5,7],[0,8],[],[],[],[]]
def c198 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a198 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.app (.var 0 [6]) (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) []) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 1 [0]) [6]) (.lam 7 (.app (.var 1 [5,7]) (.lam 8 (.var 0 []) [8]) [6]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject198 : ¬ Reader r198 :=
 Rootcert2Flow.reject [] d198 c198 a198 (by decide) (by decide) (by decide)
#print axioms reject198

def r199 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0))))))) (.var 1))
def d199 : List FTy := [[],[],[],[],[6],[0,8],[5,7],[0,8],[],[],[],[]]
def c199 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a199 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.app (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) (.var 0 [6]) []) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 1 [0]) [6]) (.lam 7 (.app (.var 1 [5,7]) (.lam 8 (.var 0 []) [8]) [6]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject199 : ¬ Reader r199 :=
 Rootcert2Flow.reject [] d199 c199 a199 (by decide) (by decide) (by decide)
#print axioms reject199

def r200 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0))))))) (.var 1))
def d200 : List FTy := [[],[],[],[],[7],[0,10],[],[0,6],[5,9],[0,10],[],[14],[],[0,16],[0,13],[12],[15],[],[],[]]
def c200 : List FTy := [[],[],[],[],[],[8],[],[8],[],[8],[],[0,16],[0,15],[0,16],[0,15],[0,16],[15],[],[19],[]]
def a200 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [7]) (.var 1 [0]) [8]) (.lam 5 (.app (.var 1 [7]) (.lam 6 (.var 0 []) [6]) [8]) [5]) []) [4]) (.lam 7 (.lam 8 (.app (.app (.var 0 [5,9]) (.var 2 [0]) [8]) (.lam 9 (.app (.var 1 [5,9]) (.lam 10 (.var 0 []) [10]) [8]) [9]) []) [8]) [7]) []) (.app (.lam 11 (.app (.app (.var 0 [14]) (.var 1 [0]) [0,15]) (.lam 12 (.app (.var 1 [14]) (.lam 13 (.var 0 [0,16]) [13]) [0,15]) [12]) [0,16]) [11]) (.lam 14 (.app (.app (.var 0 [0,13]) (.var 1 [0]) [0,16]) (.lam 15 (.app (.var 1 [0,13]) (.lam 16 (.var 0 [15]) [16]) [0,16]) [15]) [0,15]) [14]) [0,16]) []) (.var 1 [1]) []) (.lam 17 (.app (.app (.var 0 []) (.lam 18 (.lam 19 (.var 1 []) [19]) [18]) []) (.var 4 [3]) []) [17]) [])
theorem reject200 : ¬ Reader r200 :=
 Rootcert2Flow.reject [[1, 1]] d200 c200 a200 (by decide) (by decide) (by decide)
#print axioms reject200

def r201 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0))))))) (.var 1))
def d201 : List FTy := [[],[],[],[],[6],[0,8],[5,7],[0,8],[],[],[],[]]
def c201 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a201 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) []) (.var 0 [6]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 1 [0]) [6]) (.lam 7 (.app (.var 1 [5,7]) (.lam 8 (.var 0 []) [8]) [6]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject201 : ¬ Reader r201 :=
 Rootcert2Flow.reject [] d201 c201 a201 (by decide) (by decide) (by decide)
#print axioms reject201

def r202 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0))))))) (.var 1))
def d202 : List FTy := [[],[],[],[],[6],[0,8],[5,7],[0,8],[],[],[],[]]
def c202 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a202 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) (.var 0 [6]) []) (.var 0 [6]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 1 [0]) [6]) (.lam 7 (.app (.var 1 [5,7]) (.lam 8 (.var 0 []) [8]) [6]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject202 : ¬ Reader r202 :=
 Rootcert2Flow.reject [] d202 c202 a202 (by decide) (by decide) (by decide)
#print axioms reject202
end Blc.Rootcert2.FlowCases18
