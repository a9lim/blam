import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XBasic38
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r8037 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8037 : ¬ Reader r8037 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2)))))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8037

def r8038 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8038 : ¬ Reader r8038 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2)))))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8038

def r8039 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8039 : ¬ Reader r8039 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2)))))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8039

def r8040 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8040 : ¬ Reader r8040 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2)))))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8040

def r8041 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8041 : ¬ Reader r8041 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2)))))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8041

def r8042 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8042 : ¬ Reader r8042 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2)))))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8042

def r8049 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8049 : ¬ Reader r8049 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8049

def r8050 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8050 : ¬ Reader r8050 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8050

def r8051 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8051 : ¬ Reader r8051 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8051

def r8052 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8052 : ¬ Reader r8052 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8052

def r8053 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8053 : ¬ Reader r8053 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8053

def r8054 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8054 : ¬ Reader r8054 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8054

def r8055 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8055 : ¬ Reader r8055 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8055

def r8056 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8056 : ¬ Reader r8056 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8056

def r8057 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8057 : ¬ Reader r8057 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8057

def r8058 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8058 : ¬ Reader r8058 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8058

def r8059 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8059 : ¬ Reader r8059 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8059

def r8060 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8060 : ¬ Reader r8060 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8060

def r8061 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8061 : ¬ Reader r8061 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8061

def r8062 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8062 : ¬ Reader r8062 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8062

def r8063 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8063 : ¬ Reader r8063 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8063

def r8064 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8064 : ¬ Reader r8064 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8064

def r8065 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8065 : ¬ Reader r8065 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8065

def r8066 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8066 : ¬ Reader r8066 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8066

def r8079 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8079 : ¬ Reader r8079 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1)))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8079

def r8080 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8080 : ¬ Reader r8080 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1)))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8080

def r8081 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8081 : ¬ Reader r8081 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1)))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8081

def r8082 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8082 : ¬ Reader r8082 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1)))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8082

def r8083 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8083 : ¬ Reader r8083 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1)))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8083

def r8084 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8084 : ¬ Reader r8084 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 1)))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8084

def r8091 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8091 : ¬ Reader r8091 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)))) [(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8091

def r8092 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8092 : ¬ Reader r8092 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)))) [(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8092

def r8093 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8093 : ¬ Reader r8093 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)))) [(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8093

def r8094 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8094 : ¬ Reader r8094 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)))) [(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8094

def r8095 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8095 : ¬ Reader r8095 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)))) [(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8095

def r8096 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8096 : ¬ Reader r8096 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)))) [(.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 0)))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8096

def r8151 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject8151 : ¬ Reader r8151 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], []] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8151

def r8152 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject8152 : ¬ Reader r8152 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], []] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8152

def r8153 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject8153 : ¬ Reader r8153 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], []] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8153

def r8154 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject8154 : ¬ Reader r8154 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], []] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8154

def r8155 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject8155 : ¬ Reader r8155 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], []] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8155

def r8156 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject8156 : ¬ Reader r8156 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], []] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8156

def r8406 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject8406 : ¬ Reader r8406 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 1], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.lam (.lam (.var 2))))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8406

def r8407 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject8407 : ¬ Reader r8407 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 1], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.lam (.lam (.var 2))))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8407

def r8408 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 2))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject8408 : ¬ Reader r8408 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 1], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.lam (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.app (.var 0) (.lam (.lam (.var 2))))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8408

def r8454 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject8454 : ¬ Reader r8454 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8454

def r8455 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject8455 : ¬ Reader r8455 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8455

def r8456 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject8456 : ¬ Reader r8456 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8456

def r8655 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject8655 : ¬ Reader r8655 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8655

def r8656 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject8656 : ¬ Reader r8656 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8656

def r8657 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject8657 : ¬ Reader r8657 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8657

def r8658 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject8658 : ¬ Reader r8658 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8658

def r8659 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject8659 : ¬ Reader r8659 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8659

def r8660 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject8660 : ¬ Reader r8660 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8660

def r11455 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject11455 : ¬ Reader r11455 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11455

def r11456 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject11456 : ¬ Reader r11456 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11456

def r11457 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject11457 : ¬ Reader r11457 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) [] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11457

def r11458 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject11458 : ¬ Reader r11458 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11458

def r11459 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11459 : ¬ Reader r11459 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11459

def r11460 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11460 : ¬ Reader r11460 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1], [1]] (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11460

def r8676 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject8676 : ¬ Reader r8676 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0)))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8676

def r8677 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject8677 : ¬ Reader r8677 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0)))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8677

def r8678 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject8678 : ¬ Reader r8678 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.lam (.var 0)))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8678

def r8688 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject8688 : ¬ Reader r8688 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8688

def r8689 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject8689 : ¬ Reader r8689 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8689

def r8690 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject8690 : ¬ Reader r8690 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8690

def r8691 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 1))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject8691 : ¬ Reader r8691 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 1))))))) [(.lam (.lam (.lam (.var 1))))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8691

def r8692 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 1))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject8692 : ¬ Reader r8692 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 1))))))) [(.lam (.lam (.lam (.var 1))))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8692

def r8693 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 1))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject8693 : ¬ Reader r8693 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.var 1))))))) [(.lam (.lam (.lam (.var 1))))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8693

def r8820 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject8820 : ¬ Reader r8820 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [], [2], [2, 1], [2]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8820

def r8821 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject8821 : ¬ Reader r8821 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [], [2], [2, 1], [2]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8821

def r8822 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject8822 : ¬ Reader r8822 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [], [2], [2, 1], [2]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))))) [(.lam (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8822

def r8862 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject8862 : ¬ Reader r8862 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 1)))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8862

def r8863 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject8863 : ¬ Reader r8863 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 1)))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8863

def r8864 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject8864 : ¬ Reader r8864 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 1)))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8864

def r9072 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9072 : ¬ Reader r9072 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0, 1]] [[2, 0, 1], [2, 0, 1], [], []] (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 1)))))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9072

def r9073 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9073 : ¬ Reader r9073 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0, 1]] [[2, 0, 1], [2, 0, 1], [], []] (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 1)))))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9073

def r9074 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9074 : ¬ Reader r9074 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0, 1]] [[2, 0, 1], [2, 0, 1], [], []] (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 1)))))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9074

def r9075 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9075 : ¬ Reader r9075 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0, 1]] [[2, 0, 1], [2, 0, 1], [], []] (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 1)))))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9075

def r9076 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9076 : ¬ Reader r9076 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0, 1]] [[2, 0, 1], [2, 0, 1], [], []] (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 1)))))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9076

def r9077 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9077 : ¬ Reader r9077 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0, 1]] [[2, 0, 1], [2, 0, 1], [], []] (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 1)))))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9077

def r9170 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2)))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9170 : ¬ Reader r9170 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2, 0], [2, 2, 0], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2)))))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9170

def r9171 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2)))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9171 : ¬ Reader r9171 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2, 0], [2, 2, 0], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2)))))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9171

def r9172 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2)))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9172 : ¬ Reader r9172 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2, 0], [2, 2, 0], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2)))))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9172

def r9173 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2)))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9173 : ¬ Reader r9173 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2, 0], [2, 2, 0], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2)))))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9173

def r9174 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2)))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9174 : ¬ Reader r9174 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2, 0], [2, 2, 0], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2)))))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9174

def r9175 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2)))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9175 : ¬ Reader r9175 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2, 0], [2, 2, 0], [2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 2)))))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9175

def r9784 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9784 : ¬ Reader r9784 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9784

def r9785 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9785 : ¬ Reader r9785 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9785

def r9786 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9786 : ¬ Reader r9786 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9786

def r9787 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9787 : ¬ Reader r9787 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9787

def r9788 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9788 : ¬ Reader r9788 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9788

def r9789 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9789 : ¬ Reader r9789 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9789

def r9796 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9796 : ¬ Reader r9796 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2, 2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2)))))) [(.app (.var 0) (.var 0))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9796

def r9797 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9797 : ¬ Reader r9797 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2, 2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2)))))) [(.app (.var 0) (.var 0))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9797

def r9798 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9798 : ¬ Reader r9798 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2, 2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2)))))) [(.app (.var 0) (.var 0))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9798

def r9799 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9799 : ¬ Reader r9799 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2, 2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2)))))) [(.app (.var 0) (.var 0))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9799

def r9800 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9800 : ¬ Reader r9800 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2, 2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2)))))) [(.app (.var 0) (.var 0))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9800

def r9801 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9801 : ¬ Reader r9801 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2, 2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2)))))) [(.app (.var 0) (.var 0))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9801

def r9820 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject9820 : ¬ Reader r9820 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9820

def r9821 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject9821 : ¬ Reader r9821 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9821

def r9822 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject9822 : ¬ Reader r9822 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1)))) [(.var 0)] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9822

def r9823 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject9823 : ¬ Reader r9823 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1)))) [(.var 0)] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9823

def r9824 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject9824 : ¬ Reader r9824 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9824

def r9825 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject9825 : ¬ Reader r9825 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 2))))) (.var 1)))) [(.var 0)] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9825

def r9826 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.var 3))))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject9826 : ¬ Reader r9826 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2], [2, 1], [2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.var 3)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.var 3))))))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9826

def r9827 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.var 3))))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject9827 : ¬ Reader r9827 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2], [2, 1], [2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.var 3)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.var 3))))))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9827

def r9828 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.var 3))))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject9828 : ¬ Reader r9828 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2], [2, 1], [2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.var 3)))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.var 3))))))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject9828

def r10006 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject10006 : ¬ Reader r10006 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [], [2]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 2)))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10006

def r10007 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject10007 : ¬ Reader r10007 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [], [2]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 2)))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10007

def r10008 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject10008 : ¬ Reader r10008 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [], [2]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 2)))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10008

def r10009 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject10009 : ¬ Reader r10009 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [], [2]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 2)))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10009

def r10010 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject10010 : ¬ Reader r10010 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [], [2]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 2)))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10010

def r10011 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject10011 : ¬ Reader r10011 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [1], [], [2]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 2)))))) [(.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10011

def r11881 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject11881 : ¬ Reader r11881 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 1], [1], [], [], [2], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11881

def r11882 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject11882 : ¬ Reader r11882 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 1], [1], [], [], [2], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11882

def r11883 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject11883 : ¬ Reader r11883 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 1], [1], [], [], [2], [1]] (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11883

def r11884 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))))) (.var 1)) (.var 0)) (.var 0))
theorem reject11884 : ¬ Reader r11884 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11884

def r11885 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))))) (.var 0)) (.var 1)) (.var 0))
theorem reject11885 : ¬ Reader r11885 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11885

def r11886 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))))) (.var 0)) (.var 0)) (.var 1))
theorem reject11886 : ¬ Reader r11886 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))))) [(.lam (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11886

def r11920 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject11920 : ¬ Reader r11920 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11920

def r11921 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject11921 : ¬ Reader r11921 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11921

def r11922 : Term := (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject11922 : ¬ Reader r11922 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1, 2], [1, 2]] (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11922
end Blc.HandlerLet.XBasic38
