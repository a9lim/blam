import Flow
namespace Blc.Rootcert2.FlowCases55
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r470 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
def d470 : List FTy := [[],[],[],[],[6],[9],[7,11],[1],[10],[9],[11],[1],[],[],[]]
def c470 : List FTy := [[],[],[],[],[5],[7],[7],[],[9],[11],[11],[],[],[14],[]]
def a470 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.var 1 [6]) (.app (.var 0 [9]) (.var 0 [9]) [11]) [7]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [7,11]) (.app (.var 1 [7,11]) (.app (.var 0 [1]) (.var 0 [1]) [1]) []) []) [7]) [6]) [5]) (.app (.lam 8 (.lam 9 (.app (.var 1 [10]) (.app (.var 1 [10]) (.app (.var 0 [9]) (.var 0 [9]) [11]) [11]) [11]) [9]) [8]) (.lam 10 (.lam 11 (.app (.var 1 [11]) (.app (.var 1 [11]) (.app (.var 0 [1]) (.var 0 [1]) [1]) []) []) [11]) [10]) [9]) [7]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [])
theorem reject470 : ¬ Reader r470 :=
 Rootcert2Flow.reject [[1, 1, 1]] d470 c470 a470 (by decide) (by decide) (by decide)
#print axioms reject470

def r471 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
def d471 : List FTy := [[],[],[],[],[6],[9],[7,11],[0],[10],[9],[11],[0],[],[],[]]
def c471 : List FTy := [[],[],[],[],[5],[7],[7],[],[9],[11],[11],[],[],[14],[]]
def a471 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.var 1 [6]) (.app (.var 0 [9]) (.var 0 [9]) [11]) [7]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [7,11]) (.app (.var 1 [7,11]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) []) [7]) [6]) [5]) (.app (.lam 8 (.lam 9 (.app (.var 1 [10]) (.app (.var 1 [10]) (.app (.var 0 [9]) (.var 0 [9]) [11]) [11]) [11]) [9]) [8]) (.lam 10 (.lam 11 (.app (.var 1 [11]) (.app (.var 1 [11]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) []) [11]) [10]) [9]) [7]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [])
theorem reject471 : ¬ Reader r471 :=
 Rootcert2Flow.reject [[1, 1, 1]] d471 c471 a471 (by decide) (by decide) (by decide)
#print axioms reject471

def r488 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
def d488 : List FTy := [[],[],[],[],[6],[11],[7],[1],[10],[13],[11,15],[11],[14],[13],[15],[],[],[],[]]
def c488 : List FTy := [[],[],[],[],[5],[7],[7],[],[9],[11],[11],[],[13],[15],[15],[],[],[18],[]]
def a488 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.var 1 [6]) (.app (.var 0 [11]) (.var 0 [11]) []) [7]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [7]) (.app (.var 1 [7]) (.app (.var 0 [1]) (.var 0 [1]) [1]) []) []) [7]) [6]) [5]) (.app (.app (.lam 8 (.lam 9 (.app (.var 1 [10]) (.app (.var 1 [10]) (.app (.var 0 [13]) (.var 0 [13]) [15]) [11]) [11]) [9]) [8]) (.lam 10 (.lam 11 (.app (.var 1 [11,15]) (.app (.var 1 [11,15]) (.app (.var 0 [11]) (.var 0 [11]) []) []) []) [11]) [10]) [9]) (.app (.lam 12 (.lam 13 (.app (.var 1 [14]) (.app (.var 1 [14]) (.app (.var 0 [13]) (.var 0 [13]) [15]) [15]) [15]) [13]) [12]) (.lam 14 (.lam 15 (.app (.var 1 [15]) (.app (.var 1 [15]) (.app (.var 0 []) (.var 0 []) []) []) []) [15]) [14]) [13]) [11]) [7]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject488 : ¬ Reader r488 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1]] d488 c488 a488 (by decide) (by decide) (by decide)
#print axioms reject488

def r489 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
def d489 : List FTy := [[],[],[],[],[6],[11],[7],[0],[10],[13],[11,15],[11],[14],[13],[15],[],[],[],[]]
def c489 : List FTy := [[],[],[],[],[5],[7],[7],[],[9],[11],[11],[],[13],[15],[15],[],[],[18],[]]
def a489 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.var 1 [6]) (.app (.var 0 [11]) (.var 0 [11]) []) [7]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [7]) (.app (.var 1 [7]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) []) [7]) [6]) [5]) (.app (.app (.lam 8 (.lam 9 (.app (.var 1 [10]) (.app (.var 1 [10]) (.app (.var 0 [13]) (.var 0 [13]) [15]) [11]) [11]) [9]) [8]) (.lam 10 (.lam 11 (.app (.var 1 [11,15]) (.app (.var 1 [11,15]) (.app (.var 0 [11]) (.var 0 [11]) []) []) []) [11]) [10]) [9]) (.app (.lam 12 (.lam 13 (.app (.var 1 [14]) (.app (.var 1 [14]) (.app (.var 0 [13]) (.var 0 [13]) [15]) [15]) [15]) [13]) [12]) (.lam 14 (.lam 15 (.app (.var 1 [15]) (.app (.var 1 [15]) (.app (.var 0 []) (.var 0 []) []) []) []) [15]) [14]) [13]) [11]) [7]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject489 : ¬ Reader r489 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1]] d489 c489 a489 (by decide) (by decide) (by decide)
#print axioms reject489

def r500 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0))
def d500 : List FTy := [[],[],[],[],[7],[15],[8],[9],[9],[1,9],[13],[17],[14],[15,19],[15],[15,19],[18],[17],[19],[15,19],[],[],[]]
def c500 : List FTy := [[],[],[],[],[5],[9],[7],[9],[9],[],[11],[15],[13],[15],[15],[],[17],[19],[19],[],[],[22],[]]
def a500 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [7]) (.app (.var 1 [7]) (.app (.var 0 [15]) (.var 0 [15]) []) [9]) [9]) [5]) [4]) (.app (.lam 6 (.lam 7 (.app (.var 1 [8]) (.app (.var 1 [8]) (.app (.var 0 [9]) (.var 0 [9]) []) [9]) [9]) [7]) [6]) (.lam 8 (.lam 9 (.app (.var 1 [9]) (.app (.var 1 [9]) (.app (.var 0 [1,9]) (.var 0 [1,9]) [1]) []) []) [9]) [8]) [7]) [5]) (.app (.app (.lam 10 (.lam 11 (.app (.var 1 [13]) (.app (.var 1 [13]) (.app (.var 0 [17]) (.var 0 [17]) [19]) [15]) [15]) [11]) [10]) (.app (.lam 12 (.lam 13 (.app (.var 1 [14]) (.app (.var 1 [14]) (.app (.var 0 [15,19]) (.var 0 [15,19]) []) [15]) [15]) [13]) [12]) (.lam 14 (.lam 15 (.app (.var 1 [15]) (.app (.var 1 [15]) (.app (.var 0 [15,19]) (.var 0 [15,19]) []) []) []) [15]) [14]) [13]) [11]) (.app (.lam 16 (.lam 17 (.app (.var 1 [18]) (.app (.var 1 [18]) (.app (.var 0 [17]) (.var 0 [17]) [19]) [19]) [19]) [17]) [16]) (.lam 18 (.lam 19 (.app (.var 1 [19]) (.app (.var 1 [19]) (.app (.var 0 [15,19]) (.var 0 [15,19]) []) []) []) [19]) [18]) [17]) [15]) [9]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 20 (.app (.app (.var 0 []) (.lam 21 (.lam 22 (.var 1 []) [22]) [21]) []) (.var 4 [3]) []) [20]) [])
theorem reject500 : ¬ Reader r500 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1]] d500 c500 a500 (by decide) (by decide) (by decide)
#print axioms reject500

def r501 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1))
def d501 : List FTy := [[],[],[],[],[7],[15],[8],[9],[9],[0,9],[13],[17],[14],[15,19],[15],[15,19],[18],[17],[19],[15,19],[],[],[]]
def c501 : List FTy := [[],[],[],[],[5],[9],[7],[9],[9],[],[11],[15],[13],[15],[15],[],[17],[19],[19],[],[],[22],[]]
def a501 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [7]) (.app (.var 1 [7]) (.app (.var 0 [15]) (.var 0 [15]) []) [9]) [9]) [5]) [4]) (.app (.lam 6 (.lam 7 (.app (.var 1 [8]) (.app (.var 1 [8]) (.app (.var 0 [9]) (.var 0 [9]) []) [9]) [9]) [7]) [6]) (.lam 8 (.lam 9 (.app (.var 1 [9]) (.app (.var 1 [9]) (.app (.var 0 [0,9]) (.var 0 [0,9]) [0]) []) []) [9]) [8]) [7]) [5]) (.app (.app (.lam 10 (.lam 11 (.app (.var 1 [13]) (.app (.var 1 [13]) (.app (.var 0 [17]) (.var 0 [17]) [19]) [15]) [15]) [11]) [10]) (.app (.lam 12 (.lam 13 (.app (.var 1 [14]) (.app (.var 1 [14]) (.app (.var 0 [15,19]) (.var 0 [15,19]) []) [15]) [15]) [13]) [12]) (.lam 14 (.lam 15 (.app (.var 1 [15]) (.app (.var 1 [15]) (.app (.var 0 [15,19]) (.var 0 [15,19]) []) []) []) [15]) [14]) [13]) [11]) (.app (.lam 16 (.lam 17 (.app (.var 1 [18]) (.app (.var 1 [18]) (.app (.var 0 [17]) (.var 0 [17]) [19]) [19]) [19]) [17]) [16]) (.lam 18 (.lam 19 (.app (.var 1 [19]) (.app (.var 1 [19]) (.app (.var 0 [15,19]) (.var 0 [15,19]) []) []) []) [19]) [18]) [17]) [15]) [9]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 20 (.app (.app (.var 0 []) (.lam 21 (.lam 22 (.var 1 []) [22]) [21]) []) (.var 4 [3]) []) [20]) [])
theorem reject501 : ¬ Reader r501 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1]] d501 c501 a501 (by decide) (by decide) (by decide)
#print axioms reject501
end Blc.Rootcert2.FlowCases55
