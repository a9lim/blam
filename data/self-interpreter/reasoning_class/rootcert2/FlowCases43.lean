import Flow
namespace Blc.Rootcert2.FlowCases43
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r311 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))) (.var 1))
def d311 : List FTy := [[],[],[],[],[6],[0],[0,6],[0,1,5,6,7],[],[],[]]
def c311 : List FTy := [[],[],[],[],[7],[6],[7],[0],[],[10],[]]
def a311 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.app (.app (.var 0 [6]) (.var 0 [6]) [7]) (.lam 5 (.var 1 [6]) [5]) [0]) [7]) [4]) (.lam 6 (.lam 7 (.app (.app (.var 1 [0,6]) (.var 1 [0,6]) [0,7]) (.app (.var 0 [0,1,5,6,7]) (.var 2 [0]) [0,1,6,7]) [0]) [7]) [6]) [7]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject311 : ¬ Reader r311 :=
 Rootcert2Flow.reject [] d311 c311 a311 (by decide) (by decide) (by decide)
#print axioms reject311

def r313 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))) (.var 1))
def d313 : List FTy := [[],[],[],[],[6],[0,1,5,6,7],[0,1,5,6,7],[0,1,5,6,7,8],[0],[],[]]
def c313 : List FTy := [[],[],[],[],[0,1,7],[6],[7],[0,1,7],[0],[10],[]]
def a313 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.var 0 [6]) [7]) (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) [0,1,7]) [4]) (.lam 6 (.lam 7 (.app (.app (.var 1 [0,1,5,6,7]) (.var 1 [0,1,5,6,7]) [0,1,6,7]) (.app (.var 0 [0,1,5,6,7,8]) (.var 2 [0]) [0,1,6,7]) [0,1,7]) [7]) [6]) [0,1,7]) (.var 1 [1]) [0,1,7]) (.lam 8 (.app (.app (.var 0 [0]) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) [0]) (.var 4 [3]) [0]) [8]) [0,1,7])
theorem reject313 : ¬ Reader r313 :=
 Rootcert2Flow.reject [] d313 c313 a313 (by decide) (by decide) (by decide)
#print axioms reject313

def r314 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))) (.var 1))
def d314 : List FTy := [[],[],[],[],[6],[0,1,5,6,7],[0,1,5,6,7],[0,1,5,6,7,8],[0],[],[]]
def c314 : List FTy := [[],[],[],[],[0,1,7],[6],[7],[0,1,7],[0],[10],[]]
def a314 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) (.app (.var 0 [6]) (.var 0 [6]) [7]) [0,1,7]) [4]) (.lam 6 (.lam 7 (.app (.app (.var 1 [0,1,5,6,7]) (.var 1 [0,1,5,6,7]) [0,1,6,7]) (.app (.var 0 [0,1,5,6,7,8]) (.var 2 [0]) [0,1,6,7]) [0,1,7]) [7]) [6]) [0,1,7]) (.var 1 [1]) [0,1,7]) (.lam 8 (.app (.app (.var 0 [0]) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) [0]) (.var 4 [3]) [0]) [8]) [0,1,7])
theorem reject314 : ¬ Reader r314 :=
 Rootcert2Flow.reject [] d314 c314 a314 (by decide) (by decide) (by decide)
#print axioms reject314

def r316 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))) (.var 1))
def d316 : List FTy := [[],[],[],[],[6],[0],[0,6,7],[0,5,6,7],[],[],[]]
def c316 : List FTy := [[],[],[],[],[0],[6],[7],[0],[],[10],[]]
def a316 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.app (.var 0 [6]) (.var 0 [6]) [7]) [7]) (.lam 5 (.var 1 [6]) [5]) [0]) [4]) (.lam 6 (.lam 7 (.app (.app (.var 1 [0,6,7]) (.var 1 [0,6,7]) [0,7]) (.app (.var 0 [0,5,6,7]) (.var 2 [0]) [0,6,7]) [0]) [7]) [6]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject316 : ¬ Reader r316 :=
 Rootcert2Flow.reject [] d316 c316 a316 (by decide) (by decide) (by decide)
#print axioms reject316

def r318 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))) (.var 1))
def d318 : List FTy := [[],[],[],[],[6],[],[0,6],[0,6,7],[],[],[]]
def c318 : List FTy := [[],[],[],[],[0],[6],[7],[0],[],[10],[]]
def a318 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [6]) (.var 0 [6]) [7]) (.var 0 [6]) [0]) (.lam 5 (.var 1 [6]) [5]) [0]) [4]) (.lam 6 (.lam 7 (.app (.app (.var 1 [0,6]) (.var 1 [0,6]) [0,7]) (.app (.var 0 [0,6,7]) (.var 2 [0]) [0,7]) [0]) [7]) [6]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject318 : ¬ Reader r318 :=
 Rootcert2Flow.reject [] d318 c318 a318 (by decide) (by decide) (by decide)
#print axioms reject318

def r320 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))) (.var 1))
def d320 : List FTy := [[],[],[],[],[6],[0],[0,6],[0,5,6,7],[],[],[]]
def c320 : List FTy := [[],[],[],[],[0],[6],[7],[0],[],[10],[]]
def a320 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [6]) (.var 0 [6]) [7]) (.lam 5 (.var 1 [6]) [5]) [0]) (.var 0 [6]) [0]) [4]) (.lam 6 (.lam 7 (.app (.app (.var 1 [0,6]) (.var 1 [0,6]) [0,7]) (.app (.var 0 [0,5,6,7]) (.var 2 [0]) [0,6,7]) [0]) [7]) [6]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject320 : ¬ Reader r320 :=
 Rootcert2Flow.reject [] d320 c320 a320 (by decide) (by decide) (by decide)
#print axioms reject320
end Blc.Rootcert2.FlowCases43
