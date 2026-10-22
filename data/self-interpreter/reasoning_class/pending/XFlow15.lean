import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XFlow15
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r10875 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
def d10875 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c10875 : List FTy := [[],[],[],[],[],[],[],[],[9],[],[],[12],[]]
def a10875 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) []) (.var 0 [0]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject10875 : ¬ Reader r10875 :=
 Rootcert2Flow.reject [] d10875 c10875 a10875 (by decide) (by decide) (by decide)
#print axioms reject10875

def r10876 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
def d10876 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c10876 : List FTy := [[],[],[],[],[],[],[],[],[9],[],[],[12],[]]
def a10876 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject10876 : ¬ Reader r10876 :=
 Rootcert2Flow.reject [] d10876 c10876 a10876 (by decide) (by decide) (by decide)
#print axioms reject10876

def r10877 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
def d10877 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c10877 : List FTy := [[],[],[],[],[],[],[],[],[9],[],[],[12],[]]
def a10877 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) []) (.var 1 [1]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject10877 : ¬ Reader r10877 :=
 Rootcert2Flow.reject [] d10877 c10877 a10877 (by decide) (by decide) (by decide)
#print axioms reject10877

def r10878 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
def d10878 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c10878 : List FTy := [[],[],[],[],[],[],[],[],[9],[],[],[12],[]]
def a10878 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 0 []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject10878 : ¬ Reader r10878 :=
 Rootcert2Flow.reject [] d10878 c10878 a10878 (by decide) (by decide) (by decide)
#print axioms reject10878

def r10897 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d10897 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c10897 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[],[12],[]]
def a10897 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) [6]) []) [5]) []) (.lam 9 (.var 0 []) [9]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject10897 : ¬ Reader r10897 :=
 Rootcert2Flow.reject [] d10897 c10897 a10897 (by decide) (by decide) (by decide)
#print axioms reject10897

def r10898 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d10898 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c10898 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[],[12],[]]
def a10898 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) [6]) []) [5]) []) (.lam 9 (.var 0 []) [9]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject10898 : ¬ Reader r10898 :=
 Rootcert2Flow.reject [] d10898 c10898 a10898 (by decide) (by decide) (by decide)
#print axioms reject10898

def r10899 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d10899 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c10899 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[],[12],[]]
def a10899 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 9 (.var 0 []) [9]) []) (.var 0 [0]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject10899 : ¬ Reader r10899 :=
 Rootcert2Flow.reject [] d10899 c10899 a10899 (by decide) (by decide) (by decide)
#print axioms reject10899

def r10900 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d10900 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c10900 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[],[12],[]]
def a10900 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.var 0 []) [9]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject10900 : ¬ Reader r10900 :=
 Rootcert2Flow.reject [] d10900 c10900 a10900 (by decide) (by decide) (by decide)
#print axioms reject10900

def r10901 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d10901 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c10901 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[],[12],[]]
def a10901 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 9 (.var 0 []) [9]) []) (.var 1 [1]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject10901 : ¬ Reader r10901 :=
 Rootcert2Flow.reject [] d10901 c10901 a10901 (by decide) (by decide) (by decide)
#print axioms reject10901

def r10902 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d10902 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c10902 : List FTy := [[],[],[],[],[],[],[],[8],[],[],[],[12],[]]
def a10902 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.lam 8 (.var 0 []) [8]) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.var 0 []) [9]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject10902 : ¬ Reader r10902 :=
 Rootcert2Flow.reject [] d10902 c10902 a10902 (by decide) (by decide) (by decide)
#print axioms reject10902

def r11053 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 0))
def d11053 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c11053 : List FTy := [[],[],[],[],[],[],[],[8],[9],[],[],[12],[]]
def a11053 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject11053 : ¬ Reader r11053 :=
 Rootcert2Flow.reject [] d11053 c11053 a11053 (by decide) (by decide) (by decide)
#print axioms reject11053

def r11054 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 1))
def d11054 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c11054 : List FTy := [[],[],[],[],[],[],[],[8],[9],[],[],[12],[]]
def a11054 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject11054 : ¬ Reader r11054 :=
 Rootcert2Flow.reject [] d11054 c11054 a11054 (by decide) (by decide) (by decide)
#print axioms reject11054

def r11055 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.var 0))
def d11055 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c11055 : List FTy := [[],[],[],[],[],[],[],[8],[9],[],[],[12],[]]
def a11055 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) [7]) []) (.var 0 [0]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject11055 : ¬ Reader r11055 :=
 Rootcert2Flow.reject [] d11055 c11055 a11055 (by decide) (by decide) (by decide)
#print axioms reject11055

def r11056 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 0)))))
def d11056 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c11056 : List FTy := [[],[],[],[],[],[],[],[8],[9],[],[],[12],[]]
def a11056 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) [7]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject11056 : ¬ Reader r11056 :=
 Rootcert2Flow.reject [] d11056 c11056 a11056 (by decide) (by decide) (by decide)
#print axioms reject11056

def r11057 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.var 1))
def d11057 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c11057 : List FTy := [[],[],[],[],[],[],[],[8],[9],[],[],[12],[]]
def a11057 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) [7]) []) (.var 1 [1]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject11057 : ¬ Reader r11057 :=
 Rootcert2Flow.reject [] d11057 c11057 a11057 (by decide) (by decide) (by decide)
#print axioms reject11057

def r11058 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 0)))))
def d11058 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c11058 : List FTy := [[],[],[],[],[],[],[],[8],[9],[],[],[12],[]]
def a11058 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 0 [6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) [7]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject11058 : ¬ Reader r11058 :=
 Rootcert2Flow.reject [] d11058 c11058 a11058 (by decide) (by decide) (by decide)
#print axioms reject11058

def r11065 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 0))
def d11065 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c11065 : List FTy := [[],[],[],[],[],[],[],[8],[9],[],[],[12],[]]
def a11065 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject11065 : ¬ Reader r11065 :=
 Rootcert2Flow.reject [] d11065 c11065 a11065 (by decide) (by decide) (by decide)
#print axioms reject11065

def r11066 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 1))
def d11066 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c11066 : List FTy := [[],[],[],[],[],[],[],[8],[9],[],[],[12],[]]
def a11066 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.lam 7 (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject11066 : ¬ Reader r11066 :=
 Rootcert2Flow.reject [] d11066 c11066 a11066 (by decide) (by decide) (by decide)
#print axioms reject11066

def r11067 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.var 0))
def d11067 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c11067 : List FTy := [[],[],[],[],[],[],[],[8],[9],[],[],[12],[]]
def a11067 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) [7]) []) (.var 0 [0]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject11067 : ¬ Reader r11067 :=
 Rootcert2Flow.reject [] d11067 c11067 a11067 (by decide) (by decide) (by decide)
#print axioms reject11067

def r11068 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 0)))))
def d11068 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c11068 : List FTy := [[],[],[],[],[],[],[],[8],[9],[],[],[12],[]]
def a11068 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) [7]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject11068 : ¬ Reader r11068 :=
 Rootcert2Flow.reject [] d11068 c11068 a11068 (by decide) (by decide) (by decide)
#print axioms reject11068

def r11069 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.var 1))
def d11069 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c11069 : List FTy := [[],[],[],[],[],[],[],[8],[9],[],[],[12],[]]
def a11069 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) [7]) []) (.var 1 [1]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject11069 : ¬ Reader r11069 :=
 Rootcert2Flow.reject [] d11069 c11069 a11069 (by decide) (by decide) (by decide)
#print axioms reject11069

def r11070 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 0)))))
def d11070 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c11070 : List FTy := [[],[],[],[],[],[],[],[8],[9],[],[],[12],[]]
def a11070 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 0 [6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) [7]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject11070 : ¬ Reader r11070 :=
 Rootcert2Flow.reject [] d11070 c11070 a11070 (by decide) (by decide) (by decide)
#print axioms reject11070

def r11746 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.var 0))))))))) (.var 1)) (.var 0)) (.var 0))
def d11746 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c11746 : List FTy := [[],[],[],[],[],[],[],[8],[9],[],[],[12],[]]
def a11746 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject11746 : ¬ Reader r11746 :=
 Rootcert2Flow.reject [] d11746 c11746 a11746 (by decide) (by decide) (by decide)
#print axioms reject11746

def r11747 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.var 0))))))))) (.var 0)) (.var 1)) (.var 0))
def d11747 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c11747 : List FTy := [[],[],[],[],[],[],[],[8],[9],[],[],[12],[]]
def a11747 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject11747 : ¬ Reader r11747 :=
 Rootcert2Flow.reject [] d11747 c11747 a11747 (by decide) (by decide) (by decide)
#print axioms reject11747

def r11748 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.lam (.var 0))))))))) (.var 0)) (.var 0)) (.var 1))
def d11748 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[],[],[]]
def c11748 : List FTy := [[],[],[],[],[],[],[],[8],[9],[],[],[12],[]]
def a11748 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.lam 8 (.lam 9 (.var 0 []) [9]) [8]) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject11748 : ¬ Reader r11748 :=
 Rootcert2Flow.reject [] d11748 c11748 a11748 (by decide) (by decide) (by decide)
#print axioms reject11748
end Blc.HandlerLet.XFlow15
