import Flow
namespace Blc.Rootcert2.DevelopCases00
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r180 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d180 : List FTy := [[],[],[],[],[10],[7],[],[6],[11],[0],[0],[9,16],[14],[],[13],[11],[0],[],[24],[21],[],[20],[25],[0],[0],[23,30],[28],[],[27],[25],[0],[],[],[]]
def c180 : List FTy := [[],[],[],[],[],[8],[7],[8],[],[11],[11],[],[15],[14],[15],[],[11],[],[],[22],[21],[22],[],[25],[25],[],[29],[28],[29],[],[25],[],[33],[]]
def a180 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.lam 5 (.app (.var 0 [7]) (.lam 6 (.var 1 [7]) [6]) [8]) [5]) (.lam 7 (.lam 8 (.app (.var 0 [11]) (.lam 9 (.var 1 [11]) [9]) []) [8]) [7]) [8]) (.app (.var 0 [10]) (.var 1 [0]) [11]) []) [4]) (.lam 10 (.lam 11 (.app (.app (.lam 12 (.app (.var 0 [14]) (.lam 13 (.var 1 [14]) [13]) [15]) [12]) (.lam 14 (.lam 15 (.app (.var 0 [11]) (.lam 16 (.var 1 [11]) [16]) []) [15]) [14]) [15]) (.app (.var 0 [9,16]) (.var 2 [0]) [11]) []) [11]) [10]) []) (.lam 17 (.app (.lam 18 (.app (.app (.lam 19 (.app (.var 0 [21]) (.lam 20 (.var 1 [21]) [20]) [22]) [19]) (.lam 21 (.lam 22 (.app (.var 0 [25]) (.lam 23 (.var 1 [25]) [23]) []) [22]) [21]) [22]) (.app (.var 0 [24]) (.var 2 [0]) [25]) []) [18]) (.lam 24 (.lam 25 (.app (.app (.lam 26 (.app (.var 0 [28]) (.lam 27 (.var 1 [28]) [27]) [29]) [26]) (.lam 28 (.lam 29 (.app (.var 0 [25]) (.lam 30 (.var 1 [25]) [30]) []) [29]) [28]) [29]) (.app (.var 0 [23,30]) (.var 3 [0]) [25]) []) [25]) [24]) []) [17]) []) (.var 1 [1]) []) (.lam 31 (.app (.app (.var 0 []) (.lam 32 (.lam 33 (.var 1 []) [33]) [32]) []) (.var 4 [3]) []) [31]) [])
theorem reject180 : ¬ Reader r180 :=
 Rootcert2Flow.reject [[1, 1], [1, 1, 2, 2, 0, 1], [1, 1, 2], [1, 1]] d180 c180 a180 (by decide) (by decide) (by decide)
#print axioms reject180

def r187 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d187 : List FTy := [[],[],[],[],[6],[],[5],[9],[0],[8,14],[12],[],[11],[9],[0],[],[],[]]
def c187 : List FTy := [[],[],[],[],[7],[6],[7],[],[9],[],[13],[12],[13],[],[9],[],[17],[]]
def a187 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) [7]) [4]) (.lam 6 (.lam 7 (.app (.var 0 [9]) (.lam 8 (.var 1 [9]) [8]) []) [7]) [6]) [7]) (.lam 9 (.app (.app (.lam 10 (.app (.var 0 [12]) (.lam 11 (.var 1 [12]) [11]) [13]) [10]) (.lam 12 (.lam 13 (.app (.var 0 [9]) (.lam 14 (.var 1 [9]) [14]) []) [13]) [12]) [13]) (.app (.var 0 [8,14]) (.var 1 [0]) [9]) []) [9]) []) (.var 1 [1]) []) (.lam 15 (.app (.app (.var 0 []) (.lam 16 (.lam 17 (.var 1 []) [17]) [16]) []) (.var 4 [3]) []) [15]) [])
theorem reject187 : ¬ Reader r187 :=
 Rootcert2Flow.reject [[1, 1], [1, 1, 1], [1, 1, 2, 0, 1]] d187 c187 a187 (by decide) (by decide) (by decide)
#print axioms reject187

def r194 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
def d194 : List FTy := [[],[],[],[],[10],[7],[],[6],[11],[0],[0],[9,16],[14],[],[13],[11],[0],[],[],[],[],[]]
def c194 : List FTy := [[],[],[],[],[],[8],[7],[8],[],[11],[11],[],[15],[14],[15],[],[11],[],[],[],[21],[]]
def a194 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.lam 5 (.app (.var 0 [7]) (.lam 6 (.var 1 [7]) [6]) [8]) [5]) (.lam 7 (.lam 8 (.app (.var 0 [11]) (.lam 9 (.var 1 [11]) [9]) []) [8]) [7]) [8]) (.app (.var 0 [10]) (.var 1 [0]) [11]) []) [4]) (.lam 10 (.lam 11 (.app (.app (.lam 12 (.app (.var 0 [14]) (.lam 13 (.var 1 [14]) [13]) [15]) [12]) (.lam 14 (.lam 15 (.app (.var 0 [11]) (.lam 16 (.var 1 [11]) [16]) []) [15]) [14]) [15]) (.app (.var 0 [9,16]) (.var 2 [0]) [11]) []) [11]) [10]) []) (.lam 17 (.app (.var 0 []) (.lam 18 (.var 1 []) [18]) []) [17]) []) (.var 1 [1]) []) (.lam 19 (.app (.app (.var 0 []) (.lam 20 (.lam 21 (.var 1 []) [21]) [20]) []) (.var 4 [3]) []) [19]) [])
theorem reject194 : ¬ Reader r194 :=
 Rootcert2Flow.reject [[1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1]] d194 c194 a194 (by decide) (by decide) (by decide)
#print axioms reject194

def r396 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
def d396 : List FTy := [[],[],[],[],[16],[7],[],[6],[16],[],[22,28],[13],[],[12],[16],[],[9,15],[10,23],[20],[],[19],[10,23],[],[22,28],[26],[],[25],[10,23],[],[],[],[]]
def c396 : List FTy := [[],[],[],[],[],[8],[7],[8],[17],[16],[17],[14],[13],[14],[17],[16],[17],[],[21],[20],[21],[17],[10,23],[17],[27],[26],[27],[17],[10,23],[],[31],[]]
def a396 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.lam 5 (.app (.var 0 [7]) (.lam 6 (.var 1 [7]) [6]) [8]) [5]) (.lam 7 (.lam 8 (.app (.var 0 [16]) (.lam 9 (.var 1 [16]) [9]) [17]) [8]) [7]) [8]) (.var 0 [16]) [17]) (.lam 10 (.app (.app (.lam 11 (.app (.var 0 [13]) (.lam 12 (.var 1 [13]) [12]) [14]) [11]) (.lam 13 (.lam 14 (.app (.var 0 [16]) (.lam 15 (.var 1 [16]) [15]) [17]) [14]) [13]) [14]) (.var 1 [16]) [17]) [10]) []) [4]) (.lam 16 (.lam 17 (.app (.app (.app (.lam 18 (.app (.var 0 [20]) (.lam 19 (.var 1 [20]) [19]) [21]) [18]) (.lam 20 (.lam 21 (.app (.var 0 [10,23]) (.lam 22 (.var 1 [10,23]) [22]) [17]) [21]) [20]) [21]) (.var 0 [10,23]) [17]) (.lam 23 (.app (.app (.lam 24 (.app (.var 0 [26]) (.lam 25 (.var 1 [26]) [25]) [27]) [24]) (.lam 26 (.lam 27 (.app (.var 0 [10,23]) (.lam 28 (.var 1 [10,23]) [28]) [17]) [27]) [26]) [27]) (.var 1 [10,23]) [17]) [23]) []) [17]) [16]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 29 (.app (.app (.var 0 []) (.lam 30 (.lam 31 (.var 1 []) [31]) [30]) []) (.var 4 [3]) []) [29]) [])
theorem reject396 : ¬ Reader r396 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 2, 0], [1, 1, 1]] d396 c396 a396 (by decide) (by decide) (by decide)
#print axioms reject396

def r397 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
def d397 : List FTy := [[],[],[],[],[16],[7],[],[6],[16],[],[22,28],[13],[],[12],[16],[],[9,15],[10,23],[20],[],[19],[10,23],[],[22,28],[26],[],[25],[10,23],[],[],[],[]]
def c397 : List FTy := [[],[],[],[],[],[8],[7],[8],[17],[16],[17],[14],[13],[14],[17],[16],[17],[],[21],[20],[21],[17],[10,23],[17],[27],[26],[27],[17],[10,23],[],[31],[]]
def a397 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.app (.lam 5 (.app (.var 0 [7]) (.lam 6 (.var 1 [7]) [6]) [8]) [5]) (.lam 7 (.lam 8 (.app (.var 0 [16]) (.lam 9 (.var 1 [16]) [9]) [17]) [8]) [7]) [8]) (.var 0 [16]) [17]) (.lam 10 (.app (.app (.lam 11 (.app (.var 0 [13]) (.lam 12 (.var 1 [13]) [12]) [14]) [11]) (.lam 13 (.lam 14 (.app (.var 0 [16]) (.lam 15 (.var 1 [16]) [15]) [17]) [14]) [13]) [14]) (.var 1 [16]) [17]) [10]) []) [4]) (.lam 16 (.lam 17 (.app (.app (.app (.lam 18 (.app (.var 0 [20]) (.lam 19 (.var 1 [20]) [19]) [21]) [18]) (.lam 20 (.lam 21 (.app (.var 0 [10,23]) (.lam 22 (.var 1 [10,23]) [22]) [17]) [21]) [20]) [21]) (.var 0 [10,23]) [17]) (.lam 23 (.app (.app (.lam 24 (.app (.var 0 [26]) (.lam 25 (.var 1 [26]) [25]) [27]) [24]) (.lam 26 (.lam 27 (.app (.var 0 [10,23]) (.lam 28 (.var 1 [10,23]) [28]) [17]) [27]) [26]) [27]) (.var 1 [10,23]) [17]) [23]) []) [17]) [16]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 29 (.app (.app (.var 0 []) (.lam 30 (.lam 31 (.var 1 []) [31]) [30]) []) (.var 4 [3]) []) [29]) [])
theorem reject397 : ¬ Reader r397 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 2, 0], [1, 1, 1]] d397 c397 a397 (by decide) (by decide) (by decide)
#print axioms reject397

def r400 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
def d400 : List FTy := [[],[],[],[],[11],[7],[],[6],[12],[18],[],[10],[9,17],[15],[],[14],[12],[18],[],[],[],[]]
def c400 : List FTy := [[],[],[],[],[],[8],[7],[8],[],[12],[11],[12],[],[16],[15],[16],[],[12],[9,17],[],[21],[]]
def a400 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.lam 5 (.app (.var 0 [7]) (.lam 6 (.var 1 [7]) [6]) [8]) [5]) (.lam 7 (.lam 8 (.app (.var 0 [12]) (.lam 9 (.var 1 [12]) [9]) []) [8]) [7]) [8]) (.app (.var 0 [11]) (.lam 10 (.var 1 [11]) [10]) [12]) []) [4]) (.lam 11 (.lam 12 (.app (.app (.lam 13 (.app (.var 0 [15]) (.lam 14 (.var 1 [15]) [14]) [16]) [13]) (.lam 15 (.lam 16 (.app (.var 0 [12]) (.lam 17 (.var 1 [12]) [17]) []) [16]) [15]) [16]) (.app (.var 0 [9,17]) (.lam 18 (.var 1 [9,17]) [18]) [12]) []) [12]) [11]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 19 (.app (.app (.var 0 []) (.lam 20 (.lam 21 (.var 1 []) [21]) [20]) []) (.var 4 [3]) []) [19]) [])
theorem reject400 : ¬ Reader r400 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0, 2], [1, 1, 1]] d400 c400 a400 (by decide) (by decide) (by decide)
#print axioms reject400

def r401 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
def d401 : List FTy := [[],[],[],[],[11],[7],[],[6],[12],[18],[],[10],[9,17],[15],[],[14],[12],[18],[],[],[],[]]
def c401 : List FTy := [[],[],[],[],[],[8],[7],[8],[],[12],[11],[12],[],[16],[15],[16],[],[12],[9,17],[],[21],[]]
def a401 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.lam 5 (.app (.var 0 [7]) (.lam 6 (.var 1 [7]) [6]) [8]) [5]) (.lam 7 (.lam 8 (.app (.var 0 [12]) (.lam 9 (.var 1 [12]) [9]) []) [8]) [7]) [8]) (.app (.var 0 [11]) (.lam 10 (.var 1 [11]) [10]) [12]) []) [4]) (.lam 11 (.lam 12 (.app (.app (.lam 13 (.app (.var 0 [15]) (.lam 14 (.var 1 [15]) [14]) [16]) [13]) (.lam 15 (.lam 16 (.app (.var 0 [12]) (.lam 17 (.var 1 [12]) [17]) []) [16]) [15]) [16]) (.app (.var 0 [9,17]) (.lam 18 (.var 1 [9,17]) [18]) [12]) []) [12]) [11]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 19 (.app (.app (.var 0 []) (.lam 20 (.lam 21 (.var 1 []) [21]) [20]) []) (.var 4 [3]) []) [19]) [])
theorem reject401 : ¬ Reader r401 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0, 2], [1, 1, 1]] d401 c401 a401 (by decide) (by decide) (by decide)
#print axioms reject401

def r402 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0))
def d402 : List FTy := [[],[],[],[],[12],[7],[],[6],[13],[19],[],[],[10],[9,18],[16],[],[15],[13],[19],[],[],[],[],[]]
def c402 : List FTy := [[],[],[],[],[],[8],[7],[8],[],[13],[],[],[13],[],[17],[16],[17],[],[13],[],[],[],[23],[]]
def a402 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.lam 5 (.app (.var 0 [7]) (.lam 6 (.var 1 [7]) [6]) [8]) [5]) (.lam 7 (.lam 8 (.app (.var 0 [13]) (.lam 9 (.var 1 [13]) [9]) []) [8]) [7]) [8]) (.app (.var 0 [12]) (.lam 10 (.app (.var 0 []) (.lam 11 (.var 1 []) [11]) []) [10]) [13]) []) [4]) (.lam 12 (.lam 13 (.app (.app (.lam 14 (.app (.var 0 [16]) (.lam 15 (.var 1 [16]) [15]) [17]) [14]) (.lam 16 (.lam 17 (.app (.var 0 [13]) (.lam 18 (.var 1 [13]) [18]) []) [17]) [16]) [17]) (.app (.var 0 [9,18]) (.lam 19 (.app (.var 0 []) (.lam 20 (.var 1 []) [20]) []) [19]) [13]) []) [13]) [12]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 21 (.app (.app (.var 0 []) (.lam 22 (.lam 23 (.var 1 []) [23]) [22]) []) (.var 4 [3]) []) [21]) [])
theorem reject402 : ¬ Reader r402 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1]] d402 c402 a402 (by decide) (by decide) (by decide)
#print axioms reject402

def r403 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1))
def d403 : List FTy := [[],[],[],[],[12],[7],[],[6],[13],[19],[],[],[10],[9,18],[16],[],[15],[13],[19],[],[],[],[],[]]
def c403 : List FTy := [[],[],[],[],[],[8],[7],[8],[],[13],[],[],[13],[],[17],[16],[17],[],[13],[],[],[],[23],[]]
def a403 : Ann := (.app (.app (.app (.app (.lam 4 (.app (.app (.lam 5 (.app (.var 0 [7]) (.lam 6 (.var 1 [7]) [6]) [8]) [5]) (.lam 7 (.lam 8 (.app (.var 0 [13]) (.lam 9 (.var 1 [13]) [9]) []) [8]) [7]) [8]) (.app (.var 0 [12]) (.lam 10 (.app (.var 0 []) (.lam 11 (.var 1 []) [11]) []) [10]) [13]) []) [4]) (.lam 12 (.lam 13 (.app (.app (.lam 14 (.app (.var 0 [16]) (.lam 15 (.var 1 [16]) [15]) [17]) [14]) (.lam 16 (.lam 17 (.app (.var 0 [13]) (.lam 18 (.var 1 [13]) [18]) []) [17]) [16]) [17]) (.app (.var 0 [9,18]) (.lam 19 (.app (.var 0 []) (.lam 20 (.var 1 []) [20]) []) [19]) [13]) []) [13]) [12]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 21 (.app (.app (.var 0 []) (.lam 22 (.lam 23 (.var 1 []) [23]) [22]) []) (.var 4 [3]) []) [21]) [])
theorem reject403 : ¬ Reader r403 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1]] d403 c403 a403 (by decide) (by decide) (by decide)
#print axioms reject403
end Blc.Rootcert2.DevelopCases00
