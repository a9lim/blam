import Certificates
namespace Blc.HandlerLet.Proof4_Cs_x_1_1_07
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r3237 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3237 : ¬ Reader r3237 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3237

def r3238 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3238 : ¬ Reader r3238 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3238

def r3239 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3239 : ¬ Reader r3239 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3239

def r3240 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3240 : ¬ Reader r3240 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3240

def r3241 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3241 : ¬ Reader r3241 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3241

def r3242 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3242 : ¬ Reader r3242 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3242

def r3243 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3243 : ¬ Reader r3243 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3243

def r3244 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3244 : ¬ Reader r3244 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3244

def r3245 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3245 : ¬ Reader r3245 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3245

def r3246 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3246 : ¬ Reader r3246 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3246

def r3247 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3247 : ¬ Reader r3247 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3247

def r3248 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3248 : ¬ Reader r3248 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3248

def r3249 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3249 : ¬ Reader r3249 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3249

def r3250 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3250 : ¬ Reader r3250 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3250

def r3251 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3251 : ¬ Reader r3251 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3251

def r3252 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3252 : ¬ Reader r3252 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3252

def r3253 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3253 : ¬ Reader r3253 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3253

def r3254 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3254 : ¬ Reader r3254 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3254

def r3255 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3255 : ¬ Reader r3255 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3255

def r3256 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3256 : ¬ Reader r3256 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3256

def r3257 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3257 : ¬ Reader r3257 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3257

def r3258 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3258 : ¬ Reader r3258 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3258

def r3259 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3259 : ¬ Reader r3259 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3259

def r3260 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3260 : ¬ Reader r3260 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3260

def r3261 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3261 : ¬ Reader r3261 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3261

def r3262 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3262 : ¬ Reader r3262 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3262

def r3263 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3263 : ¬ Reader r3263 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3263

def r3264 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3264 : ¬ Reader r3264 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3264

def r3265 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3265 : ¬ Reader r3265 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3265

def r3266 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3266 : ¬ Reader r3266 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3266

def r3267 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3267 : ¬ Reader r3267 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3267

def r3268 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3268 : ¬ Reader r3268 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3268

def r3269 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3269 : ¬ Reader r3269 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3269

def r3270 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3270 : ¬ Reader r3270 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3270

def r3271 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3271 : ¬ Reader r3271 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3271

def r3272 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3272 : ¬ Reader r3272 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3272

def r3273 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3273 : ¬ Reader r3273 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3273

def r3274 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3274 : ¬ Reader r3274 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3274

def r3275 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3275 : ¬ Reader r3275 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3275

def r3276 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3276 : ¬ Reader r3276 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3276

def r3277 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3277 : ¬ Reader r3277 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3277

def r3278 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3278 : ¬ Reader r3278 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3278

def r3279 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3279 : ¬ Reader r3279 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3279

def r3280 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3280 : ¬ Reader r3280 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3280

def r3281 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3281 : ¬ Reader r3281 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3281

def r3282 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3282 : ¬ Reader r3282 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3282

def r3283 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3283 : ¬ Reader r3283 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3283

def r3284 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3284 : ¬ Reader r3284 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3284

def r3285 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3285 : ¬ Reader r3285 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3285

def r3286 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3286 : ¬ Reader r3286 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3286

def r3287 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3287 : ¬ Reader r3287 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3287

def r3288 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3288 : ¬ Reader r3288 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3288

def r3289 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3289 : ¬ Reader r3289 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3289

def r3290 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3290 : ¬ Reader r3290 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3290

def r3291 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3291 : ¬ Reader r3291 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3291

def r3292 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3292 : ¬ Reader r3292 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3292

def r3293 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3293 : ¬ Reader r3293 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3293

def r3294 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3294 : ¬ Reader r3294 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3294

def r3295 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3295 : ¬ Reader r3295 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3295

def r3296 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3296 : ¬ Reader r3296 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3296

def r3297 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3297 : ¬ Reader r3297 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3297

def r3298 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3298 : ¬ Reader r3298 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3298

def r3299 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3299 : ¬ Reader r3299 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3299

def r3300 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3300 : ¬ Reader r3300 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3300

def r3301 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3301 : ¬ Reader r3301 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3301

def r3302 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3302 : ¬ Reader r3302 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3302

def r3303 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3303 : ¬ Reader r3303 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3303

def r3304 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3304 : ¬ Reader r3304 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3304

def r3305 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3305 : ¬ Reader r3305 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3305

def r3306 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3306 : ¬ Reader r3306 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3306

def r3307 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3307 : ¬ Reader r3307 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3307

def r3308 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3308 : ¬ Reader r3308 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3308

def r3309 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3309 : ¬ Reader r3309 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3309

def r3310 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3310 : ¬ Reader r3310 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3310

def r3311 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3311 : ¬ Reader r3311 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3311

def r3312 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3312 : ¬ Reader r3312 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3312

def r3313 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3313 : ¬ Reader r3313 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3313

def r3314 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3314 : ¬ Reader r3314 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3314

def r3315 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3315 : ¬ Reader r3315 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3315

def r3316 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3316 : ¬ Reader r3316 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3316

def r3317 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3317 : ¬ Reader r3317 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3317

def r3318 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3318 : ¬ Reader r3318 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3318

def r3319 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3319 : ¬ Reader r3319 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3319

def r3320 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3320 : ¬ Reader r3320 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3320

def r3321 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3321 : ¬ Reader r3321 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3321

def r3322 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3322 : ¬ Reader r3322 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3322

def r3323 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3323 : ¬ Reader r3323 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3323

def r3324 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3324 : ¬ Reader r3324 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3324

def r3325 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3325 : ¬ Reader r3325 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3325

def r3326 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3326 : ¬ Reader r3326 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3326

def r3327 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3327 : ¬ Reader r3327 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3327

def r3328 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3328 : ¬ Reader r3328 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3328

def r3329 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3329 : ¬ Reader r3329 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3329

def r3330 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3330 : ¬ Reader r3330 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3330

def r3331 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3331 : ¬ Reader r3331 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3331

def r3332 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3332 : ¬ Reader r3332 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3332

def r3333 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3333 : ¬ Reader r3333 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3333

def r3334 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3334 : ¬ Reader r3334 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3334

def r3335 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3335 : ¬ Reader r3335 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3335

def r3336 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3336 : ¬ Reader r3336 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3336

def r3337 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3337 : ¬ Reader r3337 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3337

def r3338 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3338 : ¬ Reader r3338 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3338

def r3339 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3339 : ¬ Reader r3339 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3339

def r3340 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3340 : ¬ Reader r3340 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3340

def r3341 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3341 : ¬ Reader r3341 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3341

def r3342 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3342 : ¬ Reader r3342 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3342

def r3343 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3343 : ¬ Reader r3343 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3343

def r3344 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3344 : ¬ Reader r3344 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3344

def r3345 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3345 : ¬ Reader r3345 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3345

def r3346 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3346 : ¬ Reader r3346 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3346

def r3347 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3347 : ¬ Reader r3347 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3347

def r3348 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3348 : ¬ Reader r3348 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3348

def r3349 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3349 : ¬ Reader r3349 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3349

def r3350 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3350 : ¬ Reader r3350 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3350

def r3351 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3351 : ¬ Reader r3351 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3351

def r3352 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3352 : ¬ Reader r3352 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3352

def r3353 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3353 : ¬ Reader r3353 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3353

def r3354 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3354 : ¬ Reader r3354 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3354

def r3355 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3355 : ¬ Reader r3355 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3355

def r3356 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3356 : ¬ Reader r3356 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3356

def r3357 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3357 : ¬ Reader r3357 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3357

def r3358 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3358 : ¬ Reader r3358 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3358

def r3359 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3359 : ¬ Reader r3359 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3359

def r3360 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3360 : ¬ Reader r3360 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3360

def r3361 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3361 : ¬ Reader r3361 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3361

def r3362 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3362 : ¬ Reader r3362 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3362

def r3363 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3363 : ¬ Reader r3363 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3363

def r3364 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3364 : ¬ Reader r3364 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3364

def r3365 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3365 : ¬ Reader r3365 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3365

def r3366 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3366 : ¬ Reader r3366 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3366

def r3367 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3367 : ¬ Reader r3367 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3367

def r3368 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3368 : ¬ Reader r3368 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3368

def r3369 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3369 : ¬ Reader r3369 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3369

def r3370 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3370 : ¬ Reader r3370 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3370

def r3371 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3371 : ¬ Reader r3371 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3371

def r3372 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3372 : ¬ Reader r3372 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3372

def r3373 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3373 : ¬ Reader r3373 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3373

def r3374 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3374 : ¬ Reader r3374 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3374

def r3375 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3375 : ¬ Reader r3375 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3375

def r3376 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3376 : ¬ Reader r3376 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3376

def r3377 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3377 : ¬ Reader r3377 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3377

def r3378 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3378 : ¬ Reader r3378 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3378

def r3379 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3379 : ¬ Reader r3379 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3379

def r3380 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3380 : ¬ Reader r3380 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.var 0) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3380

def r3381 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3381 : ¬ Reader r3381 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3381

def r3382 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3382 : ¬ Reader r3382 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3382

def r3383 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3383 : ¬ Reader r3383 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3383

def r3384 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3384 : ¬ Reader r3384 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3384

def r3385 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3385 : ¬ Reader r3385 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3385

def r3386 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3386 : ¬ Reader r3386 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3386

def r3387 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3387 : ¬ Reader r3387 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3387

def r3388 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3388 : ¬ Reader r3388 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3388

def r3389 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3389 : ¬ Reader r3389 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3389

def r3390 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3390 : ¬ Reader r3390 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3390

def r3391 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3391 : ¬ Reader r3391 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3391

def r3392 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3392 : ¬ Reader r3392 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3392

def r3393 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3393 : ¬ Reader r3393 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3393

def r3394 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3394 : ¬ Reader r3394 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3394

def r3395 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3395 : ¬ Reader r3395 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3395

def r3396 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3396 : ¬ Reader r3396 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3396

def r3397 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3397 : ¬ Reader r3397 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3397

def r3398 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3398 : ¬ Reader r3398 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3398

def r3399 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3399 : ¬ Reader r3399 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3399

def r3400 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3400 : ¬ Reader r3400 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3400

def r3401 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3401 : ¬ Reader r3401 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3401

def r3402 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3402 : ¬ Reader r3402 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3402

def r3403 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3403 : ¬ Reader r3403 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3403

def r3404 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3404 : ¬ Reader r3404 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3404

def r3405 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3405 : ¬ Reader r3405 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3405

def r3406 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3406 : ¬ Reader r3406 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3406

def r3407 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3407 : ¬ Reader r3407 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3407

def r3408 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3408 : ¬ Reader r3408 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3408

def r3409 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3409 : ¬ Reader r3409 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3409

def r3410 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3410 : ¬ Reader r3410 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3410

def r3411 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3411 : ¬ Reader r3411 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3411

def r3412 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3412 : ¬ Reader r3412 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3412

def r3413 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3413 : ¬ Reader r3413 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3413

def r3414 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3414 : ¬ Reader r3414 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3414

def r3415 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3415 : ¬ Reader r3415 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3415

def r3416 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3416 : ¬ Reader r3416 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3416

def r3417 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3417 : ¬ Reader r3417 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3417

def r3418 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3418 : ¬ Reader r3418 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3418

def r3419 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3419 : ¬ Reader r3419 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3419

def r3420 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3420 : ¬ Reader r3420 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3420

def r3421 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3421 : ¬ Reader r3421 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3421

def r3422 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3422 : ¬ Reader r3422 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3422

def r3423 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3423 : ¬ Reader r3423 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3423

def r3424 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3424 : ¬ Reader r3424 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3424

def r3425 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3425 : ¬ Reader r3425 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3425

def r3426 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3426 : ¬ Reader r3426 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3426

def r3427 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3427 : ¬ Reader r3427 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3427

def r3428 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3428 : ¬ Reader r3428 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3428

def r3429 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3429 : ¬ Reader r3429 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3429

def r3430 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3430 : ¬ Reader r3430 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3430

def r3431 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3431 : ¬ Reader r3431 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3431

def r3432 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3432 : ¬ Reader r3432 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3432

def r3433 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3433 : ¬ Reader r3433 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3433

def r3434 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3434 : ¬ Reader r3434 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3434

def r3435 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3435 : ¬ Reader r3435 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3435

def r3436 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3436 : ¬ Reader r3436 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3436

def r3437 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3437 : ¬ Reader r3437 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3437

def r3438 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3438 : ¬ Reader r3438 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3438

def r3439 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3439 : ¬ Reader r3439 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3439

def r3440 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3440 : ¬ Reader r3440 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3440

def r3441 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3441 : ¬ Reader r3441 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3441

def r3442 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3442 : ¬ Reader r3442 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3442

def r3443 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3443 : ¬ Reader r3443 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3443

def r3444 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3444 : ¬ Reader r3444 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3444

def r3445 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3445 : ¬ Reader r3445 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3445

def r3446 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3446 : ¬ Reader r3446 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3446

def r3447 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3447 : ¬ Reader r3447 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3447

def r3448 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3448 : ¬ Reader r3448 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3448

def r3449 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3449 : ¬ Reader r3449 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3449

def r3450 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3450 : ¬ Reader r3450 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3450

def r3451 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3451 : ¬ Reader r3451 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3451

def r3452 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1)))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3452 : ¬ Reader r3452 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3452

def r3453 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3453 : ¬ Reader r3453 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3453

def r3454 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3454 : ¬ Reader r3454 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3454

def r3455 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3455 : ¬ Reader r3455 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3455

def r3456 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3456 : ¬ Reader r3456 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3456

def r3457 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3457 : ¬ Reader r3457 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3457

def r3458 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3458 : ¬ Reader r3458 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3458

def r3459 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3459 : ¬ Reader r3459 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3459

def r3460 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3460 : ¬ Reader r3460 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3460

def r3461 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3461 : ¬ Reader r3461 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3461

def r3462 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3462 : ¬ Reader r3462 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3462

def r3463 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3463 : ¬ Reader r3463 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3463

def r3464 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3464 : ¬ Reader r3464 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3464

def r3465 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3465 : ¬ Reader r3465 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3465

def r3466 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3466 : ¬ Reader r3466 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3466

def r3467 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3467 : ¬ Reader r3467 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3467

def r3468 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3468 : ¬ Reader r3468 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3468

def r3469 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3469 : ¬ Reader r3469 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3469

def r3470 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3470 : ¬ Reader r3470 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3470

def r3471 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3471 : ¬ Reader r3471 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3471

def r3472 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3472 : ¬ Reader r3472 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3472

def r3473 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3473 : ¬ Reader r3473 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3473

def r3474 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3474 : ¬ Reader r3474 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3474

def r3475 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3475 : ¬ Reader r3475 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3475

def r3476 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3476 : ¬ Reader r3476 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3476

def r3477 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3477 : ¬ Reader r3477 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3477

def r3478 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3478 : ¬ Reader r3478 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3478

def r3479 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3479 : ¬ Reader r3479 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3479

def r3480 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3480 : ¬ Reader r3480 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3480

def r3481 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3481 : ¬ Reader r3481 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3481

def r3482 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3482 : ¬ Reader r3482 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3482

def r3483 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3483 : ¬ Reader r3483 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3483

def r3484 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3484 : ¬ Reader r3484 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3484

def r3485 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3485 : ¬ Reader r3485 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3485

def r3486 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 1)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3486 : ¬ Reader r3486 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3486

def r3487 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3487 : ¬ Reader r3487 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3487

def r3488 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3488 : ¬ Reader r3488 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3488

def r3489 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3489 : ¬ Reader r3489 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3489

def r3490 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3490 : ¬ Reader r3490 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3490

def r3491 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3491 : ¬ Reader r3491 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3491

def r3492 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3492 : ¬ Reader r3492 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3492

def r3493 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3493 : ¬ Reader r3493 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3493

def r3494 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3494 : ¬ Reader r3494 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3494

def r3495 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3495 : ¬ Reader r3495 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3495

def r3496 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3496 : ¬ Reader r3496 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3496

def r3497 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3497 : ¬ Reader r3497 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3497

def r3498 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3498 : ¬ Reader r3498 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3498

def r3499 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3499 : ¬ Reader r3499 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3499

def r3500 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3500 : ¬ Reader r3500 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3500

def r3501 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3501 : ¬ Reader r3501 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3501

def r3502 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3502 : ¬ Reader r3502 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3502

def r3503 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3503 : ¬ Reader r3503 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3503

def r3504 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3504 : ¬ Reader r3504 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3504

def r3505 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3505 : ¬ Reader r3505 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3505

def r3506 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3506 : ¬ Reader r3506 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3506

def r3507 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3507 : ¬ Reader r3507 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3507

def r3508 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3508 : ¬ Reader r3508 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3508

def r3509 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3509 : ¬ Reader r3509 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3509

def r3510 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3510 : ¬ Reader r3510 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.var 0)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3510

def r3511 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3511 : ¬ Reader r3511 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3511

def r3512 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3512 : ¬ Reader r3512 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3512

def r3513 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3513 : ¬ Reader r3513 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3513

def r3514 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3514 : ¬ Reader r3514 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3514

def r3515 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3515 : ¬ Reader r3515 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3515

def r3516 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3516 : ¬ Reader r3516 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3516

def r3517 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3517 : ¬ Reader r3517 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3517

def r3518 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.var 0))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3518 : ¬ Reader r3518 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3518

def r3519 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3519 : ¬ Reader r3519 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3519

def r3520 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 1)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3520 : ¬ Reader r3520 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3520

def r3521 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 1)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3521 : ¬ Reader r3521 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3521

def r3522 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3522 : ¬ Reader r3522 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3522

def r3523 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3523 : ¬ Reader r3523 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3523

def r3524 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3524 : ¬ Reader r3524 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3524

def r3525 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3525 : ¬ Reader r3525 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3525

def r3526 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3526 : ¬ Reader r3526 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3526

def r3527 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3527 : ¬ Reader r3527 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3527

def r3528 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3528 : ¬ Reader r3528 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3528

def r3529 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3529 : ¬ Reader r3529 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3529

def r3530 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3530 : ¬ Reader r3530 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3530

def r3531 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3531 : ¬ Reader r3531 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3531

def r3532 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3532 : ¬ Reader r3532 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3532

def r3533 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 1)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3533 : ¬ Reader r3533 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3533

def r3534 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3534 : ¬ Reader r3534 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3534

def r3535 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3535 : ¬ Reader r3535 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3535

def r3536 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3536 : ¬ Reader r3536 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3536

def r3537 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3537 : ¬ Reader r3537 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3537

def r3538 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3538 : ¬ Reader r3538 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3538

def r3539 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3539 : ¬ Reader r3539 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3539

def r3540 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3540 : ¬ Reader r3540 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3540

def r3541 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3541 : ¬ Reader r3541 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3541

def r3542 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3542 : ¬ Reader r3542 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3542

def r3543 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3543 : ¬ Reader r3543 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3543

def r3544 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3544 : ¬ Reader r3544 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3544

def r3545 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3545 : ¬ Reader r3545 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3545

def r3546 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3546 : ¬ Reader r3546 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3546

def r3547 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3547 : ¬ Reader r3547 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3547

def r3548 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3548 : ¬ Reader r3548 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3548

def r3549 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3549 : ¬ Reader r3549 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3549

def r3550 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3550 : ¬ Reader r3550 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3550

def r3551 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3551 : ¬ Reader r3551 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3551

def r3552 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3552 : ¬ Reader r3552 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3552

def r3553 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3553 : ¬ Reader r3553 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3553

def r3554 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3554 : ¬ Reader r3554 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3554

def r3555 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3555 : ¬ Reader r3555 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3555

def r3556 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3556 : ¬ Reader r3556 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3556

def r3557 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3557 : ¬ Reader r3557 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3557

def r3558 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3558 : ¬ Reader r3558 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3558

def r3559 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3559 : ¬ Reader r3559 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3559

def r3560 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3560 : ¬ Reader r3560 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3560

def r3561 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3561 : ¬ Reader r3561 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3561

def r3562 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3562 : ¬ Reader r3562 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3562

def r3563 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3563 : ¬ Reader r3563 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3563

def r3564 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3564 : ¬ Reader r3564 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3564

def r3565 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3565 : ¬ Reader r3565 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3565

def r3566 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3566 : ¬ Reader r3566 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3566

def r3567 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3567 : ¬ Reader r3567 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3567

def r3568 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3568 : ¬ Reader r3568 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3568

def r3569 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3569 : ¬ Reader r3569 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3569

def r3570 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3570 : ¬ Reader r3570 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3570

def r3571 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3571 : ¬ Reader r3571 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3571

def r3572 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3572 : ¬ Reader r3572 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3572

def r3573 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3573 : ¬ Reader r3573 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3573

def r3574 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3574 : ¬ Reader r3574 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3574

def r3575 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3575 : ¬ Reader r3575 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3575

def r3576 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3576 : ¬ Reader r3576 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3576

def r3577 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3577 : ¬ Reader r3577 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3577

def r3578 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3578 : ¬ Reader r3578 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3578

def r3579 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3579 : ¬ Reader r3579 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3579

def r3580 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3580 : ¬ Reader r3580 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3580

def r3581 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3581 : ¬ Reader r3581 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3581

def r3582 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3582 : ¬ Reader r3582 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3582

def r3583 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3583 : ¬ Reader r3583 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3583

def r3584 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3584 : ¬ Reader r3584 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3584

def r3585 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3585 : ¬ Reader r3585 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3585

def r3586 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3586 : ¬ Reader r3586 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3586

def r3587 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3587 : ¬ Reader r3587 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3587

def r3588 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3588 : ¬ Reader r3588 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3588

def r3589 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3589 : ¬ Reader r3589 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3589

def r3590 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3590 : ¬ Reader r3590 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3590

def r3591 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3591 : ¬ Reader r3591 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3591

def r3592 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3592 : ¬ Reader r3592 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3592

def r3593 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3593 : ¬ Reader r3593 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3593

def r3594 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3594 : ¬ Reader r3594 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3594

def r3595 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3595 : ¬ Reader r3595 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3595

def r3596 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3596 : ¬ Reader r3596 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3596

def r3597 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3597 : ¬ Reader r3597 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3597

def r3598 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3598 : ¬ Reader r3598 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3598

def r3599 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3599 : ¬ Reader r3599 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3599

def r3600 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3600 : ¬ Reader r3600 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3600

def r3601 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3601 : ¬ Reader r3601 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3601

def r3602 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3602 : ¬ Reader r3602 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3602

def r3603 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3603 : ¬ Reader r3603 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3603

def r3604 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3604 : ¬ Reader r3604 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3604

def r3605 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3605 : ¬ Reader r3605 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3605

def r3606 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3606 : ¬ Reader r3606 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3606

def r3607 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3607 : ¬ Reader r3607 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3607

def r3608 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3608 : ¬ Reader r3608 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3608

def r3609 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3609 : ¬ Reader r3609 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3609

def r3610 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3610 : ¬ Reader r3610 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3610

def r3611 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3611 : ¬ Reader r3611 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3611

def r3612 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3612 : ¬ Reader r3612 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3612

def r3613 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1)))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3613 : ¬ Reader r3613 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3613

def r3614 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3614 : ¬ Reader r3614 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3614

def r3615 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3615 : ¬ Reader r3615 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3615

def r3616 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3616 : ¬ Reader r3616 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3616

def r3617 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3617 : ¬ Reader r3617 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3617

def r3618 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3618 : ¬ Reader r3618 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3618

def r3619 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3619 : ¬ Reader r3619 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3619

def r3620 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3620 : ¬ Reader r3620 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3620

def r3621 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.var 0))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3621 : ¬ Reader r3621 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3621

def r3622 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 1))) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3622 : ¬ Reader r3622 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3622

def r3623 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 1)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3623 : ¬ Reader r3623 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3623

def r3624 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 1)) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3624 : ¬ Reader r3624 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3624

def r3625 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 1)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3625 : ¬ Reader r3625 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3625

def r3626 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 1)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3626 : ¬ Reader r3626 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3626

def r3627 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 1)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3627 : ¬ Reader r3627 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3627

def r3628 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 1)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3628 : ¬ Reader r3628 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3628

def r3629 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3629 : ¬ Reader r3629 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3629

def r3630 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3630 : ¬ Reader r3630 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3630

def r3631 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3631 : ¬ Reader r3631 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3631

def r3632 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3632 : ¬ Reader r3632 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3632

def r3633 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3633 : ¬ Reader r3633 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3633

def r3634 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3634 : ¬ Reader r3634 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3634

def r3635 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3635 : ¬ Reader r3635 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.var 0)), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3635

def r3636 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3636 : ¬ Reader r3636 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.lam (.var 0)), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3636

def r3637 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3637 : ¬ Reader r3637 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.var 0)), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3637

def r3638 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 1)) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3638 : ¬ Reader r3638 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3638

def r3639 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 1) (.var 0))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3639 : ¬ Reader r3639 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.var 0) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3639

def r3640 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.app (.var 0) (.var 1))) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3640 : ¬ Reader r3640 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.app (.lam (.app (.var 0) (.var 0))) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3640

def r3641 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3641 : ¬ Reader r3641 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3641

def r3642 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3642 : ¬ Reader r3642 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3642

def r3643 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3643 : ¬ Reader r3643 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3643

def r3644 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3644 : ¬ Reader r3644 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.var 0) (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3644

def r3645 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.lam (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3645 : ¬ Reader r3645 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.var 0) (.lam (.var 0))), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3645

def r3646 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3646 : ¬ Reader r3646 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3646

def r3647 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3647 : ¬ Reader r3647 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))) (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3647

def r3648 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3648 : ¬ Reader r3648 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3648

def r3649 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3649 : ¬ Reader r3649 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.var 0), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3649

def r3650 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3650 : ¬ Reader r3650 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.var 0)), (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)) (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3650

def r3651 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3651 : ¬ Reader r3651 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3651

def r3652 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3652 : ¬ Reader r3652 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3652

def r3653 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3653 : ¬ Reader r3653 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 0))), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3653

def r3654 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3654 : ¬ Reader r3654 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 0)), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3654

def r3655 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3655 : ¬ Reader r3655 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.app (.var 0) (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3655

def r3656 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.lam (.var 0))) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3656 : ¬ Reader r3656 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.lam (.var 0))) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3656

def r3657 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3657 : ¬ Reader r3657 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.app (.var 0) (.var 0)) (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3657

def r3658 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.app (.var 1) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3658 : ¬ Reader r3658 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3658

def r3659 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.app (.var 1) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3659 : ¬ Reader r3659 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.app (.var 0) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3659

def r3660 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3660 : ¬ Reader r3660 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3660

def r3661 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0))))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3661 : ¬ Reader r3661 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.lam (.var 0))), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.lam (.var 0)))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3661

def r3662 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3662 : ¬ Reader r3662 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.var 0), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 0)), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3662

def r3663 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3663 : ¬ Reader r3663 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.lam (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3663

def r3664 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3664 : ¬ Reader r3664 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3664

def r3665 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3665 : ¬ Reader r3665 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3665

def r3666 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.app (.var 1) (.lam (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3666 : ¬ Reader r3666 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3666

def r3667 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0)))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3667 : ¬ Reader r3667 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.lam (.var 0))), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3667

def r3668 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3668 : ¬ Reader r3668 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))) [] [(.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3668

def r3669 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3669 : ¬ Reader r3669 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.var 0)), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))), (.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3669

def r3670 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 1))) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3670 : ¬ Reader r3670 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.app (.var 0) (.var 0)), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3670

def r3671 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3671 : ¬ Reader r3671 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3671

def r3672 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3672 : ¬ Reader r3672 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.lam (.var 0)), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3672

def r3673 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 1)) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3673 : ¬ Reader r3673 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)), (.var 0), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3673

def r3674 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3674 : ¬ Reader r3674 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3674

def r3675 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3675 : ¬ Reader r3675 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.lam (.var 0)), (.var 0), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3675

def r3676 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3676 : ¬ Reader r3676 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.lam (.var 0)), (.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3676

def r3677 : Term := (.app (.app (.lam (.app (.app (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 1)) (.lam (.var 0))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3677 : ¬ Reader r3677 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))), (.var 0), (.var 0), (.lam (.var 0)), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3677

def r3678 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3678 : ¬ Reader r3678 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3678

def r3679 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3679 : ¬ Reader r3679 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3679

def r3680 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3680 : ¬ Reader r3680 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3680

def r3681 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3681 : ¬ Reader r3681 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3681

def r3682 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3682 : ¬ Reader r3682 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.lam (.app (.var 0) (.var 0))) (.var 0)) (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3682

def r3683 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3683 : ¬ Reader r3683 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3683

def r3684 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3684 : ¬ Reader r3684 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3684

def r3685 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3685 : ¬ Reader r3685 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.lam (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3685

def r3686 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 0))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3686 : ¬ Reader r3686 := by
  exact replay_loop true [] 1 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 0)))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject3686
end Blc.HandlerLet.Proof4_Cs_x_1_1_07
