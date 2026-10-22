import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.NestedExceptions07
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r2100 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2100 : ¬ Reader r2100 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject2100

def r2101 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2101 : ¬ Reader r2101 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2101

def r2102 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2102 : ¬ Reader r2102 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2102

def r2103 : Term := (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2103 : ¬ Reader r2103 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2103

def r2104 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.var 1)))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2104 : ¬ Reader r2104 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2104

def r2105 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 1))
theorem reject2105 : ¬ Reader r2105 := by
  exact replay_loop true [] 6 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2105

def r2106 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 1))
theorem reject2106 : ¬ Reader r2106 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2106

def r2107 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 1))))))) (.lam (.var 1))) (.var 1))
theorem reject2107 : ¬ Reader r2107 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 2)) (.app (.lam (.var 2)) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 2)) (.app (.lam (.var 2)) (.lam (.var 2))))))) [(.app (.lam (.var 1)) (.app (.lam (.var 1)) (.lam (.var 1))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2107

def r2108 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 1)))))) (.lam (.var 1))) (.var 1))
theorem reject2108 : ¬ Reader r2108 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.var 2)) (.lam (.var 2))) (.lam (.var 2))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.var 2)) (.lam (.var 2))) (.lam (.var 2)))))) [(.app (.app (.lam (.var 1)) (.lam (.var 1))) (.lam (.var 1)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2108

def r2109 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.var 1)))))) (.lam (.var 1))) (.var 1))
theorem reject2109 : ¬ Reader r2109 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.app (.lam (.var 2)) (.lam (.var 2))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.app (.lam (.var 2)) (.lam (.var 2)))))) [(.lam (.var 1)), (.app (.lam (.var 1)) (.lam (.var 1)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2109

def r2110 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject2110 : ¬ Reader r2110 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 2)) (.lam (.var 2)))) (.lam (.var 2)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.lam (.var 2)) (.lam (.var 2)))) (.lam (.var 2))))) [(.app (.lam (.var 1)) (.lam (.var 1))), (.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2110

def r2111 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject2111 : ¬ Reader r2111 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.var 2))) (.lam (.var 2)))) (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.lam (.var 2))) (.lam (.var 2))))) [(.lam (.var 1)), (.lam (.var 1)), (.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2111

def r2112 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 1) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2112 : ¬ Reader r2112 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2112

def r2113 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2113 : ¬ Reader r2113 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2113

def r2114 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2114 : ¬ Reader r2114 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2114

def r2115 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2115 : ¬ Reader r2115 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2115

def r2116 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2116 : ¬ Reader r2116 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.var 0), (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2116

def r2117 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2117 : ¬ Reader r2117 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.app (.var 0) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2117

def r2118 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2118 : ¬ Reader r2118 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2118

def r2119 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 1))))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2119 : ¬ Reader r2119 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2119

def r2120 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 2))))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2120 : ¬ Reader r2120 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2120

def r2121 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2121 : ¬ Reader r2121 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2121

def r2122 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))) (.app (.var 1) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2122 : ¬ Reader r2122 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2122

def r2123 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2123 : ¬ Reader r2123 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2123

def r2124 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 2) (.var 0)))) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2124 : ¬ Reader r2124 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2124

def r2125 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 2)))) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2125 : ¬ Reader r2125 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2125

def r2126 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2126 : ¬ Reader r2126 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2126

def r2127 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2127 : ¬ Reader r2127 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2127

def r2128 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.app (.var 1) (.var 1))) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2128 : ¬ Reader r2128 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2128

def r2129 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2129 : ¬ Reader r2129 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2129

def r2130 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2130 : ¬ Reader r2130 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2130

def r2131 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2131 : ¬ Reader r2131 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2131

def r2132 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2132 : ¬ Reader r2132 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2132

def r2133 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2133 : ¬ Reader r2133 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2133

def r2134 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2134 : ¬ Reader r2134 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2134

def r2135 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2135 : ¬ Reader r2135 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2135

def r2136 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2136 : ¬ Reader r2136 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2136

def r2137 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2137 : ¬ Reader r2137 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2137

def r2138 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2138 : ¬ Reader r2138 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2138

def r2139 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2139 : ¬ Reader r2139 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2139

def r2140 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2140 : ¬ Reader r2140 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2140

def r2141 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2141 : ¬ Reader r2141 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2141

def r2142 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2142 : ¬ Reader r2142 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2142

def r2143 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2143 : ¬ Reader r2143 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2143

def r2144 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2144 : ¬ Reader r2144 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2144

def r2145 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2145 : ¬ Reader r2145 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2145

def r2146 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2146 : ¬ Reader r2146 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2146

def r2147 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2147 : ¬ Reader r2147 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2147

def r2148 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2148 : ¬ Reader r2148 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2148

def r2149 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2149 : ¬ Reader r2149 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2149

def r2150 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2150 : ¬ Reader r2150 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2150

def r2151 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2151 : ¬ Reader r2151 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2151

def r2152 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2152 : ¬ Reader r2152 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2152

def r2153 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2153 : ¬ Reader r2153 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2153

def r2154 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2154 : ¬ Reader r2154 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2154

def r2155 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2155 : ¬ Reader r2155 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2155

def r2156 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2156 : ¬ Reader r2156 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2156

def r2157 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2157 : ¬ Reader r2157 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2157

def r2158 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2158 : ¬ Reader r2158 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2158

def r2159 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2159 : ¬ Reader r2159 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2159

def r2160 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))) (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2160 : ¬ Reader r2160 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2160

def r2161 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2161 : ¬ Reader r2161 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2161

def r2162 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2162 : ¬ Reader r2162 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2162

def r2163 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 1))))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2163 : ¬ Reader r2163 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject2163

def r2164 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 1))))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2164 : ¬ Reader r2164 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject2164

def r2165 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.var 1) (.app (.var 1) (.var 2))))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2165 : ¬ Reader r2165 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject2165

def r2166 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2166 : ¬ Reader r2166 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject2166

def r2167 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2167 : ¬ Reader r2167 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject2167

def r2168 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2168 : ¬ Reader r2168 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject2168

def r2169 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject2169 : ¬ Reader r2169 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2169

def r2170 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject2170 : ¬ Reader r2170 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2170

def r2171 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject2171 : ¬ Reader r2171 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2171

def r2172 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject2172 : ¬ Reader r2172 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2172

def r2173 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject2173 : ¬ Reader r2173 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2173

def r2174 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject2174 : ¬ Reader r2174 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2174

def r2175 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject2175 : ¬ Reader r2175 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2175

def r2176 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject2176 : ¬ Reader r2176 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2176

def r2177 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject2177 : ¬ Reader r2177 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2177

def r2178 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject2178 : ¬ Reader r2178 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2178

def r2179 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject2179 : ¬ Reader r2179 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2179

def r2180 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject2180 : ¬ Reader r2180 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2180

def r2181 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject2181 : ¬ Reader r2181 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2181

def r2182 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject2182 : ¬ Reader r2182 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2182

def r2183 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject2183 : ¬ Reader r2183 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2183

def r2184 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject2184 : ¬ Reader r2184 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2184

def r2185 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject2185 : ¬ Reader r2185 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2185

def r2186 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject2186 : ¬ Reader r2186 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2186

def r2187 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject2187 : ¬ Reader r2187 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2187

def r2188 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject2188 : ¬ Reader r2188 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2188

def r2189 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject2189 : ¬ Reader r2189 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2189

def r2190 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject2190 : ¬ Reader r2190 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2190

def r2191 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject2191 : ¬ Reader r2191 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2191

def r2192 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject2192 : ¬ Reader r2192 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2192

def r2193 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject2193 : ¬ Reader r2193 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2193

def r2194 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject2194 : ¬ Reader r2194 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2194

def r2195 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject2195 : ¬ Reader r2195 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2195

def r2196 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject2196 : ¬ Reader r2196 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2196

def r2197 : Term := (.app (.app (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject2197 : ¬ Reader r2197 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.var 0) (.lam (.var 0))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2197

def r2198 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2198 : ¬ Reader r2198 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2198

def r2199 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2199 : ¬ Reader r2199 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2199

def r2200 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2200 : ¬ Reader r2200 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2200

def r2201 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2201 : ¬ Reader r2201 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2201

def r2202 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2202 : ¬ Reader r2202 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2202

def r2203 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2203 : ¬ Reader r2203 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2203

def r2204 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2204 : ¬ Reader r2204 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2204

def r2205 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2205 : ¬ Reader r2205 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2205

def r2206 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2206 : ¬ Reader r2206 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2206

def r2207 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2207 : ¬ Reader r2207 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2207

def r2208 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2208 : ¬ Reader r2208 := by
  exact replay_loop true [] 1 8 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2208

def r2209 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2209 : ¬ Reader r2209 := by
  exact replay_loop true [] 1 8 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2209

def r2210 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2210 : ¬ Reader r2210 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2210

def r2211 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2211 : ¬ Reader r2211 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2211

def r2212 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2212 : ¬ Reader r2212 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2212

def r2213 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2213 : ¬ Reader r2213 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2213

def r2214 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2214 : ¬ Reader r2214 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2214

def r2215 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2215 : ¬ Reader r2215 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2215

def r2216 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2216 : ¬ Reader r2216 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2216

def r2217 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2217 : ¬ Reader r2217 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2217

def r2218 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2218 : ¬ Reader r2218 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2218

def r2219 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2219 : ¬ Reader r2219 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2219

def r2220 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2220 : ¬ Reader r2220 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2220

def r2221 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2221 : ¬ Reader r2221 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2221

def r2222 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2222 : ¬ Reader r2222 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2222

def r2223 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2223 : ¬ Reader r2223 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2223

def r2224 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2224 : ¬ Reader r2224 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2224

def r2225 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2225 : ¬ Reader r2225 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2225

def r2226 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2226 : ¬ Reader r2226 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2226

def r2227 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2227 : ¬ Reader r2227 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2227

def r2228 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2228 : ¬ Reader r2228 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2228

def r2229 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2229 : ¬ Reader r2229 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2229

def r2230 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2230 : ¬ Reader r2230 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2230

def r2231 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2231 : ¬ Reader r2231 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2231

def r2232 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2232 : ¬ Reader r2232 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2232

def r2233 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2233 : ¬ Reader r2233 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2233

def r2234 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2234 : ¬ Reader r2234 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2234

def r2235 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2235 : ¬ Reader r2235 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2235

def r2236 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2236 : ¬ Reader r2236 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2236

def r2237 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2237 : ¬ Reader r2237 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2237

def r2238 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2238 : ¬ Reader r2238 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2238

def r2239 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2239 : ¬ Reader r2239 := by
  exact replay_loop true [] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2239

def r2240 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2240 : ¬ Reader r2240 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2240

def r2241 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2241 : ¬ Reader r2241 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2241

def r2242 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2242 : ¬ Reader r2242 := by
  exact replay_loop true [] 6 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2242

def r2243 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2243 : ¬ Reader r2243 := by
  exact replay_loop true [] 6 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2243

def r2244 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2244 : ¬ Reader r2244 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2244

def r2245 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2245 : ¬ Reader r2245 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2245

def r2246 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2246 : ¬ Reader r2246 := by
  exact replay_loop true [] 2 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2246

def r2247 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2247 : ¬ Reader r2247 := by
  exact replay_loop true [] 2 4 (.app (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2247

def r2248 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2248 : ¬ Reader r2248 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2248

def r2249 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2249 : ¬ Reader r2249 := by
  exact replay_loop true [] 4 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2249

def r2250 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject2250 : ¬ Reader r2250 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2250

def r2251 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject2251 : ¬ Reader r2251 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2251

def r2252 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject2252 : ¬ Reader r2252 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2252

def r2253 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject2253 : ¬ Reader r2253 := by
  exact replay_loop true [] 2 4 (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) [(.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2253

def r2254 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject2254 : ¬ Reader r2254 := by
  exact replay_loop true [] 2 8 (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2254

def r2255 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject2255 : ¬ Reader r2255 := by
  exact replay_loop true [] 2 8 (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) [(.app (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2255

def r2256 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject2256 : ¬ Reader r2256 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2256

def r2257 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject2257 : ¬ Reader r2257 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2257

def r2258 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject2258 : ¬ Reader r2258 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2258

def r2259 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject2259 : ¬ Reader r2259 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2259

def r2260 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject2260 : ¬ Reader r2260 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2260

def r2261 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject2261 : ¬ Reader r2261 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2261

def r2262 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject2262 : ¬ Reader r2262 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2262

def r2263 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject2263 : ¬ Reader r2263 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2263

def r2264 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2264 : ¬ Reader r2264 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2264

def r2265 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2265 : ¬ Reader r2265 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2265

def r2266 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2266 : ¬ Reader r2266 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2266

def r2267 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject2267 : ¬ Reader r2267 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2267

def r2268 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject2268 : ¬ Reader r2268 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2268

def r2269 : Term := (.app (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject2269 : ¬ Reader r2269 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2269

def r2270 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject2270 : ¬ Reader r2270 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2270

def r2271 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject2271 : ¬ Reader r2271 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2271

def r2272 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 1))))
theorem reject2272 : ¬ Reader r2272 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2272

def r2273 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject2273 : ¬ Reader r2273 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2273

def r2274 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 1))
theorem reject2274 : ¬ Reader r2274 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2274

def r2275 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.var 0)))
theorem reject2275 : ¬ Reader r2275 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2275

def r2276 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))) (.var 1))
theorem reject2276 : ¬ Reader r2276 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2276

def r2277 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.lam (.var 0)))
theorem reject2277 : ¬ Reader r2277 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2277

def r2278 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 1))
theorem reject2278 : ¬ Reader r2278 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2278

def r2279 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0)))
theorem reject2279 : ¬ Reader r2279 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2279

def r2280 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 1))
theorem reject2280 : ¬ Reader r2280 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2280

def r2281 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0)))
theorem reject2281 : ¬ Reader r2281 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2281

def r2282 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 1))
theorem reject2282 : ¬ Reader r2282 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2282

def r2283 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0)))
theorem reject2283 : ¬ Reader r2283 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2283

def r2284 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 1))
theorem reject2284 : ¬ Reader r2284 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2284

def r2285 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0)))
theorem reject2285 : ¬ Reader r2285 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2285

def r2286 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 1))
theorem reject2286 : ¬ Reader r2286 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2286

def r2287 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0)))
theorem reject2287 : ¬ Reader r2287 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2287

def r2288 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject2288 : ¬ Reader r2288 := by
  exact replay_loop true [] 8 6 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))) [(.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))))] [(.app (.var 1) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2288

def r2289 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject2289 : ¬ Reader r2289 := by
  exact replay_loop true [] 8 6 (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))) [(.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))))] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2289

def r2290 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject2290 : ¬ Reader r2290 := by
  exact replay_loop true [] 10 8 (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) [(.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))] [(.app (.var 1) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2290

def r2291 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject2291 : ¬ Reader r2291 := by
  exact replay_loop true [] 10 8 (.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) [(.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))) (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.app (.app (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0))))))))] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2291

def r2292 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject2292 : ¬ Reader r2292 := by
  exact replay_loop true [] 2 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2292

def r2293 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject2293 : ¬ Reader r2293 := by
  exact replay_loop true [] 2 6 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))) [(.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))))), (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2293

def r2294 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 1)) (.var 0))
theorem reject2294 : ¬ Reader r2294 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2294

def r2295 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.var 0)) (.var 1))
theorem reject2295 : ¬ Reader r2295 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2295

def r2296 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject2296 : ¬ Reader r2296 := by
  exact replay_loop true [] 8 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2296

def r2297 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject2297 : ¬ Reader r2297 := by
  exact replay_loop true [] 8 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2297

def r2298 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 1)) (.var 0))
theorem reject2298 : ¬ Reader r2298 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2298

def r2299 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.var 0)) (.var 1))
theorem reject2299 : ¬ Reader r2299 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2299

def r2300 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject2300 : ¬ Reader r2300 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2300

def r2301 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject2301 : ¬ Reader r2301 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))))) [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))))] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2301

def r2302 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject2302 : ¬ Reader r2302 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2302

def r2303 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject2303 : ¬ Reader r2303 := by
  exact replay_loop true [] 2 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) [] [(.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2303

def r2304 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
theorem reject2304 : ¬ Reader r2304 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2304

def r2305 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
theorem reject2305 : ¬ Reader r2305 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2305

def r2306 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 1)) (.var 0))
theorem reject2306 : ¬ Reader r2306 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2306

def r2307 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.var 0)) (.var 1))
theorem reject2307 : ¬ Reader r2307 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2307

def r2308 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 1))
theorem reject2308 : ¬ Reader r2308 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2308

def r2309 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.var 1))
theorem reject2309 : ¬ Reader r2309 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2309

def r2310 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.var 1))
theorem reject2310 : ¬ Reader r2310 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) [(.app (.var 0) (.lam (.var 0)))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))), (.app (.var 0) (.lam (.var 0))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2310

def r2311 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.var 1))
theorem reject2311 : ¬ Reader r2311 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) [(.app (.var 0) (.lam (.var 0)))] [(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2311

def r2312 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))) (.var 1))
theorem reject2312 : ¬ Reader r2312 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))) [(.lam (.var 0)), (.var 0)] [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))), (.lam (.var 0)), (.var 0), (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2312

def r2313 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) (.var 1))
theorem reject2313 : ¬ Reader r2313 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) [(.var 0), (.lam (.var 0))] [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))), (.var 0), (.lam (.var 0)), (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2313

def r2314 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))) (.var 1))
theorem reject2314 : ¬ Reader r2314 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))) [(.lam (.var 0)), (.var 0)] [(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))), (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2314

def r2315 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) (.var 1))
theorem reject2315 : ¬ Reader r2315 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) [(.var 0), (.lam (.var 0))] [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))), (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2315

def r2316 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject2316 : ¬ Reader r2316 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2316

def r2317 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject2317 : ¬ Reader r2317 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2317

def r2318 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject2318 : ¬ Reader r2318 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2318

def r2319 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject2319 : ¬ Reader r2319 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2319

def r2320 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject2320 : ¬ Reader r2320 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)), (.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2320

def r2321 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject2321 : ¬ Reader r2321 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2321

def r2322 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject2322 : ¬ Reader r2322 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2322

def r2323 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject2323 : ¬ Reader r2323 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2323

def r2324 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject2324 : ¬ Reader r2324 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 0)), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2324

def r2325 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1))
theorem reject2325 : ¬ Reader r2325 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 0), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2325

def r2326 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject2326 : ¬ Reader r2326 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 1))) (.app (.lam (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2326

def r2327 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject2327 : ¬ Reader r2327 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2327

def r2328 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject2328 : ¬ Reader r2328 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 1))), (.app (.lam (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2328

def r2329 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject2329 : ¬ Reader r2329 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 1)))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2329

def r2330 : Term := (.app (.app (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 1))
theorem reject2330 : ¬ Reader r2330 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2330

def r2331 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject2331 : ¬ Reader r2331 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) [(.app (.var 0) (.lam (.var 0)))] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2331

def r2332 : Term := (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject2332 : ¬ Reader r2332 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) [(.app (.var 0) (.lam (.var 0)))] [(.app (.var 0) (.lam (.var 0))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2332

def r2333 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2333 : ¬ Reader r2333 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2333

def r2334 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2334 : ¬ Reader r2334 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2334

def r2335 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2335 : ¬ Reader r2335 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2335

def r2336 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2336 : ¬ Reader r2336 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2336

def r2337 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2337 : ¬ Reader r2337 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2337

def r2338 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2338 : ¬ Reader r2338 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2338

def r2339 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2339 : ¬ Reader r2339 := by
  exact replay_loop true [] 6 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2339

def r2340 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2340 : ¬ Reader r2340 := by
  exact replay_loop true [] 6 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2340

def r2341 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2341 : ¬ Reader r2341 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2341

def r2342 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2342 : ¬ Reader r2342 := by
  exact replay_loop true [] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2342

def r2343 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2343 : ¬ Reader r2343 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2343

def r2344 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2344 : ¬ Reader r2344 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2344

def r2345 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2345 : ¬ Reader r2345 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2345

def r2346 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2346 : ¬ Reader r2346 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2346

def r2347 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2347 : ¬ Reader r2347 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2347

def r2348 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2348 : ¬ Reader r2348 := by
  exact replay_loop true [] 2 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2348

def r2349 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2349 : ¬ Reader r2349 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2349

def r2350 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2350 : ¬ Reader r2350 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2350

def r2351 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2351 : ¬ Reader r2351 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2351

def r2352 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2352 : ¬ Reader r2352 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2352

def r2353 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2353 : ¬ Reader r2353 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2353

def r2354 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2354 : ¬ Reader r2354 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2354

def r2355 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2355 : ¬ Reader r2355 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2355

def r2356 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2356 : ¬ Reader r2356 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2356

def r2357 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2357 : ¬ Reader r2357 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2357

def r2358 : Term := (.app (.app (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2358 : ¬ Reader r2358 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2358

def r2359 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2359 : ¬ Reader r2359 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2359

def r2360 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2360 : ¬ Reader r2360 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2360

def r2361 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2361 : ¬ Reader r2361 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2361

def r2362 : Term := (.app (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2362 : ¬ Reader r2362 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2362

def r2363 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject2363 : ¬ Reader r2363 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2363

def r2364 : Term := (.app (.app (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject2364 : ¬ Reader r2364 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2364

def r2365 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2365 : ¬ Reader r2365 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2365

def r2366 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2366 : ¬ Reader r2366 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2366

def r2367 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2367 : ¬ Reader r2367 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2367

def r2368 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2368 : ¬ Reader r2368 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2368

def r2369 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2369 : ¬ Reader r2369 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2369

def r2370 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2370 : ¬ Reader r2370 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2370

def r2371 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2371 : ¬ Reader r2371 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2371

def r2372 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2372 : ¬ Reader r2372 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2372

def r2373 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2373 : ¬ Reader r2373 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2373

def r2374 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2374 : ¬ Reader r2374 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2374

def r2375 : Term := (.app (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2375 : ¬ Reader r2375 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2375

def r2376 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2376 : ¬ Reader r2376 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2376

def r2377 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2377 : ¬ Reader r2377 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2377

def r2378 : Term := (.app (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1))
theorem reject2378 : ¬ Reader r2378 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2378

def r2379 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2379 : ¬ Reader r2379 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2379

def r2380 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2380 : ¬ Reader r2380 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2380

def r2381 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2381 : ¬ Reader r2381 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2381

def r2382 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2382 : ¬ Reader r2382 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2382

def r2383 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2383 : ¬ Reader r2383 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2383

def r2384 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2384 : ¬ Reader r2384 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2384

def r2385 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2385 : ¬ Reader r2385 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2385

def r2386 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2386 : ¬ Reader r2386 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2386

def r2387 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2387 : ¬ Reader r2387 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2387

def r2388 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2388 : ¬ Reader r2388 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2388

def r2389 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2389 : ¬ Reader r2389 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2389

def r2390 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2390 : ¬ Reader r2390 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2390

def r2391 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2391 : ¬ Reader r2391 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2391

def r2392 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2392 : ¬ Reader r2392 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2392

def r2393 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2393 : ¬ Reader r2393 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2393

def r2394 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2394 : ¬ Reader r2394 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2394

def r2395 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2395 : ¬ Reader r2395 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2395

def r2396 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2396 : ¬ Reader r2396 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2396

def r2397 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2397 : ¬ Reader r2397 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2397

def r2398 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2398 : ¬ Reader r2398 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2398

def r2399 : Term := (.app (.app (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject2399 : ¬ Reader r2399 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2399
end Blc.HandlerLet.NestedExceptions07
