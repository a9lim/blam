import Flow
import Extras
import Recursor
import Lark
import Owl
import Strict
namespace Blc.HandlerLet.Slice40G50
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000
def r2404 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.var 0))) (.var 1))
theorem reject2404 : ¬ Reader r2404 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2404
def r2405 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 1)) (.lam (.var 0)))
theorem reject2405 : ¬ Reader r2405 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2405
def r2406 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.var 1))
theorem reject2406 : ¬ Reader r2406 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject2406
def r2407 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 0))))))) (.var 1))
theorem reject2407 : ¬ Reader r2407 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject2407
def r2408 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 2))))) (.var 1))
theorem reject2408 : ¬ Reader r2408 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject2408
def r2409 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 0)))))) (.var 1))
theorem reject2409 : ¬ Reader r2409 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject2409
def r2410 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))) (.var 1))
theorem reject2410 : ¬ Reader r2410 := by
 exact BodyLetGrow.grow_reduct true [[1, 1], [1, 1]] [(.lam (.var 1))] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 4)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 4))))))) (.var 0)) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject2410
def r2411 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))) (.var 1))
theorem reject2411 : ¬ Reader r2411 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 4))))))) (.lam (.var 2))))) [(.lam (.var 1)), (.lam (.var 1))] [(.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 4)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 4)))))))) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2411
def r2412 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.var 3))))))) (.var 1))
theorem reject2412 : ¬ Reader r2412 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject2412
def r2413 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0))))) (.var 1))
theorem reject2413 : ¬ Reader r2413 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r2413 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 2) (.lam (.var 2))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject2413
def r2414 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0))))) (.var 1))
theorem reject2414 : ¬ Reader r2414 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r2414 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.lam (.var 3))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject2414
def r2415 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 0))))) (.var 1))
theorem reject2415 : ¬ Reader r2415 := by
 exact Rootcert2Flow.reject [[1, 1]] [[],[],[],[],[7],[10],[0],[9,12],[6],[],[0],[6],[],[],[],[]] [[],[],[],[],[5],[],[7],[8],[],[9,12],[11],[],[0],[],[15],[]] (.app (.app (.app (.app (.lam 4 (.lam 5 (.app (.app (.app (.var 0 [10]) (.var 2 [0]) [11]) (.lam 6 (.var 2 [7]) [6]) []) (.var 0 [10]) []) [5]) [4]) (.lam 7 (.lam 8 (.app (.app (.app (.var 0 [6]) (.var 2 [0]) [7]) (.lam 9 (.var 2 [9,12]) [9]) [8]) (.var 0 [6]) []) [8]) [7]) [5]) (.lam 10 (.lam 11 (.app (.app (.app (.var 0 [6]) (.var 2 [0]) [7]) (.lam 12 (.var 2 [0]) [12]) [8]) (.var 0 [6]) []) [11]) [10]) []) (.var 1 [1]) []) (.lam 13 (.app (.app (.var 0 []) (.lam 14 (.lam 15 (.var 1 []) [15]) [14]) []) (.var 4 [3]) []) [13]) []) (by decide) (by decide) (by decide)
#print axioms reject2415
def r2416 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3))))))) (.var 1))
theorem reject2416 : ¬ Reader r2416 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3)))))) (.lam (.var 1))) (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3)))))) (.lam (.var 1)))) [(.app (.lam (.var 1)) (.lam (.var 1)))] [(.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3)))))) (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2416
def r2417 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2)))))) (.var 1))
theorem reject2417 : ¬ Reader r2417 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2))))) (.var 0)) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 2)))))) [(.lam (.var 1))] [(.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.lam (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2417
def r2418 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 0)) (.var 2))))) (.var 1))
theorem reject2418 : ¬ Reader r2418 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5,7],[5],[],[],[],[]] [[],[],[],[],[],[6],[],[5,7],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 0 [5]) (.lam 7 (.var 2 [5,7]) [7]) [6]) (.var 0 [5]) []) (.var 2 [0]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject2418
def r2419 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1))))) (.var 1))
theorem reject2419 : ¬ Reader r2419 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1)))) (.lam (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1))))) [(.lam (.var 1))] [(.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 0)) (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2419
def r2420 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 3)))))) (.var 1))
theorem reject2420 : ¬ Reader r2420 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 3))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 3)))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 3)))))) [(.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2420
def r2421 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 3)))))) (.var 1))
theorem reject2421 : ¬ Reader r2421 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 3))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 3)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 3)))))) [(.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2421
def r2422 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 3)))))) (.var 1))
theorem reject2422 : ¬ Reader r2422 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 3))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 3)))))) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 3)))))) [(.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2422
def r2423 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 0))))))) (.var 1))
theorem reject2423 : ¬ Reader r2423 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 0))))))) (.app (.var 0) (.lam (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2423
def r2424 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 2))))) (.var 1))
theorem reject2424 : ¬ Reader r2424 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 2)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.var 2))))) (.lam (.var 0))) [(.var 0)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2424
def r2425 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 0)))))) (.var 1))
theorem reject2425 : ¬ Reader r2425 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 0)))))) (.var 0)) [(.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2425
def r2426 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))) (.var 1))
theorem reject2426 : ¬ Reader r2426 := by
 exact BodyLetGrow.grow_reduct true [[1, 1]] [(.lam (.var 1))] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject2426
def r2427 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))) (.var 1))
theorem reject2427 : ¬ Reader r2427 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 4))))))) (.lam (.var 2))))) [(.lam (.var 1)), (.lam (.var 1))] [(.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2427
def r2428 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
theorem reject2428 : ¬ Reader r2428 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[0,1,7],[],[],[],[]] [[],[],[],[],[6],[6],[],[0,1,7],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 1 [0]) []) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [0,1,7]) [7]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject2428
def r2429 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
theorem reject2429 : ¬ Reader r2429 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[0,7],[],[],[],[]] [[],[],[],[],[],[6],[],[0,7],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 1 [0]) (.var 0 [5]) [0]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [0,7]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject2429
def r2430 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
theorem reject2430 : ¬ Reader r2430 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[0,5],[6,7],[],[],[],[]] [[],[],[],[],[0],[6],[0],[6,7],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.app (.var 0 [5]) (.var 1 [0]) [6]) [0]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [0,5]) (.var 1 [0,5]) [0,6]) (.lam 7 (.var 1 [6,7]) [7]) [0]) [6]) [5]) [0]) (.var 1 [1]) [0]) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) [0]) (by decide) (by decide) (by decide)
#print axioms reject2430
def r2431 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))) (.var 1))
theorem reject2431 : ¬ Reader r2431 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[0,7],[],[],[],[]] [[],[],[],[],[],[6],[],[0,7],[],[10],[]] (.app (.app (.app (.lam 4 (.app (.app (.app (.var 0 [5]) (.var 0 [5]) [6]) (.var 1 [0]) []) (.var 0 [5]) []) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [0,7]) [7]) []) [6]) [5]) []) (.var 1 [1]) []) (.lam 8 (.app (.app (.var 0 []) (.lam 9 (.lam 10 (.var 1 []) [10]) [9]) []) (.var 4 [3]) []) [8]) []) (by decide) (by decide) (by decide)
#print axioms reject2431
def r2432 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 1)) (.var 0))
theorem reject2432 : ¬ Reader r2432 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject2432
def r2433 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.var 1))))) (.var 0)) (.var 1))
theorem reject2433 : ¬ Reader r2433 := by
  exact replay_loop true [] 3 3 (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.app (.var 1) (.var 1)))))) (.lam (.app (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.var 0)) (.lam (.lam (.app (.var 1) (.var 1))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2433
def r2434 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 1))
theorem reject2434 : ¬ Reader r2434 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject2434
def r2435 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 1))
theorem reject2435 : ¬ Reader r2435 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.var 0)) [] [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2435
def r2436 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 1))
theorem reject2436 : ¬ Reader r2436 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.var 0))))), (.lam (.var 1)), (.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2436
def r2437 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 1))
theorem reject2437 : ¬ Reader r2437 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))), (.lam (.var 1)), (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))), (.lam (.var 1)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2437
def r2438 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 1))
theorem reject2438 : ¬ Reader r2438 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2438
def r2439 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 1))
theorem reject2439 : ¬ Reader r2439 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))), (.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2439
def r2440 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) (.var 1))
theorem reject2440 : ¬ Reader r2440 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2440
def r2441 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))) (.var 1))
theorem reject2441 : ¬ Reader r2441 := by
 exact mixed_reduct true [[1, 1], [1, 1], [1, 1, 1], [1, 1, 1, 2], [1, 1, 1, 2, 0], [1, 1, 1]] [[1, 1, 1, 2, 0], [1, 1, 1, 1]] (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 2)))) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 3)))))) (.var 1))) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 3)))) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 4)))))) (.var 2))))) (.var 0)) (.var 0)) [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject2441
def r2442 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject2442 : ¬ Reader r2442 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2, 2, 0], [1, 1], [1, 1, 1]] [[1, 1, 1, 2, 0], [1, 1, 1, 1]] (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 3))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 3)))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject2442
def r2443 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject2443 : ¬ Reader r2443 := by
 exact mixed_reduct true [[1, 1], [1, 1, 2, 0], [1, 1, 1], [1, 1, 1], [1, 1, 1], [1, 1]] [[1, 1, 2, 0], [1, 1, 1]] (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 3))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject2443
def r2444 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 0))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1))
theorem reject2444 : ¬ Reader r2444 := by
 exact mixed_reduct true [[1, 1], [1, 1, 1, 2, 0], [1, 1, 1]] [[1, 1, 1, 2, 0], [1, 1, 1, 1]] (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 2))))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 3))))))) (.lam (.app (.var 0) (.lam (.var 1))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject2444
def r2445 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.lam (.var 0))) (.var 1))
theorem reject2445 : ¬ Reader r2445 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2445
def r2446 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.lam (.var 0)))
theorem reject2446 : ¬ Reader r2446 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2446
def r2447 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject2447 : ¬ Reader r2447 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject2447
def r2448 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject2448 : ¬ Reader r2448 := by
  exact replay_loop true [] 4 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))) (.lam (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 1))))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2448
def r2449 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject2449 : ¬ Reader r2449 := by
 exact BodyLetGrow.grow_reduct true [[1, 1], [1, 1], [1, 1, 2, 0, 1, 1], [1, 1, 2, 0, 1, 1], [1, 1, 2, 0, 1], [1, 1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0], [1, 1, 1]] [(.var 0)] [] [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject2449
def r2450 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 1))
theorem reject2450 : ¬ Reader r2450 := by
  exact replay_loop true [] 2 5 (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))) (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 4)))))))) (.var 1)))) [(.var 0), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2450
def r2451 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))) (.var 1))
theorem reject2451 : ¬ Reader r2451 := by
  exact replay_loop true [] 3 3 (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))) (.app (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.var 0))))) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.var 0)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject2451
end Blc.HandlerLet.Slice40G50
