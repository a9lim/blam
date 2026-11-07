import Flow
namespace Blc.Rootcert2.FlowCases31
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r261 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))) (.var 1))
def d261 : List FTy := [[],[],[],[],[7],[11],[0],[0],[6],[],[13],[11],[0],[0],[12],[],[],[],[]]
def c261 : List FTy := [[],[],[],[],[5],[],[11],[8],[11],[6],[11],[],[11],[14],[11],[12],[],[18],[]]
def a261 : Ann := (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 0 [11]) (.app (.app (.var 1 [7]) (.var 2 [0]) [8]) (.lam 6 (.var 1 [11]) [6]) [11]) []) [5]) [4]) (.lam 7 (.lam 8 (.app (.var 0 [6]) (.app (.app (.var 1 [0]) (.var 2 [0]) [0]) (.lam 9 (.var 1 [6]) [9]) [0]) [11]) [8]) [7]) [5]) (.app (.lam 10 (.lam 11 (.app (.var 0 [11]) (.app (.app (.var 1 [13]) (.var 2 [0]) [14]) (.lam 12 (.var 1 [11]) [12]) [11]) []) [11]) [10]) (.lam 13 (.lam 14 (.app (.var 0 [12]) (.app (.app (.var 1 [0]) (.var 2 [0]) [0]) (.lam 15 (.var 1 [12]) [15]) [0]) [11]) [14]) [13]) [11]) []) (.var 1 [1]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject261 : ¬ Reader r261 :=
 Rootcert2Flow.reject [[1, 1]] d261 c261 a261 (by decide) (by decide) (by decide)
#print axioms reject261
end Blc.Rootcert2.FlowCases31
