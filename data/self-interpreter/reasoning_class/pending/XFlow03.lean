import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XFlow03
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r1032 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))))))) (.var 1)) (.var 0)) (.var 0))
def d1032 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c1032 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1032 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [5,6]) (.app (.var 1 [5,6]) (.var 1 [5,6]) []) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1032 : ¬ Reader r1032 :=
 Rootcert2Flow.reject [] d1032 c1032 a1032 (by decide) (by decide) (by decide)
#print axioms reject1032

def r1033 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))))))) (.var 0)) (.var 1)) (.var 0))
def d1033 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c1033 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1033 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [5,6]) (.app (.var 1 [5,6]) (.var 1 [5,6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1033 : ¬ Reader r1033 :=
 Rootcert2Flow.reject [] d1033 c1033 a1033 (by decide) (by decide) (by decide)
#print axioms reject1033

def r1034 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1)))))))) (.var 0)) (.var 0)) (.var 1))
def d1034 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c1034 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1034 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [5,6]) (.app (.var 1 [5,6]) (.var 1 [5,6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1034 : ¬ Reader r1034 :=
 Rootcert2Flow.reject [] d1034 c1034 a1034 (by decide) (by decide) (by decide)
#print axioms reject1034

def r1035 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
def d1035 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1035 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1035 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1035 : ¬ Reader r1035 :=
 Rootcert2Flow.reject [] d1035 c1035 a1035 (by decide) (by decide) (by decide)
#print axioms reject1035

def r1036 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
def d1036 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1036 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1036 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1036 : ¬ Reader r1036 :=
 Rootcert2Flow.reject [] d1036 c1036 a1036 (by decide) (by decide) (by decide)
#print axioms reject1036

def r1037 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
def d1037 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1037 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1037 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1037 : ¬ Reader r1037 :=
 Rootcert2Flow.reject [] d1037 c1037 a1037 (by decide) (by decide) (by decide)
#print axioms reject1037

def r1038 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
def d1038 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c1038 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1038 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 0 [5,6]) (.var 1 [5,6]) []) (.var 1 [5,6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1038 : ¬ Reader r1038 :=
 Rootcert2Flow.reject [] d1038 c1038 a1038 (by decide) (by decide) (by decide)
#print axioms reject1038

def r1039 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
def d1039 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c1039 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1039 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 0 [5,6]) (.var 1 [5,6]) []) (.var 1 [5,6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1039 : ¬ Reader r1039 :=
 Rootcert2Flow.reject [] d1039 c1039 a1039 (by decide) (by decide) (by decide)
#print axioms reject1039

def r1040 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
def d1040 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c1040 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1040 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 0 [5,6]) (.var 1 [5,6]) []) (.var 1 [5,6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1040 : ¬ Reader r1040 :=
 Rootcert2Flow.reject [] d1040 c1040 a1040 (by decide) (by decide) (by decide)
#print axioms reject1040

def r1053 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
def d1053 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c1053 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1053 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [5,6]) []) (.app (.var 1 [5,6]) (.var 1 [5,6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1053 : ¬ Reader r1053 :=
 Rootcert2Flow.reject [] d1053 c1053 a1053 (by decide) (by decide) (by decide)
#print axioms reject1053

def r1054 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
def d1054 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c1054 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1054 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [5,6]) []) (.app (.var 1 [5,6]) (.var 1 [5,6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1054 : ¬ Reader r1054 :=
 Rootcert2Flow.reject [] d1054 c1054 a1054 (by decide) (by decide) (by decide)
#print axioms reject1054

def r1055 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
def d1055 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c1055 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1055 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [5,6]) []) (.app (.var 1 [5,6]) (.var 1 [5,6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1055 : ¬ Reader r1055 :=
 Rootcert2Flow.reject [] d1055 c1055 a1055 (by decide) (by decide) (by decide)
#print axioms reject1055

def r1059 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
def d1059 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1059 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1059 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1059 : ¬ Reader r1059 :=
 Rootcert2Flow.reject [] d1059 c1059 a1059 (by decide) (by decide) (by decide)
#print axioms reject1059

def r1060 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
def d1060 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1060 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1060 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1060 : ¬ Reader r1060 :=
 Rootcert2Flow.reject [] d1060 c1060 a1060 (by decide) (by decide) (by decide)
#print axioms reject1060

def r1061 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
def d1061 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1061 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1061 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1061 : ¬ Reader r1061 :=
 Rootcert2Flow.reject [] d1061 c1061 a1061 (by decide) (by decide) (by decide)
#print axioms reject1061

def r1062 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
def d1062 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c1062 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1062 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.app (.var 0 [5,6]) (.var 1 [5,6]) []) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1062 : ¬ Reader r1062 :=
 Rootcert2Flow.reject [] d1062 c1062 a1062 (by decide) (by decide) (by decide)
#print axioms reject1062

def r1063 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
def d1063 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c1063 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1063 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.app (.var 0 [5,6]) (.var 1 [5,6]) []) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1063 : ¬ Reader r1063 :=
 Rootcert2Flow.reject [] d1063 c1063 a1063 (by decide) (by decide) (by decide)
#print axioms reject1063

def r1064 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
def d1064 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c1064 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1064 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.app (.var 0 [5,6]) (.var 1 [5,6]) []) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1064 : ¬ Reader r1064 :=
 Rootcert2Flow.reject [] d1064 c1064 a1064 (by decide) (by decide) (by decide)
#print axioms reject1064

def r1071 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
def d1071 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1071 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1071 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1071 : ¬ Reader r1071 :=
 Rootcert2Flow.reject [] d1071 c1071 a1071 (by decide) (by decide) (by decide)
#print axioms reject1071

def r1072 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
def d1072 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1072 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1072 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1072 : ¬ Reader r1072 :=
 Rootcert2Flow.reject [] d1072 c1072 a1072 (by decide) (by decide) (by decide)
#print axioms reject1072

def r1073 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
def d1073 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1073 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1073 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1073 : ¬ Reader r1073 :=
 Rootcert2Flow.reject [] d1073 c1073 a1073 (by decide) (by decide) (by decide)
#print axioms reject1073

def r1083 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 1)) (.var 0)) (.var 0))
def d1083 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1083 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1083 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1083 : ¬ Reader r1083 :=
 Rootcert2Flow.reject [] d1083 c1083 a1083 (by decide) (by decide) (by decide)
#print axioms reject1083

def r1084 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 0)) (.var 1)) (.var 0))
def d1084 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1084 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1084 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1084 : ¬ Reader r1084 :=
 Rootcert2Flow.reject [] d1084 c1084 a1084 (by decide) (by decide) (by decide)
#print axioms reject1084

def r1085 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 0)) (.var 0)) (.var 1))
def d1085 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1085 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1085 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1085 : ¬ Reader r1085 :=
 Rootcert2Flow.reject [] d1085 c1085 a1085 (by decide) (by decide) (by decide)
#print axioms reject1085

def r1089 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d1089 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1089 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1089 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 2 [0]) (.var 0 [6]) [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1089 : ¬ Reader r1089 :=
 Rootcert2Flow.reject [] d1089 c1089 a1089 (by decide) (by decide) (by decide)
#print axioms reject1089

def r1090 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d1090 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1090 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1090 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 2 [0]) (.var 0 [6]) [0]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1090 : ¬ Reader r1090 :=
 Rootcert2Flow.reject [] d1090 c1090 a1090 (by decide) (by decide) (by decide)
#print axioms reject1090

def r1091 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d1091 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1091 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1091 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 2 [0]) (.var 0 [6]) [0]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1091 : ¬ Reader r1091 :=
 Rootcert2Flow.reject [] d1091 c1091 a1091 (by decide) (by decide) (by decide)
#print axioms reject1091

def r1092 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))) (.var 1)) (.var 0)) (.var 0))
def d1092 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c1092 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a1092 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) (.app (.var 0 [0,6]) (.var 2 [0]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.var 0 [0]) [0]) (.var 0 [0]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject1092 : ¬ Reader r1092 :=
 Rootcert2Flow.reject [] d1092 c1092 a1092 (by decide) (by decide) (by decide)
#print axioms reject1092

def r1093 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))) (.var 0)) (.var 1)) (.var 0))
def d1093 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c1093 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a1093 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) (.app (.var 0 [0,6]) (.var 2 [0]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 0 [0]) [0]) (.var 1 [1]) [0]) (.var 0 [0]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject1093 : ¬ Reader r1093 :=
 Rootcert2Flow.reject [] d1093 c1093 a1093 (by decide) (by decide) (by decide)
#print axioms reject1093

def r1094 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))) (.var 0)) (.var 0)) (.var 1))
def d1094 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c1094 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a1094 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) (.app (.var 0 [0,6]) (.var 2 [0]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 0 [0]) [0]) (.var 0 [0]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject1094 : ¬ Reader r1094 :=
 Rootcert2Flow.reject [] d1094 c1094 a1094 (by decide) (by decide) (by decide)
#print axioms reject1094

def r1101 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
def d1101 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1101 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1101 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1101 : ¬ Reader r1101 :=
 Rootcert2Flow.reject [] d1101 c1101 a1101 (by decide) (by decide) (by decide)
#print axioms reject1101

def r1102 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
def d1102 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1102 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1102 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1102 : ¬ Reader r1102 :=
 Rootcert2Flow.reject [] d1102 c1102 a1102 (by decide) (by decide) (by decide)
#print axioms reject1102

def r1103 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
def d1103 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1103 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1103 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1103 : ¬ Reader r1103 :=
 Rootcert2Flow.reject [] d1103 c1103 a1103 (by decide) (by decide) (by decide)
#print axioms reject1103

def r1116 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))) (.var 1)) (.var 0)) (.var 0))
def d1116 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1116 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1116 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1116 : ¬ Reader r1116 :=
 Rootcert2Flow.reject [] d1116 c1116 a1116 (by decide) (by decide) (by decide)
#print axioms reject1116

def r1117 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))) (.var 0)) (.var 1)) (.var 0))
def d1117 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1117 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1117 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1117 : ¬ Reader r1117 :=
 Rootcert2Flow.reject [] d1117 c1117 a1117 (by decide) (by decide) (by decide)
#print axioms reject1117

def r1118 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))) (.var 0)) (.var 0)) (.var 1))
def d1118 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1118 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1118 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1118 : ¬ Reader r1118 :=
 Rootcert2Flow.reject [] d1118 c1118 a1118 (by decide) (by decide) (by decide)
#print axioms reject1118

def r1122 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))) (.var 1)) (.var 0)) (.var 0))
def d1122 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1122 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1122 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1122 : ¬ Reader r1122 :=
 Rootcert2Flow.reject [] d1122 c1122 a1122 (by decide) (by decide) (by decide)
#print axioms reject1122

def r1123 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))) (.var 0)) (.var 1)) (.var 0))
def d1123 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1123 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1123 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1123 : ¬ Reader r1123 :=
 Rootcert2Flow.reject [] d1123 c1123 a1123 (by decide) (by decide) (by decide)
#print axioms reject1123

def r1124 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))) (.var 0)) (.var 0)) (.var 1))
def d1124 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1124 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1124 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1124 : ¬ Reader r1124 :=
 Rootcert2Flow.reject [] d1124 c1124 a1124 (by decide) (by decide) (by decide)
#print axioms reject1124

def r1131 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 1)) (.var 0)) (.var 0))
def d1131 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1131 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1131 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1131 : ¬ Reader r1131 :=
 Rootcert2Flow.reject [] d1131 c1131 a1131 (by decide) (by decide) (by decide)
#print axioms reject1131

def r1132 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 0)) (.var 1)) (.var 0))
def d1132 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1132 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1132 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1132 : ¬ Reader r1132 :=
 Rootcert2Flow.reject [] d1132 c1132 a1132 (by decide) (by decide) (by decide)
#print axioms reject1132

def r1133 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.var 0)) (.var 0)) (.var 1))
def d1133 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1133 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1133 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1133 : ¬ Reader r1133 :=
 Rootcert2Flow.reject [] d1133 c1133 a1133 (by decide) (by decide) (by decide)
#print axioms reject1133

def r1137 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
def d1137 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1137 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1137 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1137 : ¬ Reader r1137 :=
 Rootcert2Flow.reject [] d1137 c1137 a1137 (by decide) (by decide) (by decide)
#print axioms reject1137

def r1138 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
def d1138 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1138 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1138 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1138 : ¬ Reader r1138 :=
 Rootcert2Flow.reject [] d1138 c1138 a1138 (by decide) (by decide) (by decide)
#print axioms reject1138

def r1139 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
def d1139 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1139 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1139 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1139 : ¬ Reader r1139 :=
 Rootcert2Flow.reject [] d1139 c1139 a1139 (by decide) (by decide) (by decide)
#print axioms reject1139

def r1143 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 1)))) (.var 1)) (.var 0)) (.var 0))
def d1143 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1143 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1143 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1143 : ¬ Reader r1143 :=
 Rootcert2Flow.reject [] d1143 c1143 a1143 (by decide) (by decide) (by decide)
#print axioms reject1143

def r1144 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 1)))) (.var 0)) (.var 1)) (.var 0))
def d1144 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1144 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1144 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1144 : ¬ Reader r1144 :=
 Rootcert2Flow.reject [] d1144 c1144 a1144 (by decide) (by decide) (by decide)
#print axioms reject1144

def r1145 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 1)))) (.var 0)) (.var 0)) (.var 1))
def d1145 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1145 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1145 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1145 : ¬ Reader r1145 :=
 Rootcert2Flow.reject [] d1145 c1145 a1145 (by decide) (by decide) (by decide)
#print axioms reject1145

def r1152 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 1)))) (.var 1)) (.var 0)) (.var 0))
def d1152 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1152 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1152 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1152 : ¬ Reader r1152 :=
 Rootcert2Flow.reject [] d1152 c1152 a1152 (by decide) (by decide) (by decide)
#print axioms reject1152

def r1153 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 1)))) (.var 0)) (.var 1)) (.var 0))
def d1153 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1153 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1153 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1153 : ¬ Reader r1153 :=
 Rootcert2Flow.reject [] d1153 c1153 a1153 (by decide) (by decide) (by decide)
#print axioms reject1153
end Blc.HandlerLet.XFlow03
