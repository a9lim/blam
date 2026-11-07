import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XFlow04
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r1154 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.var 1)))) (.var 0)) (.var 0)) (.var 1))
def d1154 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1154 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1154 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) (.var 1 [0]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1154 : ¬ Reader r1154 :=
 Rootcert2Flow.reject [] d1154 c1154 a1154 (by decide) (by decide) (by decide)
#print axioms reject1154

def r1170 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
def d1170 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1170 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1170 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1170 : ¬ Reader r1170 :=
 Rootcert2Flow.reject [] d1170 c1170 a1170 (by decide) (by decide) (by decide)
#print axioms reject1170

def r1171 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
def d1171 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1171 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1171 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1171 : ¬ Reader r1171 :=
 Rootcert2Flow.reject [] d1171 c1171 a1171 (by decide) (by decide) (by decide)
#print axioms reject1171

def r1172 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
def d1172 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1172 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1172 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1172 : ¬ Reader r1172 :=
 Rootcert2Flow.reject [] d1172 c1172 a1172 (by decide) (by decide) (by decide)
#print axioms reject1172

def r1173 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
def d1173 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1173 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1173 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1173 : ¬ Reader r1173 :=
 Rootcert2Flow.reject [] d1173 c1173 a1173 (by decide) (by decide) (by decide)
#print axioms reject1173

def r1174 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
def d1174 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1174 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1174 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1174 : ¬ Reader r1174 :=
 Rootcert2Flow.reject [] d1174 c1174 a1174 (by decide) (by decide) (by decide)
#print axioms reject1174

def r1175 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
def d1175 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[]]
def c1175 : List FTy := [[],[],[],[],[],[],[],[],[9],[]]
def a1175 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [])
theorem reject1175 : ¬ Reader r1175 :=
 Rootcert2Flow.reject [] d1175 c1175 a1175 (by decide) (by decide) (by decide)
#print axioms reject1175

def r1346 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d1346 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1346 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1346 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1346 : ¬ Reader r1346 :=
 Rootcert2Flow.reject [] d1346 c1346 a1346 (by decide) (by decide) (by decide)
#print axioms reject1346

def r1347 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d1347 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1347 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1347 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1347 : ¬ Reader r1347 :=
 Rootcert2Flow.reject [] d1347 c1347 a1347 (by decide) (by decide) (by decide)
#print axioms reject1347

def r1348 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d1348 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1348 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1348 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1348 : ¬ Reader r1348 :=
 Rootcert2Flow.reject [] d1348 c1348 a1348 (by decide) (by decide) (by decide)
#print axioms reject1348

def r1349 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d1349 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1349 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1349 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1349 : ¬ Reader r1349 :=
 Rootcert2Flow.reject [] d1349 c1349 a1349 (by decide) (by decide) (by decide)
#print axioms reject1349

def r1350 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d1350 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1350 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1350 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1350 : ¬ Reader r1350 :=
 Rootcert2Flow.reject [] d1350 c1350 a1350 (by decide) (by decide) (by decide)
#print axioms reject1350

def r1351 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d1351 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1351 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1351 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1351 : ¬ Reader r1351 :=
 Rootcert2Flow.reject [] d1351 c1351 a1351 (by decide) (by decide) (by decide)
#print axioms reject1351

def r1358 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d1358 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1358 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1358 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1358 : ¬ Reader r1358 :=
 Rootcert2Flow.reject [] d1358 c1358 a1358 (by decide) (by decide) (by decide)
#print axioms reject1358

def r1359 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d1359 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1359 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1359 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1359 : ¬ Reader r1359 :=
 Rootcert2Flow.reject [] d1359 c1359 a1359 (by decide) (by decide) (by decide)
#print axioms reject1359

def r1360 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d1360 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1360 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1360 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1360 : ¬ Reader r1360 :=
 Rootcert2Flow.reject [] d1360 c1360 a1360 (by decide) (by decide) (by decide)
#print axioms reject1360

def r1361 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d1361 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1361 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1361 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1361 : ¬ Reader r1361 :=
 Rootcert2Flow.reject [] d1361 c1361 a1361 (by decide) (by decide) (by decide)
#print axioms reject1361

def r1362 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d1362 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1362 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1362 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1362 : ¬ Reader r1362 :=
 Rootcert2Flow.reject [] d1362 c1362 a1362 (by decide) (by decide) (by decide)
#print axioms reject1362

def r1363 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d1363 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1363 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1363 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1363 : ¬ Reader r1363 :=
 Rootcert2Flow.reject [] d1363 c1363 a1363 (by decide) (by decide) (by decide)
#print axioms reject1363

def r1515 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.var 0)) (.var 0))
def d1515 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1515 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1515 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1515 : ¬ Reader r1515 :=
 Rootcert2Flow.reject [] d1515 c1515 a1515 (by decide) (by decide) (by decide)
#print axioms reject1515

def r1516 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 1)) (.var 0))
def d1516 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1516 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1516 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1516 : ¬ Reader r1516 :=
 Rootcert2Flow.reject [] d1516 c1516 a1516 (by decide) (by decide) (by decide)
#print axioms reject1516

def r1517 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 0)) (.var 1))
def d1517 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1517 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1517 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1517 : ¬ Reader r1517 :=
 Rootcert2Flow.reject [] d1517 c1517 a1517 (by decide) (by decide) (by decide)
#print axioms reject1517

def r1704 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d1704 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1704 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1704 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1704 : ¬ Reader r1704 :=
 Rootcert2Flow.reject [] d1704 c1704 a1704 (by decide) (by decide) (by decide)
#print axioms reject1704

def r1705 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d1705 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1705 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1705 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1705 : ¬ Reader r1705 :=
 Rootcert2Flow.reject [] d1705 c1705 a1705 (by decide) (by decide) (by decide)
#print axioms reject1705

def r1706 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d1706 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1706 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1706 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1706 : ¬ Reader r1706 :=
 Rootcert2Flow.reject [] d1706 c1706 a1706 (by decide) (by decide) (by decide)
#print axioms reject1706

def r1707 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d1707 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1707 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1707 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1707 : ¬ Reader r1707 :=
 Rootcert2Flow.reject [] d1707 c1707 a1707 (by decide) (by decide) (by decide)
#print axioms reject1707

def r1708 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d1708 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1708 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1708 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1708 : ¬ Reader r1708 :=
 Rootcert2Flow.reject [] d1708 c1708 a1708 (by decide) (by decide) (by decide)
#print axioms reject1708

def r1709 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d1709 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1709 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1709 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1709 : ¬ Reader r1709 :=
 Rootcert2Flow.reject [] d1709 c1709 a1709 (by decide) (by decide) (by decide)
#print axioms reject1709

def r1722 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d1722 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1722 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1722 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1722 : ¬ Reader r1722 :=
 Rootcert2Flow.reject [] d1722 c1722 a1722 (by decide) (by decide) (by decide)
#print axioms reject1722

def r1723 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d1723 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1723 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1723 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1723 : ¬ Reader r1723 :=
 Rootcert2Flow.reject [] d1723 c1723 a1723 (by decide) (by decide) (by decide)
#print axioms reject1723

def r1724 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d1724 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1724 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1724 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1724 : ¬ Reader r1724 :=
 Rootcert2Flow.reject [] d1724 c1724 a1724 (by decide) (by decide) (by decide)
#print axioms reject1724

def r1725 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d1725 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1725 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1725 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1725 : ¬ Reader r1725 :=
 Rootcert2Flow.reject [] d1725 c1725 a1725 (by decide) (by decide) (by decide)
#print axioms reject1725

def r1726 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d1726 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1726 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1726 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1726 : ¬ Reader r1726 :=
 Rootcert2Flow.reject [] d1726 c1726 a1726 (by decide) (by decide) (by decide)
#print axioms reject1726

def r1727 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d1727 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1727 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1727 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1727 : ¬ Reader r1727 :=
 Rootcert2Flow.reject [] d1727 c1727 a1727 (by decide) (by decide) (by decide)
#print axioms reject1727

def r1764 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))))) (.var 1)) (.var 0)) (.var 0))
def d1764 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[]]
def c1764 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1764 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 0 [6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1764 : ¬ Reader r1764 :=
 Rootcert2Flow.reject [] d1764 c1764 a1764 (by decide) (by decide) (by decide)
#print axioms reject1764

def r1765 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))))) (.var 0)) (.var 1)) (.var 0))
def d1765 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[]]
def c1765 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1765 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 0 [6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1765 : ¬ Reader r1765 :=
 Rootcert2Flow.reject [] d1765 c1765 a1765 (by decide) (by decide) (by decide)
#print axioms reject1765

def r1766 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 1)))))))) (.var 0)) (.var 0)) (.var 1))
def d1766 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[]]
def c1766 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a1766 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 0 [6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1766 : ¬ Reader r1766 :=
 Rootcert2Flow.reject [] d1766 c1766 a1766 (by decide) (by decide) (by decide)
#print axioms reject1766

def r1785 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.lam (.var 1)))
def d1785 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1785 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a1785 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1785 : ¬ Reader r1785 :=
 Rootcert2Flow.reject [] d1785 c1785 a1785 (by decide) (by decide) (by decide)
#print axioms reject1785

def r1786 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.lam (.var 1))) (.var 0))
def d1786 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1786 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a1786 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1786 : ¬ Reader r1786 :=
 Rootcert2Flow.reject [] d1786 c1786 a1786 (by decide) (by decide) (by decide)
#print axioms reject1786

def r1787 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.lam (.var 1)))
def d1787 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1787 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a1787 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1787 : ¬ Reader r1787 :=
 Rootcert2Flow.reject [] d1787 c1787 a1787 (by decide) (by decide) (by decide)
#print axioms reject1787

def r1788 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.lam (.var 1))) (.var 1))
def d1788 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1788 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a1788 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1788 : ¬ Reader r1788 :=
 Rootcert2Flow.reject [] d1788 c1788 a1788 (by decide) (by decide) (by decide)
#print axioms reject1788

def r1789 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.var 1))) (.var 1)) (.var 0))
def d1789 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1789 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a1789 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1789 : ¬ Reader r1789 :=
 Rootcert2Flow.reject [] d1789 c1789 a1789 (by decide) (by decide) (by decide)
#print axioms reject1789

def r1790 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.var 1))) (.var 0)) (.var 1))
def d1790 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1790 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a1790 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1790 : ¬ Reader r1790 :=
 Rootcert2Flow.reject [] d1790 c1790 a1790 (by decide) (by decide) (by decide)
#print axioms reject1790

def r1797 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
def d1797 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1797 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a1797 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1797 : ¬ Reader r1797 :=
 Rootcert2Flow.reject [] d1797 c1797 a1797 (by decide) (by decide) (by decide)
#print axioms reject1797

def r1798 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.lam (.var 1))) (.var 0))
def d1798 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1798 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a1798 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1798 : ¬ Reader r1798 :=
 Rootcert2Flow.reject [] d1798 c1798 a1798 (by decide) (by decide) (by decide)
#print axioms reject1798

def r1799 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
def d1799 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1799 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a1799 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1799 : ¬ Reader r1799 :=
 Rootcert2Flow.reject [] d1799 c1799 a1799 (by decide) (by decide) (by decide)
#print axioms reject1799

def r1800 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.lam (.var 1))) (.var 1))
def d1800 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1800 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a1800 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1800 : ¬ Reader r1800 :=
 Rootcert2Flow.reject [] d1800 c1800 a1800 (by decide) (by decide) (by decide)
#print axioms reject1800

def r1801 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.var 1))) (.var 1)) (.var 0))
def d1801 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1801 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a1801 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1801 : ¬ Reader r1801 :=
 Rootcert2Flow.reject [] d1801 c1801 a1801 (by decide) (by decide) (by decide)
#print axioms reject1801

def r1802 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.var 1))) (.var 0)) (.var 1))
def d1802 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1802 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a1802 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1802 : ¬ Reader r1802 :=
 Rootcert2Flow.reject [] d1802 c1802 a1802 (by decide) (by decide) (by decide)
#print axioms reject1802

def r1829 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))) (.var 1)) (.var 0)) (.var 0))
def d1829 : List FTy := [[],[],[],[],[7],[8],[9],[5],[6],[],[],[],[]]
def c1829 : List FTy := [[],[],[],[],[],[],[8],[],[],[6],[],[12],[]]
def a1829 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.app (.var 1 [7]) (.app (.var 0 [8]) (.lam 6 (.var 1 [8]) [6]) []) []) [5]) []) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.app (.var 1 [5]) (.app (.var 0 [6]) (.lam 9 (.var 1 [6]) [9]) [8]) []) [8]) []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject1829 : ¬ Reader r1829 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d1829 c1829 a1829 (by decide) (by decide) (by decide)
#print axioms reject1829
end Blc.HandlerLet.XFlow04
