import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XFlow01
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r569 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
def d569 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c569 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a569 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject569 : ¬ Reader r569 :=
 Rootcert2Flow.reject [] d569 c569 a569 (by decide) (by decide) (by decide)
#print axioms reject569

def r570 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
def d570 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c570 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a570 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject570 : ¬ Reader r570 :=
 Rootcert2Flow.reject [] d570 c570 a570 (by decide) (by decide) (by decide)
#print axioms reject570

def r571 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
def d571 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c571 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a571 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject571 : ¬ Reader r571 :=
 Rootcert2Flow.reject [] d571 c571 a571 (by decide) (by decide) (by decide)
#print axioms reject571

def r572 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
def d572 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c572 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a572 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject572 : ¬ Reader r572 :=
 Rootcert2Flow.reject [] d572 c572 a572 (by decide) (by decide) (by decide)
#print axioms reject572

def r579 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
def d579 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c579 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a579 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject579 : ¬ Reader r579 :=
 Rootcert2Flow.reject [] d579 c579 a579 (by decide) (by decide) (by decide)
#print axioms reject579

def r580 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
def d580 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c580 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a580 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject580 : ¬ Reader r580 :=
 Rootcert2Flow.reject [] d580 c580 a580 (by decide) (by decide) (by decide)
#print axioms reject580

def r581 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
def d581 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c581 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a581 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject581 : ¬ Reader r581 :=
 Rootcert2Flow.reject [] d581 c581 a581 (by decide) (by decide) (by decide)
#print axioms reject581

def r582 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
def d582 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c582 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a582 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject582 : ¬ Reader r582 :=
 Rootcert2Flow.reject [] d582 c582 a582 (by decide) (by decide) (by decide)
#print axioms reject582

def r583 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
def d583 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c583 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a583 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject583 : ¬ Reader r583 :=
 Rootcert2Flow.reject [] d583 c583 a583 (by decide) (by decide) (by decide)
#print axioms reject583

def r584 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
def d584 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c584 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a584 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject584 : ¬ Reader r584 :=
 Rootcert2Flow.reject [] d584 c584 a584 (by decide) (by decide) (by decide)
#print axioms reject584

def r729 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
def d729 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c729 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a729 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.app (.var 0 [6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject729 : ¬ Reader r729 :=
 Rootcert2Flow.reject [] d729 c729 a729 (by decide) (by decide) (by decide)
#print axioms reject729

def r730 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
def d730 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c730 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a730 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.app (.var 0 [6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject730 : ¬ Reader r730 :=
 Rootcert2Flow.reject [] d730 c730 a730 (by decide) (by decide) (by decide)
#print axioms reject730

def r731 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
def d731 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c731 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a731 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.app (.var 0 [6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject731 : ¬ Reader r731 :=
 Rootcert2Flow.reject [] d731 c731 a731 (by decide) (by decide) (by decide)
#print axioms reject731

def r732 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
def d732 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c732 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a732 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 0 [6]) (.var 0 [6]) []) (.var 1 [5,6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject732 : ¬ Reader r732 :=
 Rootcert2Flow.reject [] d732 c732 a732 (by decide) (by decide) (by decide)
#print axioms reject732

def r733 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
def d733 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c733 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a733 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 0 [6]) (.var 0 [6]) []) (.var 1 [5,6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject733 : ¬ Reader r733 :=
 Rootcert2Flow.reject [] d733 c733 a733 (by decide) (by decide) (by decide)
#print axioms reject733

def r734 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
def d734 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c734 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a734 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 0 [6]) (.var 0 [6]) []) (.var 1 [5,6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject734 : ¬ Reader r734 :=
 Rootcert2Flow.reject [] d734 c734 a734 (by decide) (by decide) (by decide)
#print axioms reject734

def r735 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
def d735 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c735 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a735 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject735 : ¬ Reader r735 :=
 Rootcert2Flow.reject [] d735 c735 a735 (by decide) (by decide) (by decide)
#print axioms reject735

def r736 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
def d736 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c736 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a736 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject736 : ¬ Reader r736 :=
 Rootcert2Flow.reject [] d736 c736 a736 (by decide) (by decide) (by decide)
#print axioms reject736

def r737 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
def d737 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c737 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a737 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject737 : ¬ Reader r737 :=
 Rootcert2Flow.reject [] d737 c737 a737 (by decide) (by decide) (by decide)
#print axioms reject737

def r738 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.var 1)) (.var 0)) (.var 0))
def d738 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c738 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a738 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.var 1 [5,6]) []) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject738 : ¬ Reader r738 :=
 Rootcert2Flow.reject [] d738 c738 a738 (by decide) (by decide) (by decide)
#print axioms reject738

def r739 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.var 0)) (.var 1)) (.var 0))
def d739 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c739 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a739 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.var 1 [5,6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject739 : ¬ Reader r739 :=
 Rootcert2Flow.reject [] d739 c739 a739 (by decide) (by decide) (by decide)
#print axioms reject739

def r740 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 1)))))))) (.var 0)) (.var 0)) (.var 1))
def d740 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c740 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a740 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.var 1 [5,6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject740 : ¬ Reader r740 :=
 Rootcert2Flow.reject [] d740 c740 a740 (by decide) (by decide) (by decide)
#print axioms reject740

def r741 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d741 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c741 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a741 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject741 : ¬ Reader r741 :=
 Rootcert2Flow.reject [] d741 c741 a741 (by decide) (by decide) (by decide)
#print axioms reject741

def r742 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d742 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c742 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a742 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject742 : ¬ Reader r742 :=
 Rootcert2Flow.reject [] d742 c742 a742 (by decide) (by decide) (by decide)
#print axioms reject742

def r743 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d743 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c743 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a743 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject743 : ¬ Reader r743 :=
 Rootcert2Flow.reject [] d743 c743 a743 (by decide) (by decide) (by decide)
#print axioms reject743

def r744 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d744 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c744 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a744 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 0 [5,6]) (.var 1 [5,6]) []) (.var 0 [5,6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject744 : ¬ Reader r744 :=
 Rootcert2Flow.reject [] d744 c744 a744 (by decide) (by decide) (by decide)
#print axioms reject744

def r745 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d745 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c745 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a745 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 0 [5,6]) (.var 1 [5,6]) []) (.var 0 [5,6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject745 : ¬ Reader r745 :=
 Rootcert2Flow.reject [] d745 c745 a745 (by decide) (by decide) (by decide)
#print axioms reject745

def r746 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d746 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c746 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a746 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 0 [5,6]) (.var 1 [5,6]) []) (.var 0 [5,6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject746 : ¬ Reader r746 :=
 Rootcert2Flow.reject [] d746 c746 a746 (by decide) (by decide) (by decide)
#print axioms reject746

def r750 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
def d750 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c750 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a750 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject750 : ¬ Reader r750 :=
 Rootcert2Flow.reject [] d750 c750 a750 (by decide) (by decide) (by decide)
#print axioms reject750

def r751 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
def d751 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c751 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a751 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject751 : ¬ Reader r751 :=
 Rootcert2Flow.reject [] d751 c751 a751 (by decide) (by decide) (by decide)
#print axioms reject751

def r752 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
def d752 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c752 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a752 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject752 : ¬ Reader r752 :=
 Rootcert2Flow.reject [] d752 c752 a752 (by decide) (by decide) (by decide)
#print axioms reject752

def r753 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 1)))))))) (.var 1)) (.var 0)) (.var 0))
def d753 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c753 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a753 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [5,6]) (.app (.var 1 [5,6]) (.app (.var 0 [5,6]) (.var 1 [5,6]) []) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject753 : ¬ Reader r753 :=
 Rootcert2Flow.reject [] d753 c753 a753 (by decide) (by decide) (by decide)
#print axioms reject753

def r754 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 1)))))))) (.var 0)) (.var 1)) (.var 0))
def d754 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c754 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a754 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [5,6]) (.app (.var 1 [5,6]) (.app (.var 0 [5,6]) (.var 1 [5,6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject754 : ¬ Reader r754 :=
 Rootcert2Flow.reject [] d754 c754 a754 (by decide) (by decide) (by decide)
#print axioms reject754

def r755 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 1)))))))) (.var 0)) (.var 0)) (.var 1))
def d755 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c755 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a755 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [5,6]) (.app (.var 1 [5,6]) (.app (.var 0 [5,6]) (.var 1 [5,6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject755 : ¬ Reader r755 :=
 Rootcert2Flow.reject [] d755 c755 a755 (by decide) (by decide) (by decide)
#print axioms reject755

def r756 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
def d756 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c756 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a756 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject756 : ¬ Reader r756 :=
 Rootcert2Flow.reject [] d756 c756 a756 (by decide) (by decide) (by decide)
#print axioms reject756

def r757 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
def d757 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c757 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a757 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject757 : ¬ Reader r757 :=
 Rootcert2Flow.reject [] d757 c757 a757 (by decide) (by decide) (by decide)
#print axioms reject757

def r758 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
def d758 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c758 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a758 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject758 : ¬ Reader r758 :=
 Rootcert2Flow.reject [] d758 c758 a758 (by decide) (by decide) (by decide)
#print axioms reject758

def r768 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d768 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c768 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a768 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject768 : ¬ Reader r768 :=
 Rootcert2Flow.reject [] d768 c768 a768 (by decide) (by decide) (by decide)
#print axioms reject768

def r769 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d769 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c769 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a769 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject769 : ¬ Reader r769 :=
 Rootcert2Flow.reject [] d769 c769 a769 (by decide) (by decide) (by decide)
#print axioms reject769

def r770 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d770 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c770 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a770 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject770 : ¬ Reader r770 :=
 Rootcert2Flow.reject [] d770 c770 a770 (by decide) (by decide) (by decide)
#print axioms reject770

def r771 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
def d771 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c771 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a771 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [5,6]) []) (.app (.var 0 [5,6]) (.var 1 [5,6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject771 : ¬ Reader r771 :=
 Rootcert2Flow.reject [] d771 c771 a771 (by decide) (by decide) (by decide)
#print axioms reject771

def r772 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
def d772 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c772 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a772 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [5,6]) []) (.app (.var 0 [5,6]) (.var 1 [5,6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject772 : ¬ Reader r772 :=
 Rootcert2Flow.reject [] d772 c772 a772 (by decide) (by decide) (by decide)
#print axioms reject772

def r773 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
def d773 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c773 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a773 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [5,6]) []) (.app (.var 0 [5,6]) (.var 1 [5,6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject773 : ¬ Reader r773 :=
 Rootcert2Flow.reject [] d773 c773 a773 (by decide) (by decide) (by decide)
#print axioms reject773

def r780 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
def d780 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c780 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a780 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject780 : ¬ Reader r780 :=
 Rootcert2Flow.reject [] d780 c780 a780 (by decide) (by decide) (by decide)
#print axioms reject780

def r781 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
def d781 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c781 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a781 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject781 : ¬ Reader r781 :=
 Rootcert2Flow.reject [] d781 c781 a781 (by decide) (by decide) (by decide)
#print axioms reject781

def r782 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
def d782 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c782 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a782 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject782 : ¬ Reader r782 :=
 Rootcert2Flow.reject [] d782 c782 a782 (by decide) (by decide) (by decide)
#print axioms reject782

def r792 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
def d792 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c792 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a792 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject792 : ¬ Reader r792 :=
 Rootcert2Flow.reject [] d792 c792 a792 (by decide) (by decide) (by decide)
#print axioms reject792

def r793 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
def d793 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c793 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a793 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject793 : ¬ Reader r793 :=
 Rootcert2Flow.reject [] d793 c793 a793 (by decide) (by decide) (by decide)
#print axioms reject793

def r794 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
def d794 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c794 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a794 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject794 : ¬ Reader r794 :=
 Rootcert2Flow.reject [] d794 c794 a794 (by decide) (by decide) (by decide)
#print axioms reject794

def r801 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
def d801 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c801 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a801 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.app (.var 0 [6]) (.var 0 [6]) []) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject801 : ¬ Reader r801 :=
 Rootcert2Flow.reject [] d801 c801 a801 (by decide) (by decide) (by decide)
#print axioms reject801
end Blc.HandlerLet.XFlow01
