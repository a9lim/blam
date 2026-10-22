import Flow
namespace Blc.Rootcert2.DevelopCases04
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r456 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
def d456 : List FTy := [[],[],[],[],[7],[19],[9],[1,11],[10],[1,11],[1,11],[0,1,11],[15],[1],[17],[1,19],[18],[1,19],[1,19],[1,19],[],[],[]]
def c456 : List FTy := [[],[],[],[],[5],[11],[7],[11],[9],[11],[11],[1],[13],[19],[15],[19],[17],[19],[19],[1],[],[22],[]]
def a456 : Ann := (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [7]) (.app (.var 1 [7]) (.app (.var 0 [19]) (.var 0 [19]) [1]) [11]) [11]) [5]) [4]) (.app (.lam 6 (.lam 7 (.app (.var 1 [9]) (.app (.var 1 [9]) (.app (.var 0 [1,11]) (.var 0 [1,11]) [1]) [11]) [11]) [7]) [6]) (.app (.lam 8 (.lam 9 (.app (.var 1 [10]) (.app (.var 1 [10]) (.app (.var 0 [1,11]) (.var 0 [1,11]) [1]) [11]) [11]) [9]) [8]) (.lam 10 (.lam 11 (.app (.var 1 [1,11]) (.app (.var 1 [1,11]) (.app (.var 0 [0,1,11]) (.var 0 [0,1,11]) [0,1]) [1]) [1]) [11]) [10]) [9]) [7]) [5]) (.app (.app (.lam 12 (.lam 13 (.app (.var 1 [15]) (.app (.var 1 [15]) (.app (.var 0 [1]) (.var 0 [1]) [1]) [19]) [19]) [13]) [12]) (.app (.lam 14 (.lam 15 (.app (.var 1 [17]) (.app (.var 1 [17]) (.app (.var 0 [1,19]) (.var 0 [1,19]) [1]) [19]) [19]) [15]) [14]) (.app (.lam 16 (.lam 17 (.app (.var 1 [18]) (.app (.var 1 [18]) (.app (.var 0 [1,19]) (.var 0 [1,19]) [1]) [19]) [19]) [17]) [16]) (.lam 18 (.lam 19 (.app (.var 1 [1,19]) (.app (.var 1 [1,19]) (.app (.var 0 [1,19]) (.var 0 [1,19]) [1]) [1]) [1]) [19]) [18]) [17]) [15]) [13]) (.app (.var 1 [1]) (.var 1 [1]) [1]) [19]) [11]) (.var 0 [0]) [1]) (.lam 20 (.app (.app (.var 0 []) (.lam 21 (.lam 22 (.var 1 []) [22]) [21]) []) (.var 4 [3]) []) [20]) [1])
theorem reject456 : ¬ Reader r456 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2], [1, 1, 1], [1, 1]] d456 c456 a456 (by decide) (by decide) (by decide)
#print axioms reject456

def r457 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
def d457 : List FTy := [[],[],[],[],[7],[19],[9],[0,11],[10],[0,11],[0,11],[0,1,11],[15],[0],[17],[0,19],[18],[0,19],[0,19],[0,19],[],[],[]]
def c457 : List FTy := [[],[],[],[],[5],[11],[7],[11],[9],[11],[11],[0],[13],[19],[15],[19],[17],[19],[19],[0],[],[22],[]]
def a457 : Ann := (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [7]) (.app (.var 1 [7]) (.app (.var 0 [19]) (.var 0 [19]) [0]) [11]) [11]) [5]) [4]) (.app (.lam 6 (.lam 7 (.app (.var 1 [9]) (.app (.var 1 [9]) (.app (.var 0 [0,11]) (.var 0 [0,11]) [0]) [11]) [11]) [7]) [6]) (.app (.lam 8 (.lam 9 (.app (.var 1 [10]) (.app (.var 1 [10]) (.app (.var 0 [0,11]) (.var 0 [0,11]) [0]) [11]) [11]) [9]) [8]) (.lam 10 (.lam 11 (.app (.var 1 [0,11]) (.app (.var 1 [0,11]) (.app (.var 0 [0,1,11]) (.var 0 [0,1,11]) [0,1]) [0]) [0]) [11]) [10]) [9]) [7]) [5]) (.app (.app (.lam 12 (.lam 13 (.app (.var 1 [15]) (.app (.var 1 [15]) (.app (.var 0 [0]) (.var 0 [0]) [0]) [19]) [19]) [13]) [12]) (.app (.lam 14 (.lam 15 (.app (.var 1 [17]) (.app (.var 1 [17]) (.app (.var 0 [0,19]) (.var 0 [0,19]) [0]) [19]) [19]) [15]) [14]) (.app (.lam 16 (.lam 17 (.app (.var 1 [18]) (.app (.var 1 [18]) (.app (.var 0 [0,19]) (.var 0 [0,19]) [0]) [19]) [19]) [17]) [16]) (.lam 18 (.lam 19 (.app (.var 1 [0,19]) (.app (.var 1 [0,19]) (.app (.var 0 [0,19]) (.var 0 [0,19]) [0]) [0]) [0]) [19]) [18]) [17]) [15]) [13]) (.app (.var 0 [0]) (.var 0 [0]) [0]) [19]) [11]) (.var 1 [1]) [0]) (.lam 20 (.app (.app (.var 0 []) (.lam 21 (.lam 22 (.var 1 []) [22]) [21]) []) (.var 4 [3]) []) [20]) [0])
theorem reject457 : ¬ Reader r457 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2], [1, 1, 1], [1, 1]] d457 c457 a457 (by decide) (by decide) (by decide)
#print axioms reject457
end Blc.Rootcert2.DevelopCases04
