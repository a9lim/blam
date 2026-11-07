import Flow
namespace Blc.Rootcert2.FlowCases54
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r454 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.app (.var 0) (.var 0)))
def d454 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c454 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a454 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject454 : ¬ Reader r454 :=
 Rootcert2Flow.reject [] d454 c454 a454 (by decide) (by decide) (by decide)
#print axioms reject454

def r455 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.var 0))) (.var 1))
def d455 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c455 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a455 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject455 : ¬ Reader r455 :=
 Rootcert2Flow.reject [] d455 c455 a455 (by decide) (by decide) (by decide)
#print axioms reject455

def r584 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.lam (.var 1)))
def d584 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c584 : List FTy := [[],[],[],[],[],[6],[],[0],[],[10],[]]
def a584 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject584 : ¬ Reader r584 :=
 Rootcert2Flow.reject [] d584 c584 a584 (by decide) (by decide) (by decide)
#print axioms reject584

def r585 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.var 1))) (.var 1))
def d585 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c585 : List FTy := [[],[],[],[],[],[6],[],[0],[],[10],[]]
def a585 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject585 : ¬ Reader r585 :=
 Rootcert2Flow.reject [] d585 c585 a585 (by decide) (by decide) (by decide)
#print axioms reject585

def r600 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
def d600 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c600 : List FTy := [[],[],[],[],[],[6],[],[],[],[10],[]]
def a600 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.lam 7 (.var 0 []) [7]) [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject600 : ¬ Reader r600 :=
 Rootcert2Flow.reject [] d600 c600 a600 (by decide) (by decide) (by decide)
#print axioms reject600

def r601 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
def d601 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c601 : List FTy := [[],[],[],[],[],[6],[],[],[],[10],[]]
def a601 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.app (.var 0 [0]) (.lam 7 (.var 0 []) [7]) [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject601 : ¬ Reader r601 :=
 Rootcert2Flow.reject [] d601 c601 a601 (by decide) (by decide) (by decide)
#print axioms reject601

def r614 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
def d614 : List FTy := [[],[],[],[],[6],[7],[5,6,7],[7],[],[],[]]
def c614 : List FTy := [[],[],[],[],[],[7],[7],[],[],[10],[]]
def a614 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.lam 5 (.var 0 [7]) [5]) [7]) (.app (.var 0 [6]) (.app (.var 0 [6]) (.var 0 [6]) [7]) [7]) []) [4]) (.lam 6 (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [5,6,7]) (.var 0 [7]) [7]) []) [7]) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject614 : ¬ Reader r614 :=
 Rootcert2Flow.reject [] d614 c614 a614 (by decide) (by decide) (by decide)
#print axioms reject614

def r615 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
def d615 : List FTy := [[],[],[],[],[6],[7],[5,6,7],[7],[],[],[]]
def c615 : List FTy := [[],[],[],[],[],[7],[7],[],[],[10],[]]
def a615 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.lam 5 (.var 0 [7]) [5]) [7]) (.app (.var 0 [6]) (.app (.var 0 [6]) (.var 0 [6]) [7]) [7]) []) [4]) (.lam 6 (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [5,6,7]) (.var 0 [7]) [7]) []) [7]) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject615 : ¬ Reader r615 :=
 Rootcert2Flow.reject [] d615 c615 a615 (by decide) (by decide) (by decide)
#print axioms reject615

def r616 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
def d616 : List FTy := [[],[],[],[],[6],[12],[12],[9],[11],[11],[12],[10,12],[12],[],[],[]]
def c616 : List FTy := [[],[],[],[],[5],[],[12],[8],[12],[10],[],[12],[],[],[15],[]]
def a616 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 0 [12]) (.app (.var 1 [6]) (.var 0 [12]) [12]) []) [5]) [4]) (.lam 6 (.var 0 [12]) [6]) [5]) (.app (.app (.lam 7 (.lam 8 (.app (.var 0 [11]) (.app (.var 1 [9]) (.var 0 [11]) [10]) [12]) [8]) [7]) (.lam 9 (.lam 10 (.app (.var 0 [12]) (.app (.var 1 [11]) (.var 0 [12]) [12]) []) [10]) [9]) [8]) (.lam 11 (.lam 12 (.app (.var 0 [12]) (.app (.var 1 [10,12]) (.var 0 [12]) []) []) [12]) [11]) [12]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject616 : ¬ Reader r616 :=
 Rootcert2Flow.reject [[1, 1, 1]] d616 c616 a616 (by decide) (by decide) (by decide)
#print axioms reject616

def r617 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
def d617 : List FTy := [[],[],[],[],[6],[12],[12],[9],[11],[11],[12],[10,12],[12],[],[],[]]
def c617 : List FTy := [[],[],[],[],[5],[],[12],[8],[12],[10],[],[12],[],[],[15],[]]
def a617 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 0 [12]) (.app (.var 1 [6]) (.var 0 [12]) [12]) []) [5]) [4]) (.lam 6 (.var 0 [12]) [6]) [5]) (.app (.app (.lam 7 (.lam 8 (.app (.var 0 [11]) (.app (.var 1 [9]) (.var 0 [11]) [10]) [12]) [8]) [7]) (.lam 9 (.lam 10 (.app (.var 0 [12]) (.app (.var 1 [11]) (.var 0 [12]) [12]) []) [10]) [9]) [8]) (.lam 11 (.lam 12 (.app (.var 0 [12]) (.app (.var 1 [10,12]) (.var 0 [12]) []) []) [12]) [11]) [12]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject617 : ¬ Reader r617 :=
 Rootcert2Flow.reject [[1, 1, 1]] d617 c617 a617 (by decide) (by decide) (by decide)
#print axioms reject617

def r618 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
def d618 : List FTy := [[],[],[],[],[6],[7],[5,6,7],[7],[],[],[]]
def c618 : List FTy := [[],[],[],[],[],[7],[7],[],[],[10],[]]
def a618 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.app (.var 0 [6]) (.lam 5 (.var 0 [7]) [5]) [7]) [7]) (.app (.var 0 [6]) (.var 0 [6]) [7]) []) [4]) (.lam 6 (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [5,6,7]) (.var 0 [7]) [7]) []) [7]) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject618 : ¬ Reader r618 :=
 Rootcert2Flow.reject [] d618 c618 a618 (by decide) (by decide) (by decide)
#print axioms reject618

def r619 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
def d619 : List FTy := [[],[],[],[],[6],[7],[5,6,7],[7],[],[],[]]
def c619 : List FTy := [[],[],[],[],[],[7],[7],[],[],[10],[]]
def a619 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.app (.var 0 [6]) (.lam 5 (.var 0 [7]) [5]) [7]) [7]) (.app (.var 0 [6]) (.var 0 [6]) [7]) []) [4]) (.lam 6 (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [5,6,7]) (.var 0 [7]) [7]) []) [7]) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject619 : ¬ Reader r619 :=
 Rootcert2Flow.reject [] d619 c619 a619 (by decide) (by decide) (by decide)
#print axioms reject619

def r624 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
def d624 : List FTy := [[],[],[],[],[6],[12],[12],[7,12],[10],[11],[11],[7,11,12],[7,12],[],[],[]]
def c624 : List FTy := [[],[],[],[],[5],[],[7],[],[9],[12],[11],[12],[],[],[15],[]]
def a624 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 0 [12]) (.app (.var 1 [6]) (.var 0 [12]) [7]) []) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [7,12]) (.app (.var 1 [12]) (.var 0 [7,12]) []) []) [7]) [6]) [5]) (.app (.app (.lam 8 (.lam 9 (.app (.var 0 [11]) (.app (.var 1 [10]) (.var 0 [11]) [11]) [12]) [9]) [8]) (.lam 10 (.var 0 [11]) [10]) [9]) (.lam 11 (.lam 12 (.app (.var 0 [7,12]) (.app (.var 1 [7,11,12]) (.var 0 [7,12]) [12]) []) [12]) [11]) [12]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject624 : ¬ Reader r624 :=
 Rootcert2Flow.reject [[1, 1, 1]] d624 c624 a624 (by decide) (by decide) (by decide)
#print axioms reject624

def r625 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
def d625 : List FTy := [[],[],[],[],[6],[12],[12],[7,12],[10],[11],[11],[7,11,12],[7,12],[],[],[]]
def c625 : List FTy := [[],[],[],[],[5],[],[7],[],[9],[12],[11],[12],[],[],[15],[]]
def a625 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 0 [12]) (.app (.var 1 [6]) (.var 0 [12]) [7]) []) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [7,12]) (.app (.var 1 [12]) (.var 0 [7,12]) []) []) [7]) [6]) [5]) (.app (.app (.lam 8 (.lam 9 (.app (.var 0 [11]) (.app (.var 1 [10]) (.var 0 [11]) [11]) [12]) [9]) [8]) (.lam 10 (.var 0 [11]) [10]) [9]) (.lam 11 (.lam 12 (.app (.var 0 [7,12]) (.app (.var 1 [7,11,12]) (.var 0 [7,12]) [12]) []) [12]) [11]) [12]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject625 : ¬ Reader r625 :=
 Rootcert2Flow.reject [[1, 1, 1]] d625 c625 a625 (by decide) (by decide) (by decide)
#print axioms reject625

def r628 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
def d628 : List FTy := [[],[],[],[],[6],[7],[7],[7,8,10,12],[8,10,12],[11],[8,10,12],[8,10,12],[8,10,12],[],[],[]]
def c628 : List FTy := [[],[],[],[],[5],[8],[7],[8],[],[10],[],[12],[],[],[15],[]]
def a628 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 0 [7]) (.app (.var 1 [6]) (.var 0 [7]) [7]) [8]) [5]) [4]) (.lam 6 (.var 0 [7]) [6]) [5]) (.lam 7 (.lam 8 (.app (.var 0 [8,10,12]) (.app (.var 1 [7,8,10,12]) (.var 0 [8,10,12]) [8]) []) [8]) [7]) [8]) (.app (.lam 9 (.lam 10 (.app (.var 0 [8,10,12]) (.app (.var 1 [11]) (.var 0 [8,10,12]) [12]) []) [10]) [9]) (.lam 11 (.lam 12 (.app (.var 0 [8,10,12]) (.app (.var 1 [8,10,12]) (.var 0 [8,10,12]) []) []) [12]) [11]) [10]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject628 : ¬ Reader r628 :=
 Rootcert2Flow.reject [[1, 1, 1]] d628 c628 a628 (by decide) (by decide) (by decide)
#print axioms reject628

def r629 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
def d629 : List FTy := [[],[],[],[],[6],[7],[7],[7,8,10,12],[8,10,12],[11],[8,10,12],[8,10,12],[8,10,12],[],[],[]]
def c629 : List FTy := [[],[],[],[],[5],[8],[7],[8],[],[10],[],[12],[],[],[15],[]]
def a629 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 0 [7]) (.app (.var 1 [6]) (.var 0 [7]) [7]) [8]) [5]) [4]) (.lam 6 (.var 0 [7]) [6]) [5]) (.lam 7 (.lam 8 (.app (.var 0 [8,10,12]) (.app (.var 1 [7,8,10,12]) (.var 0 [8,10,12]) [8]) []) [8]) [7]) [8]) (.app (.lam 9 (.lam 10 (.app (.var 0 [8,10,12]) (.app (.var 1 [11]) (.var 0 [8,10,12]) [12]) []) [10]) [9]) (.lam 11 (.lam 12 (.app (.var 0 [8,10,12]) (.app (.var 1 [8,10,12]) (.var 0 [8,10,12]) []) []) [12]) [11]) [10]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject629 : ¬ Reader r629 :=
 Rootcert2Flow.reject [[1, 1, 1]] d629 c629 a629 (by decide) (by decide) (by decide)
#print axioms reject629

def r630 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
def d630 : List FTy := [[],[],[],[],[6],[8],[8],[7,10,12],[7,10,12],[11],[7,10,12],[7,10,12],[7,10,12],[],[],[]]
def c630 : List FTy := [[],[],[],[],[5],[7,10,12],[7],[],[7,10,12],[10],[],[12],[],[],[15],[]]
def a630 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 0 [8]) (.app (.var 1 [6]) (.var 0 [8]) [7]) [7,10,12]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [7,10,12]) (.app (.var 1 [8]) (.var 0 [7,10,12]) [7,10,12]) []) [7]) [6]) [5]) (.lam 8 (.var 0 [7,10,12]) [8]) [7,10,12]) (.app (.lam 9 (.lam 10 (.app (.var 0 [7,10,12]) (.app (.var 1 [11]) (.var 0 [7,10,12]) [12]) []) [10]) [9]) (.lam 11 (.lam 12 (.app (.var 0 [7,10,12]) (.app (.var 1 [7,10,12]) (.var 0 [7,10,12]) []) []) [12]) [11]) [10]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject630 : ¬ Reader r630 :=
 Rootcert2Flow.reject [[1, 1, 1]] d630 c630 a630 (by decide) (by decide) (by decide)
#print axioms reject630

def r631 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
def d631 : List FTy := [[],[],[],[],[6],[8],[8],[7,10,12],[7,10,12],[11],[7,10,12],[7,10,12],[7,10,12],[],[],[]]
def c631 : List FTy := [[],[],[],[],[5],[7,10,12],[7],[],[7,10,12],[10],[],[12],[],[],[15],[]]
def a631 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 0 [8]) (.app (.var 1 [6]) (.var 0 [8]) [7]) [7,10,12]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [7,10,12]) (.app (.var 1 [8]) (.var 0 [7,10,12]) [7,10,12]) []) [7]) [6]) [5]) (.lam 8 (.var 0 [7,10,12]) [8]) [7,10,12]) (.app (.lam 9 (.lam 10 (.app (.var 0 [7,10,12]) (.app (.var 1 [11]) (.var 0 [7,10,12]) [12]) []) [10]) [9]) (.lam 11 (.lam 12 (.app (.var 0 [7,10,12]) (.app (.var 1 [7,10,12]) (.var 0 [7,10,12]) []) []) [12]) [11]) [10]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject631 : ¬ Reader r631 :=
 Rootcert2Flow.reject [[1, 1, 1]] d631 c631 a631 (by decide) (by decide) (by decide)
#print axioms reject631

def r632 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
def d632 : List FTy := [[],[],[],[],[6],[],[6,7],[7],[],[],[]]
def c632 : List FTy := [[],[],[],[],[],[],[7],[],[],[10],[]]
def a632 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [6]) (.var 0 [6]) [7]) (.app (.var 0 [6]) (.var 0 [6]) [7]) []) (.lam 5 (.var 0 []) [5]) []) [4]) (.lam 6 (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [6,7]) (.var 0 [7]) [7]) []) [7]) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject632 : ¬ Reader r632 :=
 Rootcert2Flow.reject [] d632 c632 a632 (by decide) (by decide) (by decide)
#print axioms reject632

def r633 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
def d633 : List FTy := [[],[],[],[],[6],[],[6,7],[7],[],[],[]]
def c633 : List FTy := [[],[],[],[],[],[],[7],[],[],[10],[]]
def a633 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [6]) (.var 0 [6]) [7]) (.app (.var 0 [6]) (.var 0 [6]) [7]) []) (.lam 5 (.var 0 []) [5]) []) [4]) (.lam 6 (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [6,7]) (.var 0 [7]) [7]) []) [7]) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject633 : ¬ Reader r633 :=
 Rootcert2Flow.reject [] d633 c633 a633 (by decide) (by decide) (by decide)
#print axioms reject633

def r634 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
def d634 : List FTy := [[],[],[],[],[6],[7],[5,6,7],[7],[],[],[]]
def c634 : List FTy := [[],[],[],[],[],[7],[7],[],[],[10],[]]
def a634 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [6]) (.lam 5 (.var 0 [7]) [5]) [7]) (.app (.var 0 [6]) (.var 0 [6]) [7]) []) (.var 0 [6]) []) [4]) (.lam 6 (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [5,6,7]) (.var 0 [7]) [7]) []) [7]) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject634 : ¬ Reader r634 :=
 Rootcert2Flow.reject [] d634 c634 a634 (by decide) (by decide) (by decide)
#print axioms reject634

def r635 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
def d635 : List FTy := [[],[],[],[],[6],[7],[5,6,7],[7],[],[],[]]
def c635 : List FTy := [[],[],[],[],[],[7],[7],[],[],[10],[]]
def a635 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [6]) (.lam 5 (.var 0 [7]) [5]) [7]) (.app (.var 0 [6]) (.var 0 [6]) [7]) []) (.var 0 [6]) []) [4]) (.lam 6 (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [5,6,7]) (.var 0 [7]) [7]) []) [7]) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject635 : ¬ Reader r635 :=
 Rootcert2Flow.reject [] d635 c635 a635 (by decide) (by decide) (by decide)
#print axioms reject635

def r642 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.lam (.lam (.var 2))))
def d642 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c642 : List FTy := [[],[],[],[],[],[6],[],[8],[0],[],[11],[]]
def a642 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.var 2 [0]) [8]) [7]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject642 : ¬ Reader r642 :=
 Rootcert2Flow.reject [] d642 c642 a642 (by decide) (by decide) (by decide)
#print axioms reject642

def r643 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.lam (.var 2)))) (.var 1))
def d643 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[]]
def c643 : List FTy := [[],[],[],[],[],[6],[],[8],[0],[],[11],[]]
def a643 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.lam 7 (.lam 8 (.var 2 [0]) [8]) [7]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject643 : ¬ Reader r643 :=
 Rootcert2Flow.reject [] d643 c643 a643 (by decide) (by decide) (by decide)
#print axioms reject643

def r646 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
def d646 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c646 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a646 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject646 : ¬ Reader r646 :=
 Rootcert2Flow.reject [] d646 c646 a646 (by decide) (by decide) (by decide)
#print axioms reject646

def r647 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
def d647 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c647 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a647 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject647 : ¬ Reader r647 :=
 Rootcert2Flow.reject [] d647 c647 a647 (by decide) (by decide) (by decide)
#print axioms reject647

def r648 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
def d648 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c648 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a648 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject648 : ¬ Reader r648 :=
 Rootcert2Flow.reject [] d648 c648 a648 (by decide) (by decide) (by decide)
#print axioms reject648

def r652 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d652 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c652 : List FTy := [[],[],[],[],[],[6],[],[],[],[10],[]]
def a652 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject652 : ¬ Reader r652 :=
 Rootcert2Flow.reject [] d652 c652 a652 (by decide) (by decide) (by decide)
#print axioms reject652

def r653 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d653 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c653 : List FTy := [[],[],[],[],[],[6],[],[],[],[10],[]]
def a653 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject653 : ¬ Reader r653 :=
 Rootcert2Flow.reject [] d653 c653 a653 (by decide) (by decide) (by decide)
#print axioms reject653

def r654 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d654 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c654 : List FTy := [[],[],[],[],[],[6],[],[],[],[10],[]]
def a654 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject654 : ¬ Reader r654 :=
 Rootcert2Flow.reject [] d654 c654 a654 (by decide) (by decide) (by decide)
#print axioms reject654

def r655 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d655 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c655 : List FTy := [[],[],[],[],[],[6],[],[],[],[10],[]]
def a655 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject655 : ¬ Reader r655 :=
 Rootcert2Flow.reject [] d655 c655 a655 (by decide) (by decide) (by decide)
#print axioms reject655

def r656 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d656 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c656 : List FTy := [[],[],[],[],[],[6],[],[],[],[10],[]]
def a656 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject656 : ¬ Reader r656 :=
 Rootcert2Flow.reject [] d656 c656 a656 (by decide) (by decide) (by decide)
#print axioms reject656

def r657 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d657 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c657 : List FTy := [[],[],[],[],[],[6],[],[],[],[10],[]]
def a657 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject657 : ¬ Reader r657 :=
 Rootcert2Flow.reject [] d657 c657 a657 (by decide) (by decide) (by decide)
#print axioms reject657
end Blc.Rootcert2.FlowCases54
