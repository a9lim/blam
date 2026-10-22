import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XFlow08
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r3985 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))
def d3985 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3985 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3985 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.lam 7 (.var 0 []) [7]) [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3985 : ¬ Reader r3985 :=
 Rootcert2Flow.reject [] d3985 c3985 a3985 (by decide) (by decide) (by decide)
#print axioms reject3985

def r3986 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1))
def d3986 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3986 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3986 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.lam 7 (.var 0 []) [7]) [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3986 : ¬ Reader r3986 :=
 Rootcert2Flow.reject [] d3986 c3986 a3986 (by decide) (by decide) (by decide)
#print axioms reject3986

def r3987 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1))
def d3987 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3987 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3987 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3987 : ¬ Reader r3987 :=
 Rootcert2Flow.reject [] d3987 c3987 a3987 (by decide) (by decide) (by decide)
#print axioms reject3987

def r3988 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0)))
def d3988 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c3988 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a3988 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject3988 : ¬ Reader r3988 :=
 Rootcert2Flow.reject [] d3988 c3988 a3988 (by decide) (by decide) (by decide)
#print axioms reject3988

def r4001 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0)))
def d4001 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4001 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4001 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4001 : ¬ Reader r4001 :=
 Rootcert2Flow.reject [] d4001 c4001 a4001 (by decide) (by decide) (by decide)
#print axioms reject4001

def r4002 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1))
def d4002 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4002 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4002 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4002 : ¬ Reader r4002 :=
 Rootcert2Flow.reject [] d4002 c4002 a4002 (by decide) (by decide) (by decide)
#print axioms reject4002

def r4003 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0)))
def d4003 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4003 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4003 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4003 : ¬ Reader r4003 :=
 Rootcert2Flow.reject [] d4003 c4003 a4003 (by decide) (by decide) (by decide)
#print axioms reject4003

def r4004 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0))))
def d4004 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4004 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4004 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.app (.var 0 [0]) (.lam 7 (.var 0 []) [7]) [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4004 : ¬ Reader r4004 :=
 Rootcert2Flow.reject [] d4004 c4004 a4004 (by decide) (by decide) (by decide)
#print axioms reject4004

def r4005 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0))
def d4005 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4005 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4005 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.lam 7 (.var 0 []) [7]) [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4005 : ¬ Reader r4005 :=
 Rootcert2Flow.reject [] d4005 c4005 a4005 (by decide) (by decide) (by decide)
#print axioms reject4005

def r4006 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0)))
def d4006 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4006 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4006 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4006 : ¬ Reader r4006 :=
 Rootcert2Flow.reject [] d4006 c4006 a4006 (by decide) (by decide) (by decide)
#print axioms reject4006

def r4007 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0))))
def d4007 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4007 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4007 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.lam 7 (.var 0 []) [7]) [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4007 : ¬ Reader r4007 :=
 Rootcert2Flow.reject [] d4007 c4007 a4007 (by decide) (by decide) (by decide)
#print axioms reject4007

def r4008 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1))
def d4008 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4008 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4008 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.app (.var 0 [0]) (.lam 7 (.var 0 []) [7]) [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4008 : ¬ Reader r4008 :=
 Rootcert2Flow.reject [] d4008 c4008 a4008 (by decide) (by decide) (by decide)
#print axioms reject4008

def r4009 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))
def d4009 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4009 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4009 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.lam 7 (.var 0 []) [7]) [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4009 : ¬ Reader r4009 :=
 Rootcert2Flow.reject [] d4009 c4009 a4009 (by decide) (by decide) (by decide)
#print axioms reject4009

def r4010 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1))
def d4010 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4010 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4010 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.lam 7 (.var 0 []) [7]) [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4010 : ¬ Reader r4010 :=
 Rootcert2Flow.reject [] d4010 c4010 a4010 (by decide) (by decide) (by decide)
#print axioms reject4010

def r4011 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1))
def d4011 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4011 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4011 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4011 : ¬ Reader r4011 :=
 Rootcert2Flow.reject [] d4011 c4011 a4011 (by decide) (by decide) (by decide)
#print axioms reject4011

def r4012 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0)))
def d4012 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4012 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4012 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4012 : ¬ Reader r4012 :=
 Rootcert2Flow.reject [] d4012 c4012 a4012 (by decide) (by decide) (by decide)
#print axioms reject4012

def r4100 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d4100 : List FTy := [[],[],[],[],[5],[5,7],[7],[7],[],[],[]]
def c4100 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4100 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.lam 6 (.app (.var 0 [7]) (.var 0 [7]) []) [6]) (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [5,7]) (.var 0 [7]) []) []) [7]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4100 : ¬ Reader r4100 :=
 Rootcert2Flow.reject [] d4100 c4100 a4100 (by decide) (by decide) (by decide)
#print axioms reject4100

def r4101 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d4101 : List FTy := [[],[],[],[],[5],[5,7],[7],[7],[],[],[]]
def c4101 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4101 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.lam 6 (.app (.var 0 [7]) (.var 0 [7]) []) [6]) (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [5,7]) (.var 0 [7]) []) []) [7]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4101 : ¬ Reader r4101 :=
 Rootcert2Flow.reject [] d4101 c4101 a4101 (by decide) (by decide) (by decide)
#print axioms reject4101

def r4102 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d4102 : List FTy := [[],[],[],[],[5],[5,7],[7],[7],[],[],[]]
def c4102 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4102 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.lam 6 (.app (.var 0 [7]) (.var 0 [7]) []) [6]) (.lam 7 (.app (.var 0 [7]) (.app (.var 1 [5,7]) (.var 0 [7]) []) []) [7]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4102 : ¬ Reader r4102 :=
 Rootcert2Flow.reject [] d4102 c4102 a4102 (by decide) (by decide) (by decide)
#print axioms reject4102

def r4103 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
def d4103 : List FTy := [[],[],[],[],[5],[5],[7],[5,7],[],[],[]]
def c4103 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4103 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.lam 6 (.app (.var 0 [7]) (.var 0 [7]) []) [6]) (.lam 7 (.app (.var 0 [5,7]) (.app (.var 0 [5,7]) (.var 1 [5]) []) []) [7]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4103 : ¬ Reader r4103 :=
 Rootcert2Flow.reject [] d4103 c4103 a4103 (by decide) (by decide) (by decide)
#print axioms reject4103

def r4104 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
def d4104 : List FTy := [[],[],[],[],[5],[5],[7],[5,7],[],[],[]]
def c4104 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4104 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.lam 6 (.app (.var 0 [7]) (.var 0 [7]) []) [6]) (.lam 7 (.app (.var 0 [5,7]) (.app (.var 0 [5,7]) (.var 1 [5]) []) []) [7]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4104 : ¬ Reader r4104 :=
 Rootcert2Flow.reject [] d4104 c4104 a4104 (by decide) (by decide) (by decide)
#print axioms reject4104

def r4105 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
def d4105 : List FTy := [[],[],[],[],[5],[5],[7],[5,7],[],[],[]]
def c4105 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4105 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.lam 6 (.app (.var 0 [7]) (.var 0 [7]) []) [6]) (.lam 7 (.app (.var 0 [5,7]) (.app (.var 0 [5,7]) (.var 1 [5]) []) []) [7]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4105 : ¬ Reader r4105 :=
 Rootcert2Flow.reject [] d4105 c4105 a4105 (by decide) (by decide) (by decide)
#print axioms reject4105

def r4106 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
def d4106 : List FTy := [[],[],[],[],[5],[5,7],[7],[7],[],[],[]]
def c4106 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4106 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.lam 6 (.app (.var 0 [7]) (.var 0 [7]) []) [6]) (.lam 7 (.app (.app (.var 1 [5,7]) (.var 0 [7]) []) (.var 0 [7]) []) [7]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4106 : ¬ Reader r4106 :=
 Rootcert2Flow.reject [] d4106 c4106 a4106 (by decide) (by decide) (by decide)
#print axioms reject4106

def r4107 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
def d4107 : List FTy := [[],[],[],[],[5],[5,7],[7],[7],[],[],[]]
def c4107 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4107 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.lam 6 (.app (.var 0 [7]) (.var 0 [7]) []) [6]) (.lam 7 (.app (.app (.var 1 [5,7]) (.var 0 [7]) []) (.var 0 [7]) []) [7]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4107 : ¬ Reader r4107 :=
 Rootcert2Flow.reject [] d4107 c4107 a4107 (by decide) (by decide) (by decide)
#print axioms reject4107

def r4108 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
def d4108 : List FTy := [[],[],[],[],[5],[5,7],[7],[7],[],[],[]]
def c4108 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4108 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.lam 6 (.app (.var 0 [7]) (.var 0 [7]) []) [6]) (.lam 7 (.app (.app (.var 1 [5,7]) (.var 0 [7]) []) (.var 0 [7]) []) [7]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4108 : ¬ Reader r4108 :=
 Rootcert2Flow.reject [] d4108 c4108 a4108 (by decide) (by decide) (by decide)
#print axioms reject4108

def r4127 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
def d4127 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4127 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4127 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.app (.var 0 []) (.var 0 []) []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4127 : ¬ Reader r4127 :=
 Rootcert2Flow.reject [] d4127 c4127 a4127 (by decide) (by decide) (by decide)
#print axioms reject4127

def r4128 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
def d4128 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4128 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4128 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.app (.var 0 []) (.var 0 []) []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4128 : ¬ Reader r4128 :=
 Rootcert2Flow.reject [] d4128 c4128 a4128 (by decide) (by decide) (by decide)
#print axioms reject4128

def r4129 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
def d4129 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4129 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4129 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.app (.var 0 []) (.var 0 []) []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4129 : ¬ Reader r4129 :=
 Rootcert2Flow.reject [] d4129 c4129 a4129 (by decide) (by decide) (by decide)
#print axioms reject4129

def r4160 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
def d4160 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4160 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4160 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4160 : ¬ Reader r4160 :=
 Rootcert2Flow.reject [] d4160 c4160 a4160 (by decide) (by decide) (by decide)
#print axioms reject4160

def r4161 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
def d4161 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4161 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4161 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4161 : ¬ Reader r4161 :=
 Rootcert2Flow.reject [] d4161 c4161 a4161 (by decide) (by decide) (by decide)
#print axioms reject4161

def r4162 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
def d4162 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4162 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4162 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4162 : ¬ Reader r4162 :=
 Rootcert2Flow.reject [] d4162 c4162 a4162 (by decide) (by decide) (by decide)
#print axioms reject4162

def r4172 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d4172 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4172 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4172 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4172 : ¬ Reader r4172 :=
 Rootcert2Flow.reject [] d4172 c4172 a4172 (by decide) (by decide) (by decide)
#print axioms reject4172

def r4173 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d4173 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4173 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4173 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4173 : ¬ Reader r4173 :=
 Rootcert2Flow.reject [] d4173 c4173 a4173 (by decide) (by decide) (by decide)
#print axioms reject4173

def r4174 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d4174 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4174 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4174 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4174 : ¬ Reader r4174 :=
 Rootcert2Flow.reject [] d4174 c4174 a4174 (by decide) (by decide) (by decide)
#print axioms reject4174

def r4190 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
def d4190 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4190 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4190 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4190 : ¬ Reader r4190 :=
 Rootcert2Flow.reject [] d4190 c4190 a4190 (by decide) (by decide) (by decide)
#print axioms reject4190

def r4191 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
def d4191 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4191 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4191 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4191 : ¬ Reader r4191 :=
 Rootcert2Flow.reject [] d4191 c4191 a4191 (by decide) (by decide) (by decide)
#print axioms reject4191

def r4192 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
def d4192 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4192 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4192 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4192 : ¬ Reader r4192 :=
 Rootcert2Flow.reject [] d4192 c4192 a4192 (by decide) (by decide) (by decide)
#print axioms reject4192

def r4208 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d4208 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4208 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4208 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4208 : ¬ Reader r4208 :=
 Rootcert2Flow.reject [] d4208 c4208 a4208 (by decide) (by decide) (by decide)
#print axioms reject4208

def r4209 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d4209 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4209 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4209 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4209 : ¬ Reader r4209 :=
 Rootcert2Flow.reject [] d4209 c4209 a4209 (by decide) (by decide) (by decide)
#print axioms reject4209

def r4210 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d4210 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4210 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4210 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4210 : ¬ Reader r4210 :=
 Rootcert2Flow.reject [] d4210 c4210 a4210 (by decide) (by decide) (by decide)
#print axioms reject4210

def r4220 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))) (.var 1)) (.var 0)) (.var 0))
def d4220 : List FTy := [[],[],[],[],[6],[9],[11],[14],[10],[9],[11],[18],[15],[18],[14],[13,16],[17,18],[17,18],[17,18],[22],[25,32],[28],[20,23],[24,25,32],[24,25,31,32],[24,25,31,32],[29],[25,32],[28],[27,30],[25,31,32],[24,25,31,32],[24,25,31,32],[],[],[]]
def c4220 : List FTy := [[],[],[],[],[5],[7],[7],[],[9],[11],[11],[],[16],[14],[18],[16],[14],[18],[18],[23],[21],[25,32],[23],[21],[25],[25,32],[30],[28],[25,32],[30],[28],[32],[25,32],[],[35],[]]
def a4220 : Ann := (.app (.app (.app (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [9]) (.var 0 [9]) [11]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [11]) (.app (.var 0 [14]) (.var 0 [14]) [18]) []) [7]) [6]) [5]) (.app (.lam 8 (.lam 9 (.app (.var 1 [10]) (.app (.var 0 [9]) (.var 0 [9]) [11]) [11]) [9]) [8]) (.lam 10 (.lam 11 (.app (.var 1 [11]) (.app (.var 0 [18]) (.var 0 [18]) [18]) []) [11]) [10]) [9]) [7]) (.app (.app (.lam 12 (.app (.var 0 [15]) (.app (.var 0 [15]) (.lam 13 (.lam 14 (.app (.var 1 [18]) (.app (.var 0 [14]) (.var 0 [14]) [18]) [18]) [14]) [13]) [16]) [16]) [12]) (.lam 15 (.lam 16 (.app (.var 1 [13,16]) (.app (.var 0 [17,18]) (.var 0 [17,18]) [18]) [14]) [16]) [15]) [16]) (.lam 17 (.lam 18 (.app (.var 1 [17,18]) (.app (.var 0 [17,18]) (.var 0 [17,18]) [18]) [18]) [18]) [17]) [14]) []) (.app (.app (.app (.lam 19 (.app (.var 0 [22]) (.app (.var 0 [22]) (.lam 20 (.lam 21 (.app (.var 1 [25,32]) (.app (.var 0 [28]) (.var 0 [28]) [25,32]) [25,32]) [21]) [20]) [23]) [23]) [19]) (.lam 22 (.lam 23 (.app (.var 1 [20,23]) (.app (.var 0 [24,25,32]) (.var 0 [24,25,32]) [25,32]) [21]) [23]) [22]) [23]) (.lam 24 (.lam 25 (.app (.var 1 [24,25,31,32]) (.app (.var 0 [24,25,31,32]) (.var 0 [24,25,31,32]) [25,32]) [25,32]) [25]) [24]) [21]) (.app (.app (.lam 26 (.app (.var 0 [29]) (.app (.var 0 [29]) (.lam 27 (.lam 28 (.app (.var 1 [25,32]) (.app (.var 0 [28]) (.var 0 [28]) [25,32]) [25,32]) [28]) [27]) [30]) [30]) [26]) (.lam 29 (.lam 30 (.app (.var 1 [27,30]) (.app (.var 0 [25,31,32]) (.var 0 [25,31,32]) [25,32]) [28]) [30]) [29]) [30]) (.lam 31 (.lam 32 (.app (.var 1 [24,25,31,32]) (.app (.var 0 [24,25,31,32]) (.var 0 [24,25,31,32]) [25,32]) [25,32]) [32]) [31]) [28]) [25,32]) []) (.app (.var 1 [1]) (.var 1 [1]) [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 33 (.app (.app (.var 0 []) (.lam 34 (.lam 35 (.var 1 []) [35]) [34]) []) (.var 4 [3]) []) [33]) [])
theorem reject4220 : ¬ Reader r4220 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]] d4220 c4220 a4220 (by decide) (by decide) (by decide)
#print axioms reject4220

def r4221 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))) (.var 0)) (.var 1)) (.var 0))
def d4221 : List FTy := [[],[],[],[],[6],[9],[11],[14],[10],[9],[11],[18],[15],[18],[14],[13,16],[17,18],[17,18],[17,18],[22],[25,32],[28],[20,23],[24,25,32],[24,25,31,32],[24,25,31,32],[29],[25,32],[28],[27,30],[25,31,32],[24,25,31,32],[24,25,31,32],[],[],[]]
def c4221 : List FTy := [[],[],[],[],[5],[7],[7],[],[9],[11],[11],[],[16],[14],[18],[16],[14],[18],[18],[23],[21],[25,32],[23],[21],[25],[25,32],[30],[28],[25,32],[30],[28],[32],[25,32],[],[35],[]]
def a4221 : Ann := (.app (.app (.app (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [9]) (.var 0 [9]) [11]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [11]) (.app (.var 0 [14]) (.var 0 [14]) [18]) []) [7]) [6]) [5]) (.app (.lam 8 (.lam 9 (.app (.var 1 [10]) (.app (.var 0 [9]) (.var 0 [9]) [11]) [11]) [9]) [8]) (.lam 10 (.lam 11 (.app (.var 1 [11]) (.app (.var 0 [18]) (.var 0 [18]) [18]) []) [11]) [10]) [9]) [7]) (.app (.app (.lam 12 (.app (.var 0 [15]) (.app (.var 0 [15]) (.lam 13 (.lam 14 (.app (.var 1 [18]) (.app (.var 0 [14]) (.var 0 [14]) [18]) [18]) [14]) [13]) [16]) [16]) [12]) (.lam 15 (.lam 16 (.app (.var 1 [13,16]) (.app (.var 0 [17,18]) (.var 0 [17,18]) [18]) [14]) [16]) [15]) [16]) (.lam 17 (.lam 18 (.app (.var 1 [17,18]) (.app (.var 0 [17,18]) (.var 0 [17,18]) [18]) [18]) [18]) [17]) [14]) []) (.app (.app (.app (.lam 19 (.app (.var 0 [22]) (.app (.var 0 [22]) (.lam 20 (.lam 21 (.app (.var 1 [25,32]) (.app (.var 0 [28]) (.var 0 [28]) [25,32]) [25,32]) [21]) [20]) [23]) [23]) [19]) (.lam 22 (.lam 23 (.app (.var 1 [20,23]) (.app (.var 0 [24,25,32]) (.var 0 [24,25,32]) [25,32]) [21]) [23]) [22]) [23]) (.lam 24 (.lam 25 (.app (.var 1 [24,25,31,32]) (.app (.var 0 [24,25,31,32]) (.var 0 [24,25,31,32]) [25,32]) [25,32]) [25]) [24]) [21]) (.app (.app (.lam 26 (.app (.var 0 [29]) (.app (.var 0 [29]) (.lam 27 (.lam 28 (.app (.var 1 [25,32]) (.app (.var 0 [28]) (.var 0 [28]) [25,32]) [25,32]) [28]) [27]) [30]) [30]) [26]) (.lam 29 (.lam 30 (.app (.var 1 [27,30]) (.app (.var 0 [25,31,32]) (.var 0 [25,31,32]) [25,32]) [28]) [30]) [29]) [30]) (.lam 31 (.lam 32 (.app (.var 1 [24,25,31,32]) (.app (.var 0 [24,25,31,32]) (.var 0 [24,25,31,32]) [25,32]) [25,32]) [32]) [31]) [28]) [25,32]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 33 (.app (.app (.var 0 []) (.lam 34 (.lam 35 (.var 1 []) [35]) [34]) []) (.var 4 [3]) []) [33]) [])
theorem reject4221 : ¬ Reader r4221 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]] d4221 c4221 a4221 (by decide) (by decide) (by decide)
#print axioms reject4221

def r4222 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))) (.var 0)) (.var 0)) (.var 1))
def d4222 : List FTy := [[],[],[],[],[6],[9],[11],[14],[10],[9],[11],[18],[15],[18],[14],[13,16],[17,18],[17,18],[17,18],[22],[25,32],[28],[20,23],[24,25,32],[24,25,31,32],[24,25,31,32],[29],[25,32],[28],[27,30],[25,31,32],[24,25,31,32],[24,25,31,32],[],[],[]]
def c4222 : List FTy := [[],[],[],[],[5],[7],[7],[],[9],[11],[11],[],[16],[14],[18],[16],[14],[18],[18],[23],[21],[25,32],[23],[21],[25],[25,32],[30],[28],[25,32],[30],[28],[32],[25,32],[],[35],[]]
def a4222 : Ann := (.app (.app (.app (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [9]) (.var 0 [9]) [11]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [11]) (.app (.var 0 [14]) (.var 0 [14]) [18]) []) [7]) [6]) [5]) (.app (.lam 8 (.lam 9 (.app (.var 1 [10]) (.app (.var 0 [9]) (.var 0 [9]) [11]) [11]) [9]) [8]) (.lam 10 (.lam 11 (.app (.var 1 [11]) (.app (.var 0 [18]) (.var 0 [18]) [18]) []) [11]) [10]) [9]) [7]) (.app (.app (.lam 12 (.app (.var 0 [15]) (.app (.var 0 [15]) (.lam 13 (.lam 14 (.app (.var 1 [18]) (.app (.var 0 [14]) (.var 0 [14]) [18]) [18]) [14]) [13]) [16]) [16]) [12]) (.lam 15 (.lam 16 (.app (.var 1 [13,16]) (.app (.var 0 [17,18]) (.var 0 [17,18]) [18]) [14]) [16]) [15]) [16]) (.lam 17 (.lam 18 (.app (.var 1 [17,18]) (.app (.var 0 [17,18]) (.var 0 [17,18]) [18]) [18]) [18]) [17]) [14]) []) (.app (.app (.app (.lam 19 (.app (.var 0 [22]) (.app (.var 0 [22]) (.lam 20 (.lam 21 (.app (.var 1 [25,32]) (.app (.var 0 [28]) (.var 0 [28]) [25,32]) [25,32]) [21]) [20]) [23]) [23]) [19]) (.lam 22 (.lam 23 (.app (.var 1 [20,23]) (.app (.var 0 [24,25,32]) (.var 0 [24,25,32]) [25,32]) [21]) [23]) [22]) [23]) (.lam 24 (.lam 25 (.app (.var 1 [24,25,31,32]) (.app (.var 0 [24,25,31,32]) (.var 0 [24,25,31,32]) [25,32]) [25,32]) [25]) [24]) [21]) (.app (.app (.lam 26 (.app (.var 0 [29]) (.app (.var 0 [29]) (.lam 27 (.lam 28 (.app (.var 1 [25,32]) (.app (.var 0 [28]) (.var 0 [28]) [25,32]) [25,32]) [28]) [27]) [30]) [30]) [26]) (.lam 29 (.lam 30 (.app (.var 1 [27,30]) (.app (.var 0 [25,31,32]) (.var 0 [25,31,32]) [25,32]) [28]) [30]) [29]) [30]) (.lam 31 (.lam 32 (.app (.var 1 [24,25,31,32]) (.app (.var 0 [24,25,31,32]) (.var 0 [24,25,31,32]) [25,32]) [25,32]) [32]) [31]) [28]) [25,32]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 33 (.app (.app (.var 0 []) (.lam 34 (.lam 35 (.var 1 []) [35]) [34]) []) (.var 4 [3]) []) [33]) [])
theorem reject4222 : ¬ Reader r4222 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]] d4222 c4222 a4222 (by decide) (by decide) (by decide)
#print axioms reject4222

def r4223 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))))) (.var 1)) (.var 0)) (.var 0))
def d4223 : List FTy := [[],[],[],[],[11],[1,6,9],[1,6,9],[10],[1,5,6],[1,6,9],[8,11],[1,5,6],[],[],[]]
def c4223 : List FTy := [[],[],[],[],[1,6],[6],[1],[11],[9],[1],[11],[1,6],[],[14],[]]
def a4223 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [11]) (.app (.var 0 [11]) (.lam 5 (.lam 6 (.app (.var 0 [1,6,9]) (.app (.var 1 [1,6,9]) (.var 0 [1,6,9]) [1]) [1]) [6]) [5]) [1,6]) [1,6]) [4]) (.app (.lam 7 (.app (.var 0 [10]) (.app (.var 0 [10]) (.lam 8 (.lam 9 (.app (.var 0 [1,6,9]) (.app (.var 1 [1,5,6]) (.var 0 [1,6,9]) [1,6]) [1]) [9]) [8]) [11]) [11]) [7]) (.lam 10 (.lam 11 (.app (.var 0 [1,5,6]) (.app (.var 1 [8,11]) (.var 0 [1,5,6]) [1,6,9]) [1,6]) [11]) [10]) [11]) [1,6]) (.var 1 [1]) [1]) (.var 0 [0]) [1]) (.var 0 [0]) [1]) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [1])
theorem reject4223 : ¬ Reader r4223 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d4223 c4223 a4223 (by decide) (by decide) (by decide)
#print axioms reject4223

def r4224 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))))) (.var 0)) (.var 1)) (.var 0))
def d4224 : List FTy := [[],[],[],[],[11],[0,6,9],[0,6,9],[10],[0,5,6],[0,6,9],[8,11],[0,5,6],[],[],[]]
def c4224 : List FTy := [[],[],[],[],[0,6],[6],[0],[11],[9],[0],[11],[0,6],[],[14],[]]
def a4224 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [11]) (.app (.var 0 [11]) (.lam 5 (.lam 6 (.app (.var 0 [0,6,9]) (.app (.var 1 [0,6,9]) (.var 0 [0,6,9]) [0]) [0]) [6]) [5]) [0,6]) [0,6]) [4]) (.app (.lam 7 (.app (.var 0 [10]) (.app (.var 0 [10]) (.lam 8 (.lam 9 (.app (.var 0 [0,6,9]) (.app (.var 1 [0,5,6]) (.var 0 [0,6,9]) [0,6]) [0]) [9]) [8]) [11]) [11]) [7]) (.lam 10 (.lam 11 (.app (.var 0 [0,5,6]) (.app (.var 1 [8,11]) (.var 0 [0,5,6]) [0,6,9]) [0,6]) [11]) [10]) [11]) [0,6]) (.var 0 [0]) [0]) (.var 1 [1]) [0]) (.var 0 [0]) [0]) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [0])
theorem reject4224 : ¬ Reader r4224 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d4224 c4224 a4224 (by decide) (by decide) (by decide)
#print axioms reject4224

def r4225 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))))) (.var 0)) (.var 0)) (.var 1))
def d4225 : List FTy := [[],[],[],[],[11],[0,6,9],[0,6,9],[10],[0,5,6],[0,6,9],[8,11],[0,5,6],[],[],[]]
def c4225 : List FTy := [[],[],[],[],[0,6],[6],[0],[11],[9],[0],[11],[0,6],[],[14],[]]
def a4225 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [11]) (.app (.var 0 [11]) (.lam 5 (.lam 6 (.app (.var 0 [0,6,9]) (.app (.var 1 [0,6,9]) (.var 0 [0,6,9]) [0]) [0]) [6]) [5]) [0,6]) [0,6]) [4]) (.app (.lam 7 (.app (.var 0 [10]) (.app (.var 0 [10]) (.lam 8 (.lam 9 (.app (.var 0 [0,6,9]) (.app (.var 1 [0,5,6]) (.var 0 [0,6,9]) [0,6]) [0]) [9]) [8]) [11]) [11]) [7]) (.lam 10 (.lam 11 (.app (.var 0 [0,5,6]) (.app (.var 1 [8,11]) (.var 0 [0,5,6]) [0,6,9]) [0,6]) [11]) [10]) [11]) [0,6]) (.var 0 [0]) [0]) (.var 0 [0]) [0]) (.var 1 [1]) [0]) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [0])
theorem reject4225 : ¬ Reader r4225 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1]] d4225 c4225 a4225 (by decide) (by decide) (by decide)
#print axioms reject4225

def r4265 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
def d4265 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4265 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4265 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.lam 7 (.var 0 []) [7]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4265 : ¬ Reader r4265 :=
 Rootcert2Flow.reject [] d4265 c4265 a4265 (by decide) (by decide) (by decide)
#print axioms reject4265

def r4266 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
def d4266 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4266 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4266 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.lam 7 (.var 0 []) [7]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4266 : ¬ Reader r4266 :=
 Rootcert2Flow.reject [] d4266 c4266 a4266 (by decide) (by decide) (by decide)
#print axioms reject4266

def r4267 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
def d4267 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4267 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4267 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) (.lam 7 (.var 0 []) [7]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4267 : ¬ Reader r4267 :=
 Rootcert2Flow.reject [] d4267 c4267 a4267 (by decide) (by decide) (by decide)
#print axioms reject4267

def r4271 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
def d4271 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c4271 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a4271 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) (.lam 7 (.var 0 []) [7]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject4271 : ¬ Reader r4271 :=
 Rootcert2Flow.reject [] d4271 c4271 a4271 (by decide) (by decide) (by decide)
#print axioms reject4271
end Blc.HandlerLet.XFlow08
