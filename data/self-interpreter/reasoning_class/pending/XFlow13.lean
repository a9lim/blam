import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XFlow13
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r9045 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 2))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d9045 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9045 : List FTy := [[],[],[],[],[],[],[],[5,6],[],[],[11],[]]
def a9045 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 2 [5,6]) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9045 : ¬ Reader r9045 :=
 Rootcert2Flow.reject [] d9045 c9045 a9045 (by decide) (by decide) (by decide)
#print axioms reject9045

def r9046 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 2))))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d9046 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9046 : List FTy := [[],[],[],[],[],[],[],[5,6],[],[],[11],[]]
def a9046 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 2 [5,6]) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9046 : ¬ Reader r9046 :=
 Rootcert2Flow.reject [] d9046 c9046 a9046 (by decide) (by decide) (by decide)
#print axioms reject9046

def r9047 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 2))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d9047 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9047 : List FTy := [[],[],[],[],[],[],[],[5,6],[],[],[11],[]]
def a9047 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 2 [5,6]) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9047 : ¬ Reader r9047 :=
 Rootcert2Flow.reject [] d9047 c9047 a9047 (by decide) (by decide) (by decide)
#print axioms reject9047

def r9176 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d9176 : List FTy := [[],[],[],[],[7],[],[6,9,10],[5,7],[6,10],[],[6,9,10],[],[15],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[],[],[],[]]
def c9176 : List FTy := [[],[],[],[],[],[7],[8],[8],[],[6,10],[8],[13,14,15,16,17],[13,14,15,16,17],[15],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[],[],[21],[]]
def a9176 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [7]) (.lam 5 (.var 1 [7]) [5]) [8]) (.lam 6 (.app (.var 1 [7]) (.var 1 [7]) [8]) [6]) []) [4]) (.lam 7 (.lam 8 (.app (.app (.var 0 [6,10]) (.lam 9 (.var 1 [6,10]) [9]) [8]) (.lam 10 (.app (.var 1 [6,10]) (.var 1 [6,10]) [8]) [10]) []) [8]) [7]) []) (.lam 11 (.app (.lam 12 (.app (.app (.var 0 [15]) (.lam 13 (.var 1 [15]) [13]) [13,14,15,16,17]) (.lam 14 (.app (.var 1 [15]) (.var 1 [15]) [13,14,15,16,17]) [14]) [13,14,15,16,17]) [12]) (.lam 15 (.app (.app (.var 0 [13,14,15,16,17]) (.lam 16 (.var 1 [13,14,15,16,17]) [16]) [13,14,15,16,17]) (.lam 17 (.app (.var 1 [13,14,15,16,17]) (.var 1 [13,14,15,16,17]) [13,14,15,16,17]) [17]) [13,14,15,16,17]) [15]) [13,14,15,16,17]) [11]) []) (.lam 18 (.var 0 []) [18]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 19 (.app (.app (.var 0 []) (.lam 20 (.lam 21 (.var 1 []) [21]) [20]) []) (.var 4 [3]) []) [19]) [])
theorem reject9176 : ¬ Reader r9176 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d9176 c9176 a9176 (by decide) (by decide) (by decide)
#print axioms reject9176

def r9177 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d9177 : List FTy := [[],[],[],[],[7],[],[6,9,10],[5,7],[6,10],[],[6,9,10],[],[15],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[],[],[],[]]
def c9177 : List FTy := [[],[],[],[],[],[7],[8],[8],[],[6,10],[8],[13,14,15,16,17],[13,14,15,16,17],[15],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[],[],[21],[]]
def a9177 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [7]) (.lam 5 (.var 1 [7]) [5]) [8]) (.lam 6 (.app (.var 1 [7]) (.var 1 [7]) [8]) [6]) []) [4]) (.lam 7 (.lam 8 (.app (.app (.var 0 [6,10]) (.lam 9 (.var 1 [6,10]) [9]) [8]) (.lam 10 (.app (.var 1 [6,10]) (.var 1 [6,10]) [8]) [10]) []) [8]) [7]) []) (.lam 11 (.app (.lam 12 (.app (.app (.var 0 [15]) (.lam 13 (.var 1 [15]) [13]) [13,14,15,16,17]) (.lam 14 (.app (.var 1 [15]) (.var 1 [15]) [13,14,15,16,17]) [14]) [13,14,15,16,17]) [12]) (.lam 15 (.app (.app (.var 0 [13,14,15,16,17]) (.lam 16 (.var 1 [13,14,15,16,17]) [16]) [13,14,15,16,17]) (.lam 17 (.app (.var 1 [13,14,15,16,17]) (.var 1 [13,14,15,16,17]) [13,14,15,16,17]) [17]) [13,14,15,16,17]) [15]) [13,14,15,16,17]) [11]) []) (.lam 18 (.var 0 []) [18]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 19 (.app (.app (.var 0 []) (.lam 20 (.lam 21 (.var 1 []) [21]) [20]) []) (.var 4 [3]) []) [19]) [])
theorem reject9177 : ¬ Reader r9177 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d9177 c9177 a9177 (by decide) (by decide) (by decide)
#print axioms reject9177

def r9178 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d9178 : List FTy := [[],[],[],[],[7],[],[6,9,10],[5,7],[6,10],[],[6,9,10],[],[15],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[],[],[],[]]
def c9178 : List FTy := [[],[],[],[],[],[7],[8],[8],[],[6,10],[8],[13,14,15,16,17],[13,14,15,16,17],[15],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[],[],[21],[]]
def a9178 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [7]) (.lam 5 (.var 1 [7]) [5]) [8]) (.lam 6 (.app (.var 1 [7]) (.var 1 [7]) [8]) [6]) []) [4]) (.lam 7 (.lam 8 (.app (.app (.var 0 [6,10]) (.lam 9 (.var 1 [6,10]) [9]) [8]) (.lam 10 (.app (.var 1 [6,10]) (.var 1 [6,10]) [8]) [10]) []) [8]) [7]) []) (.lam 11 (.app (.lam 12 (.app (.app (.var 0 [15]) (.lam 13 (.var 1 [15]) [13]) [13,14,15,16,17]) (.lam 14 (.app (.var 1 [15]) (.var 1 [15]) [13,14,15,16,17]) [14]) [13,14,15,16,17]) [12]) (.lam 15 (.app (.app (.var 0 [13,14,15,16,17]) (.lam 16 (.var 1 [13,14,15,16,17]) [16]) [13,14,15,16,17]) (.lam 17 (.app (.var 1 [13,14,15,16,17]) (.var 1 [13,14,15,16,17]) [13,14,15,16,17]) [17]) [13,14,15,16,17]) [15]) [13,14,15,16,17]) [11]) []) (.var 1 [1]) []) (.lam 18 (.var 0 []) [18]) []) (.var 0 [0]) []) (.lam 19 (.app (.app (.var 0 []) (.lam 20 (.lam 21 (.var 1 []) [21]) [20]) []) (.var 4 [3]) []) [19]) [])
theorem reject9178 : ¬ Reader r9178 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d9178 c9178 a9178 (by decide) (by decide) (by decide)
#print axioms reject9178

def r9179 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d9179 : List FTy := [[],[],[],[],[7],[],[6,9,10],[5,7],[6,10],[],[6,9,10],[],[15],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[],[],[],[]]
def c9179 : List FTy := [[],[],[],[],[],[7],[8],[8],[],[6,10],[8],[13,14,15,16,17],[13,14,15,16,17],[15],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[],[],[21],[]]
def a9179 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [7]) (.lam 5 (.var 1 [7]) [5]) [8]) (.lam 6 (.app (.var 1 [7]) (.var 1 [7]) [8]) [6]) []) [4]) (.lam 7 (.lam 8 (.app (.app (.var 0 [6,10]) (.lam 9 (.var 1 [6,10]) [9]) [8]) (.lam 10 (.app (.var 1 [6,10]) (.var 1 [6,10]) [8]) [10]) []) [8]) [7]) []) (.lam 11 (.app (.lam 12 (.app (.app (.var 0 [15]) (.lam 13 (.var 1 [15]) [13]) [13,14,15,16,17]) (.lam 14 (.app (.var 1 [15]) (.var 1 [15]) [13,14,15,16,17]) [14]) [13,14,15,16,17]) [12]) (.lam 15 (.app (.app (.var 0 [13,14,15,16,17]) (.lam 16 (.var 1 [13,14,15,16,17]) [16]) [13,14,15,16,17]) (.lam 17 (.app (.var 1 [13,14,15,16,17]) (.var 1 [13,14,15,16,17]) [13,14,15,16,17]) [17]) [13,14,15,16,17]) [15]) [13,14,15,16,17]) [11]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 18 (.var 0 []) [18]) []) (.lam 19 (.app (.app (.var 0 []) (.lam 20 (.lam 21 (.var 1 []) [21]) [20]) []) (.var 4 [3]) []) [19]) [])
theorem reject9179 : ¬ Reader r9179 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d9179 c9179 a9179 (by decide) (by decide) (by decide)
#print axioms reject9179

def r9180 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d9180 : List FTy := [[],[],[],[],[7],[],[6,9,10],[5,7],[6,10],[],[6,9,10],[],[15],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[],[],[],[]]
def c9180 : List FTy := [[],[],[],[],[],[7],[8],[8],[],[6,10],[8],[13,14,15,16,17],[13,14,15,16,17],[15],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[],[],[21],[]]
def a9180 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [7]) (.lam 5 (.var 1 [7]) [5]) [8]) (.lam 6 (.app (.var 1 [7]) (.var 1 [7]) [8]) [6]) []) [4]) (.lam 7 (.lam 8 (.app (.app (.var 0 [6,10]) (.lam 9 (.var 1 [6,10]) [9]) [8]) (.lam 10 (.app (.var 1 [6,10]) (.var 1 [6,10]) [8]) [10]) []) [8]) [7]) []) (.lam 11 (.app (.lam 12 (.app (.app (.var 0 [15]) (.lam 13 (.var 1 [15]) [13]) [13,14,15,16,17]) (.lam 14 (.app (.var 1 [15]) (.var 1 [15]) [13,14,15,16,17]) [14]) [13,14,15,16,17]) [12]) (.lam 15 (.app (.app (.var 0 [13,14,15,16,17]) (.lam 16 (.var 1 [13,14,15,16,17]) [16]) [13,14,15,16,17]) (.lam 17 (.app (.var 1 [13,14,15,16,17]) (.var 1 [13,14,15,16,17]) [13,14,15,16,17]) [17]) [13,14,15,16,17]) [15]) [13,14,15,16,17]) [11]) []) (.var 0 [0]) []) (.lam 18 (.var 0 []) [18]) []) (.var 1 [1]) []) (.lam 19 (.app (.app (.var 0 []) (.lam 20 (.lam 21 (.var 1 []) [21]) [20]) []) (.var 4 [3]) []) [19]) [])
theorem reject9180 : ¬ Reader r9180 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d9180 c9180 a9180 (by decide) (by decide) (by decide)
#print axioms reject9180

def r9181 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d9181 : List FTy := [[],[],[],[],[7],[],[6,9,10],[5,7],[6,10],[],[6,9,10],[],[15],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[],[],[],[]]
def c9181 : List FTy := [[],[],[],[],[],[7],[8],[8],[],[6,10],[8],[13,14,15,16,17],[13,14,15,16,17],[15],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[13,14,15,16,17],[],[],[21],[]]
def a9181 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [7]) (.lam 5 (.var 1 [7]) [5]) [8]) (.lam 6 (.app (.var 1 [7]) (.var 1 [7]) [8]) [6]) []) [4]) (.lam 7 (.lam 8 (.app (.app (.var 0 [6,10]) (.lam 9 (.var 1 [6,10]) [9]) [8]) (.lam 10 (.app (.var 1 [6,10]) (.var 1 [6,10]) [8]) [10]) []) [8]) [7]) []) (.lam 11 (.app (.lam 12 (.app (.app (.var 0 [15]) (.lam 13 (.var 1 [15]) [13]) [13,14,15,16,17]) (.lam 14 (.app (.var 1 [15]) (.var 1 [15]) [13,14,15,16,17]) [14]) [13,14,15,16,17]) [12]) (.lam 15 (.app (.app (.var 0 [13,14,15,16,17]) (.lam 16 (.var 1 [13,14,15,16,17]) [16]) [13,14,15,16,17]) (.lam 17 (.app (.var 1 [13,14,15,16,17]) (.var 1 [13,14,15,16,17]) [13,14,15,16,17]) [17]) [13,14,15,16,17]) [15]) [13,14,15,16,17]) [11]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 18 (.var 0 []) [18]) []) (.lam 19 (.app (.app (.var 0 []) (.lam 20 (.lam 21 (.var 1 []) [21]) [20]) []) (.var 4 [3]) []) [19]) [])
theorem reject9181 : ¬ Reader r9181 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d9181 c9181 a9181 (by decide) (by decide) (by decide)
#print axioms reject9181

def r9194 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d9194 : List FTy := [[],[],[],[],[6],[5,7],[5,7],[5,7],[],[],[],[]]
def c9194 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a9194 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 1 [5,7]) (.var 1 [5,7]) [6]) [7]) []) [6]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9194 : ¬ Reader r9194 :=
 Rootcert2Flow.reject [] d9194 c9194 a9194 (by decide) (by decide) (by decide)
#print axioms reject9194

def r9195 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d9195 : List FTy := [[],[],[],[],[6],[5,7],[5,7],[5,7],[],[],[],[]]
def c9195 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a9195 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 1 [5,7]) (.var 1 [5,7]) [6]) [7]) []) [6]) []) (.lam 8 (.var 0 []) [8]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9195 : ¬ Reader r9195 :=
 Rootcert2Flow.reject [] d9195 c9195 a9195 (by decide) (by decide) (by decide)
#print axioms reject9195

def r9196 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d9196 : List FTy := [[],[],[],[],[6],[5,7],[5,7],[5,7],[],[],[],[]]
def c9196 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a9196 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 1 [5,7]) (.var 1 [5,7]) [6]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9196 : ¬ Reader r9196 :=
 Rootcert2Flow.reject [] d9196 c9196 a9196 (by decide) (by decide) (by decide)
#print axioms reject9196

def r9197 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d9197 : List FTy := [[],[],[],[],[6],[5,7],[5,7],[5,7],[],[],[],[]]
def c9197 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a9197 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 1 [5,7]) (.var 1 [5,7]) [6]) [7]) []) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9197 : ¬ Reader r9197 :=
 Rootcert2Flow.reject [] d9197 c9197 a9197 (by decide) (by decide) (by decide)
#print axioms reject9197

def r9198 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d9198 : List FTy := [[],[],[],[],[6],[5,7],[5,7],[5,7],[],[],[],[]]
def c9198 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a9198 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 1 [5,7]) (.var 1 [5,7]) [6]) [7]) []) [6]) []) (.var 0 [0]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9198 : ¬ Reader r9198 :=
 Rootcert2Flow.reject [] d9198 c9198 a9198 (by decide) (by decide) (by decide)
#print axioms reject9198

def r9199 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d9199 : List FTy := [[],[],[],[],[6],[5,7],[5,7],[5,7],[],[],[],[]]
def c9199 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a9199 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 1 [5,7]) (.var 1 [5,7]) [6]) [7]) []) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9199 : ¬ Reader r9199 :=
 Rootcert2Flow.reject [] d9199 c9199 a9199 (by decide) (by decide) (by decide)
#print axioms reject9199

def r9248 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
def d9248 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9248 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a9248 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9248 : ¬ Reader r9248 :=
 Rootcert2Flow.reject [] d9248 c9248 a9248 (by decide) (by decide) (by decide)
#print axioms reject9248

def r9249 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
def d9249 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9249 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a9249 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9249 : ¬ Reader r9249 :=
 Rootcert2Flow.reject [] d9249 c9249 a9249 (by decide) (by decide) (by decide)
#print axioms reject9249

def r9250 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
def d9250 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9250 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a9250 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9250 : ¬ Reader r9250 :=
 Rootcert2Flow.reject [] d9250 c9250 a9250 (by decide) (by decide) (by decide)
#print axioms reject9250

def r9251 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
def d9251 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9251 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a9251 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9251 : ¬ Reader r9251 :=
 Rootcert2Flow.reject [] d9251 c9251 a9251 (by decide) (by decide) (by decide)
#print axioms reject9251

def r9252 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
def d9252 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9252 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a9252 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9252 : ¬ Reader r9252 :=
 Rootcert2Flow.reject [] d9252 c9252 a9252 (by decide) (by decide) (by decide)
#print axioms reject9252

def r9253 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
def d9253 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9253 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a9253 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9253 : ¬ Reader r9253 :=
 Rootcert2Flow.reject [] d9253 c9253 a9253 (by decide) (by decide) (by decide)
#print axioms reject9253

def r9260 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))))) (.var 1)) (.var 0)) (.lam (.var 1)))
def d9260 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[],[]]
def c9260 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a9260 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 0 [6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.var 1 [0]) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9260 : ¬ Reader r9260 :=
 Rootcert2Flow.reject [] d9260 c9260 a9260 (by decide) (by decide) (by decide)
#print axioms reject9260

def r9261 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))))) (.var 1)) (.lam (.var 1))) (.var 0))
def d9261 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[],[]]
def c9261 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a9261 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 0 [6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.var 1 [0]) [8]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9261 : ¬ Reader r9261 :=
 Rootcert2Flow.reject [] d9261 c9261 a9261 (by decide) (by decide) (by decide)
#print axioms reject9261

def r9262 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))))) (.var 0)) (.var 1)) (.lam (.var 1)))
def d9262 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[],[]]
def c9262 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a9262 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 0 [6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.var 1 [0]) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9262 : ¬ Reader r9262 :=
 Rootcert2Flow.reject [] d9262 c9262 a9262 (by decide) (by decide) (by decide)
#print axioms reject9262

def r9263 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))))) (.var 0)) (.lam (.var 1))) (.var 1))
def d9263 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[],[]]
def c9263 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a9263 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 0 [6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 8 (.var 1 [0]) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9263 : ¬ Reader r9263 :=
 Rootcert2Flow.reject [] d9263 c9263 a9263 (by decide) (by decide) (by decide)
#print axioms reject9263

def r9264 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))))) (.lam (.var 1))) (.var 1)) (.var 0))
def d9264 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[],[]]
def c9264 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a9264 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 0 [6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.lam 8 (.var 1 [0]) [8]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9264 : ¬ Reader r9264 :=
 Rootcert2Flow.reject [] d9264 c9264 a9264 (by decide) (by decide) (by decide)
#print axioms reject9264

def r9265 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))))) (.lam (.var 1))) (.var 0)) (.var 1))
def d9265 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[],[]]
def c9265 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a9265 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 0 [6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.lam 8 (.var 1 [0]) [8]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9265 : ¬ Reader r9265 :=
 Rootcert2Flow.reject [] d9265 c9265 a9265 (by decide) (by decide) (by decide)
#print axioms reject9265

def r9279 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
def d9279 : List FTy := [[],[],[],[],[5],[5,6],[6],[0,8],[],[],[],[]]
def c9279 : List FTy := [[],[],[],[],[7],[7],[7],[],[],[],[11],[]]
def a9279 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [7]) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.lam 7 (.app (.app (.var 2 [5,6]) (.var 1 [6]) [7]) (.lam 8 (.var 0 []) [8]) []) [7]) [6]) [7]) [5]) [7]) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9279 : ¬ Reader r9279 :=
 Rootcert2Flow.reject [] d9279 c9279 a9279 (by decide) (by decide) (by decide)
#print axioms reject9279

def r9280 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
def d9280 : List FTy := [[],[],[],[],[5],[5,6],[6],[0,8],[],[],[],[]]
def c9280 : List FTy := [[],[],[],[],[7],[7],[7],[],[],[],[11],[]]
def a9280 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [7]) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.lam 7 (.app (.app (.var 2 [5,6]) (.var 1 [6]) [7]) (.lam 8 (.var 0 []) [8]) []) [7]) [6]) [7]) [5]) [7]) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9280 : ¬ Reader r9280 :=
 Rootcert2Flow.reject [] d9280 c9280 a9280 (by decide) (by decide) (by decide)
#print axioms reject9280

def r9353 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 2))))
def d9353 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9353 : List FTy := [[],[],[],[],[],[],[],[8],[0],[],[11],[]]
def a9353 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 2 [0]) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9353 : ¬ Reader r9353 :=
 Rootcert2Flow.reject [] d9353 c9353 a9353 (by decide) (by decide) (by decide)
#print axioms reject9353

def r9354 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.lam (.var 1))) (.lam (.var 1)))
def d9354 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9354 : List FTy := [[],[],[],[],[],[],[],[0],[0],[],[11],[]]
def a9354 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.var 1 [0]) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9354 : ¬ Reader r9354 :=
 Rootcert2Flow.reject [] d9354 c9354 a9354 (by decide) (by decide) (by decide)
#print axioms reject9354

def r9355 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.lam (.lam (.var 2)))) (.var 0))
def d9355 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9355 : List FTy := [[],[],[],[],[],[],[],[8],[0],[],[11],[]]
def a9355 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 2 [0]) [8]) [7]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9355 : ¬ Reader r9355 :=
 Rootcert2Flow.reject [] d9355 c9355 a9355 (by decide) (by decide) (by decide)
#print axioms reject9355

def r9356 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 2))))
def d9356 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9356 : List FTy := [[],[],[],[],[],[],[],[8],[0],[],[11],[]]
def a9356 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 2 [0]) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9356 : ¬ Reader r9356 :=
 Rootcert2Flow.reject [] d9356 c9356 a9356 (by decide) (by decide) (by decide)
#print axioms reject9356

def r9357 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.lam (.lam (.var 2)))) (.var 1))
def d9357 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9357 : List FTy := [[],[],[],[],[],[],[],[8],[0],[],[11],[]]
def a9357 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 2 [0]) [8]) [7]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9357 : ¬ Reader r9357 :=
 Rootcert2Flow.reject [] d9357 c9357 a9357 (by decide) (by decide) (by decide)
#print axioms reject9357

def r9358 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.var 1))) (.var 1)) (.lam (.var 1)))
def d9358 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9358 : List FTy := [[],[],[],[],[],[],[],[0],[0],[],[11],[]]
def a9358 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.lam 8 (.var 1 [0]) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9358 : ¬ Reader r9358 :=
 Rootcert2Flow.reject [] d9358 c9358 a9358 (by decide) (by decide) (by decide)
#print axioms reject9358

def r9359 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.var 1))) (.lam (.var 1))) (.var 1))
def d9359 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9359 : List FTy := [[],[],[],[],[],[],[],[0],[0],[],[11],[]]
def a9359 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.var 1 [0]) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9359 : ¬ Reader r9359 :=
 Rootcert2Flow.reject [] d9359 c9359 a9359 (by decide) (by decide) (by decide)
#print axioms reject9359

def r9360 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.lam (.var 2)))) (.var 1)) (.var 0))
def d9360 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9360 : List FTy := [[],[],[],[],[],[],[],[8],[0],[],[11],[]]
def a9360 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 2 [0]) [8]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9360 : ¬ Reader r9360 :=
 Rootcert2Flow.reject [] d9360 c9360 a9360 (by decide) (by decide) (by decide)
#print axioms reject9360

def r9361 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.lam (.var 2)))) (.var 0)) (.var 1))
def d9361 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9361 : List FTy := [[],[],[],[],[],[],[],[8],[0],[],[11],[]]
def a9361 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 2 [0]) [8]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9361 : ¬ Reader r9361 :=
 Rootcert2Flow.reject [] d9361 c9361 a9361 (by decide) (by decide) (by decide)
#print axioms reject9361

def r9371 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 2))))
def d9371 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9371 : List FTy := [[],[],[],[],[],[],[],[8],[0],[],[11],[]]
def a9371 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 2 [0]) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9371 : ¬ Reader r9371 :=
 Rootcert2Flow.reject [] d9371 c9371 a9371 (by decide) (by decide) (by decide)
#print axioms reject9371

def r9372 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.lam (.var 1))) (.lam (.var 1)))
def d9372 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9372 : List FTy := [[],[],[],[],[],[],[],[0],[0],[],[11],[]]
def a9372 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.var 1 [0]) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9372 : ¬ Reader r9372 :=
 Rootcert2Flow.reject [] d9372 c9372 a9372 (by decide) (by decide) (by decide)
#print axioms reject9372

def r9373 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.lam (.lam (.var 2)))) (.var 0))
def d9373 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9373 : List FTy := [[],[],[],[],[],[],[],[8],[0],[],[11],[]]
def a9373 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 2 [0]) [8]) [7]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9373 : ¬ Reader r9373 :=
 Rootcert2Flow.reject [] d9373 c9373 a9373 (by decide) (by decide) (by decide)
#print axioms reject9373

def r9374 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 2))))
def d9374 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9374 : List FTy := [[],[],[],[],[],[],[],[8],[0],[],[11],[]]
def a9374 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 2 [0]) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9374 : ¬ Reader r9374 :=
 Rootcert2Flow.reject [] d9374 c9374 a9374 (by decide) (by decide) (by decide)
#print axioms reject9374

def r9375 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.lam (.lam (.var 2)))) (.var 1))
def d9375 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9375 : List FTy := [[],[],[],[],[],[],[],[8],[0],[],[11],[]]
def a9375 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 2 [0]) [8]) [7]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9375 : ¬ Reader r9375 :=
 Rootcert2Flow.reject [] d9375 c9375 a9375 (by decide) (by decide) (by decide)
#print axioms reject9375

def r9376 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.var 1))) (.var 1)) (.lam (.var 1)))
def d9376 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9376 : List FTy := [[],[],[],[],[],[],[],[0],[0],[],[11],[]]
def a9376 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.lam 8 (.var 1 [0]) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9376 : ¬ Reader r9376 :=
 Rootcert2Flow.reject [] d9376 c9376 a9376 (by decide) (by decide) (by decide)
#print axioms reject9376

def r9377 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.var 1))) (.lam (.var 1))) (.var 1))
def d9377 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9377 : List FTy := [[],[],[],[],[],[],[],[0],[0],[],[11],[]]
def a9377 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.var 1 [0]) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9377 : ¬ Reader r9377 :=
 Rootcert2Flow.reject [] d9377 c9377 a9377 (by decide) (by decide) (by decide)
#print axioms reject9377

def r9378 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.var 2)))) (.var 1)) (.var 0))
def d9378 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9378 : List FTy := [[],[],[],[],[],[],[],[8],[0],[],[11],[]]
def a9378 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 2 [0]) [8]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9378 : ¬ Reader r9378 :=
 Rootcert2Flow.reject [] d9378 c9378 a9378 (by decide) (by decide) (by decide)
#print axioms reject9378

def r9379 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.var 2)))) (.var 0)) (.var 1))
def d9379 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9379 : List FTy := [[],[],[],[],[],[],[],[8],[0],[],[11],[]]
def a9379 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 2 [0]) [8]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9379 : ¬ Reader r9379 :=
 Rootcert2Flow.reject [] d9379 c9379 a9379 (by decide) (by decide) (by decide)
#print axioms reject9379

def r9426 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))) (.var 1)) (.var 0)) (.lam (.var 1)))
def d9426 : List FTy := [[],[],[],[],[7],[8],[9],[5],[6],[],[],[],[],[]]
def c9426 : List FTy := [[],[],[],[],[],[],[8],[],[],[6],[0],[],[13],[]]
def a9426 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.app (.var 1 [7]) (.app (.var 0 [8]) (.lam 6 (.var 1 [8]) [6]) []) []) [5]) []) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.app (.var 1 [5]) (.app (.var 0 [6]) (.lam 9 (.var 1 [6]) [9]) [8]) []) [8]) []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 10 (.var 1 [0]) [10]) []) (.lam 11 (.app (.app (.var 0 []) (.lam 12 (.lam 13 (.var 1 []) [13]) [12]) []) (.var 4 [3]) []) [11]) [])
theorem reject9426 : ¬ Reader r9426 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d9426 c9426 a9426 (by decide) (by decide) (by decide)
#print axioms reject9426

def r9427 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))) (.var 1)) (.lam (.var 1))) (.var 0))
def d9427 : List FTy := [[],[],[],[],[7],[8],[9],[5],[6],[],[],[],[],[]]
def c9427 : List FTy := [[],[],[],[],[],[],[8],[],[],[6],[0],[],[13],[]]
def a9427 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.app (.var 1 [7]) (.app (.var 0 [8]) (.lam 6 (.var 1 [8]) [6]) []) []) [5]) []) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.app (.var 1 [5]) (.app (.var 0 [6]) (.lam 9 (.var 1 [6]) [9]) [8]) []) [8]) []) [7]) []) (.var 1 [1]) []) (.lam 10 (.var 1 [0]) [10]) []) (.var 0 [0]) []) (.lam 11 (.app (.app (.var 0 []) (.lam 12 (.lam 13 (.var 1 []) [13]) [12]) []) (.var 4 [3]) []) [11]) [])
theorem reject9427 : ¬ Reader r9427 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d9427 c9427 a9427 (by decide) (by decide) (by decide)
#print axioms reject9427

def r9428 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))) (.var 0)) (.var 1)) (.lam (.var 1)))
def d9428 : List FTy := [[],[],[],[],[7],[8],[9],[5],[6],[],[],[],[],[]]
def c9428 : List FTy := [[],[],[],[],[],[],[8],[],[],[6],[0],[],[13],[]]
def a9428 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.app (.var 1 [7]) (.app (.var 0 [8]) (.lam 6 (.var 1 [8]) [6]) []) []) [5]) []) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.app (.var 1 [5]) (.app (.var 0 [6]) (.lam 9 (.var 1 [6]) [9]) [8]) []) [8]) []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 10 (.var 1 [0]) [10]) []) (.lam 11 (.app (.app (.var 0 []) (.lam 12 (.lam 13 (.var 1 []) [13]) [12]) []) (.var 4 [3]) []) [11]) [])
theorem reject9428 : ¬ Reader r9428 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d9428 c9428 a9428 (by decide) (by decide) (by decide)
#print axioms reject9428
end Blc.HandlerLet.XFlow13
