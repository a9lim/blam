import Flow
namespace Blc.Rootcert2.DevelopCases08
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r620 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
def d620 : List FTy := [[],[],[],[],[10],[1],[8],[9],[13],[15],[1],[13],[14],[13],[15],[1],[],[],[]]
def c620 : List FTy := [[],[],[],[],[5],[],[8],[8],[10],[10],[],[13],[13],[15],[15],[],[],[18],[]]
def a620 : Ann := (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [10]) (.app (.var 0 [1]) (.var 0 [1]) [1]) []) [5]) [4]) (.app (.app (.lam 6 (.var 0 [8]) [6]) (.app (.lam 7 (.lam 8 (.app (.var 1 [9]) (.app (.var 0 [13]) (.var 0 [13]) [15]) [10]) [8]) [7]) (.lam 9 (.lam 10 (.app (.var 1 [15]) (.app (.var 0 [1]) (.var 0 [1]) [1]) []) [10]) [9]) [8]) [8]) (.app (.lam 11 (.var 0 [13]) [11]) (.app (.lam 12 (.lam 13 (.app (.var 1 [14]) (.app (.var 0 [13]) (.var 0 [13]) [15]) [15]) [13]) [12]) (.lam 14 (.lam 15 (.app (.var 1 [15]) (.app (.var 0 [1]) (.var 0 [1]) [1]) []) [15]) [14]) [13]) [13]) [10]) [5]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject620 : ¬ Reader r620 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2], [1, 1, 1]] d620 c620 a620 (by decide) (by decide) (by decide)
#print axioms reject620

def r621 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
def d621 : List FTy := [[],[],[],[],[10],[0],[8],[9],[13],[15],[0],[13],[14],[13],[15],[0],[],[],[]]
def c621 : List FTy := [[],[],[],[],[5],[],[8],[8],[10],[10],[],[13],[13],[15],[15],[],[],[18],[]]
def a621 : Ann := (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [10]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) [5]) [4]) (.app (.app (.lam 6 (.var 0 [8]) [6]) (.app (.lam 7 (.lam 8 (.app (.var 1 [9]) (.app (.var 0 [13]) (.var 0 [13]) [15]) [10]) [8]) [7]) (.lam 9 (.lam 10 (.app (.var 1 [15]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) [10]) [9]) [8]) [8]) (.app (.lam 11 (.var 0 [13]) [11]) (.app (.lam 12 (.lam 13 (.app (.var 1 [14]) (.app (.var 0 [13]) (.var 0 [13]) [15]) [15]) [13]) [12]) (.lam 14 (.lam 15 (.app (.var 1 [15]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) [15]) [14]) [13]) [13]) [10]) [5]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject621 : ¬ Reader r621 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 2, 1], [1, 1, 1, 2], [1, 1, 1]] d621 c621 a621 (by decide) (by decide) (by decide)
#print axioms reject621
end Blc.Rootcert2.DevelopCases08
