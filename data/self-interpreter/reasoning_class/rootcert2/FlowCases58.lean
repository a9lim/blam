import Flow
namespace Blc.Rootcert2.FlowCases58
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r518 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1)) (.var 0))
def d518 : List FTy := [[],[],[],[],[5],[5,6],[0,1,5,6,7],[],[],[]]
def c518 : List FTy := [[],[],[],[],[6],[6],[6],[],[9],[]]
def a518 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.var 0 [0,1,5,6,7]) [6]) [6]) [6]) [5]) [6]) (.var 1 [1]) [6]) (.var 0 [0]) [6]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [6])
theorem reject518 : ¬ Reader r518 :=
 Rootcert2Flow.reject [] d518 c518 a518 (by decide) (by decide) (by decide)
#print axioms reject518

def r519 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 0)) (.var 1))
def d519 : List FTy := [[],[],[],[],[5],[5,6],[0,1,5,6,7],[],[],[]]
def c519 : List FTy := [[],[],[],[],[6],[6],[6],[],[9],[]]
def a519 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.var 0 [0,1,5,6,7]) [6]) [6]) [6]) [5]) [6]) (.var 0 [0]) [6]) (.var 1 [1]) [6]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [6])
theorem reject519 : ¬ Reader r519 :=
 Rootcert2Flow.reject [] d519 c519 a519 (by decide) (by decide) (by decide)
#print axioms reject519

def r522 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1)) (.var 0))
def d522 : List FTy := [[],[],[],[],[5],[5,6],[0,1,5,6,7],[],[],[]]
def c522 : List FTy := [[],[],[],[],[6],[6],[6],[],[9],[]]
def a522 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.var 0 [0,1,5,6,7]) [6]) [6]) [6]) [5]) [6]) (.var 1 [1]) [6]) (.var 0 [0]) [6]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [6])
theorem reject522 : ¬ Reader r522 :=
 Rootcert2Flow.reject [] d522 c522 a522 (by decide) (by decide) (by decide)
#print axioms reject522

def r523 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 0)) (.var 1))
def d523 : List FTy := [[],[],[],[],[5],[5,6],[0,1,5,6,7],[],[],[]]
def c523 : List FTy := [[],[],[],[],[6],[6],[6],[],[9],[]]
def a523 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.var 0 [0,1,5,6,7]) [6]) [6]) [6]) [5]) [6]) (.var 0 [0]) [6]) (.var 1 [1]) [6]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [6])
theorem reject523 : ¬ Reader r523 :=
 Rootcert2Flow.reject [] d523 c523 a523 (by decide) (by decide) (by decide)
#print axioms reject523

def r540 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1)) (.var 0))
def d540 : List FTy := [[],[],[],[],[5],[5,6],[0,1,5,6,7],[],[],[]]
def c540 : List FTy := [[],[],[],[],[6],[6],[6],[],[9],[]]
def a540 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.var 0 [0,1,5,6,7]) [6]) [6]) [6]) [5]) [6]) (.var 1 [1]) [6]) (.var 0 [0]) [6]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [6])
theorem reject540 : ¬ Reader r540 :=
 Rootcert2Flow.reject [] d540 c540 a540 (by decide) (by decide) (by decide)
#print axioms reject540

def r541 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 0)) (.var 1))
def d541 : List FTy := [[],[],[],[],[5],[5,6],[0,1,5,6,7],[],[],[]]
def c541 : List FTy := [[],[],[],[],[6],[6],[6],[],[9],[]]
def a541 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.var 0 [0,1,5,6,7]) [6]) [6]) [6]) [5]) [6]) (.var 0 [0]) [6]) (.var 1 [1]) [6]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [6])
theorem reject541 : ¬ Reader r541 :=
 Rootcert2Flow.reject [] d541 c541 a541 (by decide) (by decide) (by decide)
#print axioms reject541

def r554 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1)) (.var 0))
def d554 : List FTy := [[],[],[],[],[5],[5,6],[0,1,5,6,7],[],[],[]]
def c554 : List FTy := [[],[],[],[],[6],[6],[6],[],[9],[]]
def a554 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.var 0 [0,1,5,6,7]) [6]) [6]) [6]) [5]) [6]) (.var 1 [1]) [6]) (.var 0 [0]) [6]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [6])
theorem reject554 : ¬ Reader r554 :=
 Rootcert2Flow.reject [] d554 c554 a554 (by decide) (by decide) (by decide)
#print axioms reject554

def r555 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 0)) (.var 1))
def d555 : List FTy := [[],[],[],[],[5],[5,6],[0,1,5,6,7],[],[],[]]
def c555 : List FTy := [[],[],[],[],[6],[6],[6],[],[9],[]]
def a555 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.var 0 [0,1,5,6,7]) [6]) [6]) [6]) [5]) [6]) (.var 0 [0]) [6]) (.var 1 [1]) [6]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [6])
theorem reject555 : ¬ Reader r555 :=
 Rootcert2Flow.reject [] d555 c555 a555 (by decide) (by decide) (by decide)
#print axioms reject555

def r570 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1)) (.var 0))
def d570 : List FTy := [[],[],[],[],[5],[5,6],[0,1,5,6,7],[],[],[]]
def c570 : List FTy := [[],[],[],[],[6],[6],[6],[],[9],[]]
def a570 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [6]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.var 0 [0,1,5,6,7]) [6]) [6]) [6]) [5]) [6]) (.var 1 [1]) [6]) (.var 0 [0]) [6]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [6])
theorem reject570 : ¬ Reader r570 :=
 Rootcert2Flow.reject [] d570 c570 a570 (by decide) (by decide) (by decide)
#print axioms reject570

def r571 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 0)) (.var 1))
def d571 : List FTy := [[],[],[],[],[5],[5,6],[0,1,5,6,7],[],[],[]]
def c571 : List FTy := [[],[],[],[],[6],[6],[6],[],[9],[]]
def a571 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) [6]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.var 1 [5,6]) (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.var 0 [0,1,5,6,7]) [6]) [6]) [6]) [5]) [6]) (.var 0 [0]) [6]) (.var 1 [1]) [6]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [6])
theorem reject571 : ¬ Reader r571 :=
 Rootcert2Flow.reject [] d571 c571 a571 (by decide) (by decide) (by decide)
#print axioms reject571
end Blc.Rootcert2.FlowCases58
