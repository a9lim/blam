import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XFlow02
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r802 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
def d802 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c802 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a802 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.app (.var 0 [6]) (.var 0 [6]) []) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject802 : ¬ Reader r802 :=
 Rootcert2Flow.reject [] d802 c802 a802 (by decide) (by decide) (by decide)
#print axioms reject802

def r803 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
def d803 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c803 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a803 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.app (.var 0 [6]) (.var 0 [6]) []) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject803 : ¬ Reader r803 :=
 Rootcert2Flow.reject [] d803 c803 a803 (by decide) (by decide) (by decide)
#print axioms reject803

def r804 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
def d804 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c804 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a804 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject804 : ¬ Reader r804 :=
 Rootcert2Flow.reject [] d804 c804 a804 (by decide) (by decide) (by decide)
#print axioms reject804

def r805 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
def d805 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c805 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a805 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject805 : ¬ Reader r805 :=
 Rootcert2Flow.reject [] d805 c805 a805 (by decide) (by decide) (by decide)
#print axioms reject805

def r806 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
def d806 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c806 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a806 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject806 : ¬ Reader r806 :=
 Rootcert2Flow.reject [] d806 c806 a806 (by decide) (by decide) (by decide)
#print axioms reject806

def r810 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
def d810 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c810 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a810 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject810 : ¬ Reader r810 :=
 Rootcert2Flow.reject [] d810 c810 a810 (by decide) (by decide) (by decide)
#print axioms reject810

def r811 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
def d811 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c811 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a811 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject811 : ¬ Reader r811 :=
 Rootcert2Flow.reject [] d811 c811 a811 (by decide) (by decide) (by decide)
#print axioms reject811

def r812 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
def d812 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c812 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a812 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject812 : ¬ Reader r812 :=
 Rootcert2Flow.reject [] d812 c812 a812 (by decide) (by decide) (by decide)
#print axioms reject812

def r819 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
def d819 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c819 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a819 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject819 : ¬ Reader r819 :=
 Rootcert2Flow.reject [] d819 c819 a819 (by decide) (by decide) (by decide)
#print axioms reject819

def r820 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
def d820 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c820 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a820 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject820 : ¬ Reader r820 :=
 Rootcert2Flow.reject [] d820 c820 a820 (by decide) (by decide) (by decide)
#print axioms reject820

def r821 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
def d821 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c821 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a821 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject821 : ¬ Reader r821 :=
 Rootcert2Flow.reject [] d821 c821 a821 (by decide) (by decide) (by decide)
#print axioms reject821

def r822 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))) (.var 1)) (.var 0)) (.var 0))
def d822 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c822 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a822 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [5,6]) (.var 1 [5,6]) []) []) [6]) []) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject822 : ¬ Reader r822 :=
 Rootcert2Flow.reject [] d822 c822 a822 (by decide) (by decide) (by decide)
#print axioms reject822

def r823 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))) (.var 0)) (.var 1)) (.var 0))
def d823 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c823 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a823 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [5,6]) (.var 1 [5,6]) []) []) [6]) []) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject823 : ¬ Reader r823 :=
 Rootcert2Flow.reject [] d823 c823 a823 (by decide) (by decide) (by decide)
#print axioms reject823

def r824 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))))) (.var 0)) (.var 0)) (.var 1))
def d824 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c824 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a824 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [5,6]) (.var 1 [5,6]) []) []) [6]) []) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject824 : ¬ Reader r824 :=
 Rootcert2Flow.reject [] d824 c824 a824 (by decide) (by decide) (by decide)
#print axioms reject824

def r828 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
def d828 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c828 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a828 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject828 : ¬ Reader r828 :=
 Rootcert2Flow.reject [] d828 c828 a828 (by decide) (by decide) (by decide)
#print axioms reject828

def r829 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
def d829 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c829 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a829 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject829 : ¬ Reader r829 :=
 Rootcert2Flow.reject [] d829 c829 a829 (by decide) (by decide) (by decide)
#print axioms reject829

def r830 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
def d830 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c830 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a830 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject830 : ¬ Reader r830 :=
 Rootcert2Flow.reject [] d830 c830 a830 (by decide) (by decide) (by decide)
#print axioms reject830

def r834 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
def d834 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c834 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a834 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject834 : ¬ Reader r834 :=
 Rootcert2Flow.reject [] d834 c834 a834 (by decide) (by decide) (by decide)
#print axioms reject834

def r835 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
def d835 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c835 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a835 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject835 : ¬ Reader r835 :=
 Rootcert2Flow.reject [] d835 c835 a835 (by decide) (by decide) (by decide)
#print axioms reject835

def r836 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
def d836 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c836 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a836 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject836 : ¬ Reader r836 :=
 Rootcert2Flow.reject [] d836 c836 a836 (by decide) (by decide) (by decide)
#print axioms reject836

def r843 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
def d843 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c843 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a843 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject843 : ¬ Reader r843 :=
 Rootcert2Flow.reject [] d843 c843 a843 (by decide) (by decide) (by decide)
#print axioms reject843

def r844 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
def d844 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c844 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a844 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject844 : ¬ Reader r844 :=
 Rootcert2Flow.reject [] d844 c844 a844 (by decide) (by decide) (by decide)
#print axioms reject844

def r845 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
def d845 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c845 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a845 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject845 : ¬ Reader r845 :=
 Rootcert2Flow.reject [] d845 c845 a845 (by decide) (by decide) (by decide)
#print axioms reject845

def r858 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 1)))) (.var 1)) (.var 0)) (.var 0))
def d858 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c858 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a858 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject858 : ¬ Reader r858 :=
 Rootcert2Flow.reject [] d858 c858 a858 (by decide) (by decide) (by decide)
#print axioms reject858

def r859 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 1)))) (.var 0)) (.var 1)) (.var 0))
def d859 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c859 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a859 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject859 : ¬ Reader r859 :=
 Rootcert2Flow.reject [] d859 c859 a859 (by decide) (by decide) (by decide)
#print axioms reject859

def r860 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 1)))) (.var 0)) (.var 0)) (.var 1))
def d860 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c860 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a860 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject860 : ¬ Reader r860 :=
 Rootcert2Flow.reject [] d860 c860 a860 (by decide) (by decide) (by decide)
#print axioms reject860

def r864 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1)))) (.var 1)) (.var 0)) (.var 0))
def d864 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c864 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a864 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject864 : ¬ Reader r864 :=
 Rootcert2Flow.reject [] d864 c864 a864 (by decide) (by decide) (by decide)
#print axioms reject864

def r865 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1)))) (.var 0)) (.var 1)) (.var 0))
def d865 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c865 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a865 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject865 : ¬ Reader r865 :=
 Rootcert2Flow.reject [] d865 c865 a865 (by decide) (by decide) (by decide)
#print axioms reject865

def r866 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 1)))) (.var 0)) (.var 0)) (.var 1))
def d866 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c866 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a866 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject866 : ¬ Reader r866 :=
 Rootcert2Flow.reject [] d866 c866 a866 (by decide) (by decide) (by decide)
#print axioms reject866

def r933 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
def d933 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c933 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a933 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject933 : ¬ Reader r933 :=
 Rootcert2Flow.reject [] d933 c933 a933 (by decide) (by decide) (by decide)
#print axioms reject933

def r934 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
def d934 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c934 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a934 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject934 : ¬ Reader r934 :=
 Rootcert2Flow.reject [] d934 c934 a934 (by decide) (by decide) (by decide)
#print axioms reject934

def r935 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
def d935 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c935 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a935 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject935 : ¬ Reader r935 :=
 Rootcert2Flow.reject [] d935 c935 a935 (by decide) (by decide) (by decide)
#print axioms reject935

def r936 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
def d936 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c936 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a936 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject936 : ¬ Reader r936 :=
 Rootcert2Flow.reject [] d936 c936 a936 (by decide) (by decide) (by decide)
#print axioms reject936

def r937 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
def d937 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c937 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a937 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject937 : ¬ Reader r937 :=
 Rootcert2Flow.reject [] d937 c937 a937 (by decide) (by decide) (by decide)
#print axioms reject937

def r938 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
def d938 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c938 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a938 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject938 : ¬ Reader r938 :=
 Rootcert2Flow.reject [] d938 c938 a938 (by decide) (by decide) (by decide)
#print axioms reject938

def r951 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
def d951 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c951 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a951 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject951 : ¬ Reader r951 :=
 Rootcert2Flow.reject [] d951 c951 a951 (by decide) (by decide) (by decide)
#print axioms reject951

def r952 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
def d952 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c952 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a952 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject952 : ¬ Reader r952 :=
 Rootcert2Flow.reject [] d952 c952 a952 (by decide) (by decide) (by decide)
#print axioms reject952

def r953 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
def d953 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c953 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a953 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject953 : ¬ Reader r953 :=
 Rootcert2Flow.reject [] d953 c953 a953 (by decide) (by decide) (by decide)
#print axioms reject953

def r954 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
def d954 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c954 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a954 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject954 : ¬ Reader r954 :=
 Rootcert2Flow.reject [] d954 c954 a954 (by decide) (by decide) (by decide)
#print axioms reject954

def r955 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
def d955 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c955 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a955 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject955 : ¬ Reader r955 :=
 Rootcert2Flow.reject [] d955 c955 a955 (by decide) (by decide) (by decide)
#print axioms reject955

def r956 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
def d956 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c956 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a956 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject956 : ¬ Reader r956 :=
 Rootcert2Flow.reject [] d956 c956 a956 (by decide) (by decide) (by decide)
#print axioms reject956

def r1023 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
def d1023 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1023 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1023 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1023 : ¬ Reader r1023 :=
 Rootcert2Flow.reject [] d1023 c1023 a1023 (by decide) (by decide) (by decide)
#print axioms reject1023

def r1024 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
def d1024 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1024 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1024 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1024 : ¬ Reader r1024 :=
 Rootcert2Flow.reject [] d1024 c1024 a1024 (by decide) (by decide) (by decide)
#print axioms reject1024

def r1025 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
def d1025 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1025 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1025 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1025 : ¬ Reader r1025 :=
 Rootcert2Flow.reject [] d1025 c1025 a1025 (by decide) (by decide) (by decide)
#print axioms reject1025

def r1026 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))))))) (.var 1)) (.var 0)) (.var 0))
def d1026 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c1026 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1026 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.app (.var 0 [5,6]) (.var 1 [5,6]) []) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1026 : ¬ Reader r1026 :=
 Rootcert2Flow.reject [] d1026 c1026 a1026 (by decide) (by decide) (by decide)
#print axioms reject1026

def r1027 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))))))) (.var 0)) (.var 1)) (.var 0))
def d1027 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c1027 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1027 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.app (.var 0 [5,6]) (.var 1 [5,6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1027 : ¬ Reader r1027 :=
 Rootcert2Flow.reject [] d1027 c1027 a1027 (by decide) (by decide) (by decide)
#print axioms reject1027

def r1028 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1)))))))) (.var 0)) (.var 0)) (.var 1))
def d1028 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c1028 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1028 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.app (.var 0 [5,6]) (.var 1 [5,6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1028 : ¬ Reader r1028 :=
 Rootcert2Flow.reject [] d1028 c1028 a1028 (by decide) (by decide) (by decide)
#print axioms reject1028

def r1029 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d1029 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c1029 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1029 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) []) (.var 0 [5,6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1029 : ¬ Reader r1029 :=
 Rootcert2Flow.reject [] d1029 c1029 a1029 (by decide) (by decide) (by decide)
#print axioms reject1029

def r1030 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d1030 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c1030 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1030 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) []) (.var 0 [5,6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1030 : ¬ Reader r1030 :=
 Rootcert2Flow.reject [] d1030 c1030 a1030 (by decide) (by decide) (by decide)
#print axioms reject1030

def r1031 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d1031 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c1031 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1031 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) []) (.var 0 [5,6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1031 : ¬ Reader r1031 :=
 Rootcert2Flow.reject [] d1031 c1031 a1031 (by decide) (by decide) (by decide)
#print axioms reject1031
end Blc.HandlerLet.XFlow02
