import Flow
namespace Blc.Rootcert2.FlowCases02
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r10 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d10 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c10 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a10 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject10 : ¬ Reader r10 :=
 Rootcert2Flow.reject [] d10 c10 a10 (by decide) (by decide) (by decide)
#print axioms reject10

def r12 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d12 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c12 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a12 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject12 : ¬ Reader r12 :=
 Rootcert2Flow.reject [] d12 c12 a12 (by decide) (by decide) (by decide)
#print axioms reject12

def r14 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d14 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c14 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a14 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.var 0 [0,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject14 : ¬ Reader r14 :=
 Rootcert2Flow.reject [] d14 c14 a14 (by decide) (by decide) (by decide)
#print axioms reject14

def r16 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d16 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c16 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a16 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject16 : ¬ Reader r16 :=
 Rootcert2Flow.reject [] d16 c16 a16 (by decide) (by decide) (by decide)
#print axioms reject16

def r18 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d18 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c18 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a18 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 1 [0]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject18 : ¬ Reader r18 :=
 Rootcert2Flow.reject [] d18 c18 a18 (by decide) (by decide) (by decide)
#print axioms reject18

def r20 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d20 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c20 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a20 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 1 [0]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject20 : ¬ Reader r20 :=
 Rootcert2Flow.reject [] d20 c20 a20 (by decide) (by decide) (by decide)
#print axioms reject20

def r22 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d22 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c22 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a22 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject22 : ¬ Reader r22 :=
 Rootcert2Flow.reject [] d22 c22 a22 (by decide) (by decide) (by decide)
#print axioms reject22

def r24 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d24 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c24 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a24 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [0]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.var 0 [0,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject24 : ¬ Reader r24 :=
 Rootcert2Flow.reject [] d24 c24 a24 (by decide) (by decide) (by decide)
#print axioms reject24

def r26 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d26 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c26 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a26 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 1 [0]) (.app (.var 0 [5]) (.var 0 [5]) []) [0]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject26 : ¬ Reader r26 :=
 Rootcert2Flow.reject [] d26 c26 a26 (by decide) (by decide) (by decide)
#print axioms reject26

def r28 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d28 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c28 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a28 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.app (.var 1 [0]) (.var 0 [5]) [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.var 0 [0,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject28 : ¬ Reader r28 :=
 Rootcert2Flow.reject [] d28 c28 a28 (by decide) (by decide) (by decide)
#print axioms reject28

def r30 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d30 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c30 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a30 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.var 0 [0,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject30 : ¬ Reader r30 :=
 Rootcert2Flow.reject [] d30 c30 a30 (by decide) (by decide) (by decide)
#print axioms reject30

def r32 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d32 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c32 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a32 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.app (.var 1 [0]) (.var 0 [5]) [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject32 : ¬ Reader r32 :=
 Rootcert2Flow.reject [] d32 c32 a32 (by decide) (by decide) (by decide)
#print axioms reject32

def r34 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d34 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c34 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a34 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.app (.var 0 [5]) (.var 1 [0]) [0]) (.var 0 [5]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.var 0 [0,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject34 : ¬ Reader r34 :=
 Rootcert2Flow.reject [] d34 c34 a34 (by decide) (by decide) (by decide)
#print axioms reject34

def r36 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d36 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c36 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a36 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject36 : ¬ Reader r36 :=
 Rootcert2Flow.reject [] d36 c36 a36 (by decide) (by decide) (by decide)
#print axioms reject36

def r38 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d38 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c38 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a38 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject38 : ¬ Reader r38 :=
 Rootcert2Flow.reject [] d38 c38 a38 (by decide) (by decide) (by decide)
#print axioms reject38

def r40 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d40 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c40 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a40 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject40 : ¬ Reader r40 :=
 Rootcert2Flow.reject [] d40 c40 a40 (by decide) (by decide) (by decide)
#print axioms reject40

def r42 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d42 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c42 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a42 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.var 0 [0,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject42 : ¬ Reader r42 :=
 Rootcert2Flow.reject [] d42 c42 a42 (by decide) (by decide) (by decide)
#print axioms reject42

def r44 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d44 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c44 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a44 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject44 : ¬ Reader r44 :=
 Rootcert2Flow.reject [] d44 c44 a44 (by decide) (by decide) (by decide)
#print axioms reject44

def r46 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d46 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c46 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a46 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 1 [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject46 : ¬ Reader r46 :=
 Rootcert2Flow.reject [] d46 c46 a46 (by decide) (by decide) (by decide)
#print axioms reject46

def r48 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d48 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c48 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a48 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject48 : ¬ Reader r48 :=
 Rootcert2Flow.reject [] d48 c48 a48 (by decide) (by decide) (by decide)
#print axioms reject48

def r50 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d50 : List FTy := [[],[],[],[],[5],[0,5,6],[0,6],[],[],[]]
def c50 : List FTy := [[],[],[],[],[0],[0],[0],[],[9],[]]
def a50 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [0]) (.app (.var 0 [5]) (.var 1 [0]) [0]) [0]) (.var 0 [5]) [0]) [4]) (.lam 5 (.app (.var 0 [0,5,6]) (.lam 6 (.app (.var 0 [0,6]) (.app (.var 1 [0,5,6]) (.var 0 [0,6]) [0]) [0]) [6]) [0]) [5]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0])
theorem reject50 : ¬ Reader r50 :=
 Rootcert2Flow.reject [] d50 c50 a50 (by decide) (by decide) (by decide)
#print axioms reject50

def r52 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d52 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c52 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a52 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 1 [0]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject52 : ¬ Reader r52 :=
 Rootcert2Flow.reject [] d52 c52 a52 (by decide) (by decide) (by decide)
#print axioms reject52

def r54 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1))
def d54 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c54 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a54 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 1 [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject54 : ¬ Reader r54 :=
 Rootcert2Flow.reject [] d54 c54 a54 (by decide) (by decide) (by decide)
#print axioms reject54

def r340 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))
def d340 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c340 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a340 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject340 : ¬ Reader r340 :=
 Rootcert2Flow.reject [] d340 c340 a340 (by decide) (by decide) (by decide)
#print axioms reject340

def r341 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1))
def d341 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c341 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a341 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject341 : ¬ Reader r341 :=
 Rootcert2Flow.reject [] d341 c341 a341 (by decide) (by decide) (by decide)
#print axioms reject341

def r344 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))
def d344 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c344 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a344 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject344 : ¬ Reader r344 :=
 Rootcert2Flow.reject [] d344 c344 a344 (by decide) (by decide) (by decide)
#print axioms reject344

def r345 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1))
def d345 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c345 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a345 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject345 : ¬ Reader r345 :=
 Rootcert2Flow.reject [] d345 c345 a345 (by decide) (by decide) (by decide)
#print axioms reject345

def r348 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))
def d348 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c348 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a348 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject348 : ¬ Reader r348 :=
 Rootcert2Flow.reject [] d348 c348 a348 (by decide) (by decide) (by decide)
#print axioms reject348

def r349 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1))
def d349 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c349 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a349 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.app (.var 0 [5]) (.var 0 [5]) []) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject349 : ¬ Reader r349 :=
 Rootcert2Flow.reject [] d349 c349 a349 (by decide) (by decide) (by decide)
#print axioms reject349

def r352 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))
def d352 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c352 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a352 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject352 : ¬ Reader r352 :=
 Rootcert2Flow.reject [] d352 c352 a352 (by decide) (by decide) (by decide)
#print axioms reject352

def r353 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1))
def d353 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c353 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a353 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) []) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject353 : ¬ Reader r353 :=
 Rootcert2Flow.reject [] d353 c353 a353 (by decide) (by decide) (by decide)
#print axioms reject353

def r356 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))
def d356 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c356 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a356 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject356 : ¬ Reader r356 :=
 Rootcert2Flow.reject [] d356 c356 a356 (by decide) (by decide) (by decide)
#print axioms reject356

def r357 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1))
def d357 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c357 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a357 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) []) (.var 0 [5]) []) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject357 : ¬ Reader r357 :=
 Rootcert2Flow.reject [] d357 c357 a357 (by decide) (by decide) (by decide)
#print axioms reject357
end Blc.Rootcert2.FlowCases02
