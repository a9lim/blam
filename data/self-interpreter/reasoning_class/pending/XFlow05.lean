import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XFlow05
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r1830 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))) (.var 0)) (.var 1)) (.var 0))
def d1830 : List FTy := [[],[],[],[],[7],[8],[9],[5],[6],[],[],[],[]]
def c1830 : List FTy := [[],[],[],[],[],[],[8],[],[],[6],[],[12],[]]
def a1830 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.app (.var 1 [7]) (.app (.var 0 [8]) (.lam 6 (.var 1 [8]) [6]) []) []) [5]) []) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.app (.var 1 [5]) (.app (.var 0 [6]) (.lam 9 (.var 1 [6]) [9]) [8]) []) [8]) []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject1830 : ¬ Reader r1830 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d1830 c1830 a1830 (by decide) (by decide) (by decide)
#print axioms reject1830

def r1831 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))) (.var 0)) (.var 0)) (.var 1))
def d1831 : List FTy := [[],[],[],[],[7],[8],[9],[5],[6],[],[],[],[]]
def c1831 : List FTy := [[],[],[],[],[],[],[8],[],[],[6],[],[12],[]]
def a1831 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [7]) (.lam 5 (.app (.var 1 [7]) (.app (.var 0 [8]) (.lam 6 (.var 1 [8]) [6]) []) []) [5]) []) [4]) (.lam 7 (.app (.var 0 [5]) (.lam 8 (.app (.var 1 [5]) (.app (.var 0 [6]) (.lam 9 (.var 1 [6]) [9]) [8]) []) [8]) []) [7]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) [])
theorem reject1831 : ¬ Reader r1831 :=
 Rootcert2Flow.reject [[1, 1, 1, 1]] d1831 c1831 a1831 (by decide) (by decide) (by decide)
#print axioms reject1831

def r1832 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))) (.var 1)) (.var 0)) (.var 0))
def d1832 : List FTy := [[],[],[],[],[9],[8],[],[],[6,7],[9],[15],[14],[],[],[12,13],[15],[],[],[]]
def c1832 : List FTy := [[],[],[],[],[],[9],[],[],[9],[],[9],[15],[],[],[15],[9],[],[18],[]]
def a1832 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [9]) (.app (.lam 5 (.app (.var 0 [8]) (.lam 6 (.app (.var 0 []) (.app (.var 1 [8]) (.lam 7 (.var 1 []) [7]) [9]) []) [6]) [9]) [5]) (.lam 8 (.var 1 [9]) [8]) [9]) []) [4]) (.lam 9 (.app (.var 0 [9]) (.app (.lam 10 (.app (.var 0 [15]) (.app (.lam 11 (.app (.var 0 [14]) (.lam 12 (.app (.var 0 []) (.app (.var 1 [14]) (.lam 13 (.var 1 []) [13]) [15]) []) [12]) [15]) [11]) (.lam 14 (.var 1 [15]) [14]) [15]) [9]) [10]) (.lam 15 (.var 1 [9]) [15]) [9]) []) [9]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject1832 : ¬ Reader r1832 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]] d1832 c1832 a1832 (by decide) (by decide) (by decide)
#print axioms reject1832

def r1833 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))) (.var 0)) (.var 1)) (.var 0))
def d1833 : List FTy := [[],[],[],[],[9],[8],[],[],[6,7],[9],[15],[14],[],[],[12,13],[15],[],[],[]]
def c1833 : List FTy := [[],[],[],[],[],[9],[],[],[9],[],[9],[15],[],[],[15],[9],[],[18],[]]
def a1833 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [9]) (.app (.lam 5 (.app (.var 0 [8]) (.lam 6 (.app (.var 0 []) (.app (.var 1 [8]) (.lam 7 (.var 1 []) [7]) [9]) []) [6]) [9]) [5]) (.lam 8 (.var 1 [9]) [8]) [9]) []) [4]) (.lam 9 (.app (.var 0 [9]) (.app (.lam 10 (.app (.var 0 [15]) (.app (.lam 11 (.app (.var 0 [14]) (.lam 12 (.app (.var 0 []) (.app (.var 1 [14]) (.lam 13 (.var 1 []) [13]) [15]) []) [12]) [15]) [11]) (.lam 14 (.var 1 [15]) [14]) [15]) [9]) [10]) (.lam 15 (.var 1 [9]) [15]) [9]) []) [9]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject1833 : ¬ Reader r1833 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]] d1833 c1833 a1833 (by decide) (by decide) (by decide)
#print axioms reject1833

def r1834 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))) (.var 0)) (.var 0)) (.var 1))
def d1834 : List FTy := [[],[],[],[],[9],[8],[],[],[6,7],[9],[15],[14],[],[],[12,13],[15],[],[],[]]
def c1834 : List FTy := [[],[],[],[],[],[9],[],[],[9],[],[9],[15],[],[],[15],[9],[],[18],[]]
def a1834 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [9]) (.app (.lam 5 (.app (.var 0 [8]) (.lam 6 (.app (.var 0 []) (.app (.var 1 [8]) (.lam 7 (.var 1 []) [7]) [9]) []) [6]) [9]) [5]) (.lam 8 (.var 1 [9]) [8]) [9]) []) [4]) (.lam 9 (.app (.var 0 [9]) (.app (.lam 10 (.app (.var 0 [15]) (.app (.lam 11 (.app (.var 0 [14]) (.lam 12 (.app (.var 0 []) (.app (.var 1 [14]) (.lam 13 (.var 1 []) [13]) [15]) []) [12]) [15]) [11]) (.lam 14 (.var 1 [15]) [14]) [15]) [9]) [10]) (.lam 15 (.var 1 [9]) [15]) [9]) []) [9]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 16 (.app (.app (.var 0 []) (.lam 17 (.lam 18 (.var 1 []) [18]) [17]) []) (.var 4 [3]) []) [16]) [])
theorem reject1834 : ¬ Reader r1834 :=
 Rootcert2Flow.reject [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]] d1834 c1834 a1834 (by decide) (by decide) (by decide)
#print axioms reject1834

def r1835 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
def d1835 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1835 : List FTy := [[],[],[],[],[],[],[],[6],[],[10],[]]
def a1835 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 1 [6]) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1835 : ¬ Reader r1835 :=
 Rootcert2Flow.reject [] d1835 c1835 a1835 (by decide) (by decide) (by decide)
#print axioms reject1835

def r1836 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
def d1836 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1836 : List FTy := [[],[],[],[],[],[],[],[6],[],[10],[]]
def a1836 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 1 [6]) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1836 : ¬ Reader r1836 :=
 Rootcert2Flow.reject [] d1836 c1836 a1836 (by decide) (by decide) (by decide)
#print axioms reject1836

def r1837 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
def d1837 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c1837 : List FTy := [[],[],[],[],[],[],[],[6],[],[10],[]]
def a1837 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 1 [6]) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1837 : ¬ Reader r1837 :=
 Rootcert2Flow.reject [] d1837 c1837 a1837 (by decide) (by decide) (by decide)
#print axioms reject1837

def r1847 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.var 0)) (.var 0))
def d1847 : List FTy := [[],[],[],[],[6],[7],[5],[7],[],[],[]]
def c1847 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a1847 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 0 [7]) [5]) []) [5]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1847 : ¬ Reader r1847 :=
 Rootcert2Flow.reject [] d1847 c1847 a1847 (by decide) (by decide) (by decide)
#print axioms reject1847

def r1848 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 1)) (.var 0))
def d1848 : List FTy := [[],[],[],[],[6],[7],[5],[7],[],[],[]]
def c1848 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a1848 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 0 [7]) [5]) []) [5]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1848 : ¬ Reader r1848 :=
 Rootcert2Flow.reject [] d1848 c1848 a1848 (by decide) (by decide) (by decide)
#print axioms reject1848

def r1849 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 0)) (.var 0)) (.var 1))
def d1849 : List FTy := [[],[],[],[],[6],[7],[5],[7],[],[],[]]
def c1849 : List FTy := [[],[],[],[],[],[],[],[5],[],[10],[]]
def a1849 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.app (.var 1 [6]) (.app (.var 0 [7]) (.var 0 [7]) [5]) []) [5]) []) [4]) (.lam 6 (.app (.var 0 [5]) (.lam 7 (.var 1 [5]) [7]) []) [6]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject1849 : ¬ Reader r1849 :=
 Rootcert2Flow.reject [] d1849 c1849 a1849 (by decide) (by decide) (by decide)
#print axioms reject1849

def r2030 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
def d2030 : List FTy := [[],[],[],[],[6],[5,7],[5,7],[5,7],[],[],[]]
def c2030 : List FTy := [[],[],[],[],[],[6],[],[6],[],[10],[]]
def a2030 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 0 [5,7]) (.var 1 [5,7]) [6]) [7]) []) [6]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2030 : ¬ Reader r2030 :=
 Rootcert2Flow.reject [] d2030 c2030 a2030 (by decide) (by decide) (by decide)
#print axioms reject2030

def r2031 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
def d2031 : List FTy := [[],[],[],[],[6],[5,7],[5,7],[5,7],[],[],[]]
def c2031 : List FTy := [[],[],[],[],[],[6],[],[6],[],[10],[]]
def a2031 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 0 [5,7]) (.var 1 [5,7]) [6]) [7]) []) [6]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2031 : ¬ Reader r2031 :=
 Rootcert2Flow.reject [] d2031 c2031 a2031 (by decide) (by decide) (by decide)
#print axioms reject2031

def r2032 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
def d2032 : List FTy := [[],[],[],[],[6],[5,7],[5,7],[5,7],[],[],[]]
def c2032 : List FTy := [[],[],[],[],[],[6],[],[6],[],[10],[]]
def a2032 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [6]) (.lam 5 (.var 1 [6]) [5]) []) [4]) (.lam 6 (.app (.app (.var 0 [5,7]) (.var 0 [5,7]) [6]) (.lam 7 (.app (.var 0 [5,7]) (.var 1 [5,7]) [6]) [7]) []) [6]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2032 : ¬ Reader r2032 :=
 Rootcert2Flow.reject [] d2032 c2032 a2032 (by decide) (by decide) (by decide)
#print axioms reject2032

def r2096 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.var 0))) (.var 1)) (.var 0))
def d2096 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2096 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a2096 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2096 : ¬ Reader r2096 :=
 Rootcert2Flow.reject [] d2096 c2096 a2096 (by decide) (by decide) (by decide)
#print axioms reject2096

def r2097 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.var 0))) (.var 0)) (.var 1))
def d2097 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2097 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a2097 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2097 : ¬ Reader r2097 :=
 Rootcert2Flow.reject [] d2097 c2097 a2097 (by decide) (by decide) (by decide)
#print axioms reject2097

def r2098 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1)) (.lam (.var 0))) (.var 0))
def d2098 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2098 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a2098 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2098 : ¬ Reader r2098 :=
 Rootcert2Flow.reject [] d2098 c2098 a2098 (by decide) (by decide) (by decide)
#print axioms reject2098

def r2099 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
def d2099 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2099 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a2099 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2099 : ¬ Reader r2099 :=
 Rootcert2Flow.reject [] d2099 c2099 a2099 (by decide) (by decide) (by decide)
#print axioms reject2099

def r2100 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 0)) (.lam (.var 0))) (.var 1))
def d2100 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2100 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a2100 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 0 []) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2100 : ¬ Reader r2100 :=
 Rootcert2Flow.reject [] d2100 c2100 a2100 (by decide) (by decide) (by decide)
#print axioms reject2100

def r2101 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
def d2101 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2101 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a2101 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 0 []) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2101 : ¬ Reader r2101 :=
 Rootcert2Flow.reject [] d2101 c2101 a2101 (by decide) (by decide) (by decide)
#print axioms reject2101

def r2111 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))))) (.var 1)) (.var 0)) (.var 0))
def d2111 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[]]
def c2111 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a2111 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.var 2 [5,6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2111 : ¬ Reader r2111 :=
 Rootcert2Flow.reject [] d2111 c2111 a2111 (by decide) (by decide) (by decide)
#print axioms reject2111

def r2112 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))))) (.var 0)) (.var 1)) (.var 0))
def d2112 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[]]
def c2112 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a2112 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.var 2 [5,6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2112 : ¬ Reader r2112 :=
 Rootcert2Flow.reject [] d2112 c2112 a2112 (by decide) (by decide) (by decide)
#print axioms reject2112

def r2113 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 1)))))))) (.var 0)) (.var 0)) (.var 1))
def d2113 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[]]
def c2113 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a2113 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 0 [6,7]) (.lam 7 (.app (.var 2 [5,6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2113 : ¬ Reader r2113 :=
 Rootcert2Flow.reject [] d2113 c2113 a2113 (by decide) (by decide) (by decide)
#print axioms reject2113

def r2117 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0)) (.lam (.var 1)))
def d2117 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2117 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2117 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2117 : ¬ Reader r2117 :=
 Rootcert2Flow.reject [] d2117 c2117 a2117 (by decide) (by decide) (by decide)
#print axioms reject2117

def r2118 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 1)) (.lam (.var 1))) (.var 0))
def d2118 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2118 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2118 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2118 : ¬ Reader r2118 :=
 Rootcert2Flow.reject [] d2118 c2118 a2118 (by decide) (by decide) (by decide)
#print axioms reject2118

def r2119 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.var 1)) (.lam (.var 1)))
def d2119 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2119 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2119 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2119 : ¬ Reader r2119 :=
 Rootcert2Flow.reject [] d2119 c2119 a2119 (by decide) (by decide) (by decide)
#print axioms reject2119

def r2120 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.var 0)) (.lam (.var 1))) (.var 1))
def d2120 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2120 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2120 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2120 : ¬ Reader r2120 :=
 Rootcert2Flow.reject [] d2120 c2120 a2120 (by decide) (by decide) (by decide)
#print axioms reject2120

def r2121 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.var 1))) (.var 1)) (.var 0))
def d2121 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2121 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2121 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2121 : ¬ Reader r2121 :=
 Rootcert2Flow.reject [] d2121 c2121 a2121 (by decide) (by decide) (by decide)
#print axioms reject2121

def r2122 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0))))))) (.lam (.var 1))) (.var 0)) (.var 1))
def d2122 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2122 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2122 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.var 1 [5,6]) (.app (.var 1 [5,6]) (.var 0 [6]) []) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2122 : ¬ Reader r2122 :=
 Rootcert2Flow.reject [] d2122 c2122 a2122 (by decide) (by decide) (by decide)
#print axioms reject2122

def r2135 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
def d2135 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2135 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2135 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2135 : ¬ Reader r2135 :=
 Rootcert2Flow.reject [] d2135 c2135 a2135 (by decide) (by decide) (by decide)
#print axioms reject2135

def r2136 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 1)) (.lam (.var 1))) (.var 0))
def d2136 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2136 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2136 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2136 : ¬ Reader r2136 :=
 Rootcert2Flow.reject [] d2136 c2136 a2136 (by decide) (by decide) (by decide)
#print axioms reject2136

def r2137 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
def d2137 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2137 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2137 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2137 : ¬ Reader r2137 :=
 Rootcert2Flow.reject [] d2137 c2137 a2137 (by decide) (by decide) (by decide)
#print axioms reject2137

def r2138 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.var 0)) (.lam (.var 1))) (.var 1))
def d2138 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2138 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2138 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2138 : ¬ Reader r2138 :=
 Rootcert2Flow.reject [] d2138 c2138 a2138 (by decide) (by decide) (by decide)
#print axioms reject2138

def r2139 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.var 1))) (.var 1)) (.var 0))
def d2139 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2139 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2139 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2139 : ¬ Reader r2139 :=
 Rootcert2Flow.reject [] d2139 c2139 a2139 (by decide) (by decide) (by decide)
#print axioms reject2139

def r2140 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))))) (.lam (.var 1))) (.var 0)) (.var 1))
def d2140 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2140 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2140 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 1 [5,6]) []) [6]) []) [5]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2140 : ¬ Reader r2140 :=
 Rootcert2Flow.reject [] d2140 c2140 a2140 (by decide) (by decide) (by decide)
#print axioms reject2140

def r2168 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 2))))))) (.var 1)) (.var 0)) (.var 0))
def d2168 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2168 : List FTy := [[],[],[],[],[],[],[],[5,6],[],[10],[]]
def a2168 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 2 [5,6]) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2168 : ¬ Reader r2168 :=
 Rootcert2Flow.reject [] d2168 c2168 a2168 (by decide) (by decide) (by decide)
#print axioms reject2168

def r2169 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 2))))))) (.var 0)) (.var 1)) (.var 0))
def d2169 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2169 : List FTy := [[],[],[],[],[],[],[],[5,6],[],[10],[]]
def a2169 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 2 [5,6]) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2169 : ¬ Reader r2169 :=
 Rootcert2Flow.reject [] d2169 c2169 a2169 (by decide) (by decide) (by decide)
#print axioms reject2169

def r2170 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 2))))))) (.var 0)) (.var 0)) (.var 1))
def d2170 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2170 : List FTy := [[],[],[],[],[],[],[],[5,6],[],[10],[]]
def a2170 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.lam 7 (.var 2 [5,6]) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2170 : ¬ Reader r2170 :=
 Rootcert2Flow.reject [] d2170 c2170 a2170 (by decide) (by decide) (by decide)
#print axioms reject2170

def r2247 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
def d2247 : List FTy := [[],[],[],[],[5],[5,6],[6],[0,6],[],[],[]]
def c2247 : List FTy := [[],[],[],[],[7],[7],[7],[],[],[10],[]]
def a2247 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [7]) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.lam 7 (.app (.app (.var 2 [5,6]) (.var 1 [6]) [7]) (.var 1 [6]) []) [7]) [6]) [7]) [5]) [7]) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2247 : ¬ Reader r2247 :=
 Rootcert2Flow.reject [] d2247 c2247 a2247 (by decide) (by decide) (by decide)
#print axioms reject2247

def r2248 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
def d2248 : List FTy := [[],[],[],[],[5],[5,6],[6],[0,6],[],[],[]]
def c2248 : List FTy := [[],[],[],[],[7],[7],[7],[],[],[10],[]]
def a2248 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [7]) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.lam 7 (.app (.app (.var 2 [5,6]) (.var 1 [6]) [7]) (.var 1 [6]) []) [7]) [6]) [7]) [5]) [7]) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2248 : ¬ Reader r2248 :=
 Rootcert2Flow.reject [] d2248 c2248 a2248 (by decide) (by decide) (by decide)
#print axioms reject2248

def r2264 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1)))))))) (.var 1)) (.var 0)) (.var 0))
def d2264 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[]]
def c2264 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a2264 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 2 [5,6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2264 : ¬ Reader r2264 :=
 Rootcert2Flow.reject [] d2264 c2264 a2264 (by decide) (by decide) (by decide)
#print axioms reject2264

def r2265 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1)))))))) (.var 0)) (.var 1)) (.var 0))
def d2265 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[]]
def c2265 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a2265 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 2 [5,6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2265 : ¬ Reader r2265 :=
 Rootcert2Flow.reject [] d2265 c2265 a2265 (by decide) (by decide) (by decide)
#print axioms reject2265

def r2266 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1)))))))) (.var 0)) (.var 0)) (.var 1))
def d2266 : List FTy := [[],[],[],[],[5],[5,6,7],[6,7],[6,7],[],[],[]]
def c2266 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a2266 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 2 [5,6,7]) (.var 1 [6,7]) []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2266 : ¬ Reader r2266 :=
 Rootcert2Flow.reject [] d2266 c2266 a2266 (by decide) (by decide) (by decide)
#print axioms reject2266

def r2267 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))))) (.var 1)) (.var 0)) (.var 0))
def d2267 : List FTy := [[],[],[],[],[5],[5,6,7],[5,6,7],[5,6,7],[],[],[]]
def c2267 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a2267 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 1 [5,6,7]) (.var 2 [5,6,7]) []) [7]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2267 : ¬ Reader r2267 :=
 Rootcert2Flow.reject [] d2267 c2267 a2267 (by decide) (by decide) (by decide)
#print axioms reject2267

def r2268 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))))) (.var 0)) (.var 1)) (.var 0))
def d2268 : List FTy := [[],[],[],[],[5],[5,6,7],[5,6,7],[5,6,7],[],[],[]]
def c2268 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a2268 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 1 [5,6,7]) (.var 2 [5,6,7]) []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2268 : ¬ Reader r2268 :=
 Rootcert2Flow.reject [] d2268 c2268 a2268 (by decide) (by decide) (by decide)
#print axioms reject2268

def r2269 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 2)))))))) (.var 0)) (.var 0)) (.var 1))
def d2269 : List FTy := [[],[],[],[],[5],[5,6,7],[5,6,7],[5,6,7],[],[],[]]
def c2269 : List FTy := [[],[],[],[],[],[],[],[],[],[10],[]]
def a2269 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6,7]) (.lam 6 (.app (.var 1 [5,6,7]) (.lam 7 (.app (.var 1 [5,6,7]) (.var 2 [5,6,7]) []) [7]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2269 : ¬ Reader r2269 :=
 Rootcert2Flow.reject [] d2269 c2269 a2269 (by decide) (by decide) (by decide)
#print axioms reject2269

def r2270 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
def d2270 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2270 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2270 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2270 : ¬ Reader r2270 :=
 Rootcert2Flow.reject [] d2270 c2270 a2270 (by decide) (by decide) (by decide)
#print axioms reject2270

def r2271 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1)) (.lam (.var 1))) (.var 0))
def d2271 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2271 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2271 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 0 [0]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2271 : ¬ Reader r2271 :=
 Rootcert2Flow.reject [] d2271 c2271 a2271 (by decide) (by decide) (by decide)
#print axioms reject2271

def r2272 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
def d2272 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2272 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2272 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.var 1 [0]) [7]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2272 : ¬ Reader r2272 :=
 Rootcert2Flow.reject [] d2272 c2272 a2272 (by decide) (by decide) (by decide)
#print axioms reject2272

def r2273 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 0)) (.lam (.var 1))) (.var 1))
def d2273 : List FTy := [[],[],[],[],[5],[5,6],[6],[],[],[],[]]
def c2273 : List FTy := [[],[],[],[],[],[],[],[0],[],[10],[]]
def a2273 : Ann := (.app (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) []) [4]) (.lam 5 (.app (.var 0 [5,6]) (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [6]) []) (.var 2 [0]) []) [6]) []) [5]) []) (.var 0 [0]) []) (.lam 7 (.var 1 [0]) [7]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [])
theorem reject2273 : ¬ Reader r2273 :=
 Rootcert2Flow.reject [] d2273 c2273 a2273 (by decide) (by decide) (by decide)
#print axioms reject2273
end Blc.HandlerLet.XFlow05
