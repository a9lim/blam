import Flow
import Extras
import Recursor
import Lark
import Owl
import Strict
namespace Blc.HandlerLet.Slice40G40
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000
def r1920 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.var 1)))) (.var 0))
theorem reject1920 : ¬ Reader r1920 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1920
def r1921 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 0)) (.lam (.lam (.var 1))))
theorem reject1921 : ¬ Reader r1921 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1921
def r1922 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.var 1))) (.lam (.var 0)))
theorem reject1922 : ¬ Reader r1922 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) [] [(.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1922
def r1923 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))) (.lam (.lam (.var 0))))
theorem reject1923 : ¬ Reader r1923 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1923
def r1924 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))) (.lam (.lam (.var 0))))
theorem reject1924 : ¬ Reader r1924 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 3))))) [(.var 1)] [(.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1924
def r1925 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0))) (.lam (.var 2)))
theorem reject1925 : ¬ Reader r1925 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1925
def r1926 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 2))) (.lam (.var 0)))
theorem reject1926 : ¬ Reader r1926 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 2)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1926
def r1927 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2)))) (.lam (.var 1)))
theorem reject1927 : ¬ Reader r1927 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 3))))) [(.var 1)] [(.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1927
def r1928 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0))))) (.lam (.var 1)))
theorem reject1928 : ¬ Reader r1928 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1928
def r1929 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.lam (.var 2)))
theorem reject1929 : ¬ Reader r1929 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1929
def r1930 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.var 2)))
theorem reject1930 : ¬ Reader r1930 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1930
def r1931 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.var 2)))
theorem reject1931 : ¬ Reader r1931 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1931
def r1932 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.var 2))))) (.var 0))
theorem reject1932 : ¬ Reader r1932 := by
 exact mixed_reduct true [[1, 1, 2, 0], [1, 1]] [[1, 1, 2, 0], [1, 1, 1]] (.app (.app (.app (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 3))))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.lam (.app (.var 1) (.var 4))))))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1932
def r1933 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.lam (.var 0))))))) (.var 0))
theorem reject1933 : ¬ Reader r1933 := by
 exact mixed_reduct true [[1, 1]] [[1, 1, 2, 0], [1, 1, 1]] (.app (.app (.app (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.lam (.app (.var 1) (.lam (.var 0)))))))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject1933
def r1934 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 2)))) (.var 0))
theorem reject1934 : ¬ Reader r1934 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 2))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.var 3))))) [(.var 1)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1934
def r1935 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.lam (.var 1)))))) (.var 0))
theorem reject1935 : ¬ Reader r1935 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.lam (.lam (.var 1))))))) [(.lam (.lam (.var 1)))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1935
def r1936 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))))
theorem reject1936 : ¬ Reader r1936 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.app (.var 2) (.lam (.lam (.var 0)))))))) [(.app (.var 0) (.lam (.lam (.var 0))))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1936
def r1937 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 2)) (.var 1))))
theorem reject1937 : ¬ Reader r1937 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 2)) (.var 1))) (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 3)) (.var 2))))) [(.var 1), (.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1937
def r1938 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))))
theorem reject1938 : ¬ Reader r1938 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.lam (.lam (.var 0)))) (.var 2))))) [(.lam (.lam (.var 0))), (.var 0)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1938
def r1939 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))))
theorem reject1939 : ¬ Reader r1939 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 2)) (.lam (.lam (.var 0))))))) [(.var 0), (.lam (.lam (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1939
def r1940 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0)) (.var 2))))
theorem reject1940 : ¬ Reader r1940 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0)) (.var 2))) (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 0)) (.var 3))))) [(.var 1)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1940
def r1941 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 1)) (.var 2))))
theorem reject1941 : ¬ Reader r1941 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 1)) (.var 2))) (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 2)) (.var 3))))) [(.var 0), (.var 1)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1941
def r1942 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.lam (.var 0)))) (.var 2))))
theorem reject1942 : ¬ Reader r1942 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.lam (.var 0)))) (.var 2))) (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.lam (.var 0)))) (.var 3))))) [(.lam (.lam (.var 0))), (.var 1)] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1942
def r1943 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.lam (.lam (.var 0))))))
theorem reject1943 : ¬ Reader r1943 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.lam (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 3)) (.lam (.lam (.var 0))))))) [(.var 1), (.lam (.lam (.var 0)))] [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1943
def r1944 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.var 1)))
theorem reject1944 : ¬ Reader r1944 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1944
def r1945 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 2)))
theorem reject1945 : ¬ Reader r1945 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1945
def r1946 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 0)))) (.var 0))
theorem reject1946 : ¬ Reader r1946 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 4)) (.var 0)))))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1946
def r1947 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 0)))) (.var 0))
theorem reject1947 : ¬ Reader r1947 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 4)) (.lam (.var 0))) (.var 0)))))) [] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1947
def r1948 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 0))
theorem reject1948 : ¬ Reader r1948 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1948
def r1949 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))
theorem reject1949 : ¬ Reader r1949 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 2))))) [(.var 0)] [(.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1949
def r1950 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))
theorem reject1950 : ¬ Reader r1950 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 3))))) [(.var 1)] [(.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1950
def r1951 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1951 : ¬ Reader r1951 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[1,5,6],[1,5,6],[],[],[]] [[],[],[],[],[6],[6],[1],[],[9],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [1,5,6]) (.var 1 [1,5,6]) [1,6]) (.app (.var 0 [1,5,6]) (.var 0 [1,5,6]) [1,6]) [1]) [6]) [5]) [6]) (.var 1 [1]) [1]) (.var 0 [0]) [1]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [1]) (by decide) (by decide) (by decide)
#print axioms reject1951
def r1952 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1952 : ¬ Reader r1952 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[0,5,6],[0,5,6],[],[],[]] [[],[],[],[],[6],[6],[0],[],[9],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.var 0 [5]) (.var 0 [5]) [6]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5,6]) (.var 1 [0,5,6]) [0,6]) (.app (.var 0 [0,5,6]) (.var 0 [0,5,6]) [0,6]) [0]) [6]) [5]) [6]) (.var 0 [0]) [0]) (.var 1 [1]) [0]) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) [0]) (by decide) (by decide) (by decide)
#print axioms reject1952
def r1953 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject1953 : ¬ Reader r1953 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))] [(.var 1), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1953
def r1954 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject1954 : ¬ Reader r1954 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))))) (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1954
def r1959 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1959 : ¬ Reader r1959 := by
 exact Rootcert2Flow.reject [[1, 1, 1]] [[],[],[],[],[6],[8],[7],[1],[6],[8],[],[],[]] [[],[],[],[],[5],[7],[7],[],[9],[7],[],[12],[]] (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.app (.var 0 [8]) (.var 1 [6]) [9]) (.var 0 [8]) [7]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [7]) (.app (.app (.var 0 [1]) (.var 1 [7]) [1]) (.var 0 [1]) [1]) []) [7]) [6]) [5]) (.lam 8 (.lam 9 (.app (.var 1 [6]) (.app (.app (.var 0 [8]) (.var 1 [6]) [9]) (.var 0 [8]) [7]) [7]) [9]) [8]) [7]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) []) (by decide) (by decide) (by decide)
#print axioms reject1959
def r1960 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1960 : ¬ Reader r1960 := by
 exact Rootcert2Flow.reject [[1, 1, 1]] [[],[],[],[],[6],[8],[7],[0],[6],[8],[],[],[]] [[],[],[],[],[5],[7],[7],[],[9],[7],[],[12],[]] (.app (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.var 1 [6]) (.app (.app (.var 0 [8]) (.var 1 [6]) [9]) (.var 0 [8]) [7]) [7]) [5]) [4]) (.lam 6 (.lam 7 (.app (.var 1 [7]) (.app (.app (.var 0 [0]) (.var 1 [7]) [0]) (.var 0 [0]) [0]) []) [7]) [6]) [5]) (.lam 8 (.lam 9 (.app (.var 1 [6]) (.app (.app (.var 0 [8]) (.var 1 [6]) [9]) (.var 0 [8]) [7]) [7]) [9]) [8]) [7]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 10 (.app (.app (.var 0 []) (.lam 11 (.lam 12 (.var 1 []) [12]) [11]) []) (.var 4 [3]) []) [10]) []) (by decide) (by decide) (by decide)
#print axioms reject1960
def r1961 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1961 : ¬ Reader r1961 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[5,6],[],[],[]] [[],[],[],[],[],[6],[],[],[9],[]] (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 0 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) []) (by decide) (by decide) (by decide)
#print axioms reject1961
def r1962 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1962 : ¬ Reader r1962 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[5,6],[],[],[]] [[],[],[],[],[],[6],[],[],[9],[]] (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 1 [5,6]) [6]) (.app (.var 0 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) []) (by decide) (by decide) (by decide)
#print axioms reject1962
def r1963 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1963 : ¬ Reader r1963 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[5,6],[],[],[]] [[],[],[],[],[],[6],[],[],[9],[]] (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) []) (by decide) (by decide) (by decide)
#print axioms reject1963
def r1964 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1964 : ¬ Reader r1964 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,6],[5,6],[],[],[]] [[],[],[],[],[],[6],[],[],[9],[]] (.app (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) (.app (.var 1 [5,6]) (.var 0 [5,6]) [6]) []) [6]) [5]) []) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 7 (.app (.app (.var 0 []) (.lam 8 (.lam 9 (.var 1 []) [9]) [8]) []) (.var 4 [3]) []) [7]) []) (by decide) (by decide) (by decide)
#print axioms reject1964
def r1965 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
theorem reject1965 : ¬ Reader r1965 := by
  exact replay_loop true [] 2 10 (.app (.lam (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))), (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1965
def r1966 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
theorem reject1966 : ¬ Reader r1966 := by
  exact replay_loop true [] 2 10 (.app (.lam (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))) (.var 0)) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))), (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))))), (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1966
def r1967 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 1)) (.var 0))
theorem reject1967 : ¬ Reader r1967 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1967
def r1968 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.var 0)) (.var 1))
theorem reject1968 : ¬ Reader r1968 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1968
def r1969 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
theorem reject1969 : ¬ Reader r1969 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1969
def r1970 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
theorem reject1970 : ¬ Reader r1970 := by
  exact replay_loop true [] 1 4 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1970
def r1971 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0))))) (.var 1)) (.var 0))
theorem reject1971 : ¬ Reader r1971 := by
  exact replay_loop true [] 2 10 (.app (.lam (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0))))) [(.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0))))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0))))), (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject1971
end Blc.HandlerLet.Slice40G40
