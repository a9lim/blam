import Certificates
namespace Blc.HandlerLet.Exceptions4B_18
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r11138 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0))))
theorem reject11138 : ¬ Reader r11138 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11138

def r11139 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0))))
theorem reject11139 : ¬ Reader r11139 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11139

def r11140 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2)) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0))))
theorem reject11140 : ¬ Reader r11140 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11140

def r11141 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2)) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0))))
theorem reject11141 : ¬ Reader r11141 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11141

def r11142 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 2)) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0))))
theorem reject11142 : ¬ Reader r11142 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11142

def r11143 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2)) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0))))
theorem reject11143 : ¬ Reader r11143 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11143

def r11144 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11144 : ¬ Reader r11144 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11144

def r11145 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0)))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11145 : ¬ Reader r11145 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11145

def r11146 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2)))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11146 : ¬ Reader r11146 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11146

def r11147 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11147 : ¬ Reader r11147 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11147

def r11148 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11148 : ¬ Reader r11148 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11148

def r11149 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11149 : ¬ Reader r11149 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11149

def r11150 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11150 : ¬ Reader r11150 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11150

def r11151 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11151 : ¬ Reader r11151 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11151

def r11152 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2))) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11152 : ¬ Reader r11152 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11152

def r11153 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11153 : ¬ Reader r11153 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11153

def r11154 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11154 : ¬ Reader r11154 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11154

def r11155 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11155 : ¬ Reader r11155 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11155

def r11156 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11156 : ¬ Reader r11156 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11156

def r11157 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11157 : ¬ Reader r11157 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11157

def r11158 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11158 : ¬ Reader r11158 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11158

def r11159 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11159 : ¬ Reader r11159 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11159

def r11160 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11160 : ¬ Reader r11160 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11160

def r11161 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11161 : ¬ Reader r11161 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11161

def r11162 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11162 : ¬ Reader r11162 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11162

def r11163 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11163 : ¬ Reader r11163 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11163

def r11164 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0))))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11164 : ¬ Reader r11164 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11164

def r11165 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11165 : ¬ Reader r11165 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11165

def r11166 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11166 : ¬ Reader r11166 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11166

def r11167 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11167 : ¬ Reader r11167 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11167

def r11168 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0)))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11168 : ¬ Reader r11168 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11168

def r11169 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0)))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11169 : ¬ Reader r11169 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11169

def r11170 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11170 : ¬ Reader r11170 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11170

def r11171 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 2)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11171 : ¬ Reader r11171 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11171

def r11172 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11172 : ¬ Reader r11172 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11172

def r11173 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11173 : ¬ Reader r11173 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11173

def r11174 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2)) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11174 : ¬ Reader r11174 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11174

def r11175 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0)))) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11175 : ¬ Reader r11175 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11175

def r11176 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11176 : ¬ Reader r11176 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11176

def r11177 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11177 : ¬ Reader r11177 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11177

def r11178 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11178 : ¬ Reader r11178 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11178

def r11179 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11179 : ¬ Reader r11179 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11179

def r11180 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0)))) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11180 : ¬ Reader r11180 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11180

def r11181 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11181 : ¬ Reader r11181 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11181

def r11182 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.lam (.var 0)))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11182 : ¬ Reader r11182 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11182

def r11183 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11183 : ¬ Reader r11183 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11183

def r11184 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11184 : ¬ Reader r11184 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11184

def r11185 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11185 : ¬ Reader r11185 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11185

def r11186 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11186 : ¬ Reader r11186 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11186

def r11187 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11187 : ¬ Reader r11187 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11187

def r11188 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11188 : ¬ Reader r11188 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11188

def r11189 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11189 : ¬ Reader r11189 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11189

def r11190 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11190 : ¬ Reader r11190 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11190

def r11191 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11191 : ¬ Reader r11191 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11191

def r11192 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11192 : ¬ Reader r11192 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11192

def r11193 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11193 : ¬ Reader r11193 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11193

def r11194 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11194 : ¬ Reader r11194 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11194

def r11195 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11195 : ¬ Reader r11195 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11195

def r11196 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11196 : ¬ Reader r11196 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.lam (.lam (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11196

def r11197 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 2)) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11197 : ¬ Reader r11197 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 1), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11197

def r11198 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11198 : ¬ Reader r11198 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11198

def r11199 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11199 : ¬ Reader r11199 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11199

def r11200 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11200 : ¬ Reader r11200 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11200

def r11201 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0)))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11201 : ¬ Reader r11201 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11201

def r11202 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11202 : ¬ Reader r11202 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11202

def r11203 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11203 : ¬ Reader r11203 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11203

def r11204 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11204 : ¬ Reader r11204 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11204

def r11205 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11205 : ¬ Reader r11205 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11205

def r11206 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11206 : ¬ Reader r11206 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11206

def r11207 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11207 : ¬ Reader r11207 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11207

def r11208 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11208 : ¬ Reader r11208 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11208

def r11209 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 0)) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11209 : ¬ Reader r11209 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11209

def r11210 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11210 : ¬ Reader r11210 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11210

def r11211 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11211 : ¬ Reader r11211 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11211

def r11212 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11212 : ¬ Reader r11212 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11212

def r11213 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11213 : ¬ Reader r11213 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11213

def r11214 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11214 : ¬ Reader r11214 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11214

def r11215 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11215 : ¬ Reader r11215 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11215

def r11216 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.lam (.var 0)))) (.var 0))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11216 : ¬ Reader r11216 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11216

def r11217 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.lam (.lam (.var 0)))))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11217 : ¬ Reader r11217 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.lam (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11217

def r11218 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 2))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11218 : ¬ Reader r11218 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1)), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11218

def r11219 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.lam (.lam (.var 0))))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11219 : ¬ Reader r11219 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11219

def r11220 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 0))))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11220 : ¬ Reader r11220 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11220

def r11221 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 2) (.var 0))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11221 : ¬ Reader r11221 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11221

def r11222 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 2))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11222 : ¬ Reader r11222 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11222

def r11223 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11223 : ¬ Reader r11223 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11223

def r11224 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11224 : ¬ Reader r11224 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.lam (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11224

def r11225 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 2)) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11225 : ¬ Reader r11225 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11225

def r11226 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.lam (.var 0)))) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11226 : ¬ Reader r11226 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11226

def r11227 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11227 : ¬ Reader r11227 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11227

def r11228 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11228 : ¬ Reader r11228 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11228

def r11229 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11229 : ¬ Reader r11229 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11229

def r11230 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.lam (.lam (.var 0))))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11230 : ¬ Reader r11230 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 1) (.lam (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11230

def r11231 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 2)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11231 : ¬ Reader r11231 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11231

def r11232 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 0)) (.var 2)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11232 : ¬ Reader r11232 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11232

def r11233 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 0)))) (.var 2)) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11233 : ¬ Reader r11233 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11233

def r11234 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11234 : ¬ Reader r11234 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11234

def r11235 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11235 : ¬ Reader r11235 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11235

def r11236 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0)))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11236 : ¬ Reader r11236 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11236

def r11237 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2)))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11237 : ¬ Reader r11237 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11237

def r11238 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11238 : ¬ Reader r11238 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11238

def r11239 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11239 : ¬ Reader r11239 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11239

def r11240 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11240 : ¬ Reader r11240 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11240

def r11241 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11241 : ¬ Reader r11241 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11241

def r11242 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11242 : ¬ Reader r11242 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11242

def r11243 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11243 : ¬ Reader r11243 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11243

def r11244 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11244 : ¬ Reader r11244 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11244

def r11245 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11245 : ¬ Reader r11245 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11245

def r11246 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11246 : ¬ Reader r11246 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11246

def r11247 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))) (.lam (.app (.var 0) (.var 0))))
theorem reject11247 : ¬ Reader r11247 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11247

def r11248 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11248 : ¬ Reader r11248 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11248

def r11249 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11249 : ¬ Reader r11249 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11249

def r11250 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11250 : ¬ Reader r11250 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11250

def r11251 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11251 : ¬ Reader r11251 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11251

def r11252 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11252 : ¬ Reader r11252 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11252

def r11253 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11253 : ¬ Reader r11253 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11253

def r11254 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11254 : ¬ Reader r11254 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11254

def r11255 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11255 : ¬ Reader r11255 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11255

def r11256 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11256 : ¬ Reader r11256 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11256

def r11257 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11257 : ¬ Reader r11257 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11257

def r11258 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11258 : ¬ Reader r11258 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11258

def r11259 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11259 : ¬ Reader r11259 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11259

def r11260 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11260 : ¬ Reader r11260 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11260

def r11261 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11261 : ¬ Reader r11261 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11261

def r11262 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11262 : ¬ Reader r11262 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11262

def r11263 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11263 : ¬ Reader r11263 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11263

def r11264 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11264 : ¬ Reader r11264 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11264

def r11265 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11265 : ¬ Reader r11265 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11265

def r11266 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11266 : ¬ Reader r11266 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11266

def r11267 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11267 : ¬ Reader r11267 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11267

def r11268 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11268 : ¬ Reader r11268 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11268

def r11269 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11269 : ¬ Reader r11269 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11269

def r11270 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11270 : ¬ Reader r11270 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11270

def r11271 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11271 : ¬ Reader r11271 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11271

def r11272 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11272 : ¬ Reader r11272 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11272

def r11273 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11273 : ¬ Reader r11273 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 1)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11273

def r11274 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11274 : ¬ Reader r11274 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11274

def r11275 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11275 : ¬ Reader r11275 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11275

def r11276 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11276 : ¬ Reader r11276 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11276

def r11277 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11277 : ¬ Reader r11277 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11277

def r11278 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11278 : ¬ Reader r11278 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11278

def r11279 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11279 : ¬ Reader r11279 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11279

def r11280 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11280 : ¬ Reader r11280 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11280

def r11281 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11281 : ¬ Reader r11281 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11281

def r11282 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11282 : ¬ Reader r11282 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11282

def r11283 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11283 : ¬ Reader r11283 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11283

def r11284 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11284 : ¬ Reader r11284 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11284

def r11285 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11285 : ¬ Reader r11285 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11285

def r11286 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11286 : ¬ Reader r11286 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11286

def r11287 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11287 : ¬ Reader r11287 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11287

def r11288 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11288 : ¬ Reader r11288 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11288

def r11289 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11289 : ¬ Reader r11289 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11289

def r11290 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11290 : ¬ Reader r11290 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11290

def r11291 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11291 : ¬ Reader r11291 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11291

def r11292 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11292 : ¬ Reader r11292 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11292

def r11293 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11293 : ¬ Reader r11293 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11293

def r11294 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11294 : ¬ Reader r11294 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11294

def r11295 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11295 : ¬ Reader r11295 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11295

def r11296 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11296 : ¬ Reader r11296 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11296

def r11297 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11297 : ¬ Reader r11297 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11297

def r11298 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11298 : ¬ Reader r11298 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11298

def r11299 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11299 : ¬ Reader r11299 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11299

def r11300 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11300 : ¬ Reader r11300 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11300

def r11301 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11301 : ¬ Reader r11301 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11301

def r11302 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11302 : ¬ Reader r11302 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11302

def r11303 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11303 : ¬ Reader r11303 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11303

def r11304 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11304 : ¬ Reader r11304 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11304

def r11305 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11305 : ¬ Reader r11305 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11305

def r11306 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11306 : ¬ Reader r11306 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11306

def r11307 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11307 : ¬ Reader r11307 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11307

def r11308 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11308 : ¬ Reader r11308 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11308

def r11309 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11309 : ¬ Reader r11309 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11309

def r11310 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11310 : ¬ Reader r11310 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11310

def r11311 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11311 : ¬ Reader r11311 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11311

def r11312 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11312 : ¬ Reader r11312 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11312

def r11313 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11313 : ¬ Reader r11313 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11313

def r11314 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11314 : ¬ Reader r11314 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11314

def r11315 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11315 : ¬ Reader r11315 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11315

def r11316 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11316 : ¬ Reader r11316 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11316

def r11317 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11317 : ¬ Reader r11317 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11317

def r11318 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11318 : ¬ Reader r11318 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11318

def r11319 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11319 : ¬ Reader r11319 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11319

def r11320 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11320 : ¬ Reader r11320 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11320

def r11321 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11321 : ¬ Reader r11321 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11321

def r11322 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11322 : ¬ Reader r11322 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11322

def r11323 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11323 : ¬ Reader r11323 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11323

def r11324 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11324 : ¬ Reader r11324 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11324

def r11325 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11325 : ¬ Reader r11325 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11325

def r11326 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11326 : ¬ Reader r11326 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11326

def r11327 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11327 : ¬ Reader r11327 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11327

def r11328 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11328 : ¬ Reader r11328 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11328

def r11329 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11329 : ¬ Reader r11329 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11329

def r11330 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11330 : ¬ Reader r11330 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11330

def r11331 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11331 : ¬ Reader r11331 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11331

def r11332 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11332 : ¬ Reader r11332 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11332

def r11333 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11333 : ¬ Reader r11333 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11333

def r11334 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11334 : ¬ Reader r11334 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11334

def r11335 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11335 : ¬ Reader r11335 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11335

def r11336 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11336 : ¬ Reader r11336 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11336

def r11337 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11337 : ¬ Reader r11337 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11337

def r11338 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11338 : ¬ Reader r11338 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11338

def r11339 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11339 : ¬ Reader r11339 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11339

def r11340 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11340 : ¬ Reader r11340 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11340

def r11341 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11341 : ¬ Reader r11341 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11341

def r11342 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11342 : ¬ Reader r11342 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11342

def r11343 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11343 : ¬ Reader r11343 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11343

def r11344 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11344 : ¬ Reader r11344 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11344

def r11345 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11345 : ¬ Reader r11345 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11345

def r11346 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11346 : ¬ Reader r11346 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11346

def r11347 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 2) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11347 : ¬ Reader r11347 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11347

def r11348 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11348 : ¬ Reader r11348 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11348

def r11349 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11349 : ¬ Reader r11349 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11349

def r11350 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11350 : ¬ Reader r11350 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11350

def r11351 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 0) (.var 2))) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11351 : ¬ Reader r11351 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11351

def r11352 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11352 : ¬ Reader r11352 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11352

def r11353 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11353 : ¬ Reader r11353 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11353

def r11354 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11354 : ¬ Reader r11354 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11354

def r11355 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11355 : ¬ Reader r11355 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11355

def r11356 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11356 : ¬ Reader r11356 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11356

def r11357 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11357 : ¬ Reader r11357 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11357

def r11358 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11358 : ¬ Reader r11358 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11358

def r11359 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11359 : ¬ Reader r11359 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11359

def r11360 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11360 : ¬ Reader r11360 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11360

def r11361 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11361 : ¬ Reader r11361 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11361

def r11362 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11362 : ¬ Reader r11362 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11362

def r11363 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11363 : ¬ Reader r11363 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11363

def r11364 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.var 0))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11364 : ¬ Reader r11364 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11364

def r11365 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 1))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11365 : ¬ Reader r11365 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11365

def r11366 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.var 0))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11366 : ¬ Reader r11366 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11366

def r11367 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 2))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11367 : ¬ Reader r11367 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11367

def r11368 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 0)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11368 : ¬ Reader r11368 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11368

def r11369 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11369 : ¬ Reader r11369 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11369

def r11370 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.var 0)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11370 : ¬ Reader r11370 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11370

def r11371 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.var 0)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11371 : ¬ Reader r11371 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11371

def r11372 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11372 : ¬ Reader r11372 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11372

def r11373 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11373 : ¬ Reader r11373 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11373

def r11374 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11374 : ¬ Reader r11374 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11374

def r11375 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11375 : ¬ Reader r11375 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 1) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11375

def r11376 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11376 : ¬ Reader r11376 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 1)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11376

def r11377 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11377 : ¬ Reader r11377 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11377

def r11378 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11378 : ¬ Reader r11378 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11378

def r11379 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11379 : ¬ Reader r11379 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11379

def r11380 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 2)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11380 : ¬ Reader r11380 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11380

def r11381 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11381 : ¬ Reader r11381 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11381

def r11382 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11382 : ¬ Reader r11382 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11382

def r11383 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11383 : ¬ Reader r11383 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11383

def r11384 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11384 : ¬ Reader r11384 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 1))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11384

def r11385 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11385 : ¬ Reader r11385 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 1)) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11385

def r11386 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11386 : ¬ Reader r11386 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11386

def r11387 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11387 : ¬ Reader r11387 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11387

def r11388 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11388 : ¬ Reader r11388 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11388

def r11389 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11389 : ¬ Reader r11389 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11389

def r11390 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2))) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11390 : ¬ Reader r11390 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11390

def r11391 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11391 : ¬ Reader r11391 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 1) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11391

def r11392 : Term := (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11392 : ¬ Reader r11392 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 1)), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11392

def r11393 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11393 : ¬ Reader r11393 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11393

def r11394 : Term := (.app (.lam (.app (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))
theorem reject11394 : ¬ Reader r11394 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11394
end Blc.HandlerLet.Exceptions4B_18
