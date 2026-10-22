import Certificates
namespace Blc.HandlerLet.Proof4_Cs_x_2_1_24
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r11183 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject11183 : ¬ Reader r11183 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11183

def r11184 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))
theorem reject11184 : ¬ Reader r11184 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11184

def r11185 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))
theorem reject11185 : ¬ Reader r11185 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11185

def r11186 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))
theorem reject11186 : ¬ Reader r11186 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11186

def r11187 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject11187 : ¬ Reader r11187 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11187

def r11188 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject11188 : ¬ Reader r11188 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11188

def r11189 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject11189 : ¬ Reader r11189 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11189

def r11190 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))
theorem reject11190 : ¬ Reader r11190 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11190

def r11191 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))
theorem reject11191 : ¬ Reader r11191 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11191

def r11192 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))
theorem reject11192 : ¬ Reader r11192 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11192

def r11193 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject11193 : ¬ Reader r11193 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11193

def r11194 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject11194 : ¬ Reader r11194 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11194

def r11195 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject11195 : ¬ Reader r11195 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11195

def r11196 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))
theorem reject11196 : ¬ Reader r11196 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11196

def r11197 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))
theorem reject11197 : ¬ Reader r11197 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11197

def r11198 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))
theorem reject11198 : ¬ Reader r11198 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11198

def r11199 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject11199 : ¬ Reader r11199 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11199

def r11200 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject11200 : ¬ Reader r11200 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11200

def r11201 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject11201 : ¬ Reader r11201 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11201

def r11202 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))
theorem reject11202 : ¬ Reader r11202 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11202

def r11203 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))
theorem reject11203 : ¬ Reader r11203 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11203

def r11204 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))
theorem reject11204 : ¬ Reader r11204 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11204

def r11205 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject11205 : ¬ Reader r11205 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11205

def r11206 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject11206 : ¬ Reader r11206 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11206

def r11207 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject11207 : ¬ Reader r11207 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11207

def r11208 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))
theorem reject11208 : ¬ Reader r11208 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11208

def r11209 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))
theorem reject11209 : ¬ Reader r11209 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11209

def r11210 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))
theorem reject11210 : ¬ Reader r11210 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11210

def r11211 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 1))
theorem reject11211 : ¬ Reader r11211 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11211

def r11212 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1))
theorem reject11212 : ¬ Reader r11212 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11212

def r11213 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1))
theorem reject11213 : ¬ Reader r11213 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11213

def r11214 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11214 : ¬ Reader r11214 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11214

def r11215 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11215 : ¬ Reader r11215 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11215

def r11216 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11216 : ¬ Reader r11216 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11216

def r11217 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11217 : ¬ Reader r11217 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11217

def r11218 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11218 : ¬ Reader r11218 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11218

def r11219 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11219 : ¬ Reader r11219 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11219

def r11220 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11220 : ¬ Reader r11220 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))), (.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11220

def r11221 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11221 : ¬ Reader r11221 := by
  exact replay_loop true [] 3 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))), (.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11221

def r11222 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11222 : ¬ Reader r11222 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11222

def r11223 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11223 : ¬ Reader r11223 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11223

def r11224 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11224 : ¬ Reader r11224 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11224

def r11225 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11225 : ¬ Reader r11225 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.lam (.var 0)), (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11225

def r11226 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11226 : ¬ Reader r11226 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))), (.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11226

def r11227 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11227 : ¬ Reader r11227 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11227

def r11228 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11228 : ¬ Reader r11228 := by
  exact replay_loop true [] 1 7 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11228

def r11229 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11229 : ¬ Reader r11229 := by
  exact replay_loop true [] 1 7 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) [(.lam (.var 0))] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11229

def r11230 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11230 : ¬ Reader r11230 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11230

def r11231 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11231 : ¬ Reader r11231 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11231

def r11232 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11232 : ¬ Reader r11232 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11232

def r11233 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11233 : ¬ Reader r11233 := by
  exact replay_loop true [] 7 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11233

def r11234 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11234 : ¬ Reader r11234 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11234

def r11235 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11235 : ¬ Reader r11235 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11235

def r11236 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11236 : ¬ Reader r11236 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11236

def r11237 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11237 : ¬ Reader r11237 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11237

def r11238 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11238 : ¬ Reader r11238 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11238

def r11239 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11239 : ¬ Reader r11239 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11239

def r11240 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11240 : ¬ Reader r11240 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11240

def r11241 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11241 : ¬ Reader r11241 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11241

def r11244 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11244 : ¬ Reader r11244 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11244

def r11245 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11245 : ¬ Reader r11245 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11245

def r11246 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11246 : ¬ Reader r11246 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11246

def r11247 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11247 : ¬ Reader r11247 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.var 0)), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11247

def r11248 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11248 : ¬ Reader r11248 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11248

def r11249 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11249 : ¬ Reader r11249 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11249

def r11250 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11250 : ¬ Reader r11250 := by
  exact replay_loop true [] 11 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11250

def r11251 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11251 : ¬ Reader r11251 := by
  exact replay_loop true [] 11 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11251

def r11252 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11252 : ¬ Reader r11252 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11252

def r11253 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11253 : ¬ Reader r11253 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11253

def r11254 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11254 : ¬ Reader r11254 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11254

def r11255 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11255 : ¬ Reader r11255 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11255

def r11256 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11256 : ¬ Reader r11256 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11256

def r11257 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11257 : ¬ Reader r11257 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.var 0)), (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11257

def r11258 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11258 : ¬ Reader r11258 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11258

def r11259 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11259 : ¬ Reader r11259 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11259

def r11260 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11260 : ¬ Reader r11260 := by
  exact replay_loop true [] 6 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11260

def r11261 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11261 : ¬ Reader r11261 := by
  exact replay_loop true [] 6 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11261

def r11262 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11262 : ¬ Reader r11262 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11262

def r11263 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11263 : ¬ Reader r11263 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11263

def r11264 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11264 : ¬ Reader r11264 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11264

def r11265 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11265 : ¬ Reader r11265 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11265

def r11266 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11266 : ¬ Reader r11266 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11266

def r11267 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11267 : ¬ Reader r11267 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11267

def r11268 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11268 : ¬ Reader r11268 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11268

def r11269 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11269 : ¬ Reader r11269 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) [(.lam (.var 0))] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11269

def r11270 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11270 : ¬ Reader r11270 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11270

def r11271 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11271 : ¬ Reader r11271 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11271

def r11272 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11272 : ¬ Reader r11272 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11272

def r11273 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11273 : ¬ Reader r11273 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11273

def r11274 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11274 : ¬ Reader r11274 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11274

def r11275 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11275 : ¬ Reader r11275 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11275

def r11276 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11276 : ¬ Reader r11276 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11276

def r11277 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11277 : ¬ Reader r11277 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11277

def r11278 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11278 : ¬ Reader r11278 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11278

def r11279 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11279 : ¬ Reader r11279 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11279

def r11280 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11280 : ¬ Reader r11280 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11280

def r11281 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11281 : ¬ Reader r11281 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11281

def r11282 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11282 : ¬ Reader r11282 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11282

def r11283 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11283 : ¬ Reader r11283 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11283

def r11284 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11284 : ¬ Reader r11284 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11284

def r11285 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11285 : ¬ Reader r11285 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11285

def r11286 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11286 : ¬ Reader r11286 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11286

def r11287 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11287 : ¬ Reader r11287 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11287

def r11288 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11288 : ¬ Reader r11288 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11288

def r11289 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11289 : ¬ Reader r11289 := by
  exact replay_loop true [] 1 5 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11289

def r11290 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11290 : ¬ Reader r11290 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11290

def r11291 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11291 : ¬ Reader r11291 := by
  exact replay_loop true [] 1 6 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11291

def r11292 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11292 : ¬ Reader r11292 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11292

def r11293 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11293 : ¬ Reader r11293 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11293

def r11294 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11294 : ¬ Reader r11294 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11294

def r11295 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11295 : ¬ Reader r11295 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11295

def r11296 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11296 : ¬ Reader r11296 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11296

def r11297 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11297 : ¬ Reader r11297 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11297

def r11298 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11298 : ¬ Reader r11298 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11298

def r11299 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11299 : ¬ Reader r11299 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11299

def r11300 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11300 : ¬ Reader r11300 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11300

def r11301 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11301 : ¬ Reader r11301 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11301

def r11302 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11302 : ¬ Reader r11302 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11302

def r11303 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11303 : ¬ Reader r11303 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11303

def r11304 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11304 : ¬ Reader r11304 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11304

def r11305 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11305 : ¬ Reader r11305 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11305

def r11306 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11306 : ¬ Reader r11306 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11306

def r11307 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.lam (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11307 : ¬ Reader r11307 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11307

def r11308 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11308 : ¬ Reader r11308 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11308

def r11309 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11309 : ¬ Reader r11309 := by
  exact replay_loop true [] 3 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11309

def r11310 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11310 : ¬ Reader r11310 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11310

def r11311 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11311 : ¬ Reader r11311 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11311

def r11312 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11312 : ¬ Reader r11312 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11312

def r11313 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11313 : ¬ Reader r11313 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11313

def r11314 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11314 : ¬ Reader r11314 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11314

def r11315 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11315 : ¬ Reader r11315 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11315

def r11316 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11316 : ¬ Reader r11316 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11316

def r11317 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11317 : ¬ Reader r11317 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11317

def r11318 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11318 : ¬ Reader r11318 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11318

def r11319 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11319 : ¬ Reader r11319 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11319

def r11320 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11320 : ¬ Reader r11320 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11320

def r11321 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11321 : ¬ Reader r11321 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11321

def r11322 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11322 : ¬ Reader r11322 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11322

def r11323 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11323 : ¬ Reader r11323 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11323

def r11324 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11324 : ¬ Reader r11324 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11324

def r11325 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11325 : ¬ Reader r11325 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11325

def r11326 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11326 : ¬ Reader r11326 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11326

def r11327 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11327 : ¬ Reader r11327 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11327

def r11328 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11328 : ¬ Reader r11328 := by
  exact replay_absent true [] 7 1 (by decide) (by decide)
#print axioms reject11328

def r11329 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11329 : ¬ Reader r11329 := by
  exact replay_loop true [] 7 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11329

def r11330 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11330 : ¬ Reader r11330 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11330

def r11331 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11331 : ¬ Reader r11331 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11331

def r11332 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11332 : ¬ Reader r11332 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11332

def r11333 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11333 : ¬ Reader r11333 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.lam (.var 1))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11333

def r11334 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11334 : ¬ Reader r11334 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11334

def r11335 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11335 : ¬ Reader r11335 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11335

def r11336 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11336 : ¬ Reader r11336 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11336

def r11337 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11337 : ¬ Reader r11337 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11337

def r11338 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11338 : ¬ Reader r11338 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11338

def r11339 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11339 : ¬ Reader r11339 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11339

def r11340 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11340 : ¬ Reader r11340 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11340

def r11341 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11341 : ¬ Reader r11341 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11341

def r11342 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11342 : ¬ Reader r11342 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11342

def r11343 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11343 : ¬ Reader r11343 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11343

def r11344 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11344 : ¬ Reader r11344 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11344

def r11345 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11345 : ¬ Reader r11345 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11345

def r11346 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11346 : ¬ Reader r11346 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11346

def r11347 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11347 : ¬ Reader r11347 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11347

def r11348 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11348 : ¬ Reader r11348 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11348

def r11349 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11349 : ¬ Reader r11349 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11349

def r11350 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11350 : ¬ Reader r11350 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11350

def r11351 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11351 : ¬ Reader r11351 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11351

def r11352 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11352 : ¬ Reader r11352 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11352

def r11353 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11353 : ¬ Reader r11353 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11353

def r11354 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11354 : ¬ Reader r11354 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11354

def r11355 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11355 : ¬ Reader r11355 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11355

def r11356 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11356 : ¬ Reader r11356 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11356

def r11357 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11357 : ¬ Reader r11357 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11357

def r11358 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11358 : ¬ Reader r11358 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11358

def r11359 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11359 : ¬ Reader r11359 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11359

def r11360 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11360 : ¬ Reader r11360 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11360

def r11361 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11361 : ¬ Reader r11361 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11361

def r11362 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11362 : ¬ Reader r11362 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11362

def r11363 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11363 : ¬ Reader r11363 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11363

def r11364 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11364 : ¬ Reader r11364 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11364

def r11365 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11365 : ¬ Reader r11365 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11365

def r11366 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11366 : ¬ Reader r11366 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11366

def r11367 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11367 : ¬ Reader r11367 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11367

def r11368 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11368 : ¬ Reader r11368 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11368

def r11369 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11369 : ¬ Reader r11369 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11369

def r11370 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11370 : ¬ Reader r11370 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11370

def r11371 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11371 : ¬ Reader r11371 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11371

def r11372 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11372 : ¬ Reader r11372 := by
  exact replay_absent true [] 6 1 (by decide) (by decide)
#print axioms reject11372

def r11373 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11373 : ¬ Reader r11373 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11373

def r11374 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11374 : ¬ Reader r11374 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11374

def r11375 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11375 : ¬ Reader r11375 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11375

def r11376 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11376 : ¬ Reader r11376 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11376

def r11377 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11377 : ¬ Reader r11377 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11377

def r11378 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11378 : ¬ Reader r11378 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11378

def r11379 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11379 : ¬ Reader r11379 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11379

def r11380 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11380 : ¬ Reader r11380 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11380

def r11381 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11381 : ¬ Reader r11381 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11381

def r11382 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11382 : ¬ Reader r11382 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11382

def r11383 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11383 : ¬ Reader r11383 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11383

def r11384 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11384 : ¬ Reader r11384 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11384

def r11385 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11385 : ¬ Reader r11385 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11385

def r11386 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11386 : ¬ Reader r11386 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11386

def r11387 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11387 : ¬ Reader r11387 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11387

def r11388 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11388 : ¬ Reader r11388 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11388

def r11389 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11389 : ¬ Reader r11389 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11389

def r11390 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11390 : ¬ Reader r11390 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11390

def r11391 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11391 : ¬ Reader r11391 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11391

def r11392 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11392 : ¬ Reader r11392 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11392

def r11393 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.lam (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11393 : ¬ Reader r11393 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11393

def r11394 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11394 : ¬ Reader r11394 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11394

def r11395 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11395 : ¬ Reader r11395 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11395

def r11396 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11396 : ¬ Reader r11396 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11396

def r11397 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11397 : ¬ Reader r11397 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11397

def r11398 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11398 : ¬ Reader r11398 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11398

def r11399 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11399 : ¬ Reader r11399 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 1)))), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11399

def r11400 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11400 : ¬ Reader r11400 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11400

def r11401 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11401 : ¬ Reader r11401 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11401

def r11402 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11402 : ¬ Reader r11402 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11402

def r11403 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11403 : ¬ Reader r11403 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.var 0)))))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11403

def r11404 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11404 : ¬ Reader r11404 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11404

def r11405 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11405 : ¬ Reader r11405 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11405

def r11406 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11406 : ¬ Reader r11406 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11406

def r11407 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11407 : ¬ Reader r11407 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11407

def r11408 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11408 : ¬ Reader r11408 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11408

def r11409 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 1))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11409 : ¬ Reader r11409 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 1)))), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11409

def r11410 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11410 : ¬ Reader r11410 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11410

def r11411 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11411 : ¬ Reader r11411 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11411

def r11412 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11412 : ¬ Reader r11412 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11412

def r11413 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11413 : ¬ Reader r11413 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11413

def r11414 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11414 : ¬ Reader r11414 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11414

def r11415 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11415 : ¬ Reader r11415 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11415

def r11416 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11416 : ¬ Reader r11416 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11416

def r11417 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11417 : ¬ Reader r11417 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11417

def r11418 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11418 : ¬ Reader r11418 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11418

def r11419 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11419 : ¬ Reader r11419 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11419

def r11420 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11420 : ¬ Reader r11420 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11420

def r11421 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11421 : ¬ Reader r11421 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11421

def r11422 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11422 : ¬ Reader r11422 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11422

def r11423 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11423 : ¬ Reader r11423 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11423

def r11424 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11424 : ¬ Reader r11424 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11424

def r11425 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11425 : ¬ Reader r11425 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11425

def r11426 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11426 : ¬ Reader r11426 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11426

def r11427 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11427 : ¬ Reader r11427 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11427

def r11428 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11428 : ¬ Reader r11428 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11428

def r11429 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11429 : ¬ Reader r11429 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.lam (.var 1))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11429

def r11430 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11430 : ¬ Reader r11430 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject11430

def r11431 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11431 : ¬ Reader r11431 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject11431

def r11432 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11432 : ¬ Reader r11432 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject11432

def r11433 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11433 : ¬ Reader r11433 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject11433

def r11434 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11434 : ¬ Reader r11434 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject11434

def r11435 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11435 : ¬ Reader r11435 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject11435

def r11436 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11436 : ¬ Reader r11436 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject11436

def r11437 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11437 : ¬ Reader r11437 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject11437

def r11438 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11438 : ¬ Reader r11438 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject11438

def r11439 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11439 : ¬ Reader r11439 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject11439

def r11440 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11440 : ¬ Reader r11440 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject11440

def r11441 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11441 : ¬ Reader r11441 := by
  exact replay_head true [] 2 (0,4) (by decide) (by decide)
#print axioms reject11441

def r11442 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11442 : ¬ Reader r11442 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 0)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11442

def r11443 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11443 : ¬ Reader r11443 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 0)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 0))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11443

def r11444 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11444 : ¬ Reader r11444 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject11444

def r11445 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11445 : ¬ Reader r11445 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject11445

def r11446 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11446 : ¬ Reader r11446 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11446

def r11447 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11447 : ¬ Reader r11447 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.lam (.var 0)))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11447

def r11448 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11448 : ¬ Reader r11448 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11448

def r11449 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11449 : ¬ Reader r11449 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11449

def r11450 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11450 : ¬ Reader r11450 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11450

def r11451 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11451 : ¬ Reader r11451 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11451

def r11452 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11452 : ¬ Reader r11452 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 0))), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11452

def r11453 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11453 : ¬ Reader r11453 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 0))), (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 0)))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11453

def r11454 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11454 : ¬ Reader r11454 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11454

def r11455 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11455 : ¬ Reader r11455 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11455

def r11456 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11456 : ¬ Reader r11456 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11456

def r11457 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11457 : ¬ Reader r11457 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11457

def r11458 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11458 : ¬ Reader r11458 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11458

def r11459 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11459 : ¬ Reader r11459 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11459

def r11460 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11460 : ¬ Reader r11460 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11460

def r11461 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11461 : ¬ Reader r11461 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11461

def r11462 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11462 : ¬ Reader r11462 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11462

def r11463 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11463 : ¬ Reader r11463 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11463

def r11464 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11464 : ¬ Reader r11464 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11464

def r11465 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11465 : ¬ Reader r11465 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11465

def r11466 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11466 : ¬ Reader r11466 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject11466

def r11467 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11467 : ¬ Reader r11467 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject11467

def r11468 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11468 : ¬ Reader r11468 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject11468

def r11469 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11469 : ¬ Reader r11469 := by
  exact replay_head true [] 4 (0,4) (by decide) (by decide)
#print axioms reject11469

def r11470 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11470 : ¬ Reader r11470 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject11470

def r11471 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11471 : ¬ Reader r11471 := by
  exact replay_head true [] 5 (0,6) (by decide) (by decide)
#print axioms reject11471

def r11472 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11472 : ¬ Reader r11472 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11472

def r11473 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11473 : ¬ Reader r11473 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11473

def r11474 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11474 : ¬ Reader r11474 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11474

def r11475 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11475 : ¬ Reader r11475 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))), (.var 0), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11475

def r11476 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11476 : ¬ Reader r11476 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11476

def r11477 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11477 : ¬ Reader r11477 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11477

def r11478 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11478 : ¬ Reader r11478 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11478

def r11479 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11479 : ¬ Reader r11479 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11479

def r11480 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11480 : ¬ Reader r11480 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11480

def r11481 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11481 : ¬ Reader r11481 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11481

def r11482 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11482 : ¬ Reader r11482 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11482

def r11483 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11483 : ¬ Reader r11483 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11483

def r11484 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11484 : ¬ Reader r11484 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11484

def r11485 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11485 : ¬ Reader r11485 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11485

def r11486 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11486 : ¬ Reader r11486 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11486

def r11487 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11487 : ¬ Reader r11487 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11487

def r11488 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11488 : ¬ Reader r11488 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11488

def r11489 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11489 : ¬ Reader r11489 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11489

def r11490 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11490 : ¬ Reader r11490 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11490

def r11491 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11491 : ¬ Reader r11491 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11491

def r11492 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11492 : ¬ Reader r11492 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11492

def r11493 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11493 : ¬ Reader r11493 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11493

def r11494 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11494 : ¬ Reader r11494 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject11494

def r11495 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11495 : ¬ Reader r11495 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject11495

def r11496 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11496 : ¬ Reader r11496 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11496

def r11497 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11497 : ¬ Reader r11497 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11497

def r11498 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11498 : ¬ Reader r11498 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11498

def r11499 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11499 : ¬ Reader r11499 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11499

def r11500 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11500 : ¬ Reader r11500 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11500

def r11501 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11501 : ¬ Reader r11501 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11501

def r11502 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11502 : ¬ Reader r11502 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 0))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11502

def r11503 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11503 : ¬ Reader r11503 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 0))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11503

def r11504 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11504 : ¬ Reader r11504 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11504

def r11505 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11505 : ¬ Reader r11505 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11505

def r11506 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11506 : ¬ Reader r11506 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11506

def r11507 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11507 : ¬ Reader r11507 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11507

def r11508 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11508 : ¬ Reader r11508 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11508

def r11509 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11509 : ¬ Reader r11509 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11509

def r11510 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11510 : ¬ Reader r11510 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11510

def r11511 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11511 : ¬ Reader r11511 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11511

def r11512 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11512 : ¬ Reader r11512 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11512

def r11513 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11513 : ¬ Reader r11513 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 0))), (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11513

def r11514 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11514 : ¬ Reader r11514 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11514

def r11515 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11515 : ¬ Reader r11515 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11515

def r11516 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11516 : ¬ Reader r11516 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11516

def r11517 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11517 : ¬ Reader r11517 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11517

def r11518 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11518 : ¬ Reader r11518 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject11518

def r11519 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11519 : ¬ Reader r11519 := by
  exact replay_head true [] 4 (0,5) (by decide) (by decide)
#print axioms reject11519

def r11520 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11520 : ¬ Reader r11520 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11520

def r11521 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11521 : ¬ Reader r11521 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11521

def r11522 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11522 : ¬ Reader r11522 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11522

def r11523 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11523 : ¬ Reader r11523 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11523

def r11524 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11524 : ¬ Reader r11524 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11524

def r11525 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11525 : ¬ Reader r11525 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11525

def r11526 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11526 : ¬ Reader r11526 := by
  exact replay_head true [] 2 (0,7) (by decide) (by decide)
#print axioms reject11526

def r11527 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11527 : ¬ Reader r11527 := by
  exact replay_head true [] 2 (0,7) (by decide) (by decide)
#print axioms reject11527

def r11528 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11528 : ¬ Reader r11528 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11528

def r11529 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11529 : ¬ Reader r11529 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11529

def r11530 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11530 : ¬ Reader r11530 := by
  exact replay_head true [] 2 (0,7) (by decide) (by decide)
#print axioms reject11530

def r11531 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11531 : ¬ Reader r11531 := by
  exact replay_head true [] 2 (0,7) (by decide) (by decide)
#print axioms reject11531

def r11532 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11532 : ¬ Reader r11532 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11532

def r11533 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 0)))) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11533 : ¬ Reader r11533 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11533

def r11534 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject11534 : ¬ Reader r11534 := by
  exact replay_head true [] 2 (0,7) (by decide) (by decide)
#print axioms reject11534

def r11535 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 1) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject11535 : ¬ Reader r11535 := by
  exact replay_head true [] 2 (0,7) (by decide) (by decide)
#print axioms reject11535

def r11536 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 0))
theorem reject11536 : ¬ Reader r11536 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11536

def r11537 : Term := (.app (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 0)) (.var 1))
theorem reject11537 : ¬ Reader r11537 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.app (.app (.var 0) (.var 0)) (.var 1))), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11537

def r11538 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11538 : ¬ Reader r11538 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11538

def r11539 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11539 : ¬ Reader r11539 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11539

def r11540 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11540 : ¬ Reader r11540 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11540

def r11541 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11541 : ¬ Reader r11541 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11541

def r11542 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11542 : ¬ Reader r11542 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11542

def r11543 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11543 : ¬ Reader r11543 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11543

def r11544 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11544 : ¬ Reader r11544 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11544

def r11545 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11545 : ¬ Reader r11545 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11545

def r11546 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11546 : ¬ Reader r11546 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11546

def r11547 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11547 : ¬ Reader r11547 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11547

def r11548 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11548 : ¬ Reader r11548 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11548

def r11549 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11549 : ¬ Reader r11549 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11549

def r11550 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11550 : ¬ Reader r11550 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11550

def r11551 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11551 : ¬ Reader r11551 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11551

def r11552 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11552 : ¬ Reader r11552 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11552

def r11553 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11553 : ¬ Reader r11553 := by
  exact replay_head true [] 2 (0,5) (by decide) (by decide)
#print axioms reject11553

def r11554 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11554 : ¬ Reader r11554 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11554

def r11555 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11555 : ¬ Reader r11555 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11555

def r11556 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11556 : ¬ Reader r11556 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11556

def r11557 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11557 : ¬ Reader r11557 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11557

def r11558 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11558 : ¬ Reader r11558 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11558

def r11559 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11559 : ¬ Reader r11559 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11559

def r11560 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11560 : ¬ Reader r11560 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11560

def r11561 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11561 : ¬ Reader r11561 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11561

def r11562 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11562 : ¬ Reader r11562 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject11562

def r11563 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11563 : ¬ Reader r11563 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject11563

def r11564 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11564 : ¬ Reader r11564 := by
  exact replay_head true [] 3 (0,7) (by decide) (by decide)
#print axioms reject11564

def r11565 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11565 : ¬ Reader r11565 := by
  exact replay_head true [] 3 (0,7) (by decide) (by decide)
#print axioms reject11565

def r11566 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11566 : ¬ Reader r11566 := by
  exact replay_head true [] 3 (0,7) (by decide) (by decide)
#print axioms reject11566

def r11567 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11567 : ¬ Reader r11567 := by
  exact replay_head true [] 3 (0,7) (by decide) (by decide)
#print axioms reject11567

def r11568 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11568 : ¬ Reader r11568 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11568

def r11569 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11569 : ¬ Reader r11569 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11569

def r11570 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11570 : ¬ Reader r11570 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11570

def r11571 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11571 : ¬ Reader r11571 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11571

def r11572 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11572 : ¬ Reader r11572 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11572

def r11573 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11573 : ¬ Reader r11573 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11573

def r11574 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11574 : ¬ Reader r11574 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject11574

def r11575 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11575 : ¬ Reader r11575 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject11575

def r11576 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11576 : ¬ Reader r11576 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11576

def r11577 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11577 : ¬ Reader r11577 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11577

def r11578 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11578 : ¬ Reader r11578 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject11578

def r11579 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11579 : ¬ Reader r11579 := by
  exact replay_head true [] 3 (0,6) (by decide) (by decide)
#print axioms reject11579

def r11580 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11580 : ¬ Reader r11580 := by
  exact replay_head true [] 3 (0,7) (by decide) (by decide)
#print axioms reject11580

def r11581 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11581 : ¬ Reader r11581 := by
  exact replay_head true [] 3 (0,7) (by decide) (by decide)
#print axioms reject11581

def r11582 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11582 : ¬ Reader r11582 := by
  exact replay_head true [] 3 (0,7) (by decide) (by decide)
#print axioms reject11582

def r11583 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11583 : ¬ Reader r11583 := by
  exact replay_head true [] 3 (0,7) (by decide) (by decide)
#print axioms reject11583

def r11584 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11584 : ¬ Reader r11584 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11584

def r11585 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11585 : ¬ Reader r11585 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11585

def r11586 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11586 : ¬ Reader r11586 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11586

def r11587 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11587 : ¬ Reader r11587 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11587

def r11588 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11588 : ¬ Reader r11588 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11588

def r11589 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0))))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11589 : ¬ Reader r11589 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11589

def r11590 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11590 : ¬ Reader r11590 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11590

def r11591 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11591 : ¬ Reader r11591 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11591

def r11592 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11592 : ¬ Reader r11592 := by
  exact replay_head true [] 2 (0,7) (by decide) (by decide)
#print axioms reject11592

def r11593 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11593 : ¬ Reader r11593 := by
  exact replay_head true [] 2 (0,7) (by decide) (by decide)
#print axioms reject11593

def r11594 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11594 : ¬ Reader r11594 := by
  exact replay_head true [] 2 (0,7) (by decide) (by decide)
#print axioms reject11594

def r11595 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11595 : ¬ Reader r11595 := by
  exact replay_head true [] 2 (0,7) (by decide) (by decide)
#print axioms reject11595

def r11596 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11596 : ¬ Reader r11596 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject11596

def r11597 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11597 : ¬ Reader r11597 := by
  exact replay_head true [] 5 (0,5) (by decide) (by decide)
#print axioms reject11597

def r11598 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11598 : ¬ Reader r11598 := by
  exact replay_head true [] 3 (0,7) (by decide) (by decide)
#print axioms reject11598

def r11599 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11599 : ¬ Reader r11599 := by
  exact replay_head true [] 3 (0,7) (by decide) (by decide)
#print axioms reject11599

def r11600 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11600 : ¬ Reader r11600 := by
  exact replay_head true [] 3 (0,7) (by decide) (by decide)
#print axioms reject11600

def r11601 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11601 : ¬ Reader r11601 := by
  exact replay_head true [] 3 (0,7) (by decide) (by decide)
#print axioms reject11601

def r11602 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11602 : ¬ Reader r11602 := by
  exact replay_head true [] 2 (0,7) (by decide) (by decide)
#print axioms reject11602

def r11603 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11603 : ¬ Reader r11603 := by
  exact replay_head true [] 2 (0,7) (by decide) (by decide)
#print axioms reject11603

def r11604 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11604 : ¬ Reader r11604 := by
  exact replay_head true [] 2 (0,7) (by decide) (by decide)
#print axioms reject11604

def r11605 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11605 : ¬ Reader r11605 := by
  exact replay_head true [] 2 (0,7) (by decide) (by decide)
#print axioms reject11605

def r11606 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11606 : ¬ Reader r11606 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11606

def r11607 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11607 : ¬ Reader r11607 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11607

def r11608 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11608 : ¬ Reader r11608 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11608

def r11609 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11609 : ¬ Reader r11609 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11609

def r11610 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11610 : ¬ Reader r11610 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11610

def r11611 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11611 : ¬ Reader r11611 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.lam (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11611

def r11612 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11612 : ¬ Reader r11612 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11612

def r11613 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11613 : ¬ Reader r11613 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11613

def r11614 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11614 : ¬ Reader r11614 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11614

def r11615 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11615 : ¬ Reader r11615 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11615

def r11616 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11616 : ¬ Reader r11616 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11616

def r11617 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11617 : ¬ Reader r11617 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11617

def r11618 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11618 : ¬ Reader r11618 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11618

def r11619 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11619 : ¬ Reader r11619 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11619

def r11620 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11620 : ¬ Reader r11620 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11620

def r11621 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11621 : ¬ Reader r11621 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11621

def r11622 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11622 : ¬ Reader r11622 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11622

def r11623 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11623 : ¬ Reader r11623 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11623

def r11624 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11624 : ¬ Reader r11624 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11624

def r11625 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11625 : ¬ Reader r11625 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11625

def r11626 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11626 : ¬ Reader r11626 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11626

def r11627 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11627 : ¬ Reader r11627 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11627

def r11628 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11628 : ¬ Reader r11628 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11628

def r11629 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11629 : ¬ Reader r11629 := by
  exact replay_head true [] 2 (0,6) (by decide) (by decide)
#print axioms reject11629

def r11630 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11630 : ¬ Reader r11630 := by
  exact replay_head true [] 2 (0,7) (by decide) (by decide)
#print axioms reject11630

def r11631 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11631 : ¬ Reader r11631 := by
  exact replay_head true [] 2 (0,7) (by decide) (by decide)
#print axioms reject11631

def r11632 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11632 : ¬ Reader r11632 := by
  exact replay_head true [] 2 (0,7) (by decide) (by decide)
#print axioms reject11632

def r11633 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject11633 : ¬ Reader r11633 := by
  exact replay_head true [] 2 (0,7) (by decide) (by decide)
#print axioms reject11633

def r11634 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject11634 : ¬ Reader r11634 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject11634
end Blc.HandlerLet.Proof4_Cs_x_2_1_24
