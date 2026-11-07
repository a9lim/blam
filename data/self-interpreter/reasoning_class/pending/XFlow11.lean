import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XFlow11
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r7491 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
def d7491 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7491 : List FTy := [[],[],[],[],[],[],[],[0],[],[],[11],[]]
def a7491 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7491 : ¬ Reader r7491 :=
 Rootcert2Flow.reject [] d7491 c7491 a7491 (by decide) (by decide) (by decide)
#print axioms reject7491

def r7554 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d7554 : List FTy := [[],[],[],[],[7],[8],[9],[5],[6],[],[],[],[],[]]
def c7554 : List FTy := [[],[],[],[],[],[],[8],[],[],[6],[],[],[13],[]]
def a7554 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.app (.var 1 [7]) (.app (.var 0 [8]) (.lam 6 (.var 1 [8]) [6]) []) []) [5]) []) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.app (.var 1 [5]) (.app (.var 0 [6]) (.lam 9 (.var 1 [6]) [9]) [8]) []) [8]) []) [7]) []) (.lam 10 (.var 0 []) [10]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 11 (.app (.app (.var 0 []) (.lam 12 (.lam 13 (.var 1 []) [13]) [12]) []) (.var 4 [3]) []) [11]) [])
theorem reject7554 : ¬ Reader r7554 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d7554 c7554 a7554 (by decide) (by decide) (by decide)
#print axioms reject7554

def r7555 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d7555 : List FTy := [[],[],[],[],[7],[8],[9],[5],[6],[],[],[],[],[]]
def c7555 : List FTy := [[],[],[],[],[],[],[8],[],[],[6],[],[],[13],[]]
def a7555 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.app (.var 1 [7]) (.app (.var 0 [8]) (.lam 6 (.var 1 [8]) [6]) []) []) [5]) []) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.app (.var 1 [5]) (.app (.var 0 [6]) (.lam 9 (.var 1 [6]) [9]) [8]) []) [8]) []) [7]) []) (.lam 10 (.var 0 []) [10]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 11 (.app (.app (.var 0 []) (.lam 12 (.lam 13 (.var 1 []) [13]) [12]) []) (.var 4 [3]) []) [11]) [])
theorem reject7555 : ¬ Reader r7555 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d7555 c7555 a7555 (by decide) (by decide) (by decide)
#print axioms reject7555

def r7556 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d7556 : List FTy := [[],[],[],[],[7],[8],[9],[5],[6],[],[],[],[],[]]
def c7556 : List FTy := [[],[],[],[],[],[],[8],[],[],[6],[],[],[13],[]]
def a7556 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.app (.var 1 [7]) (.app (.var 0 [8]) (.lam 6 (.var 1 [8]) [6]) []) []) [5]) []) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.app (.var 1 [5]) (.app (.var 0 [6]) (.lam 9 (.var 1 [6]) [9]) [8]) []) [8]) []) [7]) []) (.var 1 [1]) []) (.lam 10 (.var 0 []) [10]) []) (.var 0 [0]) []) (.lam 11 (.app (.app (.var 0 []) (.lam 12 (.lam 13 (.var 1 []) [13]) [12]) []) (.var 4 [3]) []) [11]) [])
theorem reject7556 : ¬ Reader r7556 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d7556 c7556 a7556 (by decide) (by decide) (by decide)
#print axioms reject7556

def r7557 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d7557 : List FTy := [[],[],[],[],[7],[8],[9],[5],[6],[],[],[],[],[]]
def c7557 : List FTy := [[],[],[],[],[],[],[8],[],[],[6],[],[],[13],[]]
def a7557 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.app (.var 1 [7]) (.app (.var 0 [8]) (.lam 6 (.var 1 [8]) [6]) []) []) [5]) []) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.app (.var 1 [5]) (.app (.var 0 [6]) (.lam 9 (.var 1 [6]) [9]) [8]) []) [8]) []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 10 (.var 0 []) [10]) []) (.lam 11 (.app (.app (.var 0 []) (.lam 12 (.lam 13 (.var 1 []) [13]) [12]) []) (.var 4 [3]) []) [11]) [])
theorem reject7557 : ¬ Reader r7557 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d7557 c7557 a7557 (by decide) (by decide) (by decide)
#print axioms reject7557

def r7558 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d7558 : List FTy := [[],[],[],[],[7],[8],[9],[5],[6],[],[],[],[],[]]
def c7558 : List FTy := [[],[],[],[],[],[],[8],[],[],[6],[],[],[13],[]]
def a7558 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.app (.var 1 [7]) (.app (.var 0 [8]) (.lam 6 (.var 1 [8]) [6]) []) []) [5]) []) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.app (.var 1 [5]) (.app (.var 0 [6]) (.lam 9 (.var 1 [6]) [9]) [8]) []) [8]) []) [7]) []) (.var 0 [0]) []) (.lam 10 (.var 0 []) [10]) []) (.var 1 [1]) []) (.lam 11 (.app (.app (.var 0 []) (.lam 12 (.lam 13 (.var 1 []) [13]) [12]) []) (.var 4 [3]) []) [11]) [])
theorem reject7558 : ¬ Reader r7558 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d7558 c7558 a7558 (by decide) (by decide) (by decide)
#print axioms reject7558

def r7559 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d7559 : List FTy := [[],[],[],[],[7],[8],[9],[5],[6],[],[],[],[],[]]
def c7559 : List FTy := [[],[],[],[],[],[],[8],[],[],[6],[],[],[13],[]]
def a7559 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.app (.var 1 [7]) (.app (.var 0 [8]) (.lam 6 (.var 1 [8]) [6]) []) []) [5]) []) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.app (.var 1 [5]) (.app (.var 0 [6]) (.lam 9 (.var 1 [6]) [9]) [8]) []) [8]) []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 10 (.var 0 []) [10]) []) (.lam 11 (.app (.app (.var 0 []) (.lam 12 (.lam 13 (.var 1 []) [13]) [12]) []) (.var 4 [3]) []) [11]) [])
theorem reject7559 : ¬ Reader r7559 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d7559 c7559 a7559 (by decide) (by decide) (by decide)
#print axioms reject7559

def r7560 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d7560 : List FTy := [[],[],[],[],[9],[8],[],[],[6,7],[9],[15],[14],[],[],[12,13],[15],[],[],[],[]]
def c7560 : List FTy := [[],[],[],[],[],[9],[],[],[9],[],[9],[15],[],[],[15],[9],[],[],[19],[]]
def a7560 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [9]) (.app (.lam 5 (.app (.var 0 [8]) (.lam 6 (.app (.var 0 []) (.app (.var 1 [8]) (.lam 7 (.var 1 []) [7]) [9]) []) [6]) [9]) [5]) (.lam 8 (.var 1 [9]) [8]) [9]) []) [4]) (.lam 9 (.app (.var 0 [9]) (.app (.lam 10 (.app (.var 0 [15]) (.app (.lam 11 (.app (.var 0 [14]) (.lam 12 (.app (.var 0 []) (.app (.var 1 [14]) (.lam 13 (.var 1 []) [13]) [15]) []) [12]) [15]) [11]) (.lam 14 (.var 1 [15]) [14]) [15]) [9]) [10]) (.lam 15 (.var 1 [9]) [15]) [9]) []) [9]) []) (.lam 16 (.var 0 []) [16]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 17 (.app (.app (.var 0 []) (.lam 18 (.lam 19 (.var 1 []) [19]) [18]) []) (.var 4 [3]) []) [17]) [])
theorem reject7560 : ¬ Reader r7560 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]] d7560 c7560 a7560 (by decide) (by decide) (by decide)
#print axioms reject7560

def r7561 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d7561 : List FTy := [[],[],[],[],[9],[8],[],[],[6,7],[9],[15],[14],[],[],[12,13],[15],[],[],[],[]]
def c7561 : List FTy := [[],[],[],[],[],[9],[],[],[9],[],[9],[15],[],[],[15],[9],[],[],[19],[]]
def a7561 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [9]) (.app (.lam 5 (.app (.var 0 [8]) (.lam 6 (.app (.var 0 []) (.app (.var 1 [8]) (.lam 7 (.var 1 []) [7]) [9]) []) [6]) [9]) [5]) (.lam 8 (.var 1 [9]) [8]) [9]) []) [4]) (.lam 9 (.app (.var 0 [9]) (.app (.lam 10 (.app (.var 0 [15]) (.app (.lam 11 (.app (.var 0 [14]) (.lam 12 (.app (.var 0 []) (.app (.var 1 [14]) (.lam 13 (.var 1 []) [13]) [15]) []) [12]) [15]) [11]) (.lam 14 (.var 1 [15]) [14]) [15]) [9]) [10]) (.lam 15 (.var 1 [9]) [15]) [9]) []) [9]) []) (.lam 16 (.var 0 []) [16]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 17 (.app (.app (.var 0 []) (.lam 18 (.lam 19 (.var 1 []) [19]) [18]) []) (.var 4 [3]) []) [17]) [])
theorem reject7561 : ¬ Reader r7561 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]] d7561 c7561 a7561 (by decide) (by decide) (by decide)
#print axioms reject7561

def r7562 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d7562 : List FTy := [[],[],[],[],[9],[8],[],[],[6,7],[9],[15],[14],[],[],[12,13],[15],[],[],[],[]]
def c7562 : List FTy := [[],[],[],[],[],[9],[],[],[9],[],[9],[15],[],[],[15],[9],[],[],[19],[]]
def a7562 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [9]) (.app (.lam 5 (.app (.var 0 [8]) (.lam 6 (.app (.var 0 []) (.app (.var 1 [8]) (.lam 7 (.var 1 []) [7]) [9]) []) [6]) [9]) [5]) (.lam 8 (.var 1 [9]) [8]) [9]) []) [4]) (.lam 9 (.app (.var 0 [9]) (.app (.lam 10 (.app (.var 0 [15]) (.app (.lam 11 (.app (.var 0 [14]) (.lam 12 (.app (.var 0 []) (.app (.var 1 [14]) (.lam 13 (.var 1 []) [13]) [15]) []) [12]) [15]) [11]) (.lam 14 (.var 1 [15]) [14]) [15]) [9]) [10]) (.lam 15 (.var 1 [9]) [15]) [9]) []) [9]) []) (.var 1 [1]) []) (.lam 16 (.var 0 []) [16]) []) (.var 0 [0]) []) (.lam 17 (.app (.app (.var 0 []) (.lam 18 (.lam 19 (.var 1 []) [19]) [18]) []) (.var 4 [3]) []) [17]) [])
theorem reject7562 : ¬ Reader r7562 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]] d7562 c7562 a7562 (by decide) (by decide) (by decide)
#print axioms reject7562

def r7563 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d7563 : List FTy := [[],[],[],[],[9],[8],[],[],[6,7],[9],[15],[14],[],[],[12,13],[15],[],[],[],[]]
def c7563 : List FTy := [[],[],[],[],[],[9],[],[],[9],[],[9],[15],[],[],[15],[9],[],[],[19],[]]
def a7563 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [9]) (.app (.lam 5 (.app (.var 0 [8]) (.lam 6 (.app (.var 0 []) (.app (.var 1 [8]) (.lam 7 (.var 1 []) [7]) [9]) []) [6]) [9]) [5]) (.lam 8 (.var 1 [9]) [8]) [9]) []) [4]) (.lam 9 (.app (.var 0 [9]) (.app (.lam 10 (.app (.var 0 [15]) (.app (.lam 11 (.app (.var 0 [14]) (.lam 12 (.app (.var 0 []) (.app (.var 1 [14]) (.lam 13 (.var 1 []) [13]) [15]) []) [12]) [15]) [11]) (.lam 14 (.var 1 [15]) [14]) [15]) [9]) [10]) (.lam 15 (.var 1 [9]) [15]) [9]) []) [9]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 16 (.var 0 []) [16]) []) (.lam 17 (.app (.app (.var 0 []) (.lam 18 (.lam 19 (.var 1 []) [19]) [18]) []) (.var 4 [3]) []) [17]) [])
theorem reject7563 : ¬ Reader r7563 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]] d7563 c7563 a7563 (by decide) (by decide) (by decide)
#print axioms reject7563

def r7564 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d7564 : List FTy := [[],[],[],[],[9],[8],[],[],[6,7],[9],[15],[14],[],[],[12,13],[15],[],[],[],[]]
def c7564 : List FTy := [[],[],[],[],[],[9],[],[],[9],[],[9],[15],[],[],[15],[9],[],[],[19],[]]
def a7564 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [9]) (.app (.lam 5 (.app (.var 0 [8]) (.lam 6 (.app (.var 0 []) (.app (.var 1 [8]) (.lam 7 (.var 1 []) [7]) [9]) []) [6]) [9]) [5]) (.lam 8 (.var 1 [9]) [8]) [9]) []) [4]) (.lam 9 (.app (.var 0 [9]) (.app (.lam 10 (.app (.var 0 [15]) (.app (.lam 11 (.app (.var 0 [14]) (.lam 12 (.app (.var 0 []) (.app (.var 1 [14]) (.lam 13 (.var 1 []) [13]) [15]) []) [12]) [15]) [11]) (.lam 14 (.var 1 [15]) [14]) [15]) [9]) [10]) (.lam 15 (.var 1 [9]) [15]) [9]) []) [9]) []) (.var 0 [0]) []) (.lam 16 (.var 0 []) [16]) []) (.var 1 [1]) []) (.lam 17 (.app (.app (.var 0 []) (.lam 18 (.lam 19 (.var 1 []) [19]) [18]) []) (.var 4 [3]) []) [17]) [])
theorem reject7564 : ¬ Reader r7564 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]] d7564 c7564 a7564 (by decide) (by decide) (by decide)
#print axioms reject7564

def r7565 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d7565 : List FTy := [[],[],[],[],[9],[8],[],[],[6,7],[9],[15],[14],[],[],[12,13],[15],[],[],[],[]]
def c7565 : List FTy := [[],[],[],[],[],[9],[],[],[9],[],[9],[15],[],[],[15],[9],[],[],[19],[]]
def a7565 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [9]) (.app (.lam 5 (.app (.var 0 [8]) (.lam 6 (.app (.var 0 []) (.app (.var 1 [8]) (.lam 7 (.var 1 []) [7]) [9]) []) [6]) [9]) [5]) (.lam 8 (.var 1 [9]) [8]) [9]) []) [4]) (.lam 9 (.app (.var 0 [9]) (.app (.lam 10 (.app (.var 0 [15]) (.app (.lam 11 (.app (.var 0 [14]) (.lam 12 (.app (.var 0 []) (.app (.var 1 [14]) (.lam 13 (.var 1 []) [13]) [15]) []) [12]) [15]) [11]) (.lam 14 (.var 1 [15]) [14]) [15]) [9]) [10]) (.lam 15 (.var 1 [9]) [15]) [9]) []) [9]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 16 (.var 0 []) [16]) []) (.lam 17 (.app (.app (.var 0 []) (.lam 18 (.lam 19 (.var 1 []) [19]) [18]) []) (.var 4 [3]) []) [17]) [])
theorem reject7565 : ¬ Reader r7565 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]] d7565 c7565 a7565 (by decide) (by decide) (by decide)
#print axioms reject7565

def r7566 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d7566 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7566 : List FTy := [[],[],[],[],[],[],[],[6],[],[],[11],[]]
def a7566 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 1 [6]) [7]) []) [6]) []) [5]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7566 : ¬ Reader r7566 :=
 Rootcert2Flow.reject [] d7566 c7566 a7566 (by decide) (by decide) (by decide)
#print axioms reject7566

def r7567 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d7567 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7567 : List FTy := [[],[],[],[],[],[],[],[6],[],[],[11],[]]
def a7567 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 1 [6]) [7]) []) [6]) []) [5]) []) (.lam 8 (.var 0 []) [8]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7567 : ¬ Reader r7567 :=
 Rootcert2Flow.reject [] d7567 c7567 a7567 (by decide) (by decide) (by decide)
#print axioms reject7567

def r7568 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d7568 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7568 : List FTy := [[],[],[],[],[],[],[],[6],[],[],[11],[]]
def a7568 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 1 [6]) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7568 : ¬ Reader r7568 :=
 Rootcert2Flow.reject [] d7568 c7568 a7568 (by decide) (by decide) (by decide)
#print axioms reject7568

def r7569 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d7569 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7569 : List FTy := [[],[],[],[],[],[],[],[6],[],[],[11],[]]
def a7569 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 1 [6]) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7569 : ¬ Reader r7569 :=
 Rootcert2Flow.reject [] d7569 c7569 a7569 (by decide) (by decide) (by decide)
#print axioms reject7569

def r7570 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d7570 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7570 : List FTy := [[],[],[],[],[],[],[],[6],[],[],[11],[]]
def a7570 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 1 [6]) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7570 : ¬ Reader r7570 :=
 Rootcert2Flow.reject [] d7570 c7570 a7570 (by decide) (by decide) (by decide)
#print axioms reject7570

def r7571 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d7571 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7571 : List FTy := [[],[],[],[],[],[],[],[6],[],[],[11],[]]
def a7571 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 1 [6]) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7571 : ¬ Reader r7571 :=
 Rootcert2Flow.reject [] d7571 c7571 a7571 (by decide) (by decide) (by decide)
#print axioms reject7571

def r7590 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d7590 : List FTy := [[],[],[],[],[6],[7],[5],[7],[],[],[],[]]
def c7590 : List FTy := [[],[],[],[],[],[],[],[5],[],[],[11],[]]
def a7590 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 0 [7]) [5]) []) [5]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7590 : ¬ Reader r7590 :=
 Rootcert2Flow.reject [] d7590 c7590 a7590 (by decide) (by decide) (by decide)
#print axioms reject7590

def r7591 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d7591 : List FTy := [[],[],[],[],[6],[7],[5],[7],[],[],[],[]]
def c7591 : List FTy := [[],[],[],[],[],[],[],[5],[],[],[11],[]]
def a7591 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 0 [7]) [5]) []) [5]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.lam 8 (.var 0 []) [8]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7591 : ¬ Reader r7591 :=
 Rootcert2Flow.reject [] d7591 c7591 a7591 (by decide) (by decide) (by decide)
#print axioms reject7591

def r7592 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d7592 : List FTy := [[],[],[],[],[6],[7],[5],[7],[],[],[],[]]
def c7592 : List FTy := [[],[],[],[],[],[],[],[5],[],[],[11],[]]
def a7592 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 0 [7]) [5]) []) [5]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7592 : ¬ Reader r7592 :=
 Rootcert2Flow.reject [] d7592 c7592 a7592 (by decide) (by decide) (by decide)
#print axioms reject7592

def r7593 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d7593 : List FTy := [[],[],[],[],[6],[7],[5],[7],[],[],[],[]]
def c7593 : List FTy := [[],[],[],[],[],[],[],[5],[],[],[11],[]]
def a7593 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 0 [7]) [5]) []) [5]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7593 : ¬ Reader r7593 :=
 Rootcert2Flow.reject [] d7593 c7593 a7593 (by decide) (by decide) (by decide)
#print axioms reject7593

def r7594 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d7594 : List FTy := [[],[],[],[],[6],[7],[5],[7],[],[],[],[]]
def c7594 : List FTy := [[],[],[],[],[],[],[],[5],[],[],[11],[]]
def a7594 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 0 [7]) [5]) []) [5]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 0 [0]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7594 : ¬ Reader r7594 :=
 Rootcert2Flow.reject [] d7594 c7594 a7594 (by decide) (by decide) (by decide)
#print axioms reject7594

def r7595 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d7595 : List FTy := [[],[],[],[],[6],[7],[5],[7],[],[],[],[]]
def c7595 : List FTy := [[],[],[],[],[],[],[],[5],[],[],[11],[]]
def a7595 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 0 [7]) [5]) []) [5]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7595 : ¬ Reader r7595 :=
 Rootcert2Flow.reject [] d7595 c7595 a7595 (by decide) (by decide) (by decide)
#print axioms reject7595

def r7652 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
def d7652 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7652 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7652 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7652 : ¬ Reader r7652 :=
 Rootcert2Flow.reject [] d7652 c7652 a7652 (by decide) (by decide) (by decide)
#print axioms reject7652

def r7653 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
def d7653 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7653 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7653 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7653 : ¬ Reader r7653 :=
 Rootcert2Flow.reject [] d7653 c7653 a7653 (by decide) (by decide) (by decide)
#print axioms reject7653

def r7654 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
def d7654 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7654 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7654 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7654 : ¬ Reader r7654 :=
 Rootcert2Flow.reject [] d7654 c7654 a7654 (by decide) (by decide) (by decide)
#print axioms reject7654

def r7655 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
def d7655 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7655 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7655 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7655 : ¬ Reader r7655 :=
 Rootcert2Flow.reject [] d7655 c7655 a7655 (by decide) (by decide) (by decide)
#print axioms reject7655

def r7656 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
def d7656 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7656 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7656 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7656 : ¬ Reader r7656 :=
 Rootcert2Flow.reject [] d7656 c7656 a7656 (by decide) (by decide) (by decide)
#print axioms reject7656

def r7657 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
def d7657 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7657 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7657 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7657 : ¬ Reader r7657 :=
 Rootcert2Flow.reject [] d7657 c7657 a7657 (by decide) (by decide) (by decide)
#print axioms reject7657

def r7670 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
def d7670 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7670 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7670 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7670 : ¬ Reader r7670 :=
 Rootcert2Flow.reject [] d7670 c7670 a7670 (by decide) (by decide) (by decide)
#print axioms reject7670

def r7671 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
def d7671 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7671 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7671 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7671 : ¬ Reader r7671 :=
 Rootcert2Flow.reject [] d7671 c7671 a7671 (by decide) (by decide) (by decide)
#print axioms reject7671

def r7672 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
def d7672 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7672 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7672 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7672 : ¬ Reader r7672 :=
 Rootcert2Flow.reject [] d7672 c7672 a7672 (by decide) (by decide) (by decide)
#print axioms reject7672

def r7673 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
def d7673 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7673 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7673 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7673 : ¬ Reader r7673 :=
 Rootcert2Flow.reject [] d7673 c7673 a7673 (by decide) (by decide) (by decide)
#print axioms reject7673

def r7674 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
def d7674 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7674 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7674 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7674 : ¬ Reader r7674 :=
 Rootcert2Flow.reject [] d7674 c7674 a7674 (by decide) (by decide) (by decide)
#print axioms reject7674

def r7675 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
def d7675 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7675 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7675 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7675 : ¬ Reader r7675 :=
 Rootcert2Flow.reject [] d7675 c7675 a7675 (by decide) (by decide) (by decide)
#print axioms reject7675

def r7853 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d7853 : List FTy := [[],[],[],[],[6],[5,7],[5,7],[5,7],[],[],[],[]]
def c7853 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a7853 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 0 [5,7]) (.var 1 [5,7]) [6]) [7]) []) [6]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7853 : ¬ Reader r7853 :=
 Rootcert2Flow.reject [] d7853 c7853 a7853 (by decide) (by decide) (by decide)
#print axioms reject7853

def r7854 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d7854 : List FTy := [[],[],[],[],[6],[5,7],[5,7],[5,7],[],[],[],[]]
def c7854 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a7854 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 0 [5,7]) (.var 1 [5,7]) [6]) [7]) []) [6]) []) (.lam 8 (.var 0 []) [8]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7854 : ¬ Reader r7854 :=
 Rootcert2Flow.reject [] d7854 c7854 a7854 (by decide) (by decide) (by decide)
#print axioms reject7854

def r7855 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d7855 : List FTy := [[],[],[],[],[6],[5,7],[5,7],[5,7],[],[],[],[]]
def c7855 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a7855 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 0 [5,7]) (.var 1 [5,7]) [6]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7855 : ¬ Reader r7855 :=
 Rootcert2Flow.reject [] d7855 c7855 a7855 (by decide) (by decide) (by decide)
#print axioms reject7855

def r7856 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d7856 : List FTy := [[],[],[],[],[6],[5,7],[5,7],[5,7],[],[],[],[]]
def c7856 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a7856 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 0 [5,7]) (.var 1 [5,7]) [6]) [7]) []) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7856 : ¬ Reader r7856 :=
 Rootcert2Flow.reject [] d7856 c7856 a7856 (by decide) (by decide) (by decide)
#print axioms reject7856

def r7857 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d7857 : List FTy := [[],[],[],[],[6],[5,7],[5,7],[5,7],[],[],[],[]]
def c7857 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a7857 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 0 [5,7]) (.var 1 [5,7]) [6]) [7]) []) [6]) []) (.var 0 [0]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7857 : ¬ Reader r7857 :=
 Rootcert2Flow.reject [] d7857 c7857 a7857 (by decide) (by decide) (by decide)
#print axioms reject7857

def r7858 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d7858 : List FTy := [[],[],[],[],[6],[5,7],[5,7],[5,7],[],[],[],[]]
def c7858 : List FTy := [[],[],[],[],[],[6],[],[6],[],[],[11],[]]
def a7858 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 0 [5,7]) (.var 1 [5,7]) [6]) [7]) []) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7858 : ¬ Reader r7858 :=
 Rootcert2Flow.reject [] d7858 c7858 a7858 (by decide) (by decide) (by decide)
#print axioms reject7858

def r8241 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.var 0)) (.lam (.var 1)))
def d8241 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8241 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a8241 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.var 1 [0]) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8241 : ¬ Reader r8241 :=
 Rootcert2Flow.reject [] d8241 c8241 a8241 (by decide) (by decide) (by decide)
#print axioms reject8241

def r8242 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.lam (.var 1))) (.var 0))
def d8242 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8242 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a8242 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.var 1 [0]) [8]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8242 : ¬ Reader r8242 :=
 Rootcert2Flow.reject [] d8242 c8242 a8242 (by decide) (by decide) (by decide)
#print axioms reject8242

def r8243 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 1)) (.lam (.var 1)))
def d8243 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8243 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a8243 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.var 1 [0]) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8243 : ¬ Reader r8243 :=
 Rootcert2Flow.reject [] d8243 c8243 a8243 (by decide) (by decide) (by decide)
#print axioms reject8243

def r8244 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.lam (.var 1))) (.var 1))
def d8244 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8244 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a8244 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 8 (.var 1 [0]) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8244 : ¬ Reader r8244 :=
 Rootcert2Flow.reject [] d8244 c8244 a8244 (by decide) (by decide) (by decide)
#print axioms reject8244

def r8245 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.lam (.var 1))) (.var 1)) (.var 0))
def d8245 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8245 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a8245 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.lam 8 (.var 1 [0]) [8]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8245 : ¬ Reader r8245 :=
 Rootcert2Flow.reject [] d8245 c8245 a8245 (by decide) (by decide) (by decide)
#print axioms reject8245

def r8246 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.lam (.var 1))) (.var 0)) (.var 1))
def d8246 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8246 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a8246 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.lam 8 (.var 1 [0]) [8]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8246 : ¬ Reader r8246 :=
 Rootcert2Flow.reject [] d8246 c8246 a8246 (by decide) (by decide) (by decide)
#print axioms reject8246

def r8265 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 1)))))))) (.var 1)) (.var 0)) (.var 0))
def d8265 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c8265 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a8265 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject8265 : ¬ Reader r8265 :=
 Rootcert2Flow.reject [] d8265 c8265 a8265 (by decide) (by decide) (by decide)
#print axioms reject8265
end Blc.HandlerLet.XFlow11
