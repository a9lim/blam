import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XFlow09
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r4272 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
def d4272 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4272 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4272 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.lam 7 (.var 0 []) [7]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4272 : ¬ Reader r4272 :=
 Rootcert2Flow.reject [] d4272 c4272 a4272 (by decide) (by decide) (by decide)
#print axioms reject4272

def r4273 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
def d4273 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4273 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4273 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.lam 7 (.var 0 []) [7]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4273 : ¬ Reader r4273 :=
 Rootcert2Flow.reject [] d4273 c4273 a4273 (by decide) (by decide) (by decide)
#print axioms reject4273

def r4387 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d4387 : List FTy := [[],[],[],[],[6],[1,7],[1,5,7],[1,7],[],[],[]]
def c4387 : List FTy := [[],[],[],[],[1,7],[1,7],[1,7],[1],[],[10],[]]
def a4387 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.app (.var 0 [6]) (.lam 5 (.var 0 [1,7]) [5]) [1,7]) [1,7]) [4]) (.lam 6 (.app (.var 0 [1,5,7]) (.lam 7 (.app (.var 0 [1,7]) (.app (.var 1 [1,5,7]) (.var 0 [1,7]) [1,7]) [1]) [7]) [1,7]) [6]) [1,7]) (.var 1 [1]) [1]) (.var 0 [0]) [1]) (.var 0 [0]) [1]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [1])
theorem reject4387 : ¬ Reader r4387 :=
 Rootcert2Flow.reject [] d4387 c4387 a4387 (by decide) (by decide) (by decide)
#print axioms reject4387

def r4388 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d4388 : List FTy := [[],[],[],[],[6],[0,7],[0,5,7],[0,7],[],[],[]]
def c4388 : List FTy := [[],[],[],[],[0,7],[0,7],[0,7],[0],[],[10],[]]
def a4388 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.app (.var 0 [6]) (.lam 5 (.var 0 [0,7]) [5]) [0,7]) [0,7]) [4]) (.lam 6 (.app (.var 0 [0,5,7]) (.lam 7 (.app (.var 0 [0,7]) (.app (.var 1 [0,5,7]) (.var 0 [0,7]) [0,7]) [0]) [7]) [0,7]) [6]) [0,7]) (.var 0 [0]) [0]) (.var 1 [1]) [0]) (.var 0 [0]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject4388 : ¬ Reader r4388 :=
 Rootcert2Flow.reject [] d4388 c4388 a4388 (by decide) (by decide) (by decide)
#print axioms reject4388

def r4389 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d4389 : List FTy := [[],[],[],[],[6],[0,7],[0,5,7],[0,7],[],[],[]]
def c4389 : List FTy := [[],[],[],[],[0,7],[0,7],[0,7],[0],[],[10],[]]
def a4389 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.app (.var 0 [6]) (.lam 5 (.var 0 [0,7]) [5]) [0,7]) [0,7]) [4]) (.lam 6 (.app (.var 0 [0,5,7]) (.lam 7 (.app (.var 0 [0,7]) (.app (.var 1 [0,5,7]) (.var 0 [0,7]) [0,7]) [0]) [7]) [0,7]) [6]) [0,7]) (.var 0 [0]) [0]) (.var 0 [0]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject4389 : ¬ Reader r4389 :=
 Rootcert2Flow.reject [] d4389 c4389 a4389 (by decide) (by decide) (by decide)
#print axioms reject4389

def r4399 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d4399 : List FTy := [[],[],[],[],[6],[5,7,8],[5,7,8],[5,7,8],[5,7,8],[],[],[]]
def c4399 : List FTy := [[],[],[],[],[5,7,8],[],[5,7,8],[],[],[],[11],[]]
def a4399 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.var 0 [5,7,8]) (.app (.var 1 [6]) (.var 0 [5,7,8]) [5,7,8]) []) [5]) [5,7,8]) [4]) (.lam 6 (.var 0 [5,7,8]) [6]) [5,7,8]) (.lam 7 (.app (.var 0 [5,7,8]) (.lam 8 (.app (.var 0 [5,7,8]) (.app (.var 1 [5,7,8]) (.var 0 [5,7,8]) []) []) [8]) []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject4399 : ¬ Reader r4399 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d4399 c4399 a4399 (by decide) (by decide) (by decide)
#print axioms reject4399

def r4400 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d4400 : List FTy := [[],[],[],[],[6],[5,7,8],[5,7,8],[5,7,8],[5,7,8],[],[],[]]
def c4400 : List FTy := [[],[],[],[],[5,7,8],[],[5,7,8],[],[],[],[11],[]]
def a4400 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.var 0 [5,7,8]) (.app (.var 1 [6]) (.var 0 [5,7,8]) [5,7,8]) []) [5]) [5,7,8]) [4]) (.lam 6 (.var 0 [5,7,8]) [6]) [5,7,8]) (.lam 7 (.app (.var 0 [5,7,8]) (.lam 8 (.app (.var 0 [5,7,8]) (.app (.var 1 [5,7,8]) (.var 0 [5,7,8]) []) []) [8]) []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject4400 : ¬ Reader r4400 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d4400 c4400 a4400 (by decide) (by decide) (by decide)
#print axioms reject4400

def r4401 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d4401 : List FTy := [[],[],[],[],[6],[5,7,8],[5,7,8],[5,7,8],[5,7,8],[],[],[]]
def c4401 : List FTy := [[],[],[],[],[5,7,8],[],[5,7,8],[],[],[],[11],[]]
def a4401 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.var 0 [5,7,8]) (.app (.var 1 [6]) (.var 0 [5,7,8]) [5,7,8]) []) [5]) [5,7,8]) [4]) (.lam 6 (.var 0 [5,7,8]) [6]) [5,7,8]) (.lam 7 (.app (.var 0 [5,7,8]) (.lam 8 (.app (.var 0 [5,7,8]) (.app (.var 1 [5,7,8]) (.var 0 [5,7,8]) []) []) [8]) []) [7]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject4401 : ¬ Reader r4401 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d4401 c4401 a4401 (by decide) (by decide) (by decide)
#print axioms reject4401

def r4402 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
def d4402 : List FTy := [[],[],[],[],[6],[7],[5,7],[7,8],[8],[],[],[]]
def c4402 : List FTy := [[],[],[],[],[5,7],[],[5,7],[],[],[],[11],[]]
def a4402 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.app (.var 1 [6]) (.var 0 [7]) [5,7]) (.var 0 [7]) []) [5]) [5,7]) [4]) (.lam 6 (.var 0 [5,7]) [6]) [5,7]) (.lam 7 (.app (.var 0 [7,8]) (.lam 8 (.app (.app (.var 1 [7,8]) (.var 0 [8]) []) (.var 0 [8]) []) [8]) []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject4402 : ¬ Reader r4402 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d4402 c4402 a4402 (by decide) (by decide) (by decide)
#print axioms reject4402

def r4403 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
def d4403 : List FTy := [[],[],[],[],[6],[7],[5,7],[7,8],[8],[],[],[]]
def c4403 : List FTy := [[],[],[],[],[5,7],[],[5,7],[],[],[],[11],[]]
def a4403 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.app (.var 1 [6]) (.var 0 [7]) [5,7]) (.var 0 [7]) []) [5]) [5,7]) [4]) (.lam 6 (.var 0 [5,7]) [6]) [5,7]) (.lam 7 (.app (.var 0 [7,8]) (.lam 8 (.app (.app (.var 1 [7,8]) (.var 0 [8]) []) (.var 0 [8]) []) [8]) []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject4403 : ¬ Reader r4403 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d4403 c4403 a4403 (by decide) (by decide) (by decide)
#print axioms reject4403

def r4404 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
def d4404 : List FTy := [[],[],[],[],[6],[7],[5,7],[7,8],[8],[],[],[]]
def c4404 : List FTy := [[],[],[],[],[5,7],[],[5,7],[],[],[],[11],[]]
def a4404 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.app (.var 1 [6]) (.var 0 [7]) [5,7]) (.var 0 [7]) []) [5]) [5,7]) [4]) (.lam 6 (.var 0 [5,7]) [6]) [5,7]) (.lam 7 (.app (.var 0 [7,8]) (.lam 8 (.app (.app (.var 1 [7,8]) (.var 0 [8]) []) (.var 0 [8]) []) [8]) []) [7]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) [])
theorem reject4404 : ¬ Reader r4404 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d4404 c4404 a4404 (by decide) (by decide) (by decide)
#print axioms reject4404

def r4414 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d4414 : List FTy := [[],[],[],[],[6],[],[6,7],[7],[],[],[]]
def c4414 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4414 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.var 0 [6]) []) (.lam 5 (.var 0 []) [5]) []) [4]) (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [6,7]) (.var 0 [7]) []) []) [7]) []) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4414 : ¬ Reader r4414 :=
 Rootcert2Flow.reject [] d4414 c4414 a4414 (by decide) (by decide) (by decide)
#print axioms reject4414

def r4415 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d4415 : List FTy := [[],[],[],[],[6],[],[6,7],[7],[],[],[]]
def c4415 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4415 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.var 0 [6]) []) (.lam 5 (.var 0 []) [5]) []) [4]) (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [6,7]) (.var 0 [7]) []) []) [7]) []) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4415 : ¬ Reader r4415 :=
 Rootcert2Flow.reject [] d4415 c4415 a4415 (by decide) (by decide) (by decide)
#print axioms reject4415

def r4416 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d4416 : List FTy := [[],[],[],[],[6],[],[6,7],[7],[],[],[]]
def c4416 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4416 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.var 0 [6]) []) (.lam 5 (.var 0 []) [5]) []) [4]) (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [6,7]) (.var 0 [7]) []) []) [7]) []) [6]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4416 : ¬ Reader r4416 :=
 Rootcert2Flow.reject [] d4416 c4416 a4416 (by decide) (by decide) (by decide)
#print axioms reject4416

def r4420 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
def d4420 : List FTy := [[],[],[],[],[6],[],[6,7],[7],[],[],[]]
def c4420 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4420 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.var 0 [6]) []) (.lam 5 (.var 0 []) [5]) []) [4]) (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.app (.var 1 [6,7]) (.var 0 [7]) []) (.var 0 [7]) []) [7]) []) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4420 : ¬ Reader r4420 :=
 Rootcert2Flow.reject [] d4420 c4420 a4420 (by decide) (by decide) (by decide)
#print axioms reject4420

def r4421 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
def d4421 : List FTy := [[],[],[],[],[6],[],[6,7],[7],[],[],[]]
def c4421 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4421 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.var 0 [6]) []) (.lam 5 (.var 0 []) [5]) []) [4]) (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.app (.var 1 [6,7]) (.var 0 [7]) []) (.var 0 [7]) []) [7]) []) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4421 : ¬ Reader r4421 :=
 Rootcert2Flow.reject [] d4421 c4421 a4421 (by decide) (by decide) (by decide)
#print axioms reject4421

def r4422 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
def d4422 : List FTy := [[],[],[],[],[6],[],[6,7],[7],[],[],[]]
def c4422 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4422 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.var 0 [6]) []) (.lam 5 (.var 0 []) [5]) []) [4]) (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.app (.var 1 [6,7]) (.var 0 [7]) []) (.var 0 [7]) []) [7]) []) [6]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4422 : ¬ Reader r4422 :=
 Rootcert2Flow.reject [] d4422 c4422 a4422 (by decide) (by decide) (by decide)
#print axioms reject4422

def r4441 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
def d4441 : List FTy := [[],[],[],[],[7],[6],[6,7],[7],[],[],[]]
def c4441 : List FTy := [[],[],[],[],[],[7],[7],[],[],[10],[]]
def a4441 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.var 0 [7]) []) [4]) (.app (.lam 5 (.app (.var 0 [6]) (.var 0 [6]) [7]) [5]) (.lam 6 (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [6,7]) (.var 0 [7]) [7]) []) [7]) [6]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4441 : ¬ Reader r4441 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d4441 c4441 a4441 (by decide) (by decide) (by decide)
#print axioms reject4441

def r4442 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
def d4442 : List FTy := [[],[],[],[],[7],[6],[6,7],[7],[],[],[]]
def c4442 : List FTy := [[],[],[],[],[],[7],[7],[],[],[10],[]]
def a4442 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.var 0 [7]) []) [4]) (.app (.lam 5 (.app (.var 0 [6]) (.var 0 [6]) [7]) [5]) (.lam 6 (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [6,7]) (.var 0 [7]) [7]) []) [7]) [6]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4442 : ¬ Reader r4442 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d4442 c4442 a4442 (by decide) (by decide) (by decide)
#print axioms reject4442

def r4443 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
def d4443 : List FTy := [[],[],[],[],[7],[6],[6,7],[7],[],[],[]]
def c4443 : List FTy := [[],[],[],[],[],[7],[7],[],[],[10],[]]
def a4443 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.var 0 [7]) []) [4]) (.app (.lam 5 (.app (.var 0 [6]) (.var 0 [6]) [7]) [5]) (.lam 6 (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [6,7]) (.var 0 [7]) [7]) []) [7]) [6]) [7]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4443 : ¬ Reader r4443 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d4443 c4443 a4443 (by decide) (by decide) (by decide)
#print axioms reject4443

def r4630 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
def d4630 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4630 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4630 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4630 : ¬ Reader r4630 :=
 Rootcert2Flow.reject [] d4630 c4630 a4630 (by decide) (by decide) (by decide)
#print axioms reject4630

def r4631 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
def d4631 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4631 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4631 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4631 : ¬ Reader r4631 :=
 Rootcert2Flow.reject [] d4631 c4631 a4631 (by decide) (by decide) (by decide)
#print axioms reject4631

def r4632 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
def d4632 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4632 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4632 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4632 : ¬ Reader r4632 :=
 Rootcert2Flow.reject [] d4632 c4632 a4632 (by decide) (by decide) (by decide)
#print axioms reject4632

def r4666 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.var 0)))) (.var 1)) (.var 0)) (.var 0))
def d4666 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4666 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4666 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4666 : ¬ Reader r4666 :=
 Rootcert2Flow.reject [] d4666 c4666 a4666 (by decide) (by decide) (by decide)
#print axioms reject4666

def r4667 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.var 0)))) (.var 0)) (.var 1)) (.var 0))
def d4667 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4667 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4667 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4667 : ¬ Reader r4667 :=
 Rootcert2Flow.reject [] d4667 c4667 a4667 (by decide) (by decide) (by decide)
#print axioms reject4667

def r4668 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.var 0)))) (.var 0)) (.var 0)) (.var 1))
def d4668 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4668 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4668 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4668 : ¬ Reader r4668 :=
 Rootcert2Flow.reject [] d4668 c4668 a4668 (by decide) (by decide) (by decide)
#print axioms reject4668

def r4926 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
def d4926 : List FTy := [[],[],[],[],[5],[5],[7],[5,7],[],[],[]]
def c4926 : List FTy := [[],[],[],[],[],[],[5],[5],[],[10],[]]
def a4926 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5]) (.app (.lam 6 (.app (.var 0 [7]) (.app (.var 0 [7]) (.var 0 [7]) [5]) [5]) [6]) (.lam 7 (.var 1 [5]) [7]) [5]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4926 : ¬ Reader r4926 :=
 Rootcert2Flow.reject [] d4926 c4926 a4926 (by decide) (by decide) (by decide)
#print axioms reject4926

def r4927 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
def d4927 : List FTy := [[],[],[],[],[5],[5],[7],[5,7],[],[],[]]
def c4927 : List FTy := [[],[],[],[],[],[],[5],[5],[],[10],[]]
def a4927 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5]) (.app (.lam 6 (.app (.var 0 [7]) (.app (.var 0 [7]) (.var 0 [7]) [5]) [5]) [6]) (.lam 7 (.var 1 [5]) [7]) [5]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4927 : ¬ Reader r4927 :=
 Rootcert2Flow.reject [] d4927 c4927 a4927 (by decide) (by decide) (by decide)
#print axioms reject4927

def r4928 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
def d4928 : List FTy := [[],[],[],[],[5],[5],[7],[5,7],[],[],[]]
def c4928 : List FTy := [[],[],[],[],[],[],[5],[5],[],[10],[]]
def a4928 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5]) (.app (.lam 6 (.app (.var 0 [7]) (.app (.var 0 [7]) (.var 0 [7]) [5]) [5]) [6]) (.lam 7 (.var 1 [5]) [7]) [5]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4928 : ¬ Reader r4928 :=
 Rootcert2Flow.reject [] d4928 c4928 a4928 (by decide) (by decide) (by decide)
#print axioms reject4928

def r5159 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
def d5159 : List FTy := [[],[],[],[],[6],[5,6],[5,6],[6],[],[],[]]
def c5159 : List FTy := [[],[],[],[],[],[6],[],[],[],[10],[]]
def a5159 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.lam 7 (.app (.var 0 [6]) (.var 0 [6]) []) [7]) (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.var 0 [5,6]) [6]) [6]) []) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject5159 : ¬ Reader r5159 :=
 Rootcert2Flow.reject [] d5159 c5159 a5159 (by decide) (by decide) (by decide)
#print axioms reject5159

def r5160 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
def d5160 : List FTy := [[],[],[],[],[6],[5,6],[5,6],[6],[],[],[]]
def c5160 : List FTy := [[],[],[],[],[],[6],[],[],[],[10],[]]
def a5160 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.lam 7 (.app (.var 0 [6]) (.var 0 [6]) []) [7]) (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.var 0 [5,6]) [6]) [6]) []) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject5160 : ¬ Reader r5160 :=
 Rootcert2Flow.reject [] d5160 c5160 a5160 (by decide) (by decide) (by decide)
#print axioms reject5160

def r5161 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
def d5161 : List FTy := [[],[],[],[],[6],[5,6],[5,6],[6],[],[],[]]
def c5161 : List FTy := [[],[],[],[],[],[6],[],[],[],[10],[]]
def a5161 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.lam 7 (.app (.var 0 [6]) (.var 0 [6]) []) [7]) (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.var 0 [5,6]) [6]) [6]) []) [6]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject5161 : ¬ Reader r5161 :=
 Rootcert2Flow.reject [] d5161 c5161 a5161 (by decide) (by decide) (by decide)
#print axioms reject5161

def r5303 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) (.var 1)) (.var 0)) (.lam (.var 1)))
def d5303 : List FTy := [[],[],[],[],[7],[1],[9],[5],[11],[7],[12],[9],[11],[],[],[],[]]
def c5303 : List FTy := [[],[],[],[],[5],[1],[7],[5],[9],[7],[11],[9],[11],[0],[],[16],[]]
def a5303 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.lam 5 (.var 0 [1]) [5]) [5]) [5]) [5]) [5]) [4]) (.app (.lam 6 (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.lam 7 (.var 0 [5]) [7]) [7]) [7]) [7]) [7]) [6]) (.app (.lam 8 (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.lam 9 (.var 0 [7]) [9]) [9]) [9]) [9]) [9]) [8]) (.app (.lam 10 (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.lam 11 (.var 0 [9]) [11]) [11]) [11]) [11]) [11]) [10]) (.lam 12 (.var 0 [11]) [12]) [11]) [9]) [7]) [5]) (.var 1 [1]) [1]) (.var 0 [0]) [1]) (.lam 13 (.var 1 [0]) [13]) [1]) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [1])
theorem reject5303 : ¬ Reader r5303 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d5303 c5303 a5303 (by decide) (by decide) (by decide)
#print axioms reject5303

def r5304 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) (.var 1)) (.lam (.var 1))) (.var 0))
def d5304 : List FTy := [[],[],[],[],[7],[1],[9],[5],[11],[7],[12],[9],[11],[],[],[],[]]
def c5304 : List FTy := [[],[],[],[],[5],[1],[7],[5],[9],[7],[11],[9],[11],[0],[],[16],[]]
def a5304 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.lam 5 (.var 0 [1]) [5]) [5]) [5]) [5]) [5]) [4]) (.app (.lam 6 (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.lam 7 (.var 0 [5]) [7]) [7]) [7]) [7]) [7]) [6]) (.app (.lam 8 (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.lam 9 (.var 0 [7]) [9]) [9]) [9]) [9]) [9]) [8]) (.app (.lam 10 (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.lam 11 (.var 0 [9]) [11]) [11]) [11]) [11]) [11]) [10]) (.lam 12 (.var 0 [11]) [12]) [11]) [9]) [7]) [5]) (.var 1 [1]) [1]) (.lam 13 (.var 1 [0]) [13]) [1]) (.var 0 [0]) [1]) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [1])
theorem reject5304 : ¬ Reader r5304 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d5304 c5304 a5304 (by decide) (by decide) (by decide)
#print axioms reject5304

def r5305 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) (.var 0)) (.var 1)) (.lam (.var 1)))
def d5305 : List FTy := [[],[],[],[],[7],[0],[9],[5],[11],[7],[12],[9],[11],[],[],[],[]]
def c5305 : List FTy := [[],[],[],[],[5],[0],[7],[5],[9],[7],[11],[9],[11],[0],[],[16],[]]
def a5305 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.lam 5 (.var 0 [0]) [5]) [5]) [5]) [5]) [5]) [4]) (.app (.lam 6 (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.lam 7 (.var 0 [5]) [7]) [7]) [7]) [7]) [7]) [6]) (.app (.lam 8 (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.lam 9 (.var 0 [7]) [9]) [9]) [9]) [9]) [9]) [8]) (.app (.lam 10 (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.lam 11 (.var 0 [9]) [11]) [11]) [11]) [11]) [11]) [10]) (.lam 12 (.var 0 [11]) [12]) [11]) [9]) [7]) [5]) (.var 0 [0]) [0]) (.var 1 [1]) [0]) (.lam 13 (.var 1 [0]) [13]) [0]) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [0])
theorem reject5305 : ¬ Reader r5305 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d5305 c5305 a5305 (by decide) (by decide) (by decide)
#print axioms reject5305

def r5306 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) (.var 0)) (.lam (.var 1))) (.var 1))
def d5306 : List FTy := [[],[],[],[],[7],[0],[9],[5],[11],[7],[12],[9],[11],[],[],[],[]]
def c5306 : List FTy := [[],[],[],[],[5],[0],[7],[5],[9],[7],[11],[9],[11],[0],[],[16],[]]
def a5306 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.lam 5 (.var 0 [0]) [5]) [5]) [5]) [5]) [5]) [4]) (.app (.lam 6 (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.lam 7 (.var 0 [5]) [7]) [7]) [7]) [7]) [7]) [6]) (.app (.lam 8 (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.lam 9 (.var 0 [7]) [9]) [9]) [9]) [9]) [9]) [8]) (.app (.lam 10 (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.lam 11 (.var 0 [9]) [11]) [11]) [11]) [11]) [11]) [10]) (.lam 12 (.var 0 [11]) [12]) [11]) [9]) [7]) [5]) (.var 0 [0]) [0]) (.lam 13 (.var 1 [0]) [13]) [0]) (.var 1 [1]) [0]) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [0])
theorem reject5306 : ¬ Reader r5306 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d5306 c5306 a5306 (by decide) (by decide) (by decide)
#print axioms reject5306

def r5307 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) (.lam (.var 1))) (.var 1)) (.var 0))
def d5307 : List FTy := [[],[],[],[],[7],[13],[9],[5],[11],[7],[12],[9],[11],[1],[],[],[]]
def c5307 : List FTy := [[],[],[],[],[5],[13],[7],[5],[9],[7],[11],[9],[11],[0],[],[16],[]]
def a5307 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.lam 5 (.var 0 [13]) [5]) [5]) [5]) [5]) [5]) [4]) (.app (.lam 6 (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.lam 7 (.var 0 [5]) [7]) [7]) [7]) [7]) [7]) [6]) (.app (.lam 8 (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.lam 9 (.var 0 [7]) [9]) [9]) [9]) [9]) [9]) [8]) (.app (.lam 10 (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.lam 11 (.var 0 [9]) [11]) [11]) [11]) [11]) [11]) [10]) (.lam 12 (.var 0 [11]) [12]) [11]) [9]) [7]) [5]) (.lam 13 (.var 1 [0]) [13]) [13]) (.var 1 [1]) [0]) (.var 0 [0]) [0]) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [0])
theorem reject5307 : ¬ Reader r5307 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d5307 c5307 a5307 (by decide) (by decide) (by decide)
#print axioms reject5307

def r5308 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) (.lam (.var 1))) (.var 0)) (.var 1))
def d5308 : List FTy := [[],[],[],[],[7],[13],[9],[5],[11],[7],[12],[9],[11],[0],[],[],[]]
def c5308 : List FTy := [[],[],[],[],[5],[13],[7],[5],[9],[7],[11],[9],[11],[0],[],[16],[]]
def a5308 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.lam 5 (.var 0 [13]) [5]) [5]) [5]) [5]) [5]) [4]) (.app (.lam 6 (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.lam 7 (.var 0 [5]) [7]) [7]) [7]) [7]) [7]) [6]) (.app (.lam 8 (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.lam 9 (.var 0 [7]) [9]) [9]) [9]) [9]) [9]) [8]) (.app (.lam 10 (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.lam 11 (.var 0 [9]) [11]) [11]) [11]) [11]) [11]) [10]) (.lam 12 (.var 0 [11]) [12]) [11]) [9]) [7]) [5]) (.lam 13 (.var 1 [0]) [13]) [13]) (.var 0 [0]) [0]) (.var 1 [1]) [0]) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [0])
theorem reject5308 : ¬ Reader r5308 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d5308 c5308 a5308 (by decide) (by decide) (by decide)
#print axioms reject5308

def r5531 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.var 1))))) (.var 1)) (.var 0)) (.var 0))
def d5531 : List FTy := [[],[],[],[],[5],[5],[7],[7],[],[],[]]
def c5531 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a5531 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.lam 6 (.app (.app (.var 0 [7]) (.var 0 [7]) [5]) (.app (.var 0 [7]) (.var 0 [7]) [5]) []) [6]) (.lam 7 (.var 1 [5]) [7]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject5531 : ¬ Reader r5531 :=
 Rootcert2Flow.reject [] d5531 c5531 a5531 (by decide) (by decide) (by decide)
#print axioms reject5531

def r5532 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.var 1))))) (.var 0)) (.var 1)) (.var 0))
def d5532 : List FTy := [[],[],[],[],[5],[5],[7],[7],[],[],[]]
def c5532 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a5532 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.lam 6 (.app (.app (.var 0 [7]) (.var 0 [7]) [5]) (.app (.var 0 [7]) (.var 0 [7]) [5]) []) [6]) (.lam 7 (.var 1 [5]) [7]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject5532 : ¬ Reader r5532 :=
 Rootcert2Flow.reject [] d5532 c5532 a5532 (by decide) (by decide) (by decide)
#print axioms reject5532

def r5533 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.var 1))))) (.var 0)) (.var 0)) (.var 1))
def d5533 : List FTy := [[],[],[],[],[5],[5],[7],[7],[],[],[]]
def c5533 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a5533 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.lam 6 (.app (.app (.var 0 [7]) (.var 0 [7]) [5]) (.app (.var 0 [7]) (.var 0 [7]) [5]) []) [6]) (.lam 7 (.var 1 [5]) [7]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject5533 : ¬ Reader r5533 :=
 Rootcert2Flow.reject [] d5533 c5533 a5533 (by decide) (by decide) (by decide)
#print axioms reject5533

def r5630 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.lam (.var 1))))) (.var 1)) (.var 0)) (.var 0))
def d5630 : List FTy := [[],[],[],[],[6],[6],[7],[8],[10],[15],[],[14],[14],[14],[12,13],[18],[],[],[16,19,20],[18],[],[],[],[],[]]
def c5630 : List FTy := [[],[],[],[],[6],[6],[7],[8],[9],[15],[12,13],[12,13],[14],[14],[12,13],[],[],[18],[19],[],[],[18],[],[24],[]]
def a5630 : Ann := (.app (.app (.app (.app (.app (.app (.app (.app (.app (.app (.lam 4 (.var 0 [6]) [4]) (.app (.lam 5 (.var 0 [6]) [5]) (.lam 6 (.var 0 [7]) [6]) [6]) [6]) (.lam 7 (.var 0 [8]) [7]) [7]) (.lam 8 (.lam 9 (.var 0 [15]) [9]) [8]) [8]) (.lam 10 (.app (.lam 11 (.app (.app (.app (.var 0 [14]) (.app (.var 0 [14]) (.lam 12 (.var 0 [14]) [12]) [12,13]) [12,13]) (.var 0 [14]) [14]) (.lam 13 (.var 1 [14]) [13]) [12,13]) [11]) (.lam 14 (.var 0 [12,13]) [14]) [12,13]) [10]) [9]) (.lam 15 (.app (.app (.app (.var 0 [18]) (.app (.var 0 [18]) (.lam 16 (.var 0 []) [16]) [19]) [19]) (.var 0 [18]) []) (.lam 17 (.var 1 [18]) [17]) []) [15]) [15]) (.lam 18 (.lam 19 (.app (.app (.app (.var 0 [18]) (.app (.var 0 [18]) (.lam 20 (.var 0 []) [20]) [19]) [19]) (.var 0 [18]) []) (.lam 21 (.var 1 [18]) [21]) []) [19]) [18]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 22 (.app (.app (.var 0 []) (.lam 23 (.lam 24 (.var 1 []) [24]) [23]) []) (.var 4 [3]) []) [22]) [])
theorem reject5630 : ¬ Reader r5630 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1]] d5630 c5630 a5630 (by decide) (by decide) (by decide)
#print axioms reject5630

def r5631 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.lam (.var 1))))) (.var 0)) (.var 1)) (.var 0))
def d5631 : List FTy := [[],[],[],[],[6],[6],[7],[8],[10],[15],[],[14],[14],[14],[12,13],[18],[],[],[16,19,20],[18],[],[],[],[],[]]
def c5631 : List FTy := [[],[],[],[],[6],[6],[7],[8],[9],[15],[12,13],[12,13],[14],[14],[12,13],[],[],[18],[19],[],[],[18],[],[24],[]]
def a5631 : Ann := (.app (.app (.app (.app (.app (.app (.app (.app (.app (.app (.lam 4 (.var 0 [6]) [4]) (.app (.lam 5 (.var 0 [6]) [5]) (.lam 6 (.var 0 [7]) [6]) [6]) [6]) (.lam 7 (.var 0 [8]) [7]) [7]) (.lam 8 (.lam 9 (.var 0 [15]) [9]) [8]) [8]) (.lam 10 (.app (.lam 11 (.app (.app (.app (.var 0 [14]) (.app (.var 0 [14]) (.lam 12 (.var 0 [14]) [12]) [12,13]) [12,13]) (.var 0 [14]) [14]) (.lam 13 (.var 1 [14]) [13]) [12,13]) [11]) (.lam 14 (.var 0 [12,13]) [14]) [12,13]) [10]) [9]) (.lam 15 (.app (.app (.app (.var 0 [18]) (.app (.var 0 [18]) (.lam 16 (.var 0 []) [16]) [19]) [19]) (.var 0 [18]) []) (.lam 17 (.var 1 [18]) [17]) []) [15]) [15]) (.lam 18 (.lam 19 (.app (.app (.app (.var 0 [18]) (.app (.var 0 [18]) (.lam 20 (.var 0 []) [20]) [19]) [19]) (.var 0 [18]) []) (.lam 21 (.var 1 [18]) [21]) []) [19]) [18]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 22 (.app (.app (.var 0 []) (.lam 23 (.lam 24 (.var 1 []) [24]) [23]) []) (.var 4 [3]) []) [22]) [])
theorem reject5631 : ¬ Reader r5631 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1]] d5631 c5631 a5631 (by decide) (by decide) (by decide)
#print axioms reject5631

def r5632 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.lam (.var 1))))) (.var 0)) (.var 0)) (.var 1))
def d5632 : List FTy := [[],[],[],[],[6],[6],[7],[8],[10],[15],[],[14],[14],[14],[12,13],[18],[],[],[16,19,20],[18],[],[],[],[],[]]
def c5632 : List FTy := [[],[],[],[],[6],[6],[7],[8],[9],[15],[12,13],[12,13],[14],[14],[12,13],[],[],[18],[19],[],[],[18],[],[24],[]]
def a5632 : Ann := (.app (.app (.app (.app (.app (.app (.app (.app (.app (.app (.lam 4 (.var 0 [6]) [4]) (.app (.lam 5 (.var 0 [6]) [5]) (.lam 6 (.var 0 [7]) [6]) [6]) [6]) (.lam 7 (.var 0 [8]) [7]) [7]) (.lam 8 (.lam 9 (.var 0 [15]) [9]) [8]) [8]) (.lam 10 (.app (.lam 11 (.app (.app (.app (.var 0 [14]) (.app (.var 0 [14]) (.lam 12 (.var 0 [14]) [12]) [12,13]) [12,13]) (.var 0 [14]) [14]) (.lam 13 (.var 1 [14]) [13]) [12,13]) [11]) (.lam 14 (.var 0 [12,13]) [14]) [12,13]) [10]) [9]) (.lam 15 (.app (.app (.app (.var 0 [18]) (.app (.var 0 [18]) (.lam 16 (.var 0 []) [16]) [19]) [19]) (.var 0 [18]) []) (.lam 17 (.var 1 [18]) [17]) []) [15]) [15]) (.lam 18 (.lam 19 (.app (.app (.app (.var 0 [18]) (.app (.var 0 [18]) (.lam 20 (.var 0 []) [20]) [19]) [19]) (.var 0 [18]) []) (.lam 21 (.var 1 [18]) [21]) []) [19]) [18]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 22 (.app (.app (.var 0 []) (.lam 23 (.lam 24 (.var 1 []) [24]) [23]) []) (.var 4 [3]) []) [22]) [])
theorem reject5632 : ¬ Reader r5632 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1]] d5632 c5632 a5632 (by decide) (by decide) (by decide)
#print axioms reject5632

def r5879 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
def d5879 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c5879 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a5879 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject5879 : ¬ Reader r5879 :=
 Rootcert2Flow.reject [] d5879 c5879 a5879 (by decide) (by decide) (by decide)
#print axioms reject5879

def r5880 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
def d5880 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c5880 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a5880 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject5880 : ¬ Reader r5880 :=
 Rootcert2Flow.reject [] d5880 c5880 a5880 (by decide) (by decide) (by decide)
#print axioms reject5880

def r5881 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
def d5881 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c5881 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a5881 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject5881 : ¬ Reader r5881 :=
 Rootcert2Flow.reject [] d5881 c5881 a5881 (by decide) (by decide) (by decide)
#print axioms reject5881

def r5882 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
def d5882 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c5882 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a5882 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject5882 : ¬ Reader r5882 :=
 Rootcert2Flow.reject [] d5882 c5882 a5882 (by decide) (by decide) (by decide)
#print axioms reject5882

def r5883 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
def d5883 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c5883 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a5883 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject5883 : ¬ Reader r5883 :=
 Rootcert2Flow.reject [] d5883 c5883 a5883 (by decide) (by decide) (by decide)
#print axioms reject5883

def r5884 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
def d5884 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c5884 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a5884 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject5884 : ¬ Reader r5884 :=
 Rootcert2Flow.reject [] d5884 c5884 a5884 (by decide) (by decide) (by decide)
#print axioms reject5884
end Blc.HandlerLet.XFlow09
