import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XFlow06
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r2274 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.var 1))) (.var 1)) (.var 0))
def d2274 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2274 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2274 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2274 : ¬ Reader r2274 :=
 Rootcert2Flow.reject [] d2274 c2274 a2274 (by decide) (by decide) (by decide)
#print axioms reject2274

def r2275 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.var 1))) (.var 0)) (.var 1))
def d2275 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2275 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2275 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2275 : ¬ Reader r2275 :=
 Rootcert2Flow.reject [] d2275 c2275 a2275 (by decide) (by decide) (by decide)
#print axioms reject2275

def r2282 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))) (.var 1)) (.var 0)) (.var 0))
def d2282 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2282 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2282 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 3 [0]) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2282 : ¬ Reader r2282 :=
 Rootcert2Flow.reject [] d2282 c2282 a2282 (by decide) (by decide) (by decide)
#print axioms reject2282

def r2283 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))) (.var 0)) (.var 1)) (.var 0))
def d2283 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2283 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2283 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 3 [0]) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2283 : ¬ Reader r2283 :=
 Rootcert2Flow.reject [] d2283 c2283 a2283 (by decide) (by decide) (by decide)
#print axioms reject2283

def r2284 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))) (.var 0)) (.var 0)) (.var 1))
def d2284 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2284 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2284 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 3 [0]) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2284 : ¬ Reader r2284 :=
 Rootcert2Flow.reject [] d2284 c2284 a2284 (by decide) (by decide) (by decide)
#print axioms reject2284

def r2288 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0)) (.var 0))
def d2288 : List FTy := [[],[],[],[],[6],[7],[5],[0],[],[],[]]
def c2288 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a2288 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 2 [0]) [5]) []) [5]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2288 : ¬ Reader r2288 :=
 Rootcert2Flow.reject [] d2288 c2288 a2288 (by decide) (by decide) (by decide)
#print axioms reject2288

def r2289 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1)) (.var 0))
def d2289 : List FTy := [[],[],[],[],[6],[7],[5],[0],[],[],[]]
def c2289 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a2289 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 2 [0]) [5]) []) [5]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2289 : ¬ Reader r2289 :=
 Rootcert2Flow.reject [] d2289 c2289 a2289 (by decide) (by decide) (by decide)
#print axioms reject2289

def r2290 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 0)) (.var 1))
def d2290 : List FTy := [[],[],[],[],[6],[7],[5],[0],[],[],[]]
def c2290 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a2290 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 2 [0]) [5]) []) [5]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2290 : ¬ Reader r2290 :=
 Rootcert2Flow.reject [] d2290 c2290 a2290 (by decide) (by decide) (by decide)
#print axioms reject2290

def r2299 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 2)))))))) (.var 0)) (.var 0)) (.var 1))
def d2299 : List FTy := [[],[],[],[],[5],[5,6,7],[5,6,7],[0,1,5,6,7,8],[],[],[]]
def c2299 : List FTy := [[],[],[],[],[7],[7],[7],[7],[],[10],[]]
def a2299 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [7]) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.lam 7 (.app (.var 2 [5,6,7]) (.app (.var 1 [5,6,7]) (.var 2 [5,6,7]) [7]) [7]) [7]) [6]) [7]) [5]) [7]) (.var 0 [0]) [7]) (.var 0 [0]) [7]) (.var 1 [1]) [7]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [7])
theorem reject2299 : ¬ Reader r2299 :=
 Rootcert2Flow.reject [] d2299 c2299 a2299 (by decide) (by decide) (by decide)
#print axioms reject2299

def r2304 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 2))))))) (.var 0)) (.var 1)) (.var 0))
def d2304 : List FTy := [[],[],[],[],[5],[5,6],[6],[0,5,6],[],[],[]]
def c2304 : List FTy := [[],[],[],[],[7],[7],[7],[],[],[10],[]]
def a2304 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [7]) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.lam 7 (.app (.app (.var 2 [5,6]) (.var 1 [6]) [7]) (.var 2 [5,6]) []) [7]) [6]) [7]) [5]) [7]) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2304 : ¬ Reader r2304 :=
 Rootcert2Flow.reject [] d2304 c2304 a2304 (by decide) (by decide) (by decide)
#print axioms reject2304

def r2305 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 2))))))) (.var 0)) (.var 0)) (.var 1))
def d2305 : List FTy := [[],[],[],[],[5],[5,6],[6],[0,5,6],[],[],[]]
def c2305 : List FTy := [[],[],[],[],[7],[7],[7],[],[],[10],[]]
def a2305 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [7]) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.lam 7 (.app (.app (.var 2 [5,6]) (.var 1 [6]) [7]) (.var 2 [5,6]) []) [7]) [6]) [7]) [5]) [7]) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2305 : ¬ Reader r2305 :=
 Rootcert2Flow.reject [] d2305 c2305 a2305 (by decide) (by decide) (by decide)
#print axioms reject2305

def r2509 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d2509 : List FTy := [[],[],[],[],[7],[13],[9],[5],[11],[7],[12],[9],[11],[1],[],[],[]]
def c2509 : List FTy := [[],[],[],[],[5],[13],[7],[5],[9],[7],[11],[9],[11],[1],[],[16],[]]
def a2509 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.lam 5 (.var 0 [13]) [5]) [5]) [5]) [5]) [5]) [4]) (.app (.lam 6 (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.lam 7 (.var 0 [5]) [7]) [7]) [7]) [7]) [7]) [6]) (.app (.lam 8 (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.lam 9 (.var 0 [7]) [9]) [9]) [9]) [9]) [9]) [8]) (.app (.lam 10 (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.lam 11 (.var 0 [9]) [11]) [11]) [11]) [11]) [11]) [10]) (.lam 12 (.var 0 [11]) [12]) [11]) [9]) [7]) [5]) (.lam 13 (.var 0 [1]) [13]) [13]) (.var 1 [1]) [1]) (.var 0 [0]) [1]) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [1])
theorem reject2509 : ¬ Reader r2509 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d2509 c2509 a2509 (by decide) (by decide) (by decide)
#print axioms reject2509

def r2510 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d2510 : List FTy := [[],[],[],[],[7],[13],[9],[5],[11],[7],[12],[9],[11],[0],[],[],[]]
def c2510 : List FTy := [[],[],[],[],[5],[13],[7],[5],[9],[7],[11],[9],[11],[0],[],[16],[]]
def a2510 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.lam 5 (.var 0 [13]) [5]) [5]) [5]) [5]) [5]) [4]) (.app (.lam 6 (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.lam 7 (.var 0 [5]) [7]) [7]) [7]) [7]) [7]) [6]) (.app (.lam 8 (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.lam 9 (.var 0 [7]) [9]) [9]) [9]) [9]) [9]) [8]) (.app (.lam 10 (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.lam 11 (.var 0 [9]) [11]) [11]) [11]) [11]) [11]) [10]) (.lam 12 (.var 0 [11]) [12]) [11]) [9]) [7]) [5]) (.lam 13 (.var 0 [0]) [13]) [13]) (.var 0 [0]) [0]) (.var 1 [1]) [0]) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [0])
theorem reject2510 : ¬ Reader r2510 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d2510 c2510 a2510 (by decide) (by decide) (by decide)
#print axioms reject2510

def r2511 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d2511 : List FTy := [[],[],[],[],[7],[1],[9],[5],[11],[7],[12],[9],[11],[],[],[],[]]
def c2511 : List FTy := [[],[],[],[],[5],[1],[7],[5],[9],[7],[11],[9],[11],[],[],[16],[]]
def a2511 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.lam 5 (.var 0 [1]) [5]) [5]) [5]) [5]) [5]) [4]) (.app (.lam 6 (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.lam 7 (.var 0 [5]) [7]) [7]) [7]) [7]) [7]) [6]) (.app (.lam 8 (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.lam 9 (.var 0 [7]) [9]) [9]) [9]) [9]) [9]) [8]) (.app (.lam 10 (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.lam 11 (.var 0 [9]) [11]) [11]) [11]) [11]) [11]) [10]) (.lam 12 (.var 0 [11]) [12]) [11]) [9]) [7]) [5]) (.var 1 [1]) [1]) (.lam 13 (.var 0 []) [13]) [1]) (.var 0 [0]) [1]) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [1])
theorem reject2511 : ¬ Reader r2511 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d2511 c2511 a2511 (by decide) (by decide) (by decide)
#print axioms reject2511

def r2512 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d2512 : List FTy := [[],[],[],[],[7],[1],[9],[5],[11],[7],[12],[9],[11],[],[],[],[]]
def c2512 : List FTy := [[],[],[],[],[5],[1],[7],[5],[9],[7],[11],[9],[11],[],[],[16],[]]
def a2512 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.lam 5 (.var 0 [1]) [5]) [5]) [5]) [5]) [5]) [4]) (.app (.lam 6 (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.lam 7 (.var 0 [5]) [7]) [7]) [7]) [7]) [7]) [6]) (.app (.lam 8 (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.lam 9 (.var 0 [7]) [9]) [9]) [9]) [9]) [9]) [8]) (.app (.lam 10 (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.lam 11 (.var 0 [9]) [11]) [11]) [11]) [11]) [11]) [10]) (.lam 12 (.var 0 [11]) [12]) [11]) [9]) [7]) [5]) (.var 1 [1]) [1]) (.var 0 [0]) [1]) (.lam 13 (.var 0 []) [13]) [1]) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [1])
theorem reject2512 : ¬ Reader r2512 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d2512 c2512 a2512 (by decide) (by decide) (by decide)
#print axioms reject2512

def r2513 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d2513 : List FTy := [[],[],[],[],[7],[0],[9],[5],[11],[7],[12],[9],[11],[],[],[],[]]
def c2513 : List FTy := [[],[],[],[],[5],[0],[7],[5],[9],[7],[11],[9],[11],[],[],[16],[]]
def a2513 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.lam 5 (.var 0 [0]) [5]) [5]) [5]) [5]) [5]) [4]) (.app (.lam 6 (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.lam 7 (.var 0 [5]) [7]) [7]) [7]) [7]) [7]) [6]) (.app (.lam 8 (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.lam 9 (.var 0 [7]) [9]) [9]) [9]) [9]) [9]) [8]) (.app (.lam 10 (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.lam 11 (.var 0 [9]) [11]) [11]) [11]) [11]) [11]) [10]) (.lam 12 (.var 0 [11]) [12]) [11]) [9]) [7]) [5]) (.var 0 [0]) [0]) (.lam 13 (.var 0 []) [13]) [0]) (.var 1 [1]) [0]) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [0])
theorem reject2513 : ¬ Reader r2513 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d2513 c2513 a2513 (by decide) (by decide) (by decide)
#print axioms reject2513

def r2514 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d2514 : List FTy := [[],[],[],[],[7],[0],[9],[5],[11],[7],[12],[9],[11],[],[],[],[]]
def c2514 : List FTy := [[],[],[],[],[5],[0],[7],[5],[9],[7],[11],[9],[11],[],[],[16],[]]
def a2514 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.app (.var 0 [7]) (.lam 5 (.var 0 [0]) [5]) [5]) [5]) [5]) [5]) [4]) (.app (.lam 6 (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.app (.var 0 [9]) (.lam 7 (.var 0 [5]) [7]) [7]) [7]) [7]) [7]) [6]) (.app (.lam 8 (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.app (.var 0 [11]) (.lam 9 (.var 0 [7]) [9]) [9]) [9]) [9]) [9]) [8]) (.app (.lam 10 (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.app (.var 0 [12]) (.lam 11 (.var 0 [9]) [11]) [11]) [11]) [11]) [11]) [10]) (.lam 12 (.var 0 [11]) [12]) [11]) [9]) [7]) [5]) (.var 0 [0]) [0]) (.var 1 [1]) [0]) (.lam 13 (.var 0 []) [13]) [0]) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [0])
theorem reject2514 : ¬ Reader r2514 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d2514 c2514 a2514 (by decide) (by decide) (by decide)
#print axioms reject2514

def r2979 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))) (.var 1)) (.var 0)) (.var 0))
def d2979 : List FTy := [[],[],[],[],[7],[],[],[5,8],[15],[12],[],[],[10,13],[14],[14,15],[15],[],[],[]]
def c2979 : List FTy := [[],[],[],[],[8],[6],[],[8],[],[13],[11],[],[13],[15],[15],[],[],[18],[]]
def a2979 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.app (.var 0 [7]) (.lam 5 (.lam 6 (.app (.var 0 []) (.app (.var 0 []) (.var 0 []) []) []) [6]) [5]) [8]) [8]) [4]) (.lam 7 (.lam 8 (.app (.var 0 [15]) (.app (.var 0 [15]) (.var 0 [15]) []) []) [8]) [7]) [8]) (.app (.app (.lam 9 (.app (.var 0 [12]) (.app (.var 0 [12]) (.lam 10 (.lam 11 (.app (.var 0 []) (.app (.var 0 []) (.var 0 []) []) []) [11]) [10]) [13]) [13]) [9]) (.lam 12 (.lam 13 (.app (.var 0 [14]) (.app (.var 0 [14]) (.var 0 [14]) [15]) [15]) [13]) [12]) [13]) (.lam 14 (.lam 15 (.app (.var 0 [15]) (.app (.var 0 [15]) (.var 0 [15]) []) []) [15]) [14]) [15]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject2979 : ¬ Reader r2979 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]] d2979 c2979 a2979 (by decide) (by decide) (by decide)
#print axioms reject2979

def r2980 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))) (.var 0)) (.var 1)) (.var 0))
def d2980 : List FTy := [[],[],[],[],[7],[],[],[5,8],[15],[12],[],[],[10,13],[14],[14,15],[15],[],[],[]]
def c2980 : List FTy := [[],[],[],[],[8],[6],[],[8],[],[13],[11],[],[13],[15],[15],[],[],[18],[]]
def a2980 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.app (.var 0 [7]) (.lam 5 (.lam 6 (.app (.var 0 []) (.app (.var 0 []) (.var 0 []) []) []) [6]) [5]) [8]) [8]) [4]) (.lam 7 (.lam 8 (.app (.var 0 [15]) (.app (.var 0 [15]) (.var 0 [15]) []) []) [8]) [7]) [8]) (.app (.app (.lam 9 (.app (.var 0 [12]) (.app (.var 0 [12]) (.lam 10 (.lam 11 (.app (.var 0 []) (.app (.var 0 []) (.var 0 []) []) []) [11]) [10]) [13]) [13]) [9]) (.lam 12 (.lam 13 (.app (.var 0 [14]) (.app (.var 0 [14]) (.var 0 [14]) [15]) [15]) [13]) [12]) [13]) (.lam 14 (.lam 15 (.app (.var 0 [15]) (.app (.var 0 [15]) (.var 0 [15]) []) []) [15]) [14]) [15]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject2980 : ¬ Reader r2980 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]] d2980 c2980 a2980 (by decide) (by decide) (by decide)
#print axioms reject2980

def r2981 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))) (.var 0)) (.var 0)) (.var 1))
def d2981 : List FTy := [[],[],[],[],[7],[],[],[5,8],[15],[12],[],[],[10,13],[14],[14,15],[15],[],[],[]]
def c2981 : List FTy := [[],[],[],[],[8],[6],[],[8],[],[13],[11],[],[13],[15],[15],[],[],[18],[]]
def a2981 : Ann := (.app (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.app (.var 0 [7]) (.lam 5 (.lam 6 (.app (.var 0 []) (.app (.var 0 []) (.var 0 []) []) []) [6]) [5]) [8]) [8]) [4]) (.lam 7 (.lam 8 (.app (.var 0 [15]) (.app (.var 0 [15]) (.var 0 [15]) []) []) [8]) [7]) [8]) (.app (.app (.lam 9 (.app (.var 0 [12]) (.app (.var 0 [12]) (.lam 10 (.lam 11 (.app (.var 0 []) (.app (.var 0 []) (.var 0 []) []) []) [11]) [10]) [13]) [13]) [9]) (.lam 12 (.lam 13 (.app (.var 0 [14]) (.app (.var 0 [14]) (.var 0 [14]) [15]) [15]) [13]) [12]) [13]) (.lam 14 (.lam 15 (.app (.var 0 [15]) (.app (.var 0 [15]) (.var 0 [15]) []) []) [15]) [14]) [15]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject2981 : ¬ Reader r2981 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]] d2981 c2981 a2981 (by decide) (by decide) (by decide)
#print axioms reject2981

def r3186 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
def d3186 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3186 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3186 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.app (.var 0 []) (.var 0 []) []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3186 : ¬ Reader r3186 :=
 Rootcert2Flow.reject [] d3186 c3186 a3186 (by decide) (by decide) (by decide)
#print axioms reject3186

def r3187 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
def d3187 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3187 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3187 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.app (.var 0 []) (.var 0 []) []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3187 : ¬ Reader r3187 :=
 Rootcert2Flow.reject [] d3187 c3187 a3187 (by decide) (by decide) (by decide)
#print axioms reject3187

def r3188 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0))
def d3188 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3188 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3188 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.var 0 []) (.var 0 []) []) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3188 : ¬ Reader r3188 :=
 Rootcert2Flow.reject [] d3188 c3188 a3188 (by decide) (by decide) (by decide)
#print axioms reject3188

def r3189 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0))))
def d3189 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3189 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3189 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.var 0 []) (.var 0 []) []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3189 : ¬ Reader r3189 :=
 Rootcert2Flow.reject [] d3189 c3189 a3189 (by decide) (by decide) (by decide)
#print axioms reject3189

def r3190 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1))
def d3190 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3190 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3190 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.app (.var 0 []) (.var 0 []) []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3190 : ¬ Reader r3190 :=
 Rootcert2Flow.reject [] d3190 c3190 a3190 (by decide) (by decide) (by decide)
#print axioms reject3190

def r3191 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0))))
def d3191 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3191 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3191 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.var 0 []) (.var 0 []) []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3191 : ¬ Reader r3191 :=
 Rootcert2Flow.reject [] d3191 c3191 a3191 (by decide) (by decide) (by decide)
#print axioms reject3191

def r3198 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
def d3198 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3198 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3198 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.app (.var 0 []) (.var 0 []) []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3198 : ¬ Reader r3198 :=
 Rootcert2Flow.reject [] d3198 c3198 a3198 (by decide) (by decide) (by decide)
#print axioms reject3198

def r3199 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
def d3199 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3199 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3199 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.app (.var 0 []) (.var 0 []) []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3199 : ¬ Reader r3199 :=
 Rootcert2Flow.reject [] d3199 c3199 a3199 (by decide) (by decide) (by decide)
#print axioms reject3199

def r3200 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0))
def d3200 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3200 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3200 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.var 0 []) (.var 0 []) []) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3200 : ¬ Reader r3200 :=
 Rootcert2Flow.reject [] d3200 c3200 a3200 (by decide) (by decide) (by decide)
#print axioms reject3200

def r3201 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0))))
def d3201 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3201 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3201 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.var 0 []) (.var 0 []) []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3201 : ¬ Reader r3201 :=
 Rootcert2Flow.reject [] d3201 c3201 a3201 (by decide) (by decide) (by decide)
#print axioms reject3201

def r3202 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1))
def d3202 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3202 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3202 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.app (.var 0 []) (.var 0 []) []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3202 : ¬ Reader r3202 :=
 Rootcert2Flow.reject [] d3202 c3202 a3202 (by decide) (by decide) (by decide)
#print axioms reject3202

def r3203 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0))))
def d3203 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3203 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3203 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.var 0 []) (.var 0 []) []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3203 : ¬ Reader r3203 :=
 Rootcert2Flow.reject [] d3203 c3203 a3203 (by decide) (by decide) (by decide)
#print axioms reject3203

def r3228 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d3228 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3228 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3228 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [6]) (.app (.var 0 [6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3228 : ¬ Reader r3228 :=
 Rootcert2Flow.reject [] d3228 c3228 a3228 (by decide) (by decide) (by decide)
#print axioms reject3228

def r3229 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d3229 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3229 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3229 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [6]) (.app (.var 0 [6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3229 : ¬ Reader r3229 :=
 Rootcert2Flow.reject [] d3229 c3229 a3229 (by decide) (by decide) (by decide)
#print axioms reject3229

def r3230 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d3230 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3230 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3230 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [6]) (.app (.var 0 [6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3230 : ¬ Reader r3230 :=
 Rootcert2Flow.reject [] d3230 c3230 a3230 (by decide) (by decide) (by decide)
#print axioms reject3230

def r3231 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d3231 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3231 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3231 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [6]) (.app (.var 0 [6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3231 : ¬ Reader r3231 :=
 Rootcert2Flow.reject [] d3231 c3231 a3231 (by decide) (by decide) (by decide)
#print axioms reject3231

def r3232 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d3232 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3232 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3232 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [6]) (.app (.var 0 [6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3232 : ¬ Reader r3232 :=
 Rootcert2Flow.reject [] d3232 c3232 a3232 (by decide) (by decide) (by decide)
#print axioms reject3232

def r3233 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d3233 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3233 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3233 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 0 [6]) (.app (.var 0 [6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3233 : ¬ Reader r3233 :=
 Rootcert2Flow.reject [] d3233 c3233 a3233 (by decide) (by decide) (by decide)
#print axioms reject3233

def r3246 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d3246 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3246 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3246 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3246 : ¬ Reader r3246 :=
 Rootcert2Flow.reject [] d3246 c3246 a3246 (by decide) (by decide) (by decide)
#print axioms reject3246

def r3247 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d3247 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3247 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3247 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3247 : ¬ Reader r3247 :=
 Rootcert2Flow.reject [] d3247 c3247 a3247 (by decide) (by decide) (by decide)
#print axioms reject3247

def r3248 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d3248 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3248 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3248 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3248 : ¬ Reader r3248 :=
 Rootcert2Flow.reject [] d3248 c3248 a3248 (by decide) (by decide) (by decide)
#print axioms reject3248

def r3249 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d3249 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3249 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3249 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3249 : ¬ Reader r3249 :=
 Rootcert2Flow.reject [] d3249 c3249 a3249 (by decide) (by decide) (by decide)
#print axioms reject3249

def r3250 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d3250 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3250 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3250 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3250 : ¬ Reader r3250 :=
 Rootcert2Flow.reject [] d3250 c3250 a3250 (by decide) (by decide) (by decide)
#print axioms reject3250

def r3251 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d3251 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3251 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3251 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3251 : ¬ Reader r3251 :=
 Rootcert2Flow.reject [] d3251 c3251 a3251 (by decide) (by decide) (by decide)
#print axioms reject3251

def r3258 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d3258 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3258 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3258 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3258 : ¬ Reader r3258 :=
 Rootcert2Flow.reject [] d3258 c3258 a3258 (by decide) (by decide) (by decide)
#print axioms reject3258

def r3259 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d3259 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3259 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3259 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3259 : ¬ Reader r3259 :=
 Rootcert2Flow.reject [] d3259 c3259 a3259 (by decide) (by decide) (by decide)
#print axioms reject3259

def r3260 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d3260 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3260 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3260 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3260 : ¬ Reader r3260 :=
 Rootcert2Flow.reject [] d3260 c3260 a3260 (by decide) (by decide) (by decide)
#print axioms reject3260

def r3261 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d3261 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3261 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3261 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3261 : ¬ Reader r3261 :=
 Rootcert2Flow.reject [] d3261 c3261 a3261 (by decide) (by decide) (by decide)
#print axioms reject3261

def r3262 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d3262 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3262 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3262 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3262 : ¬ Reader r3262 :=
 Rootcert2Flow.reject [] d3262 c3262 a3262 (by decide) (by decide) (by decide)
#print axioms reject3262

def r3263 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d3263 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3263 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3263 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3263 : ¬ Reader r3263 :=
 Rootcert2Flow.reject [] d3263 c3263 a3263 (by decide) (by decide) (by decide)
#print axioms reject3263
end Blc.HandlerLet.XFlow06
