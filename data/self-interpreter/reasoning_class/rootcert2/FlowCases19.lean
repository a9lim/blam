import Flow
namespace Blc.Rootcert2.FlowCases19
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r209 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
def d209 : List FTy := [[],[],[],[],[],[1],[8],[10],[9],[0],[8],[10],[],[],[]]
def c209 : List FTy := [[],[],[],[],[5],[],[7],[9],[9],[],[11],[9],[],[14],[]]
def a209 : Ann := (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 []) (.app (.app (.var 0 [1]) (.var 1 []) [1]) (.var 0 [1]) [1]) []) [5]) [4]) (.app (.app (.app (.lam 6 (.lam 7 (.app (.var 1 [8]) (.app (.app (.var 0 [10]) (.var 1 [8]) [11]) (.var 0 [10]) [9]) [9]) [7]) [6]) (.lam 8 (.lam 9 (.app (.var 1 [9]) (.app (.app (.var 0 [0]) (.var 1 [9]) [0]) (.var 0 [0]) [0]) []) [9]) [8]) [7]) (.lam 10 (.lam 11 (.app (.var 1 [8]) (.app (.app (.var 0 [10]) (.var 1 [8]) [11]) (.var 0 [10]) [9]) [9]) [11]) [10]) [9]) (.var 0 [0]) []) [5]) (.var 1 [1]) []) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [])
theorem reject209 : ¬ Reader r209 :=
 Rootcert2Flow.reject [[1, 1]] d209 c209 a209 (by decide) (by decide) (by decide)
#print axioms reject209

def r228 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
def d228 : List FTy := [[],[],[],[],[6],[8],[7],[0],[6],[8],[],[],[],[],[]]
def c228 : List FTy := [[],[],[],[],[5],[7],[7],[],[9],[7],[11],[],[],[14],[]]
def a228 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.app (.var 0 [8]) (.var 1 [6]) [9]) (.var 0 [8]) [7]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [7]) (.app (.app (.var 0 [0]) (.var 1 [7]) [0]) (.var 0 [0]) [0]) []) [7]) [6]) [5]) (.lam 8 (.lam 9 (.app (.var 1 [6]) (.app (.app (.var 0 [8]) (.var 1 [6]) [9]) (.var 0 [8]) [7]) [7]) [9]) [8]) [7]) (.app (.var 0 [0]) (.lam 10 (.lam 11 (.app (.var 1 []) (.app (.app (.var 0 []) (.var 1 []) []) (.var 0 []) []) []) [11]) [10]) [0]) []) (.var 1 [1]) []) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [])
theorem reject228 : ¬ Reader r228 :=
 Rootcert2Flow.reject [[1, 1]] d228 c228 a228 (by decide) (by decide) (by decide)
#print axioms reject228

def r231 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
def d231 : List FTy := [[],[],[],[],[6],[8],[7],[0,11],[6],[8],[0],[7],[],[],[]]
def c231 : List FTy := [[],[],[],[],[5],[7],[7],[],[9],[7],[11],[0],[],[14],[]]
def a231 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.app (.var 0 [8]) (.var 1 [6]) [9]) (.var 0 [8]) [7]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [7]) (.app (.app (.var 0 [0,11]) (.var 1 [7]) [0]) (.var 0 [0,11]) [0]) []) [7]) [6]) [5]) (.lam 8 (.lam 9 (.app (.var 1 [6]) (.app (.app (.var 0 [8]) (.var 1 [6]) [9]) (.var 0 [8]) [7]) [7]) [9]) [8]) [7]) (.app (.lam 10 (.lam 11 (.app (.var 1 [0]) (.app (.app (.var 0 [7]) (.var 1 [0]) []) (.var 0 [7]) []) [0]) [11]) [10]) (.var 0 [0]) [11]) []) (.var 1 [1]) []) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [])
theorem reject231 : ¬ Reader r231 :=
 Rootcert2Flow.reject [[1, 1]] d231 c231 a231 (by decide) (by decide) (by decide)
#print axioms reject231

def r243 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1))
def d243 : List FTy := [[],[],[],[],[6],[8],[7],[0],[6],[8],[],[],[],[],[]]
def c243 : List FTy := [[],[],[],[],[5],[7],[7],[],[9],[7],[11],[],[],[14],[]]
def a243 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.app (.var 0 [8]) (.var 1 [6]) [9]) (.var 0 [8]) [7]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [7]) (.app (.app (.var 0 [0]) (.var 1 [7]) [0]) (.var 0 [0]) [0]) []) [7]) [6]) [5]) (.lam 8 (.lam 9 (.app (.var 1 [6]) (.app (.app (.var 0 [8]) (.var 1 [6]) [9]) (.var 0 [8]) [7]) [7]) [9]) [8]) [7]) (.var 0 [0]) []) (.lam 10 (.lam 11 (.app (.var 1 []) (.app (.app (.var 0 []) (.var 1 []) []) (.var 0 []) []) []) [11]) [10]) []) (.var 1 [1]) []) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [])
theorem reject243 : ¬ Reader r243 :=
 Rootcert2Flow.reject [[1, 1]] d243 c243 a243 (by decide) (by decide) (by decide)
#print axioms reject243

def r462 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1)) (.var 0))
def d462 : List FTy := [[],[],[],[],[9],[1],[8],[10],[9],[1],[8],[10],[],[],[]]
def c462 : List FTy := [[],[],[],[],[5],[],[7],[9],[9],[],[11],[9],[],[14],[]]
def a462 : Ann := (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [9]) (.app (.app (.var 0 [1]) (.var 1 [9]) [1]) (.var 0 [1]) [1]) []) [5]) [4]) (.app (.app (.lam 6 (.lam 7 (.app (.var 1 [8]) (.app (.app (.var 0 [10]) (.var 1 [8]) [11]) (.var 0 [10]) [9]) [9]) [7]) [6]) (.lam 8 (.lam 9 (.app (.var 1 [9]) (.app (.app (.var 0 [1]) (.var 1 [9]) [1]) (.var 0 [1]) [1]) []) [9]) [8]) [7]) (.lam 10 (.lam 11 (.app (.var 1 [8]) (.app (.app (.var 0 [10]) (.var 1 [8]) [11]) (.var 0 [10]) [9]) [9]) [11]) [10]) [9]) [5]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [])
theorem reject462 : ¬ Reader r462 :=
 Rootcert2Flow.reject [[1, 1, 1]] d462 c462 a462 (by decide) (by decide) (by decide)
#print axioms reject462

def r463 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)) (.var 1))
def d463 : List FTy := [[],[],[],[],[9],[0],[8],[10],[9],[0],[8],[10],[],[],[]]
def c463 : List FTy := [[],[],[],[],[5],[],[7],[9],[9],[],[11],[9],[],[14],[]]
def a463 : Ann := (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [9]) (.app (.app (.var 0 [0]) (.var 1 [9]) [0]) (.var 0 [0]) [0]) []) [5]) [4]) (.app (.app (.lam 6 (.lam 7 (.app (.var 1 [8]) (.app (.app (.var 0 [10]) (.var 1 [8]) [11]) (.var 0 [10]) [9]) [9]) [7]) [6]) (.lam 8 (.lam 9 (.app (.var 1 [9]) (.app (.app (.var 0 [0]) (.var 1 [9]) [0]) (.var 0 [0]) [0]) []) [9]) [8]) [7]) (.lam 10 (.lam 11 (.app (.var 1 [8]) (.app (.app (.var 0 [10]) (.var 1 [8]) [11]) (.var 0 [10]) [9]) [9]) [11]) [10]) [9]) [5]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [])
theorem reject463 : ¬ Reader r463 :=
 Rootcert2Flow.reject [[1, 1, 1]] d463 c463 a463 (by decide) (by decide) (by decide)
#print axioms reject463

def r476 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1)) (.var 0))
def d476 : List FTy := [[],[],[],[],[6],[9],[1,10],[1,6,11],[10],[1,6,11],[1,11],[0,1,9,10],[],[],[]]
def c476 : List FTy := [[],[],[],[],[5],[7],[7],[1,11],[9],[11],[11],[1],[],[14],[]]
def a476 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.app (.var 0 [9]) (.var 1 [6]) [11]) (.var 0 [9]) [1]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [1,10]) (.app (.app (.var 0 [1,6,11]) (.var 1 [1,10]) [1,7]) (.var 0 [1,6,11]) [1,11]) [1,11]) [7]) [6]) [5]) (.app (.lam 8 (.lam 9 (.app (.var 1 [10]) (.app (.app (.var 0 [1,6,11]) (.var 1 [10]) [1,7]) (.var 0 [1,6,11]) [1,11]) [11]) [9]) [8]) (.lam 10 (.lam 11 (.app (.var 1 [1,11]) (.app (.app (.var 0 [0,1,9,10]) (.var 1 [1,11]) [0,1,11]) (.var 0 [0,1,9,10]) [0,1]) [1]) [11]) [10]) [9]) [7]) (.var 1 [1]) [1,11]) (.var 0 [0]) [1]) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [1])
theorem reject476 : ¬ Reader r476 :=
 Rootcert2Flow.reject [[1, 1, 1]] d476 c476 a476 (by decide) (by decide) (by decide)
#print axioms reject476

def r477 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)) (.var 1))
def d477 : List FTy := [[],[],[],[],[6],[9],[0,10],[0,6,11],[10],[0,6,11],[0,11],[0,1,9,10],[],[],[]]
def c477 : List FTy := [[],[],[],[],[5],[7],[7],[0,11],[9],[11],[11],[0],[],[14],[]]
def a477 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.app (.var 0 [9]) (.var 1 [6]) [11]) (.var 0 [9]) [0]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [0,10]) (.app (.app (.var 0 [0,6,11]) (.var 1 [0,10]) [0,7]) (.var 0 [0,6,11]) [0,11]) [0,11]) [7]) [6]) [5]) (.app (.lam 8 (.lam 9 (.app (.var 1 [10]) (.app (.app (.var 0 [0,6,11]) (.var 1 [10]) [0,7]) (.var 0 [0,6,11]) [0,11]) [11]) [9]) [8]) (.lam 10 (.lam 11 (.app (.var 1 [0,11]) (.app (.app (.var 0 [0,1,9,10]) (.var 1 [0,11]) [0,1,11]) (.var 0 [0,1,9,10]) [0,1]) [0]) [11]) [10]) [9]) [7]) (.var 0 [0]) [0,11]) (.var 1 [1]) [0]) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [0])
theorem reject477 : ¬ Reader r477 :=
 Rootcert2Flow.reject [[1, 1, 1]] d477 c477 a477 (by decide) (by decide) (by decide)
#print axioms reject477

def r510 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1)) (.var 0))
def d510 : List FTy := [[],[],[],[],[6],[8],[7],[10],[6],[8],[7],[10],[],[],[]]
def c510 : List FTy := [[],[],[],[],[5],[7],[7],[],[9],[7],[11],[],[],[14],[]]
def a510 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.app (.var 0 [8]) (.var 1 [6]) [9]) (.var 0 [8]) [7]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [7]) (.app (.app (.var 0 [10]) (.var 1 [7]) [11]) (.var 0 [10]) []) []) [7]) [6]) [5]) (.lam 8 (.lam 9 (.app (.var 1 [6]) (.app (.app (.var 0 [8]) (.var 1 [6]) [9]) (.var 0 [8]) [7]) [7]) [9]) [8]) [7]) (.lam 10 (.lam 11 (.app (.var 1 [7]) (.app (.app (.var 0 [10]) (.var 1 [7]) [11]) (.var 0 [10]) []) []) [11]) [10]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [])
theorem reject510 : ¬ Reader r510 :=
 Rootcert2Flow.reject [[1, 1, 1]] d510 c510 a510 (by decide) (by decide) (by decide)
#print axioms reject510

def r511 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)) (.var 1))
def d511 : List FTy := [[],[],[],[],[6],[8],[7],[10],[6],[8],[7],[10],[],[],[]]
def c511 : List FTy := [[],[],[],[],[5],[7],[7],[],[9],[7],[11],[],[],[14],[]]
def a511 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.app (.var 0 [8]) (.var 1 [6]) [9]) (.var 0 [8]) [7]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [7]) (.app (.app (.var 0 [10]) (.var 1 [7]) [11]) (.var 0 [10]) []) []) [7]) [6]) [5]) (.lam 8 (.lam 9 (.app (.var 1 [6]) (.app (.app (.var 0 [8]) (.var 1 [6]) [9]) (.var 0 [8]) [7]) [7]) [9]) [8]) [7]) (.lam 10 (.lam 11 (.app (.var 1 [7]) (.app (.app (.var 0 [10]) (.var 1 [7]) [11]) (.var 0 [10]) []) []) [11]) [10]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [])
theorem reject511 : ¬ Reader r511 :=
 Rootcert2Flow.reject [[1, 1, 1]] d511 c511 a511 (by decide) (by decide) (by decide)
#print axioms reject511
end Blc.Rootcert2.FlowCases19
