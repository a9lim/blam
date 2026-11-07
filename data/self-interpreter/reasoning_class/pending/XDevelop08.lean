import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XDevelop08
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r4440 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
def d4440 : List FTy := [[],[],[],[],[6],[9],[11],[0],[10],[9],[11],[0],[],[],[]]
def c4440 : List FTy := [[],[],[],[],[5],[7],[7],[],[9],[11],[11],[],[],[14],[]]
def a4440 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [9]) (.var 0 [9]) [11]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [11]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) [7]) [6]) [5]) (.app (.lam 8 (.lam 9 (.app (.var 1 [10]) (.app (.var 0 [9]) (.var 0 [9]) [11]) [11]) [9]) [8]) (.lam 10 (.lam 11 (.app (.var 1 [11]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) [11]) [10]) [9]) [7]) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [])
theorem reject4440 : ¬ Reader r4440 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1]] d4440 c4440 a4440 (by decide) (by decide) (by decide)
#print axioms reject4440
end Blc.HandlerLet.XDevelop08
