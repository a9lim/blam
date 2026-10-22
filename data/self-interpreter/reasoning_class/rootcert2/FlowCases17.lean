import Flow
namespace Blc.Rootcert2.FlowCases17
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r154 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d154 : List FTy := [[],[],[],[],[],[],[8],[12],[7,10],[8],[12],[7,10],[],[],[],[]]
def c154 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[8],[8],[7,10],[],[15],[]]
def a154 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 []) (.lam 5 (.var 1 []) [5]) []) [4]) (.app (.app (.lam 6 (.app (.var 0 [8]) (.lam 7 (.var 1 [8]) [7]) []) [6]) (.lam 8 (.app (.lam 9 (.app (.var 0 [8]) (.lam 10 (.var 1 [8]) [10]) []) [9]) (.app (.lam 11 (.app (.var 0 [7,10]) (.lam 12 (.var 1 [7,10]) [12]) [8]) [11]) (.var 0 [7,10]) [8]) []) [8]) []) (.var 0 [0]) []) []) (.var 1 [1]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject154 : ¬ Reader r154 :=
 Rootcert2Flow.reject [[1, 1]] d154 c154 a154 (by decide) (by decide) (by decide)
#print axioms reject154

def r155 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 1)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d155 : List FTy := [[],[],[],[],[6],[7],[5],[6],[],[],[]]
def c155 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a155 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.app (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 1 [6]) [5]) []) [5]) []) (.var 1 [0]) []) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject155 : ¬ Reader r155 :=
 Rootcert2Flow.reject [] d155 c155 a155 (by decide) (by decide) (by decide)
#print axioms reject155

def r156 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d156 : List FTy := [[],[],[],[],[6],[7],[5],[0],[],[],[]]
def c156 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a156 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.app (.var 0 [6]) (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 2 [0]) [5]) []) [5]) []) []) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject156 : ¬ Reader r156 :=
 Rootcert2Flow.reject [] d156 c156 a156 (by decide) (by decide) (by decide)
#print axioms reject156

def r157 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d157 : List FTy := [[],[],[],[],[6],[],[5],[9],[0],[8,11],[9],[0],[],[15],[16,19],[14,17],[0],[16,19],[14,17],[0],[],[],[]]
def c157 : List FTy := [[],[],[],[],[7],[6],[7],[],[9],[],[],[9],[15],[15],[15],[15],[14,17],[15],[15],[14,17],[],[22],[]]
def a157 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [9]) (.lam 8 (.var 1 [9]) [8]) []) [7]) [6]) [7]) (.lam 9 (.app (.lam 10 (.app (.var 0 [9]) (.lam 11 (.var 1 [9]) [11]) []) [10]) (.app (.var 0 [8,11]) (.var 1 [0]) [9]) []) [9]) []) (.lam 12 (.app (.app (.lam 13 (.app (.var 0 [15]) (.lam 14 (.var 1 [15]) [14]) [15]) [13]) (.lam 15 (.app (.var 0 [14,17]) (.lam 16 (.var 1 [14,17]) [16]) [15]) [15]) [15]) (.lam 17 (.app (.lam 18 (.app (.var 0 [14,17]) (.lam 19 (.var 1 [14,17]) [19]) [15]) [18]) (.app (.var 0 [16,19]) (.var 2 [0]) [14,17]) [15]) [17]) [15]) [12]) []) (.var 1 [1]) []) (.lam 20 (.app (.app (.var 0 []) (.lam 21 (.lam 22 (.var 1 []) [22]) [21]) []) (.var 4 [3]) []) [20]) [])
theorem reject157 : ¬ Reader r157 :=
 Rootcert2Flow.reject [[1, 1], [1, 1], [1, 1, 1, 1]] d157 c157 a157 (by decide) (by decide) (by decide)
#print axioms reject157

def r158 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d158 : List FTy := [[],[],[],[],[6],[7],[5],[0],[],[],[]]
def c158 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a158 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.app (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 2 [0]) [5]) []) [5]) []) (.var 0 [6]) []) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject158 : ¬ Reader r158 :=
 Rootcert2Flow.reject [] d158 c158 a158 (by decide) (by decide) (by decide)
#print axioms reject158

def r159 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d159 : List FTy := [[],[],[],[],[6],[10],[5,8],[6],[10],[5,8],[],[],[],[],[],[]]
def c159 : List FTy := [[],[],[],[],[],[6],[],[],[6],[6],[5,8],[],[],[],[15],[]]
def a159 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.lam 7 (.app (.var 0 [6]) (.lam 8 (.var 1 [6]) [8]) []) [7]) (.app (.lam 9 (.app (.var 0 [5,8]) (.lam 10 (.var 1 [5,8]) [10]) [6]) [9]) (.var 0 [5,8]) [6]) []) [6]) []) (.app (.var 0 [0]) (.lam 11 (.app (.var 0 []) (.lam 12 (.var 1 []) [12]) []) [11]) [0]) []) (.var 1 [1]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject159 : ¬ Reader r159 :=
 Rootcert2Flow.reject [[1, 1]] d159 c159 a159 (by decide) (by decide) (by decide)
#print axioms reject159

def r160 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d160 : List FTy := [[],[],[],[],[6],[7],[5],[6],[],[],[]]
def c160 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a160 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 1 [6]) [5]) []) [5]) []) (.app (.var 1 [0]) (.var 0 [6]) [0]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject160 : ¬ Reader r160 :=
 Rootcert2Flow.reject [] d160 c160 a160 (by decide) (by decide) (by decide)
#print axioms reject160

def r161 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d161 : List FTy := [[],[],[],[],[6],[10],[5,8],[6],[10],[5,8],[],[0],[],[],[],[]]
def c161 : List FTy := [[],[],[],[],[],[6],[],[],[6],[6],[5,8],[0],[0],[],[15],[]]
def a161 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.lam 7 (.app (.var 0 [6]) (.lam 8 (.var 1 [6]) [8]) []) [7]) (.app (.lam 9 (.app (.var 0 [5,8]) (.lam 10 (.var 1 [5,8]) [10]) [6]) [9]) (.var 0 [5,8]) [6]) []) [6]) []) (.app (.lam 11 (.app (.var 0 [0]) (.lam 12 (.var 1 [0]) [12]) [0]) [11]) (.var 0 [0]) [0]) []) (.var 1 [1]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject161 : ¬ Reader r161 :=
 Rootcert2Flow.reject [[1, 1]] d161 c161 a161 (by decide) (by decide) (by decide)
#print axioms reject161

def r162 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d162 : List FTy := [[],[],[],[],[6],[7],[0,5],[6],[],[],[]]
def c162 : List FTy := [[],[],[],[],[0],[0],[0],[0,5],[],[10],[]]
def a162 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 1 [6]) [0,5]) [0]) [5]) [0]) (.app (.var 0 [6]) (.var 1 [0]) [0]) [0]) [4]) (.lam 6 (.app (.var 0 [0,5]) (.lam 7 (.var 1 [0,5]) [7]) [0]) [6]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject162 : ¬ Reader r162 :=
 Rootcert2Flow.reject [] d162 c162 a162 (by decide) (by decide) (by decide)
#print axioms reject162

def r163 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d163 : List FTy := [[],[],[],[],[6],[],[5],[],[],[11],[0],[10,13],[11],[0],[],[],[]]
def c163 : List FTy := [[],[],[],[],[7],[6],[7],[],[],[],[11],[],[],[11],[],[16],[]]
def a163 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) [4]) (.lam 6 (.lam 7 (.app (.var 0 []) (.lam 8 (.var 1 []) [8]) []) [7]) [6]) [7]) (.app (.lam 9 (.app (.var 0 [11]) (.lam 10 (.var 1 [11]) [10]) []) [9]) (.lam 11 (.app (.lam 12 (.app (.var 0 [11]) (.lam 13 (.var 1 [11]) [13]) []) [12]) (.app (.var 0 [10,13]) (.var 1 [0]) [11]) []) [11]) []) []) (.var 1 [1]) []) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [])
theorem reject163 : ¬ Reader r163 :=
 Rootcert2Flow.reject [[1, 1], [1, 1, 1]] d163 c163 a163 (by decide) (by decide) (by decide)
#print axioms reject163

def r164 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d164 : List FTy := [[],[],[],[],[6],[0],[5,8],[6],[0],[11],[12],[10],[],[],[],[]]
def c164 : List FTy := [[],[],[],[],[],[6],[],[],[6],[11],[11],[11],[10],[],[15],[]]
def a164 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.lam 7 (.app (.var 0 [6]) (.lam 8 (.var 1 [6]) [8]) []) [7]) (.app (.var 0 [5,8]) (.var 1 [0]) [6]) []) [6]) []) (.app (.lam 9 (.app (.var 0 [11]) (.lam 10 (.var 1 [11]) [10]) [11]) [9]) (.lam 11 (.app (.var 0 [10]) (.lam 12 (.var 1 [10]) [12]) [11]) [11]) [11]) []) (.var 1 [1]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject164 : ¬ Reader r164 :=
 Rootcert2Flow.reject [[1, 1]] d164 c164 a164 (by decide) (by decide) (by decide)
#print axioms reject164

def r165 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d165 : List FTy := [[],[],[],[],[6],[],[5],[9],[0],[8,11],[9],[0],[],[],[]]
def c165 : List FTy := [[],[],[],[],[7],[6],[7],[],[9],[],[],[9],[],[14],[]]
def a165 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [9]) (.lam 8 (.var 1 [9]) [8]) []) [7]) [6]) [7]) (.lam 9 (.app (.lam 10 (.app (.var 0 [9]) (.lam 11 (.var 1 [9]) [11]) []) [10]) (.app (.var 0 [8,11]) (.var 1 [0]) [9]) []) [9]) []) (.var 1 [1]) []) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [])
theorem reject165 : ¬ Reader r165 :=
 Rootcert2Flow.reject [[1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1, 1]] d165 c165 a165 (by decide) (by decide) (by decide)
#print axioms reject165

def r166 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d166 : List FTy := [[],[],[],[],[6],[],[5],[9],[0],[8,11],[9],[0],[],[],[]]
def c166 : List FTy := [[],[],[],[],[7],[6],[7],[],[9],[],[],[9],[],[14],[]]
def a166 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [9]) (.lam 8 (.var 1 [9]) [8]) []) [7]) [6]) [7]) (.lam 9 (.app (.lam 10 (.app (.var 0 [9]) (.lam 11 (.var 1 [9]) [11]) []) [10]) (.app (.var 0 [8,11]) (.var 1 [0]) [9]) []) [9]) []) (.var 1 [1]) []) (.lam 12 (.app (.app (.var 0 []) (.lam 13 (.lam 14 (.var 1 []) [14]) [13]) []) (.var 4 [3]) []) [12]) [])
theorem reject166 : ¬ Reader r166 :=
 Rootcert2Flow.reject [[1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1]] d166 c166 a166 (by decide) (by decide) (by decide)
#print axioms reject166

def r167 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d167 : List FTy := [[],[],[],[],[6],[7],[5],[0],[],[],[]]
def c167 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a167 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 2 [0]) [5]) []) [5]) []) []) (.var 0 [6]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject167 : ¬ Reader r167 :=
 Rootcert2Flow.reject [] d167 c167 a167 (by decide) (by decide) (by decide)
#print axioms reject167

def r168 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d168 : List FTy := [[],[],[],[],[6],[10],[5,8],[6],[10],[5,8],[],[],[],[],[],[]]
def c168 : List FTy := [[],[],[],[],[],[6],[],[],[6],[6],[5,8],[],[],[],[15],[]]
def a168 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.lam 7 (.app (.var 0 [6]) (.lam 8 (.var 1 [6]) [8]) []) [7]) (.app (.lam 9 (.app (.var 0 [5,8]) (.lam 10 (.var 1 [5,8]) [10]) [6]) [9]) (.var 0 [5,8]) [6]) []) [6]) []) (.var 0 [0]) []) (.lam 11 (.app (.var 0 []) (.lam 12 (.var 1 []) [12]) []) [11]) []) (.var 1 [1]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject168 : ¬ Reader r168 :=
 Rootcert2Flow.reject [[1, 1]] d168 c168 a168 (by decide) (by decide) (by decide)
#print axioms reject168

def r169 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d169 : List FTy := [[],[],[],[],[6],[7],[5],[6],[],[],[]]
def c169 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a169 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 1 [6]) [5]) []) [5]) []) (.var 1 [0]) []) (.var 0 [6]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject169 : ¬ Reader r169 :=
 Rootcert2Flow.reject [] d169 c169 a169 (by decide) (by decide) (by decide)
#print axioms reject169

def r170 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d170 : List FTy := [[],[],[],[],[6],[],[5],[9],[0],[8,11],[9],[0],[],[],[],[],[]]
def c170 : List FTy := [[],[],[],[],[7],[6],[7],[],[9],[],[],[9],[],[],[],[16],[]]
def a170 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [9]) (.lam 8 (.var 1 [9]) [8]) []) [7]) [6]) [7]) (.lam 9 (.app (.lam 10 (.app (.var 0 [9]) (.lam 11 (.var 1 [9]) [11]) []) [10]) (.app (.var 0 [8,11]) (.var 1 [0]) [9]) []) [9]) []) (.lam 12 (.app (.var 0 []) (.lam 13 (.var 1 []) [13]) []) [12]) []) (.var 1 [1]) []) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [])
theorem reject170 : ¬ Reader r170 :=
 Rootcert2Flow.reject [[1, 1], [1, 1, 1, 1]] d170 c170 a170 (by decide) (by decide) (by decide)
#print axioms reject170

def r171 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d171 : List FTy := [[],[],[],[],[6],[7],[5],[0],[],[],[]]
def c171 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a171 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 2 [0]) [5]) []) [5]) []) (.var 0 [6]) []) (.var 0 [6]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject171 : ¬ Reader r171 :=
 Rootcert2Flow.reject [] d171 c171 a171 (by decide) (by decide) (by decide)
#print axioms reject171

def r175 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d175 : List FTy := [[],[],[],[],[6],[7],[5],[0],[],[],[]]
def c175 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a175 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 2 [0]) [5]) []) []) [5]) []) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject175 : ¬ Reader r175 :=
 Rootcert2Flow.reject [] d175 c175 a175 (by decide) (by decide) (by decide)
#print axioms reject175

def r176 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d176 : List FTy := [[],[],[],[],[6],[7],[5],[0],[],[],[]]
def c176 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a176 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.app (.var 2 [0]) (.var 1 [6]) [0]) [5]) []) [5]) []) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject176 : ¬ Reader r176 :=
 Rootcert2Flow.reject [] d176 c176 a176 (by decide) (by decide) (by decide)
#print axioms reject176

def r177 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d177 : List FTy := [[],[],[],[],[6],[7],[0,5],[0],[],[],[]]
def c177 : List FTy := [[],[],[],[],[0],[0],[0],[0,5],[],[10],[]]
def a177 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.app (.var 1 [6]) (.var 2 [0]) [0]) [0,5]) [0]) [5]) [0]) [0]) [4]) (.lam 6 (.app (.var 0 [0,5]) (.lam 7 (.var 1 [0,5]) [7]) [0]) [6]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject177 : ¬ Reader r177 :=
 Rootcert2Flow.reject [] d177 c177 a177 (by decide) (by decide) (by decide)
#print axioms reject177

def r178 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d178 : List FTy := [[],[],[],[],[],[],[8],[12],[7,10],[8],[12],[7,10],[],[],[],[]]
def c178 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[8],[8],[7,10],[],[15],[]]
def a178 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 []) (.lam 5 (.var 1 []) [5]) []) [4]) (.app (.lam 6 (.app (.var 0 [8]) (.lam 7 (.var 1 [8]) [7]) []) [6]) (.lam 8 (.app (.app (.lam 9 (.app (.var 0 [8]) (.lam 10 (.var 1 [8]) [10]) []) [9]) (.app (.lam 11 (.app (.var 0 [7,10]) (.lam 12 (.var 1 [7,10]) [12]) [8]) [11]) (.var 0 [7,10]) [8]) []) (.var 1 [0]) []) [8]) []) []) (.var 1 [1]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject178 : ¬ Reader r178 :=
 Rootcert2Flow.reject [[1, 1]] d178 c178 a178 (by decide) (by decide) (by decide)
#print axioms reject178

def r179 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d179 : List FTy := [[],[],[],[],[6],[7],[5],[6],[],[],[]]
def c179 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a179 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.app (.var 0 [6]) (.lam 5 (.app (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 1 [6]) [5]) []) (.var 2 [0]) []) [5]) []) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject179 : ¬ Reader r179 :=
 Rootcert2Flow.reject [] d179 c179 a179 (by decide) (by decide) (by decide)
#print axioms reject179

def r181 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d181 : List FTy := [[],[],[],[],[6],[7],[5],[0],[],[],[]]
def c181 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a181 : Ann := (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.app (.var 0 [6]) (.lam 5 (.app (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 2 [0]) [5]) []) (.var 1 [6]) []) [5]) []) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject181 : ¬ Reader r181 :=
 Rootcert2Flow.reject [] d181 c181 a181 (by decide) (by decide) (by decide)
#print axioms reject181

def r182 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d182 : List FTy := [[],[],[],[],[6],[],[5],[9],[0],[8,13],[],[],[9],[0],[],[],[]]
def c182 : List FTy := [[],[],[],[],[7],[6],[7],[],[9],[],[],[],[],[9],[],[16],[]]
def a182 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [9]) (.lam 8 (.var 1 [9]) [8]) []) [7]) [6]) [7]) (.lam 9 (.app (.lam 10 (.app (.var 0 []) (.lam 11 (.var 1 []) [11]) []) [10]) (.app (.lam 12 (.app (.var 0 [9]) (.lam 13 (.var 1 [9]) [13]) []) [12]) (.app (.var 0 [8,13]) (.var 1 [0]) [9]) []) []) [9]) []) (.var 1 [1]) []) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [])
theorem reject182 : ¬ Reader r182 :=
 Rootcert2Flow.reject [[1, 1], [1, 1, 1]] d182 c182 a182 (by decide) (by decide) (by decide)
#print axioms reject182

def r183 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d183 : List FTy := [[],[],[],[],[6],[],[5],[9],[0],[8,11],[9],[0],[],[],[],[],[]]
def c183 : List FTy := [[],[],[],[],[7],[6],[7],[],[9],[],[],[9],[],[],[],[16],[]]
def a183 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [9]) (.lam 8 (.var 1 [9]) [8]) []) [7]) [6]) [7]) (.lam 9 (.app (.lam 10 (.app (.var 0 [9]) (.lam 11 (.var 1 [9]) [11]) []) [10]) (.app (.var 0 [8,11]) (.app (.var 1 [0]) (.lam 12 (.app (.var 0 []) (.lam 13 (.var 1 []) [13]) []) [12]) [0]) [9]) []) [9]) []) (.var 1 [1]) []) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [])
theorem reject183 : ¬ Reader r183 :=
 Rootcert2Flow.reject [[1, 1], [1, 1, 1]] d183 c183 a183 (by decide) (by decide) (by decide)
#print axioms reject183

def r184 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d184 : List FTy := [[],[],[],[],[6],[],[5],[9],[0],[8,11],[9],[0],[0],[],[],[],[]]
def c184 : List FTy := [[],[],[],[],[7],[6],[7],[],[9],[],[],[9],[0],[0],[],[16],[]]
def a184 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [9]) (.lam 8 (.var 1 [9]) [8]) []) [7]) [6]) [7]) (.lam 9 (.app (.lam 10 (.app (.var 0 [9]) (.lam 11 (.var 1 [9]) [11]) []) [10]) (.app (.var 0 [8,11]) (.app (.lam 12 (.app (.var 0 [0]) (.lam 13 (.var 1 [0]) [13]) [0]) [12]) (.var 1 [0]) [0]) [9]) []) [9]) []) (.var 1 [1]) []) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [])
theorem reject184 : ¬ Reader r184 :=
 Rootcert2Flow.reject [[1, 1], [1, 1, 1]] d184 c184 a184 (by decide) (by decide) (by decide)
#print axioms reject184

def r185 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d185 : List FTy := [[],[],[],[],[6],[],[5],[9],[13],[8,11],[9],[13],[8,11],[],[],[],[]]
def c185 : List FTy := [[],[],[],[],[7],[6],[7],[],[9],[],[],[9],[9],[8,11],[],[16],[]]
def a185 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [9]) (.lam 8 (.var 1 [9]) [8]) []) [7]) [6]) [7]) (.lam 9 (.app (.app (.lam 10 (.app (.var 0 [9]) (.lam 11 (.var 1 [9]) [11]) []) [10]) (.app (.lam 12 (.app (.var 0 [8,11]) (.lam 13 (.var 1 [8,11]) [13]) [9]) [12]) (.var 0 [8,11]) [9]) []) (.var 1 [0]) []) [9]) []) (.var 1 [1]) []) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [])
theorem reject185 : ¬ Reader r185 :=
 Rootcert2Flow.reject [[1, 1], [1, 1, 1]] d185 c185 a185 (by decide) (by decide) (by decide)
#print axioms reject185

def r186 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d186 : List FTy := [[],[],[],[],[6],[],[5],[9],[12],[8,11],[9],[12],[],[],[],[],[]]
def c186 : List FTy := [[],[],[],[],[7],[6],[7],[],[9],[],[],[9],[],[],[],[16],[]]
def a186 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [9]) (.lam 8 (.var 1 [9]) [8]) []) [7]) [6]) [7]) (.lam 9 (.app (.app (.lam 10 (.app (.var 0 [9]) (.lam 11 (.var 1 [9]) [11]) []) [10]) (.app (.var 0 [8,11]) (.lam 12 (.app (.var 0 []) (.lam 13 (.var 1 []) [13]) []) [12]) [9]) []) (.var 1 [0]) []) [9]) []) (.var 1 [1]) []) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [])
theorem reject186 : ¬ Reader r186 :=
 Rootcert2Flow.reject [[1, 1], [1, 1, 1]] d186 c186 a186 (by decide) (by decide) (by decide)
#print axioms reject186

def r188 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d188 : List FTy := [[],[],[],[],[6],[],[5],[9],[0],[8,11],[9],[0],[],[],[],[],[]]
def c188 : List FTy := [[],[],[],[],[7],[6],[7],[],[9],[],[],[9],[],[],[],[16],[]]
def a188 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [9]) (.lam 8 (.var 1 [9]) [8]) []) [7]) [6]) [7]) (.lam 9 (.app (.app (.lam 10 (.app (.var 0 [9]) (.lam 11 (.var 1 [9]) [11]) []) [10]) (.app (.var 0 [8,11]) (.var 1 [0]) [9]) []) (.lam 12 (.app (.var 0 []) (.lam 13 (.var 1 []) [13]) []) [12]) []) [9]) []) (.var 1 [1]) []) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [])
theorem reject188 : ¬ Reader r188 :=
 Rootcert2Flow.reject [[1, 1], [1, 1, 1]] d188 c188 a188 (by decide) (by decide) (by decide)
#print axioms reject188

def r189 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d189 : List FTy := [[],[],[],[],[6],[7],[5],[0],[],[],[]]
def c189 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a189 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 2 [0]) [5]) []) []) [5]) []) (.var 0 [6]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject189 : ¬ Reader r189 :=
 Rootcert2Flow.reject [] d189 c189 a189 (by decide) (by decide) (by decide)
#print axioms reject189

def r190 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d190 : List FTy := [[],[],[],[],[6],[7],[5],[0],[],[],[]]
def c190 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a190 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.app (.var 2 [0]) (.var 1 [6]) [0]) [5]) []) [5]) []) (.var 0 [6]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject190 : ¬ Reader r190 :=
 Rootcert2Flow.reject [] d190 c190 a190 (by decide) (by decide) (by decide)
#print axioms reject190

def r191 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d191 : List FTy := [[],[],[],[],[6],[7],[0,5],[0],[],[],[]]
def c191 : List FTy := [[],[],[],[],[0],[0],[0],[0,5],[],[10],[]]
def a191 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.app (.var 1 [6]) (.var 2 [0]) [0]) [0,5]) [0]) [5]) [0]) (.var 0 [6]) [0]) [4]) (.lam 6 (.app (.var 0 [0,5]) (.lam 7 (.var 1 [0,5]) [7]) [0]) [6]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0])
theorem reject191 : ¬ Reader r191 :=
 Rootcert2Flow.reject [] d191 c191 a191 (by decide) (by decide) (by decide)
#print axioms reject191

def r192 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d192 : List FTy := [[],[],[],[],[6],[10],[5,8],[6],[10],[5,8],[],[],[],[],[],[]]
def c192 : List FTy := [[],[],[],[],[],[6],[],[],[6],[6],[5,8],[],[],[],[15],[]]
def a192 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.lam 7 (.app (.var 0 [6]) (.lam 8 (.var 1 [6]) [8]) []) [7]) (.app (.lam 9 (.app (.var 0 [5,8]) (.lam 10 (.var 1 [5,8]) [10]) [6]) [9]) (.var 0 [5,8]) [6]) []) (.var 1 [0]) []) [6]) []) (.lam 11 (.app (.var 0 []) (.lam 12 (.var 1 []) [12]) []) [11]) []) (.var 1 [1]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject192 : ¬ Reader r192 :=
 Rootcert2Flow.reject [[1, 1]] d192 c192 a192 (by decide) (by decide) (by decide)
#print axioms reject192

def r193 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d193 : List FTy := [[],[],[],[],[6],[7],[5],[6],[],[],[]]
def c193 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a193 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.lam 5 (.app (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 1 [6]) [5]) []) (.var 2 [0]) []) [5]) []) (.var 0 [6]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject193 : ¬ Reader r193 :=
 Rootcert2Flow.reject [] d193 c193 a193 (by decide) (by decide) (by decide)
#print axioms reject193

def r195 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d195 : List FTy := [[],[],[],[],[6],[7],[5],[0],[],[],[]]
def c195 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a195 : Ann := (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.lam 5 (.app (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 2 [0]) [5]) []) (.var 1 [6]) []) [5]) []) (.var 0 [6]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject195 : ¬ Reader r195 :=
 Rootcert2Flow.reject [] d195 c195 a195 (by decide) (by decide) (by decide)
#print axioms reject195

def r380 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
def d380 : List FTy := [[],[],[],[],[],[],[8],[12],[7,10],[8],[12],[7,10],[],[],[],[]]
def c380 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[8],[8],[7,10],[],[15],[]]
def a380 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 []) (.lam 5 (.var 1 []) [5]) []) [4]) (.app (.lam 6 (.app (.var 0 [8]) (.lam 7 (.var 1 [8]) [7]) []) [6]) (.lam 8 (.app (.lam 9 (.app (.var 0 [8]) (.lam 10 (.var 1 [8]) [10]) []) [9]) (.app (.lam 11 (.app (.var 0 [7,10]) (.lam 12 (.var 1 [7,10]) [12]) [8]) [11]) (.var 0 [7,10]) [8]) []) [8]) []) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject380 : ¬ Reader r380 :=
 Rootcert2Flow.reject [[1, 1, 1]] d380 c380 a380 (by decide) (by decide) (by decide)
#print axioms reject380

def r381 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
def d381 : List FTy := [[],[],[],[],[],[],[8],[12],[7,10],[8],[12],[7,10],[],[],[],[]]
def c381 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[8],[8],[7,10],[],[15],[]]
def a381 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 []) (.lam 5 (.var 1 []) [5]) []) [4]) (.app (.lam 6 (.app (.var 0 [8]) (.lam 7 (.var 1 [8]) [7]) []) [6]) (.lam 8 (.app (.lam 9 (.app (.var 0 [8]) (.lam 10 (.var 1 [8]) [10]) []) [9]) (.app (.lam 11 (.app (.var 0 [7,10]) (.lam 12 (.var 1 [7,10]) [12]) [8]) [11]) (.var 0 [7,10]) [8]) []) [8]) []) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject381 : ¬ Reader r381 :=
 Rootcert2Flow.reject [[1, 1, 1]] d381 c381 a381 (by decide) (by decide) (by decide)
#print axioms reject381

def r382 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
def d382 : List FTy := [[],[],[],[],[6],[7],[5],[6],[],[],[]]
def c382 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a382 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 1 [6]) [5]) []) [5]) []) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject382 : ¬ Reader r382 :=
 Rootcert2Flow.reject [] d382 c382 a382 (by decide) (by decide) (by decide)
#print axioms reject382

def r383 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
def d383 : List FTy := [[],[],[],[],[6],[7],[5],[6],[],[],[]]
def c383 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a383 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 1 [6]) [5]) []) [5]) []) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject383 : ¬ Reader r383 :=
 Rootcert2Flow.reject [] d383 c383 a383 (by decide) (by decide) (by decide)
#print axioms reject383

def r384 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
def d384 : List FTy := [[],[],[],[],[6],[],[5],[9],[13],[8,11],[9],[13],[8,11],[],[],[],[]]
def c384 : List FTy := [[],[],[],[],[7],[6],[7],[],[9],[],[],[9],[9],[8,11],[],[16],[]]
def a384 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [9]) (.lam 8 (.var 1 [9]) [8]) []) [7]) [6]) [7]) (.lam 9 (.app (.lam 10 (.app (.var 0 [9]) (.lam 11 (.var 1 [9]) [11]) []) [10]) (.app (.lam 12 (.app (.var 0 [8,11]) (.lam 13 (.var 1 [8,11]) [13]) [9]) [12]) (.var 0 [8,11]) [9]) []) [9]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [])
theorem reject384 : ¬ Reader r384 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 1]] d384 c384 a384 (by decide) (by decide) (by decide)
#print axioms reject384

def r385 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
def d385 : List FTy := [[],[],[],[],[6],[],[5],[9],[13],[8,11],[9],[13],[8,11],[],[],[],[]]
def c385 : List FTy := [[],[],[],[],[7],[6],[7],[],[9],[],[],[9],[9],[8,11],[],[16],[]]
def a385 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [9]) (.lam 8 (.var 1 [9]) [8]) []) [7]) [6]) [7]) (.lam 9 (.app (.lam 10 (.app (.var 0 [9]) (.lam 11 (.var 1 [9]) [11]) []) [10]) (.app (.lam 12 (.app (.var 0 [8,11]) (.lam 13 (.var 1 [8,11]) [13]) [9]) [12]) (.var 0 [8,11]) [9]) []) [9]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [])
theorem reject385 : ¬ Reader r385 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 1]] d385 c385 a385 (by decide) (by decide) (by decide)
#print axioms reject385

def r386 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
def d386 : List FTy := [[],[],[],[],[6],[],[5],[9],[12],[8,11],[9],[12],[],[],[],[],[]]
def c386 : List FTy := [[],[],[],[],[7],[6],[7],[],[9],[],[],[9],[],[],[],[16],[]]
def a386 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [9]) (.lam 8 (.var 1 [9]) [8]) []) [7]) [6]) [7]) (.lam 9 (.app (.lam 10 (.app (.var 0 [9]) (.lam 11 (.var 1 [9]) [11]) []) [10]) (.app (.var 0 [8,11]) (.lam 12 (.app (.var 0 []) (.lam 13 (.var 1 []) [13]) []) [12]) [9]) []) [9]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [])
theorem reject386 : ¬ Reader r386 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 1]] d386 c386 a386 (by decide) (by decide) (by decide)
#print axioms reject386

def r387 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
def d387 : List FTy := [[],[],[],[],[6],[],[5],[9],[12],[8,11],[9],[12],[],[],[],[],[]]
def c387 : List FTy := [[],[],[],[],[7],[6],[7],[],[9],[],[],[9],[],[],[],[16],[]]
def a387 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [9]) (.lam 8 (.var 1 [9]) [8]) []) [7]) [6]) [7]) (.lam 9 (.app (.lam 10 (.app (.var 0 [9]) (.lam 11 (.var 1 [9]) [11]) []) [10]) (.app (.var 0 [8,11]) (.lam 12 (.app (.var 0 []) (.lam 13 (.var 1 []) [13]) []) [12]) [9]) []) [9]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [])
theorem reject387 : ¬ Reader r387 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 1]] d387 c387 a387 (by decide) (by decide) (by decide)
#print axioms reject387

def r388 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
def d388 : List FTy := [[],[],[],[],[6],[10],[5,8],[6],[10],[5,8],[],[],[],[],[],[]]
def c388 : List FTy := [[],[],[],[],[],[6],[],[],[6],[6],[5,8],[],[],[],[15],[]]
def a388 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.lam 7 (.app (.var 0 [6]) (.lam 8 (.var 1 [6]) [8]) []) [7]) (.app (.lam 9 (.app (.var 0 [5,8]) (.lam 10 (.var 1 [5,8]) [10]) [6]) [9]) (.var 0 [5,8]) [6]) []) [6]) []) (.lam 11 (.app (.var 0 []) (.lam 12 (.var 1 []) [12]) []) [11]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject388 : ¬ Reader r388 :=
 Rootcert2Flow.reject [[1, 1, 1]] d388 c388 a388 (by decide) (by decide) (by decide)
#print axioms reject388

def r389 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
def d389 : List FTy := [[],[],[],[],[6],[10],[5,8],[6],[10],[5,8],[],[],[],[],[],[]]
def c389 : List FTy := [[],[],[],[],[],[6],[],[],[6],[6],[5,8],[],[],[],[15],[]]
def a389 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.lam 7 (.app (.var 0 [6]) (.lam 8 (.var 1 [6]) [8]) []) [7]) (.app (.lam 9 (.app (.var 0 [5,8]) (.lam 10 (.var 1 [5,8]) [10]) [6]) [9]) (.var 0 [5,8]) [6]) []) [6]) []) (.lam 11 (.app (.var 0 []) (.lam 12 (.var 1 []) [12]) []) [11]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject389 : ¬ Reader r389 :=
 Rootcert2Flow.reject [[1, 1, 1]] d389 c389 a389 (by decide) (by decide) (by decide)
#print axioms reject389

def r390 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
def d390 : List FTy := [[],[],[],[],[6],[7],[5],[6],[],[],[]]
def c390 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a390 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 1 [6]) [5]) []) [5]) []) (.var 0 [6]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject390 : ¬ Reader r390 :=
 Rootcert2Flow.reject [] d390 c390 a390 (by decide) (by decide) (by decide)
#print axioms reject390

def r391 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1))))) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
def d391 : List FTy := [[],[],[],[],[6],[7],[5],[6],[],[],[]]
def c391 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a391 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 1 [6]) [5]) []) [5]) []) (.var 0 [6]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject391 : ¬ Reader r391 :=
 Rootcert2Flow.reject [] d391 c391 a391 (by decide) (by decide) (by decide)
#print axioms reject391

def r392 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
def d392 : List FTy := [[],[],[],[],[6],[12],[5,10],[],[],[6],[12],[5,10],[],[],[],[]]
def c392 : List FTy := [[],[],[],[],[],[6],[],[],[],[],[6],[6],[5,10],[],[15],[]]
def a392 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.lam 7 (.app (.var 0 []) (.lam 8 (.var 1 []) [8]) []) [7]) (.app (.lam 9 (.app (.var 0 [6]) (.lam 10 (.var 1 [6]) [10]) []) [9]) (.app (.lam 11 (.app (.var 0 [5,10]) (.lam 12 (.var 1 [5,10]) [12]) [6]) [11]) (.var 0 [5,10]) [6]) []) []) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject392 : ¬ Reader r392 :=
 Rootcert2Flow.reject [[1, 1, 1]] d392 c392 a392 (by decide) (by decide) (by decide)
#print axioms reject392

def r393 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
def d393 : List FTy := [[],[],[],[],[6],[12],[5,10],[],[],[6],[12],[5,10],[],[],[],[]]
def c393 : List FTy := [[],[],[],[],[],[6],[],[],[],[],[6],[6],[5,10],[],[15],[]]
def a393 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.lam 7 (.app (.var 0 []) (.lam 8 (.var 1 []) [8]) []) [7]) (.app (.lam 9 (.app (.var 0 [6]) (.lam 10 (.var 1 [6]) [10]) []) [9]) (.app (.lam 11 (.app (.var 0 [5,10]) (.lam 12 (.var 1 [5,10]) [12]) [6]) [11]) (.var 0 [5,10]) [6]) []) []) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject393 : ¬ Reader r393 :=
 Rootcert2Flow.reject [[1, 1, 1]] d393 c393 a393 (by decide) (by decide) (by decide)
#print axioms reject393

def r394 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
def d394 : List FTy := [[],[],[],[],[6],[7],[5],[6],[],[],[]]
def c394 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a394 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 1 [6]) [5]) []) []) [5]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject394 : ¬ Reader r394 :=
 Rootcert2Flow.reject [] d394 c394 a394 (by decide) (by decide) (by decide)
#print axioms reject394

def r395 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
def d395 : List FTy := [[],[],[],[],[6],[7],[5],[6],[],[],[]]
def c395 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a395 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 1 [6]) [5]) []) []) [5]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject395 : ¬ Reader r395 :=
 Rootcert2Flow.reject [] d395 c395 a395 (by decide) (by decide) (by decide)
#print axioms reject395

def r398 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
def d398 : List FTy := [[],[],[],[],[6],[11],[5,8],[6],[11],[11],[12],[10],[],[],[],[]]
def c398 : List FTy := [[],[],[],[],[],[6],[],[],[6],[11],[11],[11],[10],[],[15],[]]
def a398 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.lam 7 (.app (.var 0 [6]) (.lam 8 (.var 1 [6]) [8]) []) [7]) (.app (.var 0 [5,8]) (.app (.lam 9 (.app (.var 0 [11]) (.lam 10 (.var 1 [11]) [10]) [11]) [9]) (.lam 11 (.app (.var 0 [10]) (.lam 12 (.var 1 [10]) [12]) [11]) [11]) [11]) [6]) []) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject398 : ¬ Reader r398 :=
 Rootcert2Flow.reject [[1, 1, 1]] d398 c398 a398 (by decide) (by decide) (by decide)
#print axioms reject398

def r399 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 1))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
def d399 : List FTy := [[],[],[],[],[6],[11],[5,8],[6],[11],[11],[12],[10],[],[],[],[]]
def c399 : List FTy := [[],[],[],[],[],[6],[],[],[6],[11],[11],[11],[10],[],[15],[]]
def a399 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.lam 7 (.app (.var 0 [6]) (.lam 8 (.var 1 [6]) [8]) []) [7]) (.app (.var 0 [5,8]) (.app (.lam 9 (.app (.var 0 [11]) (.lam 10 (.var 1 [11]) [10]) [11]) [9]) (.lam 11 (.app (.var 0 [10]) (.lam 12 (.var 1 [10]) [12]) [11]) [11]) [11]) [6]) []) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject399 : ¬ Reader r399 :=
 Rootcert2Flow.reject [[1, 1, 1]] d399 c399 a399 (by decide) (by decide) (by decide)
#print axioms reject399

def r404 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
def d404 : List FTy := [[],[],[],[],[6],[10],[5,8],[6],[10],[5,8],[],[],[],[],[],[]]
def c404 : List FTy := [[],[],[],[],[],[6],[],[],[6],[6],[5,8],[],[],[],[15],[]]
def a404 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.lam 7 (.app (.var 0 [6]) (.lam 8 (.var 1 [6]) [8]) []) [7]) (.app (.lam 9 (.app (.var 0 [5,8]) (.lam 10 (.var 1 [5,8]) [10]) [6]) [9]) (.var 0 [5,8]) [6]) []) (.lam 11 (.app (.var 0 []) (.lam 12 (.var 1 []) [12]) []) [11]) []) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject404 : ¬ Reader r404 :=
 Rootcert2Flow.reject [[1, 1, 1]] d404 c404 a404 (by decide) (by decide) (by decide)
#print axioms reject404

def r405 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
def d405 : List FTy := [[],[],[],[],[6],[10],[5,8],[6],[10],[5,8],[],[],[],[],[],[]]
def c405 : List FTy := [[],[],[],[],[],[6],[],[],[6],[6],[5,8],[],[],[],[15],[]]
def a405 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.lam 7 (.app (.var 0 [6]) (.lam 8 (.var 1 [6]) [8]) []) [7]) (.app (.lam 9 (.app (.var 0 [5,8]) (.lam 10 (.var 1 [5,8]) [10]) [6]) [9]) (.var 0 [5,8]) [6]) []) (.lam 11 (.app (.var 0 []) (.lam 12 (.var 1 []) [12]) []) [11]) []) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) [])
theorem reject405 : ¬ Reader r405 :=
 Rootcert2Flow.reject [[1, 1, 1]] d405 c405 a405 (by decide) (by decide) (by decide)
#print axioms reject405

def r406 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
def d406 : List FTy := [[],[],[],[],[6],[7],[5],[6],[],[],[]]
def c406 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a406 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 1 [6]) [5]) []) (.var 1 [6]) []) [5]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject406 : ¬ Reader r406 :=
 Rootcert2Flow.reject [] d406 c406 a406 (by decide) (by decide) (by decide)
#print axioms reject406

def r407 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 1))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
def d407 : List FTy := [[],[],[],[],[6],[7],[5],[6],[],[],[]]
def c407 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a407 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 1 [6]) [5]) []) (.var 1 [6]) []) [5]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject407 : ¬ Reader r407 :=
 Rootcert2Flow.reject [] d407 c407 a407 (by decide) (by decide) (by decide)
#print axioms reject407
end Blc.Rootcert2.FlowCases17
