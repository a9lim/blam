import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XFlow12
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r8266 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))))))) (.var 0)) (.var 1)) (.var 0))
def d8266 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8266 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a8266 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8266 : ¬ Reader r8266 :=
 Rootcert2Flow.reject [] d8266 c8266 a8266 (by decide) (by decide) (by decide)
#print axioms reject8266

def r8267 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))))))) (.var 0)) (.var 0)) (.var 1))
def d8267 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8267 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a8267 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8267 : ¬ Reader r8267 :=
 Rootcert2Flow.reject [] d8267 c8267 a8267 (by decide) (by decide) (by decide)
#print axioms reject8267

def r8307 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0)) (.var 0))
def d8307 : List FTy := [[],[],[],[],[7],[8],[],[5],[6],[],[],[]]
def c8307 : List FTy := [[],[],[],[],[],[],[],[],[5],[],[11],[]]
def a8307 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.app (.var 1 [7]) (.app (.var 0 [8]) (.lam 6 (.var 0 []) [6]) [5]) []) [5]) []) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.var 1 [5]) [8]) []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8307 : ¬ Reader r8307 :=
 Rootcert2Flow.reject [] d8307 c8307 a8307 (by decide) (by decide) (by decide)
#print axioms reject8307

def r8308 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1)) (.var 0))
def d8308 : List FTy := [[],[],[],[],[7],[8],[],[5],[6],[],[],[]]
def c8308 : List FTy := [[],[],[],[],[],[],[],[],[5],[],[11],[]]
def a8308 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.app (.var 1 [7]) (.app (.var 0 [8]) (.lam 6 (.var 0 []) [6]) [5]) []) [5]) []) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.var 1 [5]) [8]) []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8308 : ¬ Reader r8308 :=
 Rootcert2Flow.reject [] d8308 c8308 a8308 (by decide) (by decide) (by decide)
#print axioms reject8308

def r8309 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 0)) (.var 1))
def d8309 : List FTy := [[],[],[],[],[7],[8],[],[5],[6],[],[],[]]
def c8309 : List FTy := [[],[],[],[],[],[],[],[],[5],[],[11],[]]
def a8309 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.app (.var 1 [7]) (.app (.var 0 [8]) (.lam 6 (.var 0 []) [6]) [5]) []) [5]) []) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.var 1 [5]) [8]) []) [7]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8309 : ¬ Reader r8309 :=
 Rootcert2Flow.reject [] d8309 c8309 a8309 (by decide) (by decide) (by decide)
#print axioms reject8309

def r8409 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
def d8409 : List FTy := [[],[],[],[],[8],[],[],[11],[7,10],[8],[11],[],[],[],[]]
def c8409 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[8],[7,10],[],[14],[]]
def a8409 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.lam 5 (.app (.var 0 []) (.lam 6 (.var 1 []) [6]) []) [5]) (.app (.var 0 [8]) (.lam 7 (.var 1 [8]) [7]) []) []) [4]) (.lam 8 (.app (.lam 9 (.app (.var 0 [8]) (.lam 10 (.var 1 [8]) [10]) []) [9]) (.app (.var 0 [7,10]) (.lam 11 (.var 1 [7,10]) [11]) [8]) []) [8]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [])
theorem reject8409 : ¬ Reader r8409 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d8409 c8409 a8409 (by decide) (by decide) (by decide)
#print axioms reject8409

def r8410 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
def d8410 : List FTy := [[],[],[],[],[8],[],[],[11],[7,10],[8],[11],[],[],[],[]]
def c8410 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[8],[7,10],[],[14],[]]
def a8410 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.lam 5 (.app (.var 0 []) (.lam 6 (.var 1 []) [6]) []) [5]) (.app (.var 0 [8]) (.lam 7 (.var 1 [8]) [7]) []) []) [4]) (.lam 8 (.app (.lam 9 (.app (.var 0 [8]) (.lam 10 (.var 1 [8]) [10]) []) [9]) (.app (.var 0 [7,10]) (.lam 11 (.var 1 [7,10]) [11]) [8]) []) [8]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [])
theorem reject8410 : ¬ Reader r8410 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d8410 c8410 a8410 (by decide) (by decide) (by decide)
#print axioms reject8410

def r8411 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
def d8411 : List FTy := [[],[],[],[],[8],[],[],[11],[7,10],[8],[11],[],[],[],[]]
def c8411 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[8],[7,10],[],[14],[]]
def a8411 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.lam 5 (.app (.var 0 []) (.lam 6 (.var 1 []) [6]) []) [5]) (.app (.var 0 [8]) (.lam 7 (.var 1 [8]) [7]) []) []) [4]) (.lam 8 (.app (.lam 9 (.app (.var 0 [8]) (.lam 10 (.var 1 [8]) [10]) []) [9]) (.app (.var 0 [7,10]) (.lam 11 (.var 1 [7,10]) [11]) [8]) []) [8]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [])
theorem reject8411 : ¬ Reader r8411 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d8411 c8411 a8411 (by decide) (by decide) (by decide)
#print axioms reject8411

def r8682 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.lam (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d8682 : List FTy := [[],[],[],[],[8],[],[10,12],[],[5,7],[6,11],[],[10,12],[],[],[18],[16],[],[16],[15,17],[],[],[]]
def c8682 : List FTy := [[],[],[],[],[],[8],[9],[],[9],[],[6,11],[9],[],[16,18],[16,18],[18],[15,17],[16],[15,17],[],[21],[]]
def a8682 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [8]) (.lam 5 (.var 1 [8]) [5]) [9]) (.lam 6 (.app (.var 1 [8]) (.lam 7 (.var 0 []) [7]) [9]) [6]) []) [4]) (.lam 8 (.lam 9 (.app (.app (.var 0 [6,11]) (.lam 10 (.var 1 [6,11]) [10]) [9]) (.lam 11 (.app (.var 1 [6,11]) (.lam 12 (.var 0 []) [12]) [9]) [11]) []) [9]) [8]) []) (.lam 13 (.app (.lam 14 (.app (.app (.var 0 [18]) (.lam 15 (.var 1 [18]) [15]) [15,17]) (.lam 16 (.app (.var 1 [18]) (.lam 17 (.var 0 [16]) [17]) [15,17]) [16]) [16,18]) [14]) (.lam 18 (.var 0 [15,17]) [18]) [16,18]) [13]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 19 (.app (.app (.var 0 []) (.lam 20 (.lam 21 (.var 1 []) [21]) [20]) []) (.var 4 [3]) []) [19]) [])
theorem reject8682 : ¬ Reader r8682 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d8682 c8682 a8682 (by decide) (by decide) (by decide)
#print axioms reject8682

def r8683 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.lam (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d8683 : List FTy := [[],[],[],[],[8],[],[10,12],[],[5,7],[6,11],[],[10,12],[],[],[18],[16],[],[16],[15,17],[],[],[]]
def c8683 : List FTy := [[],[],[],[],[],[8],[9],[],[9],[],[6,11],[9],[],[16,18],[16,18],[18],[15,17],[16],[15,17],[],[21],[]]
def a8683 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [8]) (.lam 5 (.var 1 [8]) [5]) [9]) (.lam 6 (.app (.var 1 [8]) (.lam 7 (.var 0 []) [7]) [9]) [6]) []) [4]) (.lam 8 (.lam 9 (.app (.app (.var 0 [6,11]) (.lam 10 (.var 1 [6,11]) [10]) [9]) (.lam 11 (.app (.var 1 [6,11]) (.lam 12 (.var 0 []) [12]) [9]) [11]) []) [9]) [8]) []) (.lam 13 (.app (.lam 14 (.app (.app (.var 0 [18]) (.lam 15 (.var 1 [18]) [15]) [15,17]) (.lam 16 (.app (.var 1 [18]) (.lam 17 (.var 0 [16]) [17]) [15,17]) [16]) [16,18]) [14]) (.lam 18 (.var 0 [15,17]) [18]) [16,18]) [13]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 19 (.app (.app (.var 0 []) (.lam 20 (.lam 21 (.var 1 []) [21]) [20]) []) (.var 4 [3]) []) [19]) [])
theorem reject8683 : ¬ Reader r8683 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d8683 c8683 a8683 (by decide) (by decide) (by decide)
#print axioms reject8683

def r8684 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 1) (.lam (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d8684 : List FTy := [[],[],[],[],[8],[],[10,12],[],[5,7],[6,11],[],[10,12],[],[],[18],[16],[],[16],[15,17],[],[],[]]
def c8684 : List FTy := [[],[],[],[],[],[8],[9],[],[9],[],[6,11],[9],[],[16,18],[16,18],[18],[15,17],[16],[15,17],[],[21],[]]
def a8684 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [8]) (.lam 5 (.var 1 [8]) [5]) [9]) (.lam 6 (.app (.var 1 [8]) (.lam 7 (.var 0 []) [7]) [9]) [6]) []) [4]) (.lam 8 (.lam 9 (.app (.app (.var 0 [6,11]) (.lam 10 (.var 1 [6,11]) [10]) [9]) (.lam 11 (.app (.var 1 [6,11]) (.lam 12 (.var 0 []) [12]) [9]) [11]) []) [9]) [8]) []) (.lam 13 (.app (.lam 14 (.app (.app (.var 0 [18]) (.lam 15 (.var 1 [18]) [15]) [15,17]) (.lam 16 (.app (.var 1 [18]) (.lam 17 (.var 0 [16]) [17]) [15,17]) [16]) [16,18]) [14]) (.lam 18 (.var 0 [15,17]) [18]) [16,18]) [13]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 19 (.app (.app (.var 0 []) (.lam 20 (.lam 21 (.var 1 []) [21]) [20]) []) (.var 4 [3]) []) [19]) [])
theorem reject8684 : ¬ Reader r8684 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d8684 c8684 a8684 (by decide) (by decide) (by decide)
#print axioms reject8684

def r8823 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d8823 : List FTy := [[],[],[],[],[6],[5,7,8],[5,7],[5,7,8],[],[],[],[]]
def c8823 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a8823 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 1 [5,7]) (.lam 8 (.var 0 []) [8]) [6]) [7]) []) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8823 : ¬ Reader r8823 :=
 Rootcert2Flow.reject [] d8823 c8823 a8823 (by decide) (by decide) (by decide)
#print axioms reject8823

def r8824 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d8824 : List FTy := [[],[],[],[],[6],[5,7,8],[5,7],[5,7,8],[],[],[],[]]
def c8824 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a8824 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 1 [5,7]) (.lam 8 (.var 0 []) [8]) [6]) [7]) []) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8824 : ¬ Reader r8824 :=
 Rootcert2Flow.reject [] d8824 c8824 a8824 (by decide) (by decide) (by decide)
#print axioms reject8824

def r8825 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d8825 : List FTy := [[],[],[],[],[6],[5,7,8],[5,7],[5,7,8],[],[],[],[]]
def c8825 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a8825 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 1 [5,7]) (.lam 8 (.var 0 []) [8]) [6]) [7]) []) [6]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8825 : ¬ Reader r8825 :=
 Rootcert2Flow.reject [] d8825 c8825 a8825 (by decide) (by decide) (by decide)
#print axioms reject8825

def r8919 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.var 0))) (.lam (.var 0))) (.var 1))
def d8919 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8919 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a8919 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8919 : ¬ Reader r8919 :=
 Rootcert2Flow.reject [] d8919 c8919 a8919 (by decide) (by decide) (by decide)
#print axioms reject8919

def r8920 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.var 0))) (.var 1)) (.lam (.var 0)))
def d8920 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8920 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a8920 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8920 : ¬ Reader r8920 :=
 Rootcert2Flow.reject [] d8920 c8920 a8920 (by decide) (by decide) (by decide)
#print axioms reject8920

def r8921 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1)) (.lam (.var 0))) (.lam (.var 0)))
def d8921 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8921 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a8921 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8921 : ¬ Reader r8921 :=
 Rootcert2Flow.reject [] d8921 c8921 a8921 (by decide) (by decide) (by decide)
#print axioms reject8921

def r8937 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d8937 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[],[]]
def c8937 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a8937 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.var 2 [5,6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8937 : ¬ Reader r8937 :=
 Rootcert2Flow.reject [] d8937 c8937 a8937 (by decide) (by decide) (by decide)
#print axioms reject8937

def r8938 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d8938 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[],[]]
def c8938 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a8938 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.var 2 [5,6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.lam 8 (.var 0 []) [8]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8938 : ¬ Reader r8938 :=
 Rootcert2Flow.reject [] d8938 c8938 a8938 (by decide) (by decide) (by decide)
#print axioms reject8938

def r8939 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d8939 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[],[]]
def c8939 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a8939 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.var 2 [5,6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8939 : ¬ Reader r8939 :=
 Rootcert2Flow.reject [] d8939 c8939 a8939 (by decide) (by decide) (by decide)
#print axioms reject8939

def r8940 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d8940 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[],[]]
def c8940 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a8940 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.var 2 [5,6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8940 : ¬ Reader r8940 :=
 Rootcert2Flow.reject [] d8940 c8940 a8940 (by decide) (by decide) (by decide)
#print axioms reject8940

def r8941 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d8941 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[],[]]
def c8941 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a8941 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.var 2 [5,6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8941 : ¬ Reader r8941 :=
 Rootcert2Flow.reject [] d8941 c8941 a8941 (by decide) (by decide) (by decide)
#print axioms reject8941

def r8942 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d8942 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[],[]]
def c8942 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a8942 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.var 2 [5,6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8942 : ¬ Reader r8942 :=
 Rootcert2Flow.reject [] d8942 c8942 a8942 (by decide) (by decide) (by decide)
#print axioms reject8942

def r8949 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
def d8949 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8949 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a8949 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.var 1 [0]) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8949 : ¬ Reader r8949 :=
 Rootcert2Flow.reject [] d8949 c8949 a8949 (by decide) (by decide) (by decide)
#print axioms reject8949

def r8950 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
def d8950 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8950 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a8950 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.var 1 [0]) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8950 : ¬ Reader r8950 :=
 Rootcert2Flow.reject [] d8950 c8950 a8950 (by decide) (by decide) (by decide)
#print axioms reject8950

def r8951 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
def d8951 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8951 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a8951 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8951 : ¬ Reader r8951 :=
 Rootcert2Flow.reject [] d8951 c8951 a8951 (by decide) (by decide) (by decide)
#print axioms reject8951

def r8952 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
def d8952 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8952 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a8952 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8952 : ¬ Reader r8952 :=
 Rootcert2Flow.reject [] d8952 c8952 a8952 (by decide) (by decide) (by decide)
#print axioms reject8952

def r8953 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
def d8953 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8953 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a8953 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.var 1 [0]) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8953 : ¬ Reader r8953 :=
 Rootcert2Flow.reject [] d8953 c8953 a8953 (by decide) (by decide) (by decide)
#print axioms reject8953

def r8954 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
def d8954 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8954 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a8954 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8954 : ¬ Reader r8954 :=
 Rootcert2Flow.reject [] d8954 c8954 a8954 (by decide) (by decide) (by decide)
#print axioms reject8954

def r8955 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
def d8955 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8955 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a8955 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8955 : ¬ Reader r8955 :=
 Rootcert2Flow.reject [] d8955 c8955 a8955 (by decide) (by decide) (by decide)
#print axioms reject8955

def r8956 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
def d8956 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8956 : List FTy := [[],[],[],[],[],[],[],[0],[],[],[11],[]]
def a8956 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8956 : ¬ Reader r8956 :=
 Rootcert2Flow.reject [] d8956 c8956 a8956 (by decide) (by decide) (by decide)
#print axioms reject8956

def r8957 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
def d8957 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8957 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a8957 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8957 : ¬ Reader r8957 :=
 Rootcert2Flow.reject [] d8957 c8957 a8957 (by decide) (by decide) (by decide)
#print axioms reject8957

def r8958 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
def d8958 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8958 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a8958 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8958 : ¬ Reader r8958 :=
 Rootcert2Flow.reject [] d8958 c8958 a8958 (by decide) (by decide) (by decide)
#print axioms reject8958

def r8959 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
def d8959 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8959 : List FTy := [[],[],[],[],[],[],[],[0],[],[],[11],[]]
def a8959 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8959 : ¬ Reader r8959 :=
 Rootcert2Flow.reject [] d8959 c8959 a8959 (by decide) (by decide) (by decide)
#print axioms reject8959

def r8960 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
def d8960 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8960 : List FTy := [[],[],[],[],[],[],[],[0],[],[],[11],[]]
def a8960 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8960 : ¬ Reader r8960 :=
 Rootcert2Flow.reject [] d8960 c8960 a8960 (by decide) (by decide) (by decide)
#print axioms reject8960

def r8985 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
def d8985 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8985 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a8985 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.var 1 [0]) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8985 : ¬ Reader r8985 :=
 Rootcert2Flow.reject [] d8985 c8985 a8985 (by decide) (by decide) (by decide)
#print axioms reject8985

def r8986 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
def d8986 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8986 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a8986 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.var 1 [0]) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8986 : ¬ Reader r8986 :=
 Rootcert2Flow.reject [] d8986 c8986 a8986 (by decide) (by decide) (by decide)
#print axioms reject8986

def r8987 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
def d8987 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8987 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a8987 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8987 : ¬ Reader r8987 :=
 Rootcert2Flow.reject [] d8987 c8987 a8987 (by decide) (by decide) (by decide)
#print axioms reject8987

def r8988 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
def d8988 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8988 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a8988 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8988 : ¬ Reader r8988 :=
 Rootcert2Flow.reject [] d8988 c8988 a8988 (by decide) (by decide) (by decide)
#print axioms reject8988

def r8989 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
def d8989 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8989 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a8989 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.var 1 [0]) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8989 : ¬ Reader r8989 :=
 Rootcert2Flow.reject [] d8989 c8989 a8989 (by decide) (by decide) (by decide)
#print axioms reject8989

def r8990 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
def d8990 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8990 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a8990 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8990 : ¬ Reader r8990 :=
 Rootcert2Flow.reject [] d8990 c8990 a8990 (by decide) (by decide) (by decide)
#print axioms reject8990

def r8991 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
def d8991 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8991 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a8991 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8991 : ¬ Reader r8991 :=
 Rootcert2Flow.reject [] d8991 c8991 a8991 (by decide) (by decide) (by decide)
#print axioms reject8991

def r8992 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
def d8992 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8992 : List FTy := [[],[],[],[],[],[],[],[0],[],[],[11],[]]
def a8992 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8992 : ¬ Reader r8992 :=
 Rootcert2Flow.reject [] d8992 c8992 a8992 (by decide) (by decide) (by decide)
#print axioms reject8992

def r8993 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
def d8993 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8993 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a8993 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8993 : ¬ Reader r8993 :=
 Rootcert2Flow.reject [] d8993 c8993 a8993 (by decide) (by decide) (by decide)
#print axioms reject8993

def r8994 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
def d8994 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8994 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a8994 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8994 : ¬ Reader r8994 :=
 Rootcert2Flow.reject [] d8994 c8994 a8994 (by decide) (by decide) (by decide)
#print axioms reject8994

def r8995 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
def d8995 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8995 : List FTy := [[],[],[],[],[],[],[],[0],[],[],[11],[]]
def a8995 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8995 : ¬ Reader r8995 :=
 Rootcert2Flow.reject [] d8995 c8995 a8995 (by decide) (by decide) (by decide)
#print axioms reject8995

def r8996 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
def d8996 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8996 : List FTy := [[],[],[],[],[],[],[],[0],[],[],[11],[]]
def a8996 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8996 : ¬ Reader r8996 :=
 Rootcert2Flow.reject [] d8996 c8996 a8996 (by decide) (by decide) (by decide)
#print axioms reject8996

def r9042 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 2))))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d9042 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9042 : List FTy := [[],[],[],[],[],[],[],[5,6],[],[],[11],[]]
def a9042 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 2 [5,6]) [7]) []) [6]) []) [5]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9042 : ¬ Reader r9042 :=
 Rootcert2Flow.reject [] d9042 c9042 a9042 (by decide) (by decide) (by decide)
#print axioms reject9042

def r9043 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 2))))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d9043 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9043 : List FTy := [[],[],[],[],[],[],[],[5,6],[],[],[11],[]]
def a9043 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 2 [5,6]) [7]) []) [6]) []) [5]) []) (.lam 8 (.var 0 []) [8]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9043 : ¬ Reader r9043 :=
 Rootcert2Flow.reject [] d9043 c9043 a9043 (by decide) (by decide) (by decide)
#print axioms reject9043

def r9044 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 2))))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d9044 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c9044 : List FTy := [[],[],[],[],[],[],[],[5,6],[],[],[11],[]]
def a9044 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 2 [5,6]) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject9044 : ¬ Reader r9044 :=
 Rootcert2Flow.reject [] d9044 c9044 a9044 (by decide) (by decide) (by decide)
#print axioms reject9044
end Blc.HandlerLet.XFlow12
