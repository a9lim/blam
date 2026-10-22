import Flow
namespace Blc.Rootcert2.FlowCases59
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r520 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))
def d520 : List FTy := [[],[],[],[],[9],[1],[8],[10],[9,10],[1,11],[1,11],[0,1],[],[],[]]
def c520 : List FTy := [[],[],[],[],[5],[11],[7],[9],[9],[11],[11],[1],[],[14],[]]
def a520 : Ann := (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [9]) (.app (.var 1 [9]) (.app (.var 1 [9]) (.var 0 [1]) [11]) [11]) [11]) [5]) [4]) (.app (.app (.lam 6 (.lam 7 (.app (.var 1 [8]) (.app (.var 1 [8]) (.app (.var 1 [8]) (.var 0 [10]) [9]) [9]) [9]) [7]) [6]) (.lam 8 (.lam 9 (.app (.var 1 [9,10]) (.app (.var 1 [9,10]) (.app (.var 1 [9,10]) (.var 0 [1,11]) [11]) [11]) [11]) [9]) [8]) [7]) (.lam 10 (.lam 11 (.app (.var 1 [1,11]) (.app (.var 1 [1,11]) (.app (.var 1 [1,11]) (.var 0 [0,1]) [1]) [1]) [1]) [11]) [10]) [9]) [5]) (.var 1 [1]) [11]) (.var 0 [0]) [1]) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [1])
theorem reject520 : ¬ Reader r520 :=
 Rootcert2Flow.reject [[1, 1, 1]] d520 c520 a520 (by decide) (by decide) (by decide)
#print axioms reject520

def r521 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1))
def d521 : List FTy := [[],[],[],[],[9],[0],[8],[10],[9,10],[0,11],[0,11],[0,1],[],[],[]]
def c521 : List FTy := [[],[],[],[],[5],[11],[7],[9],[9],[11],[11],[0],[],[14],[]]
def a521 : Ann := (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [9]) (.app (.var 1 [9]) (.app (.var 1 [9]) (.var 0 [0]) [11]) [11]) [11]) [5]) [4]) (.app (.app (.lam 6 (.lam 7 (.app (.var 1 [8]) (.app (.var 1 [8]) (.app (.var 1 [8]) (.var 0 [10]) [9]) [9]) [9]) [7]) [6]) (.lam 8 (.lam 9 (.app (.var 1 [9,10]) (.app (.var 1 [9,10]) (.app (.var 1 [9,10]) (.var 0 [0,11]) [11]) [11]) [11]) [9]) [8]) [7]) (.lam 10 (.lam 11 (.app (.var 1 [0,11]) (.app (.var 1 [0,11]) (.app (.var 1 [0,11]) (.var 0 [0,1]) [0]) [0]) [0]) [11]) [10]) [9]) [5]) (.var 0 [0]) [11]) (.var 1 [1]) [0]) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [0])
theorem reject521 : ¬ Reader r521 :=
 Rootcert2Flow.reject [[1, 1, 1]] d521 c521 a521 (by decide) (by decide) (by decide)
#print axioms reject521

def r536 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))
def d536 : List FTy := [[],[],[],[],[6],[9],[7,9],[1,11],[10],[1,11],[1,11],[0,1],[],[],[]]
def c536 : List FTy := [[],[],[],[],[5],[7],[7],[11],[9],[11],[11],[1],[],[14],[]]
def a536 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.var 1 [6]) (.app (.var 1 [6]) (.var 0 [9]) [7]) [7]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [7,9]) (.app (.var 1 [7,9]) (.app (.var 1 [7,9]) (.var 0 [1,11]) [11]) [11]) [11]) [7]) [6]) [5]) (.app (.lam 8 (.lam 9 (.app (.var 1 [10]) (.app (.var 1 [10]) (.app (.var 1 [10]) (.var 0 [1,11]) [11]) [11]) [11]) [9]) [8]) (.lam 10 (.lam 11 (.app (.var 1 [1,11]) (.app (.var 1 [1,11]) (.app (.var 1 [1,11]) (.var 0 [0,1]) [1]) [1]) [1]) [11]) [10]) [9]) [7]) (.var 1 [1]) [11]) (.var 0 [0]) [1]) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [1])
theorem reject536 : ¬ Reader r536 :=
 Rootcert2Flow.reject [[1, 1, 1]] d536 c536 a536 (by decide) (by decide) (by decide)
#print axioms reject536

def r537 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1))
def d537 : List FTy := [[],[],[],[],[6],[9],[7,9],[0,11],[10],[0,11],[0,11],[0,1],[],[],[]]
def c537 : List FTy := [[],[],[],[],[5],[7],[7],[11],[9],[11],[11],[0],[],[14],[]]
def a537 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.var 1 [6]) (.app (.var 1 [6]) (.var 0 [9]) [7]) [7]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [7,9]) (.app (.var 1 [7,9]) (.app (.var 1 [7,9]) (.var 0 [0,11]) [11]) [11]) [11]) [7]) [6]) [5]) (.app (.lam 8 (.lam 9 (.app (.var 1 [10]) (.app (.var 1 [10]) (.app (.var 1 [10]) (.var 0 [0,11]) [11]) [11]) [11]) [9]) [8]) (.lam 10 (.lam 11 (.app (.var 1 [0,11]) (.app (.var 1 [0,11]) (.app (.var 1 [0,11]) (.var 0 [0,1]) [0]) [0]) [0]) [11]) [10]) [9]) [7]) (.var 0 [0]) [11]) (.var 1 [1]) [0]) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [0])
theorem reject537 : ¬ Reader r537 :=
 Rootcert2Flow.reject [[1, 1, 1]] d537 c537 a537 (by decide) (by decide) (by decide)
#print axioms reject537

def r552 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))
def d552 : List FTy := [[],[],[],[],[7],[10],[8],[9,10],[9,10],[1,11],[1,11],[0,1],[],[],[]]
def c552 : List FTy := [[],[],[],[],[5],[9],[7],[9],[9],[11],[11],[1],[],[14],[]]
def a552 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [7]) (.app (.var 1 [7]) (.app (.var 1 [7]) (.var 0 [10]) [9]) [9]) [9]) [5]) [4]) (.app (.lam 6 (.lam 7 (.app (.var 1 [8]) (.app (.var 1 [8]) (.app (.var 1 [8]) (.var 0 [9,10]) [9]) [9]) [9]) [7]) [6]) (.lam 8 (.lam 9 (.app (.var 1 [9,10]) (.app (.var 1 [9,10]) (.app (.var 1 [9,10]) (.var 0 [1,11]) [11]) [11]) [11]) [9]) [8]) [7]) [5]) (.lam 10 (.lam 11 (.app (.var 1 [1,11]) (.app (.var 1 [1,11]) (.app (.var 1 [1,11]) (.var 0 [0,1]) [1]) [1]) [1]) [11]) [10]) [9]) (.var 1 [1]) [11]) (.var 0 [0]) [1]) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [1])
theorem reject552 : ¬ Reader r552 :=
 Rootcert2Flow.reject [[1, 1, 1]] d552 c552 a552 (by decide) (by decide) (by decide)
#print axioms reject552

def r553 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1))
def d553 : List FTy := [[],[],[],[],[7],[10],[8],[9,10],[9,10],[0,11],[0,11],[0,1],[],[],[]]
def c553 : List FTy := [[],[],[],[],[5],[9],[7],[9],[9],[11],[11],[0],[],[14],[]]
def a553 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [7]) (.app (.var 1 [7]) (.app (.var 1 [7]) (.var 0 [10]) [9]) [9]) [9]) [5]) [4]) (.app (.lam 6 (.lam 7 (.app (.var 1 [8]) (.app (.var 1 [8]) (.app (.var 1 [8]) (.var 0 [9,10]) [9]) [9]) [9]) [7]) [6]) (.lam 8 (.lam 9 (.app (.var 1 [9,10]) (.app (.var 1 [9,10]) (.app (.var 1 [9,10]) (.var 0 [0,11]) [11]) [11]) [11]) [9]) [8]) [7]) [5]) (.lam 10 (.lam 11 (.app (.var 1 [0,11]) (.app (.var 1 [0,11]) (.app (.var 1 [0,11]) (.var 0 [0,1]) [0]) [0]) [0]) [11]) [10]) [9]) (.var 0 [0]) [11]) (.var 1 [1]) [0]) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [0])
theorem reject553 : ¬ Reader r553 :=
 Rootcert2Flow.reject [[1, 1, 1]] d553 c553 a553 (by decide) (by decide) (by decide)
#print axioms reject553

def r566 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))
def d566 : List FTy := [[],[],[],[],[6],[8],[7,8],[9,10],[9,10],[1,11],[1,11],[0,1],[],[],[]]
def c566 : List FTy := [[],[],[],[],[5],[7],[7],[9],[9],[11],[11],[1],[],[14],[]]
def a566 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.var 1 [6]) (.app (.var 1 [6]) (.var 0 [8]) [7]) [7]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [7,8]) (.app (.var 1 [7,8]) (.app (.var 1 [7,8]) (.var 0 [9,10]) [9]) [9]) [9]) [7]) [6]) [5]) (.lam 8 (.lam 9 (.app (.var 1 [9,10]) (.app (.var 1 [9,10]) (.app (.var 1 [9,10]) (.var 0 [1,11]) [11]) [11]) [11]) [9]) [8]) [7]) (.lam 10 (.lam 11 (.app (.var 1 [1,11]) (.app (.var 1 [1,11]) (.app (.var 1 [1,11]) (.var 0 [0,1]) [1]) [1]) [1]) [11]) [10]) [9]) (.var 1 [1]) [11]) (.var 0 [0]) [1]) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [1])
theorem reject566 : ¬ Reader r566 :=
 Rootcert2Flow.reject [[1, 1, 1]] d566 c566 a566 (by decide) (by decide) (by decide)
#print axioms reject566

def r567 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1))
def d567 : List FTy := [[],[],[],[],[6],[8],[7,8],[9,10],[9,10],[0,11],[0,11],[0,1],[],[],[]]
def c567 : List FTy := [[],[],[],[],[5],[7],[7],[9],[9],[11],[11],[0],[],[14],[]]
def a567 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.var 1 [6]) (.app (.var 1 [6]) (.var 0 [8]) [7]) [7]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [7,8]) (.app (.var 1 [7,8]) (.app (.var 1 [7,8]) (.var 0 [9,10]) [9]) [9]) [9]) [7]) [6]) [5]) (.lam 8 (.lam 9 (.app (.var 1 [9,10]) (.app (.var 1 [9,10]) (.app (.var 1 [9,10]) (.var 0 [0,11]) [11]) [11]) [11]) [9]) [8]) [7]) (.lam 10 (.lam 11 (.app (.var 1 [0,11]) (.app (.var 1 [0,11]) (.app (.var 1 [0,11]) (.var 0 [0,1]) [0]) [0]) [0]) [11]) [10]) [9]) (.var 0 [0]) [11]) (.var 1 [1]) [0]) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [0])
theorem reject567 : ¬ Reader r567 :=
 Rootcert2Flow.reject [[1, 1, 1]] d567 c567 a567 (by decide) (by decide) (by decide)
#print axioms reject567
end Blc.Rootcert2.FlowCases59
