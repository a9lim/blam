import Flow
namespace Blc.Rootcert2.FlowCases50
open Term SelfintClass Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r408 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 0))
def d408 : List FTy := [[],[],[],[],[7],[8],[12],[5],[15],[1],[13],[14],[12],[11],[15],[1],[],[],[]]
def c408 : List FTy := [[],[],[],[],[6],[6],[9],[6],[9],[],[12],[12],[15],[12],[15],[],[],[18],[]]
def a408 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.lam 6 (.app (.var 1 [8]) (.app (.var 0 [12]) (.var 0 [12]) [15]) [9]) [6]) [5]) [6]) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.lam 9 (.app (.var 1 [15]) (.app (.var 0 [1]) (.var 0 [1]) [1]) []) [9]) [8]) [6]) [7]) [6]) (.app (.lam 10 (.app (.var 0 [13]) (.lam 11 (.lam 12 (.app (.var 1 [14]) (.app (.var 0 [12]) (.var 0 [12]) [15]) [15]) [12]) [11]) [12]) [10]) (.lam 13 (.app (.var 0 [11]) (.lam 14 (.lam 15 (.app (.var 1 [15]) (.app (.var 0 [1]) (.var 0 [1]) [1]) []) [15]) [14]) [12]) [13]) [12]) [9]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject408 : ¬ Reader r408 :=
 Rootcert2Flow.reject [[1, 1, 1]] d408 c408 a408 (by decide) (by decide) (by decide)
#print axioms reject408

def r409 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 1))
def d409 : List FTy := [[],[],[],[],[7],[8],[12],[5],[15],[0],[13],[14],[12],[11],[15],[0],[],[],[]]
def c409 : List FTy := [[],[],[],[],[6],[6],[9],[6],[9],[],[12],[12],[15],[12],[15],[],[],[18],[]]
def a409 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.lam 6 (.app (.var 1 [8]) (.app (.var 0 [12]) (.var 0 [12]) [15]) [9]) [6]) [5]) [6]) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.lam 9 (.app (.var 1 [15]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) [9]) [8]) [6]) [7]) [6]) (.app (.lam 10 (.app (.var 0 [13]) (.lam 11 (.lam 12 (.app (.var 1 [14]) (.app (.var 0 [12]) (.var 0 [12]) [15]) [15]) [12]) [11]) [12]) [10]) (.lam 13 (.app (.var 0 [11]) (.lam 14 (.lam 15 (.app (.var 1 [15]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) [15]) [14]) [12]) [13]) [12]) [9]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject409 : ¬ Reader r409 :=
 Rootcert2Flow.reject [[1, 1, 1]] d409 c409 a409 (by decide) (by decide) (by decide)
#print axioms reject409

def r412 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 0))
def d412 : List FTy := [[],[],[],[],[6],[10],[13],[1],[11],[12],[10],[9],[13],[1],[],[],[]]
def c412 : List FTy := [[],[],[],[],[5],[7],[7],[],[10],[10],[13],[10],[13],[],[],[16],[]]
def a412 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [10]) (.var 0 [10]) [13]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [13]) (.app (.var 0 [1]) (.var 0 [1]) [1]) []) [7]) [6]) [5]) (.app (.lam 8 (.app (.var 0 [11]) (.lam 9 (.lam 10 (.app (.var 1 [12]) (.app (.var 0 [10]) (.var 0 [10]) [13]) [13]) [10]) [9]) [10]) [8]) (.lam 11 (.app (.var 0 [9]) (.lam 12 (.lam 13 (.app (.var 1 [13]) (.app (.var 0 [1]) (.var 0 [1]) [1]) []) [13]) [12]) [10]) [11]) [10]) [7]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [])
theorem reject412 : ¬ Reader r412 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1]] d412 c412 a412 (by decide) (by decide) (by decide)
#print axioms reject412

def r413 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 1))
def d413 : List FTy := [[],[],[],[],[6],[10],[13],[0],[11],[12],[10],[9],[13],[0],[],[],[]]
def c413 : List FTy := [[],[],[],[],[5],[7],[7],[],[10],[10],[13],[10],[13],[],[],[16],[]]
def a413 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [10]) (.var 0 [10]) [13]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [13]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) [7]) [6]) [5]) (.app (.lam 8 (.app (.var 0 [11]) (.lam 9 (.lam 10 (.app (.var 1 [12]) (.app (.var 0 [10]) (.var 0 [10]) [13]) [13]) [10]) [9]) [10]) [8]) (.lam 11 (.app (.var 0 [9]) (.lam 12 (.lam 13 (.app (.var 1 [13]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) [13]) [12]) [10]) [11]) [10]) [7]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 14 (.app (.app (.var 0 []) (.lam 15 (.lam 16 (.var 1 []) [16]) [15]) []) (.var 4 [3]) []) [14]) [])
theorem reject413 : ¬ Reader r413 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1]] d413 c413 a413 (by decide) (by decide) (by decide)
#print axioms reject413

def r414 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 0))
def d414 : List FTy := [[],[],[],[],[7],[8],[12],[5],[15],[1],[13],[14],[12],[11],[15],[1],[],[],[]]
def c414 : List FTy := [[],[],[],[],[6],[6],[9],[6],[9],[],[12],[12],[15],[12],[15],[],[],[18],[]]
def a414 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.lam 6 (.app (.var 1 [8]) (.app (.var 0 [12]) (.var 0 [12]) [15]) [9]) [6]) [5]) [6]) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.lam 9 (.app (.var 1 [15]) (.app (.var 0 [1]) (.var 0 [1]) [1]) []) [9]) [8]) [6]) [7]) [6]) (.app (.lam 10 (.app (.var 0 [13]) (.lam 11 (.lam 12 (.app (.var 1 [14]) (.app (.var 0 [12]) (.var 0 [12]) [15]) [15]) [12]) [11]) [12]) [10]) (.lam 13 (.app (.var 0 [11]) (.lam 14 (.lam 15 (.app (.var 1 [15]) (.app (.var 0 [1]) (.var 0 [1]) [1]) []) [15]) [14]) [12]) [13]) [12]) [9]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject414 : ¬ Reader r414 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1]] d414 c414 a414 (by decide) (by decide) (by decide)
#print axioms reject414

def r415 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 1))
def d415 : List FTy := [[],[],[],[],[7],[8],[12],[5],[15],[0],[13],[14],[12],[11],[15],[0],[],[],[]]
def c415 : List FTy := [[],[],[],[],[6],[6],[9],[6],[9],[],[12],[12],[15],[12],[15],[],[],[18],[]]
def a415 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.lam 6 (.app (.var 1 [8]) (.app (.var 0 [12]) (.var 0 [12]) [15]) [9]) [6]) [5]) [6]) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.lam 9 (.app (.var 1 [15]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) [9]) [8]) [6]) [7]) [6]) (.app (.lam 10 (.app (.var 0 [13]) (.lam 11 (.lam 12 (.app (.var 1 [14]) (.app (.var 0 [12]) (.var 0 [12]) [15]) [15]) [12]) [11]) [12]) [10]) (.lam 13 (.app (.var 0 [11]) (.lam 14 (.lam 15 (.app (.var 1 [15]) (.app (.var 0 [0]) (.var 0 [0]) [0]) []) [15]) [14]) [12]) [13]) [12]) [9]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject415 : ¬ Reader r415 :=
 Rootcert2Flow.reject [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1]] d415 c415 a415 (by decide) (by decide) (by decide)
#print axioms reject415
end Blc.Rootcert2.FlowCases50
