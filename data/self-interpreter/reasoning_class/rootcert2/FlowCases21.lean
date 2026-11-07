import Flow
namespace Blc.Rootcert2.FlowCases21
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r216 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 1))
def d216 : List FTy := [[],[],[],[],[5],[1,5,6],[1,5,6],[],[],[]]
def c216 : List FTy := [[],[],[],[],[6],[6],[1],[],[9],[]]
def a216 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [1]) (.var 1 [0]) [1]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [1,5,6]) (.var 0 [1,5,6]) [1,6]) (.app (.var 1 [1,5,6]) (.var 0 [1,5,6]) [1,6]) [1]) [6]) [5]) [6]) (.var 1 [1]) [1]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [1])
theorem reject216 : ¬ Reader r216 :=
 Rootcert2Flow.reject [] d216 c216 a216 (by decide) (by decide) (by decide)
#print axioms reject216

def r234 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 1))
def d234 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c234 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a234 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject234 : ¬ Reader r234 :=
 Rootcert2Flow.reject [] d234 c234 a234 (by decide) (by decide) (by decide)
#print axioms reject234

def r235 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 1))
def d235 : List FTy := [[],[],[],[],[5],[0,5,6],[0,5,6],[],[],[]]
def c235 : List FTy := [[],[],[],[],[0],[6],[0],[],[9],[]]
def a235 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [6]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [0,5,6]) [0,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,5,6]) [0,6]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject235 : ¬ Reader r235 :=
 Rootcert2Flow.reject [] d235 c235 a235 (by decide) (by decide) (by decide)
#print axioms reject235

def r245 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 1))
def d245 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c245 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a245 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 1 [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject245 : ¬ Reader r245 :=
 Rootcert2Flow.reject [] d245 c245 a245 (by decide) (by decide) (by decide)
#print axioms reject245

def r468 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
def d468 : List FTy := [[],[],[],[],[5],[1,5,6],[1,5,6],[],[],[]]
def c468 : List FTy := [[],[],[],[],[6],[6],[1],[],[9],[]]
def a468 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [1]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [1,5,6]) (.var 0 [1,5,6]) [1,6]) (.app (.var 1 [1,5,6]) (.var 0 [1,5,6]) [1,6]) [1]) [6]) [5]) [6]) (.var 1 [1]) [1]) (.var 0 [0]) [1]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [1])
theorem reject468 : ¬ Reader r468 :=
 Rootcert2Flow.reject [] d468 c468 a468 (by decide) (by decide) (by decide)
#print axioms reject468

def r469 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
def d469 : List FTy := [[],[],[],[],[5],[0,5,6],[0,5,6],[],[],[]]
def c469 : List FTy := [[],[],[],[],[6],[6],[0],[],[9],[]]
def a469 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [0]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [0,5,6]) [0,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,5,6]) [0,6]) [0]) [6]) [5]) [6]) (.var 0 [0]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject469 : ¬ Reader r469 :=
 Rootcert2Flow.reject [] d469 c469 a469 (by decide) (by decide) (by decide)
#print axioms reject469

def r484 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
def d484 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c484 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a484 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject484 : ¬ Reader r484 :=
 Rootcert2Flow.reject [] d484 c484 a484 (by decide) (by decide) (by decide)
#print axioms reject484

def r485 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
def d485 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c485 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a485 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) [6]) (.app (.var 1 [5,6]) (.var 0 [6]) [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject485 : ¬ Reader r485 :=
 Rootcert2Flow.reject [] d485 c485 a485 (by decide) (by decide) (by decide)
#print axioms reject485

def r498 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
def d498 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c498 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a498 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject498 : ¬ Reader r498 :=
 Rootcert2Flow.reject [] d498 c498 a498 (by decide) (by decide) (by decide)
#print axioms reject498

def r499 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
def d499 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c499 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a499 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject499 : ¬ Reader r499 :=
 Rootcert2Flow.reject [] d499 c499 a499 (by decide) (by decide) (by decide)
#print axioms reject499

def r514 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
def d514 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c514 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a514 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject514 : ¬ Reader r514 :=
 Rootcert2Flow.reject [] d514 c514 a514 (by decide) (by decide) (by decide)
#print axioms reject514

def r515 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
def d515 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c515 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a515 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject515 : ¬ Reader r515 :=
 Rootcert2Flow.reject [] d515 c515 a515 (by decide) (by decide) (by decide)
#print axioms reject515
end Blc.Rootcert2.FlowCases21
