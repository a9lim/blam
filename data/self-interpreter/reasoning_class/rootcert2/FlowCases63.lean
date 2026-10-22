import Flow
namespace Blc.Rootcert2.FlowCases63
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r602 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))))) (.var 1)) (.var 0))
def d602 : List FTy := [[],[],[],[],[7],[11],[9],[6],[11],[11],[13],[11],[15],[12],[11],[11],[],[],[]]
def c602 : List FTy := [[],[],[],[],[5],[],[9],[8],[],[11],[11],[],[15],[14],[],[11],[],[18],[]]
def a602 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 0 [11]) (.app (.app (.var 1 [7]) (.lam 6 (.var 0 [9]) [6]) [8]) (.var 0 [11]) []) []) [5]) [4]) (.lam 7 (.lam 8 (.app (.var 0 [11]) (.app (.app (.var 1 [6]) (.lam 9 (.var 0 [11]) [9]) [9]) (.var 0 [11]) [11]) []) [8]) [7]) [5]) (.app (.lam 10 (.lam 11 (.app (.var 0 [11]) (.app (.app (.var 1 [13]) (.lam 12 (.var 0 [15]) [12]) [14]) (.var 0 [11]) []) []) [11]) [10]) (.lam 13 (.lam 14 (.app (.var 0 [11]) (.app (.app (.var 1 [12]) (.lam 15 (.var 0 [11]) [15]) [15]) (.var 0 [11]) [11]) []) [14]) [13]) [11]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject602 : ¬ Reader r602 :=
 Rootcert2Flow.reject [[1, 1, 1]] d602 c602 a602 (by decide) (by decide) (by decide)
#print axioms reject602

def r603 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))))) (.var 0)) (.var 1))
def d603 : List FTy := [[],[],[],[],[7],[11],[9],[6],[11],[11],[13],[11],[15],[12],[11],[11],[],[],[]]
def c603 : List FTy := [[],[],[],[],[5],[],[9],[8],[],[11],[11],[],[15],[14],[],[11],[],[18],[]]
def a603 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 0 [11]) (.app (.app (.var 1 [7]) (.lam 6 (.var 0 [9]) [6]) [8]) (.var 0 [11]) []) []) [5]) [4]) (.lam 7 (.lam 8 (.app (.var 0 [11]) (.app (.app (.var 1 [6]) (.lam 9 (.var 0 [11]) [9]) [9]) (.var 0 [11]) [11]) []) [8]) [7]) [5]) (.app (.lam 10 (.lam 11 (.app (.var 0 [11]) (.app (.app (.var 1 [13]) (.lam 12 (.var 0 [15]) [12]) [14]) (.var 0 [11]) []) []) [11]) [10]) (.lam 13 (.lam 14 (.app (.var 0 [11]) (.app (.app (.var 1 [12]) (.lam 15 (.var 0 [11]) [15]) [15]) (.var 0 [11]) [11]) []) [14]) [13]) [11]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject603 : ¬ Reader r603 :=
 Rootcert2Flow.reject [[1, 1, 1]] d603 c603 a603 (by decide) (by decide) (by decide)
#print axioms reject603
end Blc.Rootcert2.FlowCases63
