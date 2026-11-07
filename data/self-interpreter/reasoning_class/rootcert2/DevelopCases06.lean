import Flow
namespace Blc.Rootcert2.DevelopCases06
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r516 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 1)) (.app (.var 0) (.var 0)))
def d516 : List FTy := [[],[],[],[],[10],[13],[1],[11],[14],[11],[7],[8,15],[13],[1],[11],[14],[],[],[]]
def c516 : List FTy := [[],[],[],[],[6],[6],[],[8],[13],[10],[13],[13],[13],[],[15],[13],[],[18],[]]
def a516 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.lam 5 (.lam 6 (.app (.var 1 [13]) (.app (.var 0 [1]) (.var 1 [13]) [1]) []) [6]) [5]) (.app (.var 0 [10]) (.lam 7 (.lam 8 (.app (.var 1 [11]) (.app (.var 0 [14]) (.var 1 [11]) [15]) [13]) [8]) [7]) [13]) [6]) [4]) (.app (.lam 9 (.lam 10 (.app (.var 1 [11]) (.app (.var 0 [7]) (.var 1 [11]) [8]) [13]) [10]) [9]) (.lam 11 (.app (.lam 12 (.lam 13 (.app (.var 1 [13]) (.app (.var 0 [1]) (.var 1 [13]) [1]) []) [13]) [12]) (.app (.var 0 [8,15]) (.lam 14 (.lam 15 (.app (.var 1 [11]) (.app (.var 0 [14]) (.var 1 [11]) [15]) [13]) [15]) [14]) [13]) [13]) [11]) [10]) [6]) (.var 1 [1]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject516 : ¬ Reader r516 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1]] d516 c516 a516 (by decide) (by decide) (by decide)
#print axioms reject516

def r517 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 1))
def d517 : List FTy := [[],[],[],[],[10],[13],[0],[11],[14],[11],[7],[8,15],[13],[0],[11],[14],[],[],[]]
def c517 : List FTy := [[],[],[],[],[6],[6],[],[8],[13],[10],[13],[13],[13],[],[15],[13],[],[18],[]]
def a517 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.lam 5 (.lam 6 (.app (.var 1 [13]) (.app (.var 0 [0]) (.var 1 [13]) [0]) []) [6]) [5]) (.app (.var 0 [10]) (.lam 7 (.lam 8 (.app (.var 1 [11]) (.app (.var 0 [14]) (.var 1 [11]) [15]) [13]) [8]) [7]) [13]) [6]) [4]) (.app (.lam 9 (.lam 10 (.app (.var 1 [11]) (.app (.var 0 [7]) (.var 1 [11]) [8]) [13]) [10]) [9]) (.lam 11 (.app (.lam 12 (.lam 13 (.app (.var 1 [13]) (.app (.var 0 [0]) (.var 1 [13]) [0]) []) [13]) [12]) (.app (.var 0 [8,15]) (.lam 14 (.lam 15 (.app (.var 1 [11]) (.app (.var 0 [14]) (.var 1 [11]) [15]) [13]) [15]) [14]) [13]) [13]) [11]) [10]) [6]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject517 : ¬ Reader r517 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1]] d517 c517 a517 (by decide) (by decide) (by decide)
#print axioms reject517

def r586 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 1)) (.lam (.var 1)))
def d586 : List FTy := [[],[],[],[],[10],[13],[1],[11],[14],[11],[7],[8,15],[13],[1],[11],[14],[],[],[],[]]
def c586 : List FTy := [[],[],[],[],[6],[6],[],[8],[13],[10],[13],[13],[13],[],[15],[13],[0],[],[19],[]]
def a586 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.lam 5 (.lam 6 (.app (.var 1 [13]) (.app (.var 0 [1]) (.var 1 [13]) [1]) []) [6]) [5]) (.app (.var 0 [10]) (.lam 7 (.lam 8 (.app (.var 1 [11]) (.app (.var 0 [14]) (.var 1 [11]) [15]) [13]) [8]) [7]) [13]) [6]) [4]) (.app (.lam 9 (.lam 10 (.app (.var 1 [11]) (.app (.var 0 [7]) (.var 1 [11]) [8]) [13]) [10]) [9]) (.lam 11 (.app (.lam 12 (.lam 13 (.app (.var 1 [13]) (.app (.var 0 [1]) (.var 1 [13]) [1]) []) [13]) [12]) (.app (.var 0 [8,15]) (.lam 14 (.lam 15 (.app (.var 1 [11]) (.app (.var 0 [14]) (.var 1 [11]) [15]) [13]) [15]) [14]) [13]) [13]) [11]) [10]) [6]) (.var 1 [1]) []) (.lam 16 (.var 1 [0]) [16]) []) (.lam 17 (.app (.app (.var 0 []) (.lam 18 (.lam 19 (.var 1 []) [19]) [18]) []) (.var 4 [3]) []) [17]) [])
theorem reject586 : ¬ Reader r586 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1]] d586 c586 a586 (by decide) (by decide) (by decide)
#print axioms reject586

def r587 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.var 1))) (.var 1))
def d587 : List FTy := [[],[],[],[],[10],[13],[16],[11],[14],[11],[7],[8,15],[13],[0],[11],[14],[13],[],[],[]]
def c587 : List FTy := [[],[],[],[],[6],[6],[],[8],[13],[10],[13],[13],[13],[],[15],[13],[0],[],[19],[]]
def a587 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.lam 5 (.lam 6 (.app (.var 1 [13]) (.app (.var 0 [16]) (.var 1 [13]) [0]) []) [6]) [5]) (.app (.var 0 [10]) (.lam 7 (.lam 8 (.app (.var 1 [11]) (.app (.var 0 [14]) (.var 1 [11]) [15]) [13]) [8]) [7]) [13]) [6]) [4]) (.app (.lam 9 (.lam 10 (.app (.var 1 [11]) (.app (.var 0 [7]) (.var 1 [11]) [8]) [13]) [10]) [9]) (.lam 11 (.app (.lam 12 (.lam 13 (.app (.var 1 [13]) (.app (.var 0 [0]) (.var 1 [13]) [0]) []) [13]) [12]) (.app (.var 0 [8,15]) (.lam 14 (.lam 15 (.app (.var 1 [11]) (.app (.var 0 [14]) (.var 1 [11]) [15]) [13]) [15]) [14]) [13]) [13]) [11]) [10]) [6]) (.lam 16 (.var 1 [0]) [16]) []) (.var 1 [1]) []) (.lam 17 (.app (.app (.var 0 []) (.lam 18 (.lam 19 (.var 1 []) [19]) [18]) []) (.var 4 [3]) []) [17]) [])
theorem reject587 : ¬ Reader r587 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1], [1, 1, 1]] d587 c587 a587 (by decide) (by decide) (by decide)
#print axioms reject587

def r649 : Term := (.app (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
def d649 : List FTy := [[],[],[],[],[10],[13],[1],[11],[14],[11],[7],[8,15],[13],[1],[11],[14],[],[],[]]
def c649 : List FTy := [[],[],[],[],[6],[6],[],[8],[13],[10],[13],[13],[13],[],[15],[13],[],[18],[]]
def a649 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.lam 5 (.lam 6 (.app (.var 1 [13]) (.app (.var 0 [1]) (.var 1 [13]) [1]) []) [6]) [5]) (.app (.var 0 [10]) (.lam 7 (.lam 8 (.app (.var 1 [11]) (.app (.var 0 [14]) (.var 1 [11]) [15]) [13]) [8]) [7]) [13]) [6]) [4]) (.app (.lam 9 (.lam 10 (.app (.var 1 [11]) (.app (.var 0 [7]) (.var 1 [11]) [8]) [13]) [10]) [9]) (.lam 11 (.app (.lam 12 (.lam 13 (.app (.var 1 [13]) (.app (.var 0 [1]) (.var 1 [13]) [1]) []) [13]) [12]) (.app (.var 0 [8,15]) (.lam 14 (.lam 15 (.app (.var 1 [11]) (.app (.var 0 [14]) (.var 1 [11]) [15]) [13]) [15]) [14]) [13]) [13]) [11]) [10]) [6]) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject649 : ¬ Reader r649 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1], [1, 1, 1, 1]] d649 c649 a649 (by decide) (by decide) (by decide)
#print axioms reject649

def r650 : Term := (.app (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
def d650 : List FTy := [[],[],[],[],[10],[13],[0],[11],[14],[11],[7],[8,15],[13],[0],[11],[14],[],[],[]]
def c650 : List FTy := [[],[],[],[],[6],[6],[],[8],[13],[10],[13],[13],[13],[],[15],[13],[],[18],[]]
def a650 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.lam 5 (.lam 6 (.app (.var 1 [13]) (.app (.var 0 [0]) (.var 1 [13]) [0]) []) [6]) [5]) (.app (.var 0 [10]) (.lam 7 (.lam 8 (.app (.var 1 [11]) (.app (.var 0 [14]) (.var 1 [11]) [15]) [13]) [8]) [7]) [13]) [6]) [4]) (.app (.lam 9 (.lam 10 (.app (.var 1 [11]) (.app (.var 0 [7]) (.var 1 [11]) [8]) [13]) [10]) [9]) (.lam 11 (.app (.lam 12 (.lam 13 (.app (.var 1 [13]) (.app (.var 0 [0]) (.var 1 [13]) [0]) []) [13]) [12]) (.app (.var 0 [8,15]) (.lam 14 (.lam 15 (.app (.var 1 [11]) (.app (.var 0 [14]) (.var 1 [11]) [15]) [13]) [15]) [14]) [13]) [13]) [11]) [10]) [6]) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject650 : ¬ Reader r650 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1], [1, 1, 1, 1]] d650 c650 a650 (by decide) (by decide) (by decide)
#print axioms reject650

def r651 : Term := (.app (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
def d651 : List FTy := [[],[],[],[],[10],[13],[0],[11],[14],[11],[7],[8,15],[13],[0],[11],[14],[],[],[]]
def c651 : List FTy := [[],[],[],[],[6],[6],[],[8],[13],[10],[13],[13],[13],[],[15],[13],[],[18],[]]
def a651 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.lam 5 (.lam 6 (.app (.var 1 [13]) (.app (.var 0 [0]) (.var 1 [13]) [0]) []) [6]) [5]) (.app (.var 0 [10]) (.lam 7 (.lam 8 (.app (.var 1 [11]) (.app (.var 0 [14]) (.var 1 [11]) [15]) [13]) [8]) [7]) [13]) [6]) [4]) (.app (.lam 9 (.lam 10 (.app (.var 1 [11]) (.app (.var 0 [7]) (.var 1 [11]) [8]) [13]) [10]) [9]) (.lam 11 (.app (.lam 12 (.lam 13 (.app (.var 1 [13]) (.app (.var 0 [0]) (.var 1 [13]) [0]) []) [13]) [12]) (.app (.var 0 [8,15]) (.lam 14 (.lam 15 (.app (.var 1 [11]) (.app (.var 0 [14]) (.var 1 [11]) [15]) [13]) [15]) [14]) [13]) [13]) [11]) [10]) [6]) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject651 : ¬ Reader r651 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1], [1, 1, 1, 1]] d651 c651 a651 (by decide) (by decide) (by decide)
#print axioms reject651
end Blc.Rootcert2.DevelopCases06
