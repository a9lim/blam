import Flow
namespace Blc.Rootcert2.FlowCases34
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r264 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 0))))) (.var 1))
def d264 : List FTy := [[],[],[],[],[7],[10],[0],[9,12],[6],[],[0],[6],[],[],[],[],[],[],[]]
def c264 : List FTy := [[],[],[],[],[5],[],[7],[8],[],[9,12],[11],[],[0],[14],[],[],[],[18],[]]
def a264 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.app (.app (.var 0 [10]) (.var 2 [0]) [11]) (.lam 6 (.var 2 [7]) [6]) []) (.var 0 [10]) []) [5]) [4]) (.lam 7 (.lam 8 (.app (.app (.app (.var 0 [6]) (.var 2 [0]) [7]) (.lam 9 (.var 2 [9,12]) [9]) [8]) (.var 0 [6]) []) [8]) [7]) [5]) (.lam 10 (.lam 11 (.app (.app (.app (.var 0 [6]) (.var 2 [0]) [7]) (.lam 12 (.var 2 [0]) [12]) [8]) (.var 0 [6]) []) [11]) [10]) []) (.lam 13 (.lam 14 (.app (.app (.app (.var 0 []) (.var 2 [0]) []) (.lam 15 (.var 2 []) [15]) []) (.var 0 []) []) [14]) [13]) []) (.var 1 [1]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject264 : ¬ Reader r264 :=
 Rootcert2Flow.reject [[1, 1]] d264 c264 a264 (by decide) (by decide) (by decide)
#print axioms reject264
end Blc.Rootcert2.FlowCases34
