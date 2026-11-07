import Flow
namespace Blc.Rootcert2.FlowCases61
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r530 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
def d530 : List FTy := [[],[],[],[],[5],[5,6],[1,5,6],[],[],[]]
def c530 : List FTy := [[],[],[],[],[6],[6],[],[],[9],[]]
def a530 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 0 [1,5,6]) (.var 1 [5,6]) [1,6]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject530 : ¬ Reader r530 :=
 Rootcert2Flow.reject [] d530 c530 a530 (by decide) (by decide) (by decide)
#print axioms reject530

def r531 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
def d531 : List FTy := [[],[],[],[],[5],[5,6],[0,5,6],[],[],[]]
def c531 : List FTy := [[],[],[],[],[6],[6],[],[],[9],[]]
def a531 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 0 [0,5,6]) (.var 1 [5,6]) [0,6]) []) [6]) [5]) [6]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject531 : ¬ Reader r531 :=
 Rootcert2Flow.reject [] d531 c531 a531 (by decide) (by decide) (by decide)
#print axioms reject531

def r534 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
def d534 : List FTy := [[],[],[],[],[5],[5],[1,5,6],[],[],[]]
def c534 : List FTy := [[],[],[],[],[6],[6],[],[],[9],[]]
def a534 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [1,5,6]) (.var 1 [5]) [1,6]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject534 : ¬ Reader r534 :=
 Rootcert2Flow.reject [] d534 c534 a534 (by decide) (by decide) (by decide)
#print axioms reject534

def r535 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
def d535 : List FTy := [[],[],[],[],[5],[5],[0,5,6],[],[],[]]
def c535 : List FTy := [[],[],[],[],[6],[6],[],[],[9],[]]
def a535 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [0,5,6]) (.var 1 [5]) [0,6]) []) [6]) [5]) [6]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject535 : ¬ Reader r535 :=
 Rootcert2Flow.reject [] d535 c535 a535 (by decide) (by decide) (by decide)
#print axioms reject535

def r550 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
def d550 : List FTy := [[],[],[],[],[5],[5],[5,6],[],[],[]]
def c550 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a550 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [5,6]) (.var 1 [5]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject550 : ¬ Reader r550 :=
 Rootcert2Flow.reject [] d550 c550 a550 (by decide) (by decide) (by decide)
#print axioms reject550

def r551 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
def d551 : List FTy := [[],[],[],[],[5],[5],[5,6],[],[],[]]
def c551 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a551 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [5,6]) (.var 1 [5]) [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject551 : ¬ Reader r551 :=
 Rootcert2Flow.reject [] d551 c551 a551 (by decide) (by decide) (by decide)
#print axioms reject551

def r564 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
def d564 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c564 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a564 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 0 [5,6]) (.var 1 [5,6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject564 : ¬ Reader r564 :=
 Rootcert2Flow.reject [] d564 c564 a564 (by decide) (by decide) (by decide)
#print axioms reject564

def r565 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
def d565 : List FTy := [[],[],[],[],[5],[5,6],[5,6],[],[],[]]
def c565 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a565 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 0 [5,6]) (.var 1 [5,6]) [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject565 : ¬ Reader r565 :=
 Rootcert2Flow.reject [] d565 c565 a565 (by decide) (by decide) (by decide)
#print axioms reject565

def r580 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
def d580 : List FTy := [[],[],[],[],[5],[5],[5,6],[],[],[]]
def c580 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a580 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [5,6]) (.var 1 [5]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject580 : ¬ Reader r580 :=
 Rootcert2Flow.reject [] d580 c580 a580 (by decide) (by decide) (by decide)
#print axioms reject580

def r581 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
def d581 : List FTy := [[],[],[],[],[5],[5],[5,6],[],[],[]]
def c581 : List FTy := [[],[],[],[],[],[6],[],[],[9],[]]
def a581 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [5,6]) (.var 1 [5]) [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject581 : ¬ Reader r581 :=
 Rootcert2Flow.reject [] d581 c581 a581 (by decide) (by decide) (by decide)
#print axioms reject581
end Blc.Rootcert2.FlowCases61
