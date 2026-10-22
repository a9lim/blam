import Flow
namespace Blc.Rootcert2.FlowCases20
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r210 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d210 : List FTy := [[],[],[],[],[5],[0,1,5,6],[0,1,5,6],[],[],[]]
def c210 : List FTy := [[],[],[],[],[6],[6],[0,1],[],[9],[]]
def a210 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 1 [0]) [0,1]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,1,5,6]) (.var 1 [0,1,5,6]) [0,1,6]) (.app (.var 0 [0,1,5,6]) (.var 0 [0,1,5,6]) [0,1,6]) [0,1]) [6]) [5]) [6]) (.var 1 [1]) [0,1]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0,1])
theorem reject210 : ¬ Reader r210 :=
 Rootcert2Flow.reject [] d210 c210 a210 (by decide) (by decide) (by decide)
#print axioms reject210

def r211 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d211 : List FTy := [[],[],[],[],[5],[5],[0,1],[],[],[]]
def c211 : List FTy := [[],[],[],[],[6],[6],[],[],[9],[]]
def a211 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [0,1]) (.var 0 [0,1]) [0,1]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject211 : ¬ Reader r211 :=
 Rootcert2Flow.reject [] d211 c211 a211 (by decide) (by decide) (by decide)
#print axioms reject211

def r212 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d212 : List FTy := [[],[],[],[],[5],[0,5],[0,1,6],[],[],[]]
def c212 : List FTy := [[],[],[],[],[6],[6],[0],[],[9],[]]
def a212 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 1 [0]) [6]) [0]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5]) (.var 1 [0,5]) [0,6]) (.app (.var 0 [0,1,6]) (.var 0 [0,1,6]) [0,1]) [0]) [6]) [5]) [6]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject212 : ¬ Reader r212 :=
 Rootcert2Flow.reject [] d212 c212 a212 (by decide) (by decide) (by decide)
#print axioms reject212

def r213 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d213 : List FTy := [[],[],[],[],[5],[5],[0,1],[],[],[]]
def c213 : List FTy := [[],[],[],[],[6],[6],[],[],[9],[]]
def a213 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 1 [0]) []) (.var 0 [5]) []) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [0,1]) (.var 0 [0,1]) [0,1]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject213 : ¬ Reader r213 :=
 Rootcert2Flow.reject [] d213 c213 a213 (by decide) (by decide) (by decide)
#print axioms reject213

def r214 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d214 : List FTy := [[],[],[],[],[5],[0,1,5,6],[0,1,5,6],[],[],[]]
def c214 : List FTy := [[],[],[],[],[6],[6],[0,1],[],[9],[]]
def a214 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 1 [0]) [0,1]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,1,5,6]) (.var 1 [0,1,5,6]) [0,1,6]) (.app (.var 0 [0,1,5,6]) (.var 0 [0,1,5,6]) [0,1,6]) [0,1]) [6]) [5]) [6]) (.var 1 [1]) [0,1]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0,1])
theorem reject214 : ¬ Reader r214 :=
 Rootcert2Flow.reject [] d214 c214 a214 (by decide) (by decide) (by decide)
#print axioms reject214

def r215 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d215 : List FTy := [[],[],[],[],[5],[1,5,6],[1,5,6],[],[],[]]
def c215 : List FTy := [[],[],[],[],[6],[6],[1],[],[9],[]]
def a215 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [1]) (.var 1 [0]) [1]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [1,5,6]) (.var 1 [1,5,6]) [1,6]) (.app (.var 0 [1,5,6]) (.var 0 [1,5,6]) [1,6]) [1]) [6]) [5]) [6]) (.var 1 [1]) [1]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [1])
theorem reject215 : ¬ Reader r215 :=
 Rootcert2Flow.reject [] d215 c215 a215 (by decide) (by decide) (by decide)
#print axioms reject215

def r217 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d217 : List FTy := [[],[],[],[],[5],[0,5,6],[0,5,6],[],[],[]]
def c217 : List FTy := [[],[],[],[],[0],[6],[0],[],[9],[]]
def a217 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.app (.var 1 [0]) (.var 0 [5]) [0]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 1 [0,5,6]) [0,6]) (.app (.var 0 [0,5,6]) (.var 0 [0,5,6]) [0,6]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject217 : ¬ Reader r217 :=
 Rootcert2Flow.reject [] d217 c217 a217 (by decide) (by decide) (by decide)
#print axioms reject217

def r218 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d218 : List FTy := [[],[],[],[],[5],[0,5,6],[0,5,6],[],[],[]]
def c218 : List FTy := [[],[],[],[],[0],[6],[0],[],[9],[]]
def a218 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.app (.var 0 [5]) (.var 1 [0]) [6]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 1 [0,5,6]) [0,6]) (.app (.var 0 [0,5,6]) (.var 0 [0,5,6]) [0,6]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject218 : ¬ Reader r218 :=
 Rootcert2Flow.reject [] d218 c218 a218 (by decide) (by decide) (by decide)
#print axioms reject218

def r219 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d219 : List FTy := [[],[],[],[],[5],[5],[0],[],[],[]]
def c219 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a219 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 1 [0]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [0]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject219 : ¬ Reader r219 :=
 Rootcert2Flow.reject [] d219 c219 a219 (by decide) (by decide) (by decide)
#print axioms reject219

def r220 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d220 : List FTy := [[],[],[],[],[5],[0,5],[0,6],[],[],[]]
def c220 : List FTy := [[],[],[],[],[0],[6],[0],[],[9],[]]
def a220 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.app (.var 1 [0]) (.var 0 [5]) [0]) [6]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5]) (.var 1 [0,5]) [0,6]) (.app (.var 0 [0,6]) (.var 0 [0,6]) [0]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject220 : ¬ Reader r220 :=
 Rootcert2Flow.reject [] d220 c220 a220 (by decide) (by decide) (by decide)
#print axioms reject220

def r221 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d221 : List FTy := [[],[],[],[],[5],[0,5,6],[0,5,6],[],[],[]]
def c221 : List FTy := [[],[],[],[],[0],[6],[0],[],[9],[]]
def a221 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 1 [0]) [6]) [6]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 1 [0,5,6]) [0,6]) (.app (.var 0 [0,5,6]) (.var 0 [0,5,6]) [0,6]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject221 : ¬ Reader r221 :=
 Rootcert2Flow.reject [] d221 c221 a221 (by decide) (by decide) (by decide)
#print axioms reject221

def r222 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d222 : List FTy := [[],[],[],[],[5],[5],[0],[],[],[]]
def c222 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a222 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.app (.var 1 [0]) (.var 0 [5]) [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject222 : ¬ Reader r222 :=
 Rootcert2Flow.reject [] d222 c222 a222 (by decide) (by decide) (by decide)
#print axioms reject222

def r223 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d223 : List FTy := [[],[],[],[],[5],[0,5,6],[0,5,6],[],[],[]]
def c223 : List FTy := [[],[],[],[],[0],[6],[0],[],[9],[]]
def a223 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.app (.var 0 [5]) (.var 1 [0]) [6]) (.var 0 [5]) [0]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 1 [0,5,6]) [0,6]) (.app (.var 0 [0,5,6]) (.var 0 [0,5,6]) [0,6]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject223 : ¬ Reader r223 :=
 Rootcert2Flow.reject [] d223 c223 a223 (by decide) (by decide) (by decide)
#print axioms reject223

def r224 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d224 : List FTy := [[],[],[],[],[5],[5],[0],[],[],[]]
def c224 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a224 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 1 [0]) []) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject224 : ¬ Reader r224 :=
 Rootcert2Flow.reject [] d224 c224 a224 (by decide) (by decide) (by decide)
#print axioms reject224

def r225 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d225 : List FTy := [[],[],[],[],[5],[5],[0],[],[],[]]
def c225 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a225 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 1 [0]) []) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject225 : ¬ Reader r225 :=
 Rootcert2Flow.reject [] d225 c225 a225 (by decide) (by decide) (by decide)
#print axioms reject225

def r232 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d232 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c232 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a232 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 0 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject232 : ¬ Reader r232 :=
 Rootcert2Flow.reject [] d232 c232 a232 (by decide) (by decide) (by decide)
#print axioms reject232

def r233 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d233 : List FTy := [[],[],[],[],[5],[0,5,6],[0,5,6],[],[],[]]
def c233 : List FTy := [[],[],[],[],[0],[6],[0],[],[9],[]]
def a233 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [6]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 1 [0,5,6]) [0,6]) (.app (.var 0 [0,5,6]) (.var 0 [0,5,6]) [0,6]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject233 : ¬ Reader r233 :=
 Rootcert2Flow.reject [] d233 c233 a233 (by decide) (by decide) (by decide)
#print axioms reject233

def r236 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d236 : List FTy := [[],[],[],[],[5],[0,5,6],[0,5,6],[],[],[]]
def c236 : List FTy := [[],[],[],[],[0],[6],[0],[],[9],[]]
def a236 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 1 [0]) [0]) [6]) (.var 0 [5]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 1 [0,5,6]) [0,6]) (.app (.var 0 [0,5,6]) (.var 0 [0,5,6]) [0,6]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject236 : ¬ Reader r236 :=
 Rootcert2Flow.reject [] d236 c236 a236 (by decide) (by decide) (by decide)
#print axioms reject236

def r237 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d237 : List FTy := [[],[],[],[],[5],[0,5,6],[0,5,6],[],[],[]]
def c237 : List FTy := [[],[],[],[],[0],[6],[0],[],[9],[]]
def a237 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 1 [0]) [0]) (.var 0 [5]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 1 [0,5,6]) [0,6]) (.app (.var 0 [0,5,6]) (.var 0 [0,5,6]) [0,6]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject237 : ¬ Reader r237 :=
 Rootcert2Flow.reject [] d237 c237 a237 (by decide) (by decide) (by decide)
#print axioms reject237

def r238 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d238 : List FTy := [[],[],[],[],[5],[5],[0],[],[],[]]
def c238 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a238 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject238 : ¬ Reader r238 :=
 Rootcert2Flow.reject [] d238 c238 a238 (by decide) (by decide) (by decide)
#print axioms reject238

def r239 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d239 : List FTy := [[],[],[],[],[5],[0,5],[0,6],[],[],[]]
def c239 : List FTy := [[],[],[],[],[0],[6],[0],[],[9],[]]
def a239 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 1 [0]) [6]) [0]) (.var 0 [5]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5]) (.var 1 [0,5]) [0,6]) (.app (.var 0 [0,6]) (.var 0 [0,6]) [0]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject239 : ¬ Reader r239 :=
 Rootcert2Flow.reject [] d239 c239 a239 (by decide) (by decide) (by decide)
#print axioms reject239

def r240 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d240 : List FTy := [[],[],[],[],[5],[5],[0],[],[],[]]
def c240 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a240 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 1 [0]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject240 : ¬ Reader r240 :=
 Rootcert2Flow.reject [] d240 c240 a240 (by decide) (by decide) (by decide)
#print axioms reject240

def r244 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1))
def d244 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c244 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a244 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 1 [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 0 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject244 : ¬ Reader r244 :=
 Rootcert2Flow.reject [] d244 c244 a244 (by decide) (by decide) (by decide)
#print axioms reject244

def r464 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
def d464 : List FTy := [[],[],[],[],[5],[1,5,6],[1,5,6],[],[],[]]
def c464 : List FTy := [[],[],[],[],[6],[6],[1],[],[9],[]]
def a464 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [1,5,6]) (.var 1 [1,5,6]) [1,6]) (.app (.var 0 [1,5,6]) (.var 0 [1,5,6]) [1,6]) [1]) [6]) [5]) [6]) (.var 1 [1]) [1]) (.var 0 [0]) [1]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [1])
theorem reject464 : ¬ Reader r464 :=
 Rootcert2Flow.reject [] d464 c464 a464 (by decide) (by decide) (by decide)
#print axioms reject464

def r465 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
def d465 : List FTy := [[],[],[],[],[5],[0,5,6],[0,5,6],[],[],[]]
def c465 : List FTy := [[],[],[],[],[6],[6],[0],[],[9],[]]
def a465 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 1 [0,5,6]) [0,6]) (.app (.var 0 [0,5,6]) (.var 0 [0,5,6]) [0,6]) [0]) [6]) [5]) [6]) (.var 0 [0]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject465 : ¬ Reader r465 :=
 Rootcert2Flow.reject [] d465 c465 a465 (by decide) (by decide) (by decide)
#print axioms reject465

def r466 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
def d466 : List FTy := [[],[],[],[],[5],[1,5,6],[1,5,6],[],[],[]]
def c466 : List FTy := [[],[],[],[],[6],[6],[1],[],[9],[]]
def a466 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [1]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [1,5,6]) (.var 1 [1,5,6]) [1,6]) (.app (.var 0 [1,5,6]) (.var 0 [1,5,6]) [1,6]) [1]) [6]) [5]) [6]) (.var 1 [1]) [1]) (.var 0 [0]) [1]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [1])
theorem reject466 : ¬ Reader r466 :=
 Rootcert2Flow.reject [] d466 c466 a466 (by decide) (by decide) (by decide)
#print axioms reject466

def r467 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
def d467 : List FTy := [[],[],[],[],[5],[0,5,6],[0,5,6],[],[],[]]
def c467 : List FTy := [[],[],[],[],[6],[6],[0],[],[9],[]]
def a467 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [0]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 1 [0,5,6]) [0,6]) (.app (.var 0 [0,5,6]) (.var 0 [0,5,6]) [0,6]) [0]) [6]) [5]) [6]) (.var 0 [0]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject467 : ¬ Reader r467 :=
 Rootcert2Flow.reject [] d467 c467 a467 (by decide) (by decide) (by decide)
#print axioms reject467

def r478 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
def d478 : List FTy := [[],[],[],[],[5],[5],[6],[],[],[]]
def c478 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a478 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [6]) (.var 0 [6]) []) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject478 : ¬ Reader r478 :=
 Rootcert2Flow.reject [] d478 c478 a478 (by decide) (by decide) (by decide)
#print axioms reject478

def r479 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
def d479 : List FTy := [[],[],[],[],[5],[5],[6],[],[],[]]
def c479 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a479 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [6]) (.var 0 [6]) []) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject479 : ¬ Reader r479 :=
 Rootcert2Flow.reject [] d479 c479 a479 (by decide) (by decide) (by decide)
#print axioms reject479

def r496 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
def d496 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c496 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a496 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 0 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject496 : ¬ Reader r496 :=
 Rootcert2Flow.reject [] d496 c496 a496 (by decide) (by decide) (by decide)
#print axioms reject496

def r497 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
def d497 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c497 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a497 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 0 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject497 : ¬ Reader r497 :=
 Rootcert2Flow.reject [] d497 c497 a497 (by decide) (by decide) (by decide)
#print axioms reject497

def r512 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
def d512 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c512 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a512 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 0 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject512 : ¬ Reader r512 :=
 Rootcert2Flow.reject [] d512 c512 a512 (by decide) (by decide) (by decide)
#print axioms reject512

def r513 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
def d513 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c513 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a513 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 0 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject513 : ¬ Reader r513 :=
 Rootcert2Flow.reject [] d513 c513 a513 (by decide) (by decide) (by decide)
#print axioms reject513
end Blc.Rootcert2.FlowCases20
