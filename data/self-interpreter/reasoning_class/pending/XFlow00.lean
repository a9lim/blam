import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XFlow00
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r33 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d33 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c33 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a33 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject33 : ¬ Reader r33 :=
 Rootcert2Flow.reject [] d33 c33 a33 (by decide) (by decide) (by decide)
#print axioms reject33

def r34 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d34 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c34 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a34 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject34 : ¬ Reader r34 :=
 Rootcert2Flow.reject [] d34 c34 a34 (by decide) (by decide) (by decide)
#print axioms reject34

def r35 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d35 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c35 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a35 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject35 : ¬ Reader r35 :=
 Rootcert2Flow.reject [] d35 c35 a35 (by decide) (by decide) (by decide)
#print axioms reject35

def r39 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
def d39 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c39 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a39 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject39 : ¬ Reader r39 :=
 Rootcert2Flow.reject [] d39 c39 a39 (by decide) (by decide) (by decide)
#print axioms reject39

def r40 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
def d40 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c40 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a40 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject40 : ¬ Reader r40 :=
 Rootcert2Flow.reject [] d40 c40 a40 (by decide) (by decide) (by decide)
#print axioms reject40

def r41 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
def d41 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c41 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a41 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject41 : ¬ Reader r41 :=
 Rootcert2Flow.reject [] d41 c41 a41 (by decide) (by decide) (by decide)
#print axioms reject41

def r81 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d81 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c81 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a81 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject81 : ¬ Reader r81 :=
 Rootcert2Flow.reject [] d81 c81 a81 (by decide) (by decide) (by decide)
#print axioms reject81

def r82 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d82 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c82 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a82 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject82 : ¬ Reader r82 :=
 Rootcert2Flow.reject [] d82 c82 a82 (by decide) (by decide) (by decide)
#print axioms reject82

def r83 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d83 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c83 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a83 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject83 : ¬ Reader r83 :=
 Rootcert2Flow.reject [] d83 c83 a83 (by decide) (by decide) (by decide)
#print axioms reject83

def r90 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
def d90 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c90 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a90 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject90 : ¬ Reader r90 :=
 Rootcert2Flow.reject [] d90 c90 a90 (by decide) (by decide) (by decide)
#print axioms reject90

def r91 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
def d91 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c91 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a91 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject91 : ¬ Reader r91 :=
 Rootcert2Flow.reject [] d91 c91 a91 (by decide) (by decide) (by decide)
#print axioms reject91

def r92 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
def d92 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c92 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a92 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject92 : ¬ Reader r92 :=
 Rootcert2Flow.reject [] d92 c92 a92 (by decide) (by decide) (by decide)
#print axioms reject92

def r102 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1)) (.var 0)) (.var 0))
def d102 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c102 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a102 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject102 : ¬ Reader r102 :=
 Rootcert2Flow.reject [] d102 c102 a102 (by decide) (by decide) (by decide)
#print axioms reject102

def r103 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 0)) (.var 1)) (.var 0))
def d103 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c103 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a103 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject103 : ¬ Reader r103 :=
 Rootcert2Flow.reject [] d103 c103 a103 (by decide) (by decide) (by decide)
#print axioms reject103

def r104 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 0)) (.var 0)) (.var 1))
def d104 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c104 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a104 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject104 : ¬ Reader r104 :=
 Rootcert2Flow.reject [] d104 c104 a104 (by decide) (by decide) (by decide)
#print axioms reject104

def r177 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
def d177 : List FTy := [[],[],[],[],[7],[1],[9],[5],[11],[7],[12],[9],[11],[],[],[]]
def c177 : List FTy := [[],[],[],[],[5],[1],[7],[5],[9],[7],[11],[9],[11],[],[15],[]]
def a177 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.lam 5 (.var 0 [1]) [5]) [5]) [5]) [5]) [5]) [4]) (.app (.lam 6 (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.lam 7 (.var 0 [5]) [7]) [7]) [7]) [7]) [7]) [6]) (.app (.lam 8 (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.lam 9 (.var 0 [7]) [9]) [9]) [9]) [9]) [9]) [8]) (.app (.lam 10 (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.lam 11 (.var 0 [9]) [11]) [11]) [11]) [11]) [11]) [10]) (.lam 12 (.var 0 [11]) [12]) [11]) [9]) [7]) [5]) (.var 1 [1]) [1]) (.var 0 [0]) [1]) (.var 0 [0]) [1]) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [1])
theorem reject177 : ¬ Reader r177 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d177 c177 a177 (by decide) (by decide) (by decide)
#print axioms reject177

def r178 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
def d178 : List FTy := [[],[],[],[],[7],[0],[9],[5],[11],[7],[12],[9],[11],[],[],[]]
def c178 : List FTy := [[],[],[],[],[5],[0],[7],[5],[9],[7],[11],[9],[11],[],[15],[]]
def a178 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.lam 5 (.var 0 [0]) [5]) [5]) [5]) [5]) [5]) [4]) (.app (.lam 6 (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.lam 7 (.var 0 [5]) [7]) [7]) [7]) [7]) [7]) [6]) (.app (.lam 8 (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.lam 9 (.var 0 [7]) [9]) [9]) [9]) [9]) [9]) [8]) (.app (.lam 10 (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.lam 11 (.var 0 [9]) [11]) [11]) [11]) [11]) [11]) [10]) (.lam 12 (.var 0 [11]) [12]) [11]) [9]) [7]) [5]) (.var 0 [0]) [0]) (.var 1 [1]) [0]) (.var 0 [0]) [0]) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [0])
theorem reject178 : ¬ Reader r178 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d178 c178 a178 (by decide) (by decide) (by decide)
#print axioms reject178

def r179 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
def d179 : List FTy := [[],[],[],[],[7],[0],[9],[5],[11],[7],[12],[9],[11],[],[],[]]
def c179 : List FTy := [[],[],[],[],[5],[0],[7],[5],[9],[7],[11],[9],[11],[],[15],[]]
def a179 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.lam 5 (.var 0 [0]) [5]) [5]) [5]) [5]) [5]) [4]) (.app (.lam 6 (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.lam 7 (.var 0 [5]) [7]) [7]) [7]) [7]) [7]) [6]) (.app (.lam 8 (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.lam 9 (.var 0 [7]) [9]) [9]) [9]) [9]) [9]) [8]) (.app (.lam 10 (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.lam 11 (.var 0 [9]) [11]) [11]) [11]) [11]) [11]) [10]) (.lam 12 (.var 0 [11]) [12]) [11]) [9]) [7]) [5]) (.var 0 [0]) [0]) (.var 0 [0]) [0]) (.var 1 [1]) [0]) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [0])
theorem reject179 : ¬ Reader r179 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d179 c179 a179 (by decide) (by decide) (by decide)
#print axioms reject179

def r315 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
def d315 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c315 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a315 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [6]) (.app (.var 0 [6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject315 : ¬ Reader r315 :=
 Rootcert2Flow.reject [] d315 c315 a315 (by decide) (by decide) (by decide)
#print axioms reject315

def r316 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
def d316 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c316 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a316 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [6]) (.app (.var 0 [6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject316 : ¬ Reader r316 :=
 Rootcert2Flow.reject [] d316 c316 a316 (by decide) (by decide) (by decide)
#print axioms reject316

def r317 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
def d317 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c317 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a317 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [6]) (.app (.var 0 [6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject317 : ¬ Reader r317 :=
 Rootcert2Flow.reject [] d317 c317 a317 (by decide) (by decide) (by decide)
#print axioms reject317

def r324 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
def d324 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c324 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a324 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject324 : ¬ Reader r324 :=
 Rootcert2Flow.reject [] d324 c324 a324 (by decide) (by decide) (by decide)
#print axioms reject324

def r325 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
def d325 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c325 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a325 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject325 : ¬ Reader r325 :=
 Rootcert2Flow.reject [] d325 c325 a325 (by decide) (by decide) (by decide)
#print axioms reject325

def r326 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
def d326 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c326 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a326 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject326 : ¬ Reader r326 :=
 Rootcert2Flow.reject [] d326 c326 a326 (by decide) (by decide) (by decide)
#print axioms reject326

def r330 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d330 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c330 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a330 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject330 : ¬ Reader r330 :=
 Rootcert2Flow.reject [] d330 c330 a330 (by decide) (by decide) (by decide)
#print axioms reject330

def r331 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d331 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c331 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a331 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject331 : ¬ Reader r331 :=
 Rootcert2Flow.reject [] d331 c331 a331 (by decide) (by decide) (by decide)
#print axioms reject331

def r332 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d332 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c332 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a332 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject332 : ¬ Reader r332 :=
 Rootcert2Flow.reject [] d332 c332 a332 (by decide) (by decide) (by decide)
#print axioms reject332

def r339 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d339 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c339 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a339 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 0 [6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject339 : ¬ Reader r339 :=
 Rootcert2Flow.reject [] d339 c339 a339 (by decide) (by decide) (by decide)
#print axioms reject339

def r340 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d340 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c340 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a340 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 0 [6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject340 : ¬ Reader r340 :=
 Rootcert2Flow.reject [] d340 c340 a340 (by decide) (by decide) (by decide)
#print axioms reject340

def r341 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d341 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c341 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a341 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 0 [6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject341 : ¬ Reader r341 :=
 Rootcert2Flow.reject [] d341 c341 a341 (by decide) (by decide) (by decide)
#print axioms reject341

def r354 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
def d354 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c354 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a354 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject354 : ¬ Reader r354 :=
 Rootcert2Flow.reject [] d354 c354 a354 (by decide) (by decide) (by decide)
#print axioms reject354

def r355 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
def d355 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c355 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a355 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject355 : ¬ Reader r355 :=
 Rootcert2Flow.reject [] d355 c355 a355 (by decide) (by decide) (by decide)
#print axioms reject355

def r356 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
def d356 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c356 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a356 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject356 : ¬ Reader r356 :=
 Rootcert2Flow.reject [] d356 c356 a356 (by decide) (by decide) (by decide)
#print axioms reject356

def r360 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
def d360 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c360 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a360 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject360 : ¬ Reader r360 :=
 Rootcert2Flow.reject [] d360 c360 a360 (by decide) (by decide) (by decide)
#print axioms reject360

def r361 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
def d361 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c361 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a361 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject361 : ¬ Reader r361 :=
 Rootcert2Flow.reject [] d361 c361 a361 (by decide) (by decide) (by decide)
#print axioms reject361

def r362 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
def d362 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c362 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a362 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject362 : ¬ Reader r362 :=
 Rootcert2Flow.reject [] d362 c362 a362 (by decide) (by decide) (by decide)
#print axioms reject362

def r378 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
def d378 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c378 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a378 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject378 : ¬ Reader r378 :=
 Rootcert2Flow.reject [] d378 c378 a378 (by decide) (by decide) (by decide)
#print axioms reject378

def r379 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
def d379 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c379 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a379 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject379 : ¬ Reader r379 :=
 Rootcert2Flow.reject [] d379 c379 a379 (by decide) (by decide) (by decide)
#print axioms reject379

def r380 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
def d380 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c380 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a380 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject380 : ¬ Reader r380 :=
 Rootcert2Flow.reject [] d380 c380 a380 (by decide) (by decide) (by decide)
#print axioms reject380

def r384 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d384 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c384 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a384 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject384 : ¬ Reader r384 :=
 Rootcert2Flow.reject [] d384 c384 a384 (by decide) (by decide) (by decide)
#print axioms reject384

def r385 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d385 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c385 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a385 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject385 : ¬ Reader r385 :=
 Rootcert2Flow.reject [] d385 c385 a385 (by decide) (by decide) (by decide)
#print axioms reject385

def r386 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d386 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c386 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a386 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject386 : ¬ Reader r386 :=
 Rootcert2Flow.reject [] d386 c386 a386 (by decide) (by decide) (by decide)
#print axioms reject386

def r396 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
def d396 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c396 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a396 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject396 : ¬ Reader r396 :=
 Rootcert2Flow.reject [] d396 c396 a396 (by decide) (by decide) (by decide)
#print axioms reject396

def r397 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
def d397 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c397 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a397 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject397 : ¬ Reader r397 :=
 Rootcert2Flow.reject [] d397 c397 a397 (by decide) (by decide) (by decide)
#print axioms reject397

def r398 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
def d398 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c398 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a398 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject398 : ¬ Reader r398 :=
 Rootcert2Flow.reject [] d398 c398 a398 (by decide) (by decide) (by decide)
#print axioms reject398

def r402 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
def d402 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c402 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a402 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject402 : ¬ Reader r402 :=
 Rootcert2Flow.reject [] d402 c402 a402 (by decide) (by decide) (by decide)
#print axioms reject402

def r403 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
def d403 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c403 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a403 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject403 : ¬ Reader r403 :=
 Rootcert2Flow.reject [] d403 c403 a403 (by decide) (by decide) (by decide)
#print axioms reject403

def r404 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
def d404 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c404 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a404 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject404 : ¬ Reader r404 :=
 Rootcert2Flow.reject [] d404 c404 a404 (by decide) (by decide) (by decide)
#print axioms reject404

def r567 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
def d567 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c567 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a567 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject567 : ¬ Reader r567 :=
 Rootcert2Flow.reject [] d567 c567 a567 (by decide) (by decide) (by decide)
#print axioms reject567

def r568 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
def d568 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c568 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a568 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject568 : ¬ Reader r568 :=
 Rootcert2Flow.reject [] d568 c568 a568 (by decide) (by decide) (by decide)
#print axioms reject568
end Blc.HandlerLet.XFlow00
