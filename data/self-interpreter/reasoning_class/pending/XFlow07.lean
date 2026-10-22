import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XFlow07
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r3276 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d3276 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3276 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3276 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 0 [6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3276 : ¬ Reader r3276 :=
 Rootcert2Flow.reject [] d3276 c3276 a3276 (by decide) (by decide) (by decide)
#print axioms reject3276

def r3277 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d3277 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3277 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3277 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 0 [6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3277 : ¬ Reader r3277 :=
 Rootcert2Flow.reject [] d3277 c3277 a3277 (by decide) (by decide) (by decide)
#print axioms reject3277

def r3278 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d3278 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3278 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3278 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 0 [6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3278 : ¬ Reader r3278 :=
 Rootcert2Flow.reject [] d3278 c3278 a3278 (by decide) (by decide) (by decide)
#print axioms reject3278

def r3279 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d3279 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3279 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3279 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 0 [6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3279 : ¬ Reader r3279 :=
 Rootcert2Flow.reject [] d3279 c3279 a3279 (by decide) (by decide) (by decide)
#print axioms reject3279

def r3280 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d3280 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3280 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3280 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 0 [6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3280 : ¬ Reader r3280 :=
 Rootcert2Flow.reject [] d3280 c3280 a3280 (by decide) (by decide) (by decide)
#print axioms reject3280

def r3281 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d3281 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3281 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3281 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.app (.var 0 [6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3281 : ¬ Reader r3281 :=
 Rootcert2Flow.reject [] d3281 c3281 a3281 (by decide) (by decide) (by decide)
#print axioms reject3281

def r3306 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d3306 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3306 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3306 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3306 : ¬ Reader r3306 :=
 Rootcert2Flow.reject [] d3306 c3306 a3306 (by decide) (by decide) (by decide)
#print axioms reject3306

def r3307 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d3307 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3307 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3307 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3307 : ¬ Reader r3307 :=
 Rootcert2Flow.reject [] d3307 c3307 a3307 (by decide) (by decide) (by decide)
#print axioms reject3307

def r3308 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d3308 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3308 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3308 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3308 : ¬ Reader r3308 :=
 Rootcert2Flow.reject [] d3308 c3308 a3308 (by decide) (by decide) (by decide)
#print axioms reject3308

def r3309 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d3309 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3309 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3309 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3309 : ¬ Reader r3309 :=
 Rootcert2Flow.reject [] d3309 c3309 a3309 (by decide) (by decide) (by decide)
#print axioms reject3309

def r3310 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d3310 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3310 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3310 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3310 : ¬ Reader r3310 :=
 Rootcert2Flow.reject [] d3310 c3310 a3310 (by decide) (by decide) (by decide)
#print axioms reject3310

def r3311 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d3311 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3311 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3311 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3311 : ¬ Reader r3311 :=
 Rootcert2Flow.reject [] d3311 c3311 a3311 (by decide) (by decide) (by decide)
#print axioms reject3311

def r3318 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d3318 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3318 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3318 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3318 : ¬ Reader r3318 :=
 Rootcert2Flow.reject [] d3318 c3318 a3318 (by decide) (by decide) (by decide)
#print axioms reject3318

def r3319 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d3319 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3319 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3319 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3319 : ¬ Reader r3319 :=
 Rootcert2Flow.reject [] d3319 c3319 a3319 (by decide) (by decide) (by decide)
#print axioms reject3319

def r3320 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d3320 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3320 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3320 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3320 : ¬ Reader r3320 :=
 Rootcert2Flow.reject [] d3320 c3320 a3320 (by decide) (by decide) (by decide)
#print axioms reject3320

def r3321 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d3321 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3321 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3321 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3321 : ¬ Reader r3321 :=
 Rootcert2Flow.reject [] d3321 c3321 a3321 (by decide) (by decide) (by decide)
#print axioms reject3321

def r3322 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d3322 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3322 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3322 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3322 : ¬ Reader r3322 :=
 Rootcert2Flow.reject [] d3322 c3322 a3322 (by decide) (by decide) (by decide)
#print axioms reject3322

def r3323 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d3323 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3323 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3323 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3323 : ¬ Reader r3323 :=
 Rootcert2Flow.reject [] d3323 c3323 a3323 (by decide) (by decide) (by decide)
#print axioms reject3323

def r3354 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d3354 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3354 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3354 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3354 : ¬ Reader r3354 :=
 Rootcert2Flow.reject [] d3354 c3354 a3354 (by decide) (by decide) (by decide)
#print axioms reject3354

def r3355 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d3355 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3355 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3355 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3355 : ¬ Reader r3355 :=
 Rootcert2Flow.reject [] d3355 c3355 a3355 (by decide) (by decide) (by decide)
#print axioms reject3355

def r3356 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d3356 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3356 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3356 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3356 : ¬ Reader r3356 :=
 Rootcert2Flow.reject [] d3356 c3356 a3356 (by decide) (by decide) (by decide)
#print axioms reject3356

def r3357 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d3357 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3357 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3357 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3357 : ¬ Reader r3357 :=
 Rootcert2Flow.reject [] d3357 c3357 a3357 (by decide) (by decide) (by decide)
#print axioms reject3357

def r3358 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d3358 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3358 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3358 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3358 : ¬ Reader r3358 :=
 Rootcert2Flow.reject [] d3358 c3358 a3358 (by decide) (by decide) (by decide)
#print axioms reject3358

def r3359 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d3359 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3359 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3359 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3359 : ¬ Reader r3359 :=
 Rootcert2Flow.reject [] d3359 c3359 a3359 (by decide) (by decide) (by decide)
#print axioms reject3359

def r3366 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d3366 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3366 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3366 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3366 : ¬ Reader r3366 :=
 Rootcert2Flow.reject [] d3366 c3366 a3366 (by decide) (by decide) (by decide)
#print axioms reject3366

def r3367 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d3367 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3367 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3367 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3367 : ¬ Reader r3367 :=
 Rootcert2Flow.reject [] d3367 c3367 a3367 (by decide) (by decide) (by decide)
#print axioms reject3367

def r3368 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d3368 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3368 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3368 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3368 : ¬ Reader r3368 :=
 Rootcert2Flow.reject [] d3368 c3368 a3368 (by decide) (by decide) (by decide)
#print axioms reject3368

def r3369 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d3369 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3369 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3369 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3369 : ¬ Reader r3369 :=
 Rootcert2Flow.reject [] d3369 c3369 a3369 (by decide) (by decide) (by decide)
#print axioms reject3369

def r3370 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d3370 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3370 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3370 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3370 : ¬ Reader r3370 :=
 Rootcert2Flow.reject [] d3370 c3370 a3370 (by decide) (by decide) (by decide)
#print axioms reject3370

def r3371 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d3371 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3371 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3371 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3371 : ¬ Reader r3371 :=
 Rootcert2Flow.reject [] d3371 c3371 a3371 (by decide) (by decide) (by decide)
#print axioms reject3371

def r3390 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
def d3390 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3390 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3390 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3390 : ¬ Reader r3390 :=
 Rootcert2Flow.reject [] d3390 c3390 a3390 (by decide) (by decide) (by decide)
#print axioms reject3390

def r3391 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
def d3391 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3391 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3391 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3391 : ¬ Reader r3391 :=
 Rootcert2Flow.reject [] d3391 c3391 a3391 (by decide) (by decide) (by decide)
#print axioms reject3391

def r3392 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
def d3392 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3392 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3392 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3392 : ¬ Reader r3392 :=
 Rootcert2Flow.reject [] d3392 c3392 a3392 (by decide) (by decide) (by decide)
#print axioms reject3392

def r3393 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d3393 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3393 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3393 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3393 : ¬ Reader r3393 :=
 Rootcert2Flow.reject [] d3393 c3393 a3393 (by decide) (by decide) (by decide)
#print axioms reject3393

def r3394 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
def d3394 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3394 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3394 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3394 : ¬ Reader r3394 :=
 Rootcert2Flow.reject [] d3394 c3394 a3394 (by decide) (by decide) (by decide)
#print axioms reject3394

def r3395 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d3395 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3395 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3395 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3395 : ¬ Reader r3395 :=
 Rootcert2Flow.reject [] d3395 c3395 a3395 (by decide) (by decide) (by decide)
#print axioms reject3395

def r3402 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
def d3402 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3402 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3402 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3402 : ¬ Reader r3402 :=
 Rootcert2Flow.reject [] d3402 c3402 a3402 (by decide) (by decide) (by decide)
#print axioms reject3402

def r3403 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
def d3403 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3403 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3403 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3403 : ¬ Reader r3403 :=
 Rootcert2Flow.reject [] d3403 c3403 a3403 (by decide) (by decide) (by decide)
#print axioms reject3403

def r3404 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
def d3404 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3404 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3404 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3404 : ¬ Reader r3404 :=
 Rootcert2Flow.reject [] d3404 c3404 a3404 (by decide) (by decide) (by decide)
#print axioms reject3404

def r3405 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d3405 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3405 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3405 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3405 : ¬ Reader r3405 :=
 Rootcert2Flow.reject [] d3405 c3405 a3405 (by decide) (by decide) (by decide)
#print axioms reject3405

def r3406 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
def d3406 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3406 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3406 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3406 : ¬ Reader r3406 :=
 Rootcert2Flow.reject [] d3406 c3406 a3406 (by decide) (by decide) (by decide)
#print axioms reject3406

def r3407 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d3407 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3407 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3407 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.var 0 [5,6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3407 : ¬ Reader r3407 :=
 Rootcert2Flow.reject [] d3407 c3407 a3407 (by decide) (by decide) (by decide)
#print axioms reject3407

def r3977 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0)))
def d3977 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3977 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3977 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3977 : ¬ Reader r3977 :=
 Rootcert2Flow.reject [] d3977 c3977 a3977 (by decide) (by decide) (by decide)
#print axioms reject3977

def r3978 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1))
def d3978 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3978 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3978 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3978 : ¬ Reader r3978 :=
 Rootcert2Flow.reject [] d3978 c3978 a3978 (by decide) (by decide) (by decide)
#print axioms reject3978

def r3979 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0)))
def d3979 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3979 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3979 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3979 : ¬ Reader r3979 :=
 Rootcert2Flow.reject [] d3979 c3979 a3979 (by decide) (by decide) (by decide)
#print axioms reject3979

def r3980 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0))))
def d3980 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3980 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3980 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.app (.var 0 [0]) (.lam 7 (.var 0 []) [7]) [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3980 : ¬ Reader r3980 :=
 Rootcert2Flow.reject [] d3980 c3980 a3980 (by decide) (by decide) (by decide)
#print axioms reject3980

def r3981 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0))
def d3981 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3981 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3981 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.lam 7 (.var 0 []) [7]) [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3981 : ¬ Reader r3981 :=
 Rootcert2Flow.reject [] d3981 c3981 a3981 (by decide) (by decide) (by decide)
#print axioms reject3981

def r3982 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0)))
def d3982 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3982 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3982 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3982 : ¬ Reader r3982 :=
 Rootcert2Flow.reject [] d3982 c3982 a3982 (by decide) (by decide) (by decide)
#print axioms reject3982

def r3983 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0))))
def d3983 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3983 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3983 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.lam 7 (.var 0 []) [7]) [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3983 : ¬ Reader r3983 :=
 Rootcert2Flow.reject [] d3983 c3983 a3983 (by decide) (by decide) (by decide)
#print axioms reject3983

def r3984 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1))
def d3984 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3984 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3984 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.app (.var 0 [0]) (.lam 7 (.var 0 []) [7]) [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3984 : ¬ Reader r3984 :=
 Rootcert2Flow.reject [] d3984 c3984 a3984 (by decide) (by decide) (by decide)
#print axioms reject3984
end Blc.HandlerLet.XFlow07
