import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XFlow10
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r6685 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d6685 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c6685 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a6685 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject6685 : ¬ Reader r6685 :=
 Rootcert2Flow.reject [] d6685 c6685 a6685 (by decide) (by decide) (by decide)
#print axioms reject6685

def r6686 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d6686 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c6686 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a6686 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.lam 8 (.var 0 []) [8]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject6686 : ¬ Reader r6686 :=
 Rootcert2Flow.reject [] d6686 c6686 a6686 (by decide) (by decide) (by decide)
#print axioms reject6686

def r6687 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d6687 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c6687 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a6687 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject6687 : ¬ Reader r6687 :=
 Rootcert2Flow.reject [] d6687 c6687 a6687 (by decide) (by decide) (by decide)
#print axioms reject6687

def r6688 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d6688 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c6688 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a6688 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject6688 : ¬ Reader r6688 :=
 Rootcert2Flow.reject [] d6688 c6688 a6688 (by decide) (by decide) (by decide)
#print axioms reject6688

def r6689 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d6689 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c6689 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a6689 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject6689 : ¬ Reader r6689 :=
 Rootcert2Flow.reject [] d6689 c6689 a6689 (by decide) (by decide) (by decide)
#print axioms reject6689

def r6690 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d6690 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c6690 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a6690 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject6690 : ¬ Reader r6690 :=
 Rootcert2Flow.reject [] d6690 c6690 a6690 (by decide) (by decide) (by decide)
#print axioms reject6690

def r6757 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
def d6757 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c6757 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a6757 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject6757 : ¬ Reader r6757 :=
 Rootcert2Flow.reject [] d6757 c6757 a6757 (by decide) (by decide) (by decide)
#print axioms reject6757

def r6758 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
def d6758 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c6758 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a6758 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject6758 : ¬ Reader r6758 :=
 Rootcert2Flow.reject [] d6758 c6758 a6758 (by decide) (by decide) (by decide)
#print axioms reject6758

def r6759 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
def d6759 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c6759 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a6759 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject6759 : ¬ Reader r6759 :=
 Rootcert2Flow.reject [] d6759 c6759 a6759 (by decide) (by decide) (by decide)
#print axioms reject6759

def r6760 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
def d6760 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c6760 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a6760 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject6760 : ¬ Reader r6760 :=
 Rootcert2Flow.reject [] d6760 c6760 a6760 (by decide) (by decide) (by decide)
#print axioms reject6760

def r6761 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
def d6761 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c6761 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a6761 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject6761 : ¬ Reader r6761 :=
 Rootcert2Flow.reject [] d6761 c6761 a6761 (by decide) (by decide) (by decide)
#print axioms reject6761

def r6762 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
def d6762 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c6762 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a6762 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject6762 : ¬ Reader r6762 :=
 Rootcert2Flow.reject [] d6762 c6762 a6762 (by decide) (by decide) (by decide)
#print axioms reject6762

def r6769 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
def d6769 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c6769 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a6769 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject6769 : ¬ Reader r6769 :=
 Rootcert2Flow.reject [] d6769 c6769 a6769 (by decide) (by decide) (by decide)
#print axioms reject6769

def r6770 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
def d6770 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c6770 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a6770 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject6770 : ¬ Reader r6770 :=
 Rootcert2Flow.reject [] d6770 c6770 a6770 (by decide) (by decide) (by decide)
#print axioms reject6770

def r6771 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
def d6771 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c6771 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a6771 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject6771 : ¬ Reader r6771 :=
 Rootcert2Flow.reject [] d6771 c6771 a6771 (by decide) (by decide) (by decide)
#print axioms reject6771

def r6772 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
def d6772 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c6772 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a6772 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject6772 : ¬ Reader r6772 :=
 Rootcert2Flow.reject [] d6772 c6772 a6772 (by decide) (by decide) (by decide)
#print axioms reject6772

def r6773 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
def d6773 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c6773 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a6773 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject6773 : ¬ Reader r6773 :=
 Rootcert2Flow.reject [] d6773 c6773 a6773 (by decide) (by decide) (by decide)
#print axioms reject6773

def r6774 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
def d6774 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c6774 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a6774 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject6774 : ¬ Reader r6774 :=
 Rootcert2Flow.reject [] d6774 c6774 a6774 (by decide) (by decide) (by decide)
#print axioms reject6774

def r7192 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
def d7192 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7192 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7192 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7192 : ¬ Reader r7192 :=
 Rootcert2Flow.reject [] d7192 c7192 a7192 (by decide) (by decide) (by decide)
#print axioms reject7192

def r7193 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
def d7193 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7193 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7193 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7193 : ¬ Reader r7193 :=
 Rootcert2Flow.reject [] d7193 c7193 a7193 (by decide) (by decide) (by decide)
#print axioms reject7193

def r7194 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
def d7194 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7194 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7194 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7194 : ¬ Reader r7194 :=
 Rootcert2Flow.reject [] d7194 c7194 a7194 (by decide) (by decide) (by decide)
#print axioms reject7194

def r7423 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d7423 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[],[]]
def c7423 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a7423 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 0 [6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7423 : ¬ Reader r7423 :=
 Rootcert2Flow.reject [] d7423 c7423 a7423 (by decide) (by decide) (by decide)
#print axioms reject7423

def r7424 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d7424 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[],[]]
def c7424 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a7424 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 0 [6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.lam 8 (.var 0 []) [8]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7424 : ¬ Reader r7424 :=
 Rootcert2Flow.reject [] d7424 c7424 a7424 (by decide) (by decide) (by decide)
#print axioms reject7424

def r7425 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d7425 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[],[]]
def c7425 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a7425 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 0 [6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7425 : ¬ Reader r7425 :=
 Rootcert2Flow.reject [] d7425 c7425 a7425 (by decide) (by decide) (by decide)
#print axioms reject7425

def r7426 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d7426 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[],[]]
def c7426 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a7426 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 0 [6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7426 : ¬ Reader r7426 :=
 Rootcert2Flow.reject [] d7426 c7426 a7426 (by decide) (by decide) (by decide)
#print axioms reject7426

def r7427 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d7427 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[],[]]
def c7427 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a7427 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 0 [6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7427 : ¬ Reader r7427 :=
 Rootcert2Flow.reject [] d7427 c7427 a7427 (by decide) (by decide) (by decide)
#print axioms reject7427

def r7428 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d7428 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[],[]]
def c7428 : List FTy := [[],[],[],[],[],[],[],[],[],[],[11],[]]
def a7428 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 0 [6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7428 : ¬ Reader r7428 :=
 Rootcert2Flow.reject [] d7428 c7428 a7428 (by decide) (by decide) (by decide)
#print axioms reject7428

def r7456 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
def d7456 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7456 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a7456 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.var 1 [0]) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7456 : ¬ Reader r7456 :=
 Rootcert2Flow.reject [] d7456 c7456 a7456 (by decide) (by decide) (by decide)
#print axioms reject7456

def r7457 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
def d7457 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7457 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a7457 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.var 1 [0]) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7457 : ¬ Reader r7457 :=
 Rootcert2Flow.reject [] d7457 c7457 a7457 (by decide) (by decide) (by decide)
#print axioms reject7457

def r7458 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
def d7458 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7458 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7458 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7458 : ¬ Reader r7458 :=
 Rootcert2Flow.reject [] d7458 c7458 a7458 (by decide) (by decide) (by decide)
#print axioms reject7458

def r7459 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
def d7459 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7459 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7459 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7459 : ¬ Reader r7459 :=
 Rootcert2Flow.reject [] d7459 c7459 a7459 (by decide) (by decide) (by decide)
#print axioms reject7459

def r7460 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
def d7460 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7460 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a7460 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.var 1 [0]) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7460 : ¬ Reader r7460 :=
 Rootcert2Flow.reject [] d7460 c7460 a7460 (by decide) (by decide) (by decide)
#print axioms reject7460

def r7461 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
def d7461 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7461 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7461 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7461 : ¬ Reader r7461 :=
 Rootcert2Flow.reject [] d7461 c7461 a7461 (by decide) (by decide) (by decide)
#print axioms reject7461

def r7462 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
def d7462 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7462 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7462 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7462 : ¬ Reader r7462 :=
 Rootcert2Flow.reject [] d7462 c7462 a7462 (by decide) (by decide) (by decide)
#print axioms reject7462

def r7463 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
def d7463 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7463 : List FTy := [[],[],[],[],[],[],[],[0],[],[],[11],[]]
def a7463 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7463 : ¬ Reader r7463 :=
 Rootcert2Flow.reject [] d7463 c7463 a7463 (by decide) (by decide) (by decide)
#print axioms reject7463

def r7464 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
def d7464 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7464 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7464 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7464 : ¬ Reader r7464 :=
 Rootcert2Flow.reject [] d7464 c7464 a7464 (by decide) (by decide) (by decide)
#print axioms reject7464

def r7465 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
def d7465 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7465 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7465 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7465 : ¬ Reader r7465 :=
 Rootcert2Flow.reject [] d7465 c7465 a7465 (by decide) (by decide) (by decide)
#print axioms reject7465

def r7466 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
def d7466 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7466 : List FTy := [[],[],[],[],[],[],[],[0],[],[],[11],[]]
def a7466 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7466 : ¬ Reader r7466 :=
 Rootcert2Flow.reject [] d7466 c7466 a7466 (by decide) (by decide) (by decide)
#print axioms reject7466

def r7467 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
def d7467 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7467 : List FTy := [[],[],[],[],[],[],[],[0],[],[],[11],[]]
def a7467 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7467 : ¬ Reader r7467 :=
 Rootcert2Flow.reject [] d7467 c7467 a7467 (by decide) (by decide) (by decide)
#print axioms reject7467

def r7480 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
def d7480 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7480 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a7480 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.var 1 [0]) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7480 : ¬ Reader r7480 :=
 Rootcert2Flow.reject [] d7480 c7480 a7480 (by decide) (by decide) (by decide)
#print axioms reject7480

def r7481 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
def d7481 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7481 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a7481 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.var 1 [0]) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7481 : ¬ Reader r7481 :=
 Rootcert2Flow.reject [] d7481 c7481 a7481 (by decide) (by decide) (by decide)
#print axioms reject7481

def r7482 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
def d7482 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7482 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7482 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7482 : ¬ Reader r7482 :=
 Rootcert2Flow.reject [] d7482 c7482 a7482 (by decide) (by decide) (by decide)
#print axioms reject7482

def r7483 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
def d7483 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7483 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7483 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7483 : ¬ Reader r7483 :=
 Rootcert2Flow.reject [] d7483 c7483 a7483 (by decide) (by decide) (by decide)
#print axioms reject7483

def r7484 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
def d7484 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7484 : List FTy := [[],[],[],[],[],[],[],[],[0],[],[11],[]]
def a7484 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.var 1 [0]) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7484 : ¬ Reader r7484 :=
 Rootcert2Flow.reject [] d7484 c7484 a7484 (by decide) (by decide) (by decide)
#print axioms reject7484

def r7485 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
def d7485 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7485 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7485 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7485 : ¬ Reader r7485 :=
 Rootcert2Flow.reject [] d7485 c7485 a7485 (by decide) (by decide) (by decide)
#print axioms reject7485

def r7486 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
def d7486 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7486 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7486 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7486 : ¬ Reader r7486 :=
 Rootcert2Flow.reject [] d7486 c7486 a7486 (by decide) (by decide) (by decide)
#print axioms reject7486

def r7487 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
def d7487 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7487 : List FTy := [[],[],[],[],[],[],[],[0],[],[],[11],[]]
def a7487 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.var 0 []) [8]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7487 : ¬ Reader r7487 :=
 Rootcert2Flow.reject [] d7487 c7487 a7487 (by decide) (by decide) (by decide)
#print axioms reject7487

def r7488 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
def d7488 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7488 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7488 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7488 : ¬ Reader r7488 :=
 Rootcert2Flow.reject [] d7488 c7488 a7488 (by decide) (by decide) (by decide)
#print axioms reject7488

def r7489 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
def d7489 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7489 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[11],[]]
def a7489 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7489 : ¬ Reader r7489 :=
 Rootcert2Flow.reject [] d7489 c7489 a7489 (by decide) (by decide) (by decide)
#print axioms reject7489

def r7490 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
def d7490 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c7490 : List FTy := [[],[],[],[],[],[],[],[0],[],[],[11],[]]
def a7490 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.var 0 []) [8]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject7490 : ¬ Reader r7490 :=
 Rootcert2Flow.reject [] d7490 c7490 a7490 (by decide) (by decide) (by decide)
#print axioms reject7490
end Blc.HandlerLet.XFlow10
