import Flow
namespace Blc.Rootcert2.FlowCases35
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r266 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d266 : List FTy := [[],[],[],[],[5],[5,6],[0,1,5,6,7],[],[],[],[]]
def c266 : List FTy := [[],[],[],[],[6],[6],[],[0,1,5,6,7],[],[10],[]]
def a266 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 1 [0]) []) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.lam 7 (.var 1 [0,1,5,6,7]) [7]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject266 : ¬ Reader r266 :=
 Rootcert2Flow.reject [] d266 c266 a266 (by decide) (by decide) (by decide)
#print axioms reject266

def r267 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d267 : List FTy := [[],[],[],[],[5],[5],[0,1,7],[],[],[],[]]
def c267 : List FTy := [[],[],[],[],[6],[6],[],[0,1,7],[],[10],[]]
def a267 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [0,1,7]) [7]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject267 : ¬ Reader r267 :=
 Rootcert2Flow.reject [] d267 c267 a267 (by decide) (by decide) (by decide)
#print axioms reject267

def r268 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d268 : List FTy := [[],[],[],[],[5],[0,5],[1,6,7],[],[],[],[]]
def c268 : List FTy := [[],[],[],[],[6],[6],[0],[1,6,7],[],[10],[]]
def a268 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 1 [0]) [6]) [0]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5]) (.var 1 [0,5]) [0,6]) (.lam 7 (.var 1 [1,6,7]) [7]) [0]) [6]) [5]) [6]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject268 : ¬ Reader r268 :=
 Rootcert2Flow.reject [] d268 c268 a268 (by decide) (by decide) (by decide)
#print axioms reject268

def r269 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d269 : List FTy := [[],[],[],[],[5],[5],[0,1,7],[],[],[],[]]
def c269 : List FTy := [[],[],[],[],[6],[6],[],[0,1,7],[],[10],[]]
def a269 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 1 [0]) []) (.var 0 [5]) []) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [0,1,7]) [7]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject269 : ¬ Reader r269 :=
 Rootcert2Flow.reject [] d269 c269 a269 (by decide) (by decide) (by decide)
#print axioms reject269

def r270 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d270 : List FTy := [[],[],[],[],[5],[5,6],[0,1,5,6,7],[],[],[],[]]
def c270 : List FTy := [[],[],[],[],[6],[6],[],[0,1,5,6,7],[],[10],[]]
def a270 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 1 [0]) []) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.lam 7 (.var 1 [0,1,5,6,7]) [7]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject270 : ¬ Reader r270 :=
 Rootcert2Flow.reject [] d270 c270 a270 (by decide) (by decide) (by decide)
#print axioms reject270

def r271 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d271 : List FTy := [[],[],[],[],[5],[5],[1,5,7],[],[],[],[]]
def c271 : List FTy := [[],[],[],[],[6],[6],[],[1,5,7],[],[10],[]]
def a271 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 1 [0]) []) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [1,5,7]) [7]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject271 : ¬ Reader r271 :=
 Rootcert2Flow.reject [] d271 c271 a271 (by decide) (by decide) (by decide)
#print axioms reject271

def r272 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d272 : List FTy := [[],[],[],[],[5],[5,6],[0,5,6,7],[],[],[],[]]
def c272 : List FTy := [[],[],[],[],[],[6],[],[0,5,6,7],[],[10],[]]
def a272 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.lam 7 (.var 1 [0,5,6,7]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject272 : ¬ Reader r272 :=
 Rootcert2Flow.reject [] d272 c272 a272 (by decide) (by decide) (by decide)
#print axioms reject272

def r273 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d273 : List FTy := [[],[],[],[],[5],[0,5,6],[0,5,6,7],[],[],[],[]]
def c273 : List FTy := [[],[],[],[],[0],[6],[0],[0,5,6,7],[],[10],[]]
def a273 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.app (.var 0 [5]) (.var 1 [0]) [6]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 1 [0,5,6]) [0,6]) (.lam 7 (.var 1 [0,5,6,7]) [7]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject273 : ¬ Reader r273 :=
 Rootcert2Flow.reject [] d273 c273 a273 (by decide) (by decide) (by decide)
#print axioms reject273

def r274 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d274 : List FTy := [[],[],[],[],[5],[5],[0,7],[],[],[],[]]
def c274 : List FTy := [[],[],[],[],[],[6],[],[0,7],[],[10],[]]
def a274 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 1 [0]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [0]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [0,7]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject274 : ¬ Reader r274 :=
 Rootcert2Flow.reject [] d274 c274 a274 (by decide) (by decide) (by decide)
#print axioms reject274

def r275 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d275 : List FTy := [[],[],[],[],[5],[0,5],[6,7],[],[],[],[]]
def c275 : List FTy := [[],[],[],[],[0],[6],[0],[6,7],[],[10],[]]
def a275 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.app (.var 1 [0]) (.var 0 [5]) [0]) [6]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5]) (.var 1 [0,5]) [0,6]) (.lam 7 (.var 1 [6,7]) [7]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject275 : ¬ Reader r275 :=
 Rootcert2Flow.reject [] d275 c275 a275 (by decide) (by decide) (by decide)
#print axioms reject275

def r276 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d276 : List FTy := [[],[],[],[],[5],[0,5,6],[0,5,6,7],[],[],[],[]]
def c276 : List FTy := [[],[],[],[],[0],[6],[0],[0,5,6,7],[],[10],[]]
def a276 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 1 [0]) [6]) [6]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 1 [0,5,6]) [0,6]) (.lam 7 (.var 1 [0,5,6,7]) [7]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject276 : ¬ Reader r276 :=
 Rootcert2Flow.reject [] d276 c276 a276 (by decide) (by decide) (by decide)
#print axioms reject276

def r277 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d277 : List FTy := [[],[],[],[],[5],[5],[0,7],[],[],[],[]]
def c277 : List FTy := [[],[],[],[],[],[6],[],[0,7],[],[10],[]]
def a277 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.app (.var 1 [0]) (.var 0 [5]) [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [0,7]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject277 : ¬ Reader r277 :=
 Rootcert2Flow.reject [] d277 c277 a277 (by decide) (by decide) (by decide)
#print axioms reject277

def r278 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d278 : List FTy := [[],[],[],[],[5],[0,5],[0,5,7],[],[],[],[]]
def c278 : List FTy := [[],[],[],[],[0],[6],[0],[0,5,7],[],[10],[]]
def a278 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.app (.var 0 [5]) (.var 1 [0]) [6]) (.var 0 [5]) [0]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5]) (.var 1 [0,5]) [0,6]) (.lam 7 (.var 1 [0,5,7]) [7]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject278 : ¬ Reader r278 :=
 Rootcert2Flow.reject [] d278 c278 a278 (by decide) (by decide) (by decide)
#print axioms reject278

def r279 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d279 : List FTy := [[],[],[],[],[5],[5],[0,7],[],[],[],[]]
def c279 : List FTy := [[],[],[],[],[],[6],[],[0,7],[],[10],[]]
def a279 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 1 [0]) []) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [0,7]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject279 : ¬ Reader r279 :=
 Rootcert2Flow.reject [] d279 c279 a279 (by decide) (by decide) (by decide)
#print axioms reject279

def r280 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d280 : List FTy := [[],[],[],[],[5],[5],[0,7],[],[],[],[]]
def c280 : List FTy := [[],[],[],[],[],[6],[],[0,7],[],[10],[]]
def a280 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 1 [0]) []) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [0,7]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject280 : ¬ Reader r280 :=
 Rootcert2Flow.reject [] d280 c280 a280 (by decide) (by decide) (by decide)
#print axioms reject280

def r281 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d281 : List FTy := [[],[],[],[],[5],[5],[5,7],[],[],[],[]]
def c281 : List FTy := [[],[],[],[],[],[6],[],[5,7],[],[10],[]]
def a281 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [5,7]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject281 : ¬ Reader r281 :=
 Rootcert2Flow.reject [] d281 c281 a281 (by decide) (by decide) (by decide)
#print axioms reject281

def r282 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d282 : List FTy := [[],[],[],[],[5],[0,5],[5,7],[],[],[],[]]
def c282 : List FTy := [[],[],[],[],[0],[6],[0],[5,7],[],[10],[]]
def a282 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [6]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5]) (.var 1 [0,5]) [0,6]) (.lam 7 (.var 1 [5,7]) [7]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject282 : ¬ Reader r282 :=
 Rootcert2Flow.reject [] d282 c282 a282 (by decide) (by decide) (by decide)
#print axioms reject282

def r283 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d283 : List FTy := [[],[],[],[],[5],[5],[0,5,7],[],[],[],[]]
def c283 : List FTy := [[],[],[],[],[],[6],[],[0,5,7],[],[10],[]]
def a283 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 1 [0]) []) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [0,5,7]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject283 : ¬ Reader r283 :=
 Rootcert2Flow.reject [] d283 c283 a283 (by decide) (by decide) (by decide)
#print axioms reject283

def r284 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d284 : List FTy := [[],[],[],[],[5],[5,6],[0,5,6,7],[],[],[],[]]
def c284 : List FTy := [[],[],[],[],[],[6],[],[0,5,6,7],[],[10],[]]
def a284 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 1 [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.lam 7 (.var 1 [0,5,6,7]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject284 : ¬ Reader r284 :=
 Rootcert2Flow.reject [] d284 c284 a284 (by decide) (by decide) (by decide)
#print axioms reject284

def r285 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d285 : List FTy := [[],[],[],[],[5],[5],[0,7],[],[],[],[]]
def c285 : List FTy := [[],[],[],[],[],[6],[],[0,7],[],[10],[]]
def a285 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [0,7]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject285 : ¬ Reader r285 :=
 Rootcert2Flow.reject [] d285 c285 a285 (by decide) (by decide) (by decide)
#print axioms reject285

def r286 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d286 : List FTy := [[],[],[],[],[5],[0,5],[6,7],[],[],[],[]]
def c286 : List FTy := [[],[],[],[],[0],[6],[0],[6,7],[],[10],[]]
def a286 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 1 [0]) [6]) [0]) (.var 0 [5]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5]) (.var 1 [0,5]) [0,6]) (.lam 7 (.var 1 [6,7]) [7]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject286 : ¬ Reader r286 :=
 Rootcert2Flow.reject [] d286 c286 a286 (by decide) (by decide) (by decide)
#print axioms reject286

def r287 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d287 : List FTy := [[],[],[],[],[5],[5],[0,7],[],[],[],[]]
def c287 : List FTy := [[],[],[],[],[],[6],[],[0,7],[],[10],[]]
def a287 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 1 [0]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [0,7]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject287 : ¬ Reader r287 :=
 Rootcert2Flow.reject [] d287 c287 a287 (by decide) (by decide) (by decide)
#print axioms reject287

def r288 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
def d288 : List FTy := [[],[],[],[],[5],[5],[5,7],[],[],[],[]]
def c288 : List FTy := [[],[],[],[],[],[6],[],[5,7],[],[10],[]]
def a288 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 1 [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [5,7]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject288 : ¬ Reader r288 :=
 Rootcert2Flow.reject [] d288 c288 a288 (by decide) (by decide) (by decide)
#print axioms reject288

def r588 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1)) (.var 0))
def d588 : List FTy := [[],[],[],[],[5],[5,6],[1,5,6,7],[],[],[],[]]
def c588 : List FTy := [[],[],[],[],[6],[6],[],[1,5,6,7],[],[10],[]]
def a588 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.lam 7 (.var 1 [1,5,6,7]) [7]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject588 : ¬ Reader r588 :=
 Rootcert2Flow.reject [] d588 c588 a588 (by decide) (by decide) (by decide)
#print axioms reject588

def r589 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 0)) (.var 1))
def d589 : List FTy := [[],[],[],[],[5],[5,6],[0,5,6,7],[],[],[],[]]
def c589 : List FTy := [[],[],[],[],[6],[6],[],[0,5,6,7],[],[10],[]]
def a589 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.lam 7 (.var 1 [0,5,6,7]) [7]) []) [6]) [5]) [6]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject589 : ¬ Reader r589 :=
 Rootcert2Flow.reject [] d589 c589 a589 (by decide) (by decide) (by decide)
#print axioms reject589

def r590 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1)) (.var 0))
def d590 : List FTy := [[],[],[],[],[5],[5],[1,5,7],[],[],[],[]]
def c590 : List FTy := [[],[],[],[],[6],[6],[],[1,5,7],[],[10],[]]
def a590 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [1,5,7]) [7]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject590 : ¬ Reader r590 :=
 Rootcert2Flow.reject [] d590 c590 a590 (by decide) (by decide) (by decide)
#print axioms reject590

def r591 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 0)) (.var 1))
def d591 : List FTy := [[],[],[],[],[5],[5],[0,5,7],[],[],[],[]]
def c591 : List FTy := [[],[],[],[],[6],[6],[],[0,5,7],[],[10],[]]
def a591 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [0,5,7]) [7]) []) [6]) [5]) [6]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject591 : ¬ Reader r591 :=
 Rootcert2Flow.reject [] d591 c591 a591 (by decide) (by decide) (by decide)
#print axioms reject591

def r592 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1)) (.var 0))
def d592 : List FTy := [[],[],[],[],[5],[5],[6,7],[],[],[],[]]
def c592 : List FTy := [[],[],[],[],[],[6],[],[6,7],[],[10],[]]
def a592 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [6,7]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject592 : ¬ Reader r592 :=
 Rootcert2Flow.reject [] d592 c592 a592 (by decide) (by decide) (by decide)
#print axioms reject592

def r593 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 0)) (.var 1))
def d593 : List FTy := [[],[],[],[],[5],[5],[6,7],[],[],[],[]]
def c593 : List FTy := [[],[],[],[],[],[6],[],[6,7],[],[10],[]]
def a593 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [6,7]) [7]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject593 : ¬ Reader r593 :=
 Rootcert2Flow.reject [] d593 c593 a593 (by decide) (by decide) (by decide)
#print axioms reject593

def r594 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1)) (.var 0))
def d594 : List FTy := [[],[],[],[],[5],[5,6],[5,6,7],[],[],[],[]]
def c594 : List FTy := [[],[],[],[],[],[6],[],[5,6,7],[],[10],[]]
def a594 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.lam 7 (.var 1 [5,6,7]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject594 : ¬ Reader r594 :=
 Rootcert2Flow.reject [] d594 c594 a594 (by decide) (by decide) (by decide)
#print axioms reject594

def r595 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 0)) (.var 1))
def d595 : List FTy := [[],[],[],[],[5],[5,6],[5,6,7],[],[],[],[]]
def c595 : List FTy := [[],[],[],[],[],[6],[],[5,6,7],[],[10],[]]
def a595 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.lam 7 (.var 1 [5,6,7]) [7]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject595 : ¬ Reader r595 :=
 Rootcert2Flow.reject [] d595 c595 a595 (by decide) (by decide) (by decide)
#print axioms reject595

def r596 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1)) (.var 0))
def d596 : List FTy := [[],[],[],[],[5],[5],[5,7],[],[],[],[]]
def c596 : List FTy := [[],[],[],[],[],[6],[],[5,7],[],[10],[]]
def a596 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [5,7]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject596 : ¬ Reader r596 :=
 Rootcert2Flow.reject [] d596 c596 a596 (by decide) (by decide) (by decide)
#print axioms reject596

def r597 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 0)) (.var 1))
def d597 : List FTy := [[],[],[],[],[5],[5],[5,7],[],[],[],[]]
def c597 : List FTy := [[],[],[],[],[],[6],[],[5,7],[],[10],[]]
def a597 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [5,7]) [7]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject597 : ¬ Reader r597 :=
 Rootcert2Flow.reject [] d597 c597 a597 (by decide) (by decide) (by decide)
#print axioms reject597
end Blc.Rootcert2.FlowCases35
