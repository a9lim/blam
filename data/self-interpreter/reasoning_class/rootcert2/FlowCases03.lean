import Flow
namespace Blc.Rootcert2.FlowCases03
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r11 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d11 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c11 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a11 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject11 : ¬ Reader r11 :=
 Rootcert2Flow.reject [] d11 c11 a11 (by decide) (by decide) (by decide)
#print axioms reject11

def r13 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d13 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c13 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a13 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject13 : ¬ Reader r13 :=
 Rootcert2Flow.reject [] d13 c13 a13 (by decide) (by decide) (by decide)
#print axioms reject13

def r15 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d15 : List FTy := [[],[],[],[],[5],[0,5,6],[6],[],[],[]]
def c15 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a15 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [6]) [0]) (.var 0 [6]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject15 : ¬ Reader r15 :=
 Rootcert2Flow.reject [] d15 c15 a15 (by decide) (by decide) (by decide)
#print axioms reject15

def r17 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d17 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c17 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a17 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject17 : ¬ Reader r17 :=
 Rootcert2Flow.reject [] d17 c17 a17 (by decide) (by decide) (by decide)
#print axioms reject17

def r19 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d19 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c19 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a19 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 1 [0]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject19 : ¬ Reader r19 :=
 Rootcert2Flow.reject [] d19 c19 a19 (by decide) (by decide) (by decide)
#print axioms reject19

def r21 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d21 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c21 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a21 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 1 [0]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject21 : ¬ Reader r21 :=
 Rootcert2Flow.reject [] d21 c21 a21 (by decide) (by decide) (by decide)
#print axioms reject21

def r23 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d23 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c23 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a23 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject23 : ¬ Reader r23 :=
 Rootcert2Flow.reject [] d23 c23 a23 (by decide) (by decide) (by decide)
#print axioms reject23

def r25 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d25 : List FTy := [[],[],[],[],[5],[0,5,6],[6],[],[],[]]
def c25 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a25 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [0]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [6]) [0]) (.var 0 [6]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject25 : ¬ Reader r25 :=
 Rootcert2Flow.reject [] d25 c25 a25 (by decide) (by decide) (by decide)
#print axioms reject25

def r27 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d27 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c27 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a27 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 1 [0]) (.app (.var 0 [5]) (.var 0 [5]) []) [0]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject27 : ¬ Reader r27 :=
 Rootcert2Flow.reject [] d27 c27 a27 (by decide) (by decide) (by decide)
#print axioms reject27

def r29 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d29 : List FTy := [[],[],[],[],[5],[0,5,6],[6],[],[],[]]
def c29 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a29 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.app (.var 1 [0]) (.var 0 [5]) [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [6]) [0]) (.var 0 [6]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject29 : ¬ Reader r29 :=
 Rootcert2Flow.reject [] d29 c29 a29 (by decide) (by decide) (by decide)
#print axioms reject29

def r31 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d31 : List FTy := [[],[],[],[],[5],[0,5,6],[6],[],[],[]]
def c31 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a31 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [6]) [0]) (.var 0 [6]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject31 : ¬ Reader r31 :=
 Rootcert2Flow.reject [] d31 c31 a31 (by decide) (by decide) (by decide)
#print axioms reject31

def r33 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d33 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c33 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a33 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.app (.var 1 [0]) (.var 0 [5]) [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject33 : ¬ Reader r33 :=
 Rootcert2Flow.reject [] d33 c33 a33 (by decide) (by decide) (by decide)
#print axioms reject33

def r35 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d35 : List FTy := [[],[],[],[],[5],[0,5,6],[6],[],[],[]]
def c35 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a35 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.app (.var 0 [5]) (.var 1 [0]) [0]) (.var 0 [5]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [6]) [0]) (.var 0 [6]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject35 : ¬ Reader r35 :=
 Rootcert2Flow.reject [] d35 c35 a35 (by decide) (by decide) (by decide)
#print axioms reject35

def r37 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d37 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c37 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a37 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject37 : ¬ Reader r37 :=
 Rootcert2Flow.reject [] d37 c37 a37 (by decide) (by decide) (by decide)
#print axioms reject37

def r39 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d39 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c39 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a39 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject39 : ¬ Reader r39 :=
 Rootcert2Flow.reject [] d39 c39 a39 (by decide) (by decide) (by decide)
#print axioms reject39

def r41 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d41 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c41 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a41 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject41 : ¬ Reader r41 :=
 Rootcert2Flow.reject [] d41 c41 a41 (by decide) (by decide) (by decide)
#print axioms reject41

def r43 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d43 : List FTy := [[],[],[],[],[5],[0,5,6],[6],[],[],[]]
def c43 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a43 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [6]) [0]) (.var 0 [6]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject43 : ¬ Reader r43 :=
 Rootcert2Flow.reject [] d43 c43 a43 (by decide) (by decide) (by decide)
#print axioms reject43

def r45 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d45 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c45 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a45 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject45 : ¬ Reader r45 :=
 Rootcert2Flow.reject [] d45 c45 a45 (by decide) (by decide) (by decide)
#print axioms reject45

def r47 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d47 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c47 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a47 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 1 [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject47 : ¬ Reader r47 :=
 Rootcert2Flow.reject [] d47 c47 a47 (by decide) (by decide) (by decide)
#print axioms reject47

def r49 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d49 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c49 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a49 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject49 : ¬ Reader r49 :=
 Rootcert2Flow.reject [] d49 c49 a49 (by decide) (by decide) (by decide)
#print axioms reject49

def r51 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d51 : List FTy := [[],[],[],[],[5],[0,5,6],[6],[],[],[]]
def c51 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a51 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) (.var 0 [5]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 0 [6]) [0]) (.var 0 [6]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject51 : ¬ Reader r51 :=
 Rootcert2Flow.reject [] d51 c51 a51 (by decide) (by decide) (by decide)
#print axioms reject51

def r53 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d53 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c53 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a53 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject53 : ¬ Reader r53 :=
 Rootcert2Flow.reject [] d53 c53 a53 (by decide) (by decide) (by decide)
#print axioms reject53

def r55 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1))
def d55 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c55 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a55 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 1 [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject55 : ¬ Reader r55 :=
 Rootcert2Flow.reject [] d55 c55 a55 (by decide) (by decide) (by decide)
#print axioms reject55

def r342 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0))
def d342 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c342 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a342 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject342 : ¬ Reader r342 :=
 Rootcert2Flow.reject [] d342 c342 a342 (by decide) (by decide) (by decide)
#print axioms reject342

def r343 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1))
def d343 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c343 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a343 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject343 : ¬ Reader r343 :=
 Rootcert2Flow.reject [] d343 c343 a343 (by decide) (by decide) (by decide)
#print axioms reject343

def r346 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0))
def d346 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c346 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a346 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject346 : ¬ Reader r346 :=
 Rootcert2Flow.reject [] d346 c346 a346 (by decide) (by decide) (by decide)
#print axioms reject346

def r347 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1))
def d347 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c347 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a347 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject347 : ¬ Reader r347 :=
 Rootcert2Flow.reject [] d347 c347 a347 (by decide) (by decide) (by decide)
#print axioms reject347

def r350 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0))
def d350 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c350 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a350 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject350 : ¬ Reader r350 :=
 Rootcert2Flow.reject [] d350 c350 a350 (by decide) (by decide) (by decide)
#print axioms reject350

def r351 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1))
def d351 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c351 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a351 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject351 : ¬ Reader r351 :=
 Rootcert2Flow.reject [] d351 c351 a351 (by decide) (by decide) (by decide)
#print axioms reject351

def r354 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0))
def d354 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c354 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a354 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject354 : ¬ Reader r354 :=
 Rootcert2Flow.reject [] d354 c354 a354 (by decide) (by decide) (by decide)
#print axioms reject354

def r355 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1))
def d355 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c355 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a355 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject355 : ¬ Reader r355 :=
 Rootcert2Flow.reject [] d355 c355 a355 (by decide) (by decide) (by decide)
#print axioms reject355

def r358 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0))
def d358 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c358 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a358 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject358 : ¬ Reader r358 :=
 Rootcert2Flow.reject [] d358 c358 a358 (by decide) (by decide) (by decide)
#print axioms reject358

def r359 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1))
def d359 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c359 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a359 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject359 : ¬ Reader r359 :=
 Rootcert2Flow.reject [] d359 c359 a359 (by decide) (by decide) (by decide)
#print axioms reject359
end Blc.Rootcert2.FlowCases03
