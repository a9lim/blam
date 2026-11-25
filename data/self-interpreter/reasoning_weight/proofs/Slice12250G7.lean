import Flow
import Extras
import Recursor
import Lark
import Owl
import Strict
namespace Blc.HandlerLet.Slice12250G7
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000
def r336 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1)) (.lam (.var 0)))
theorem reject336 : ¬ Reader r336 := by
 intro hr
 have he : betaSteps [[1, 1, 1]] (.app r336 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.var 0)) [(.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject336
def r337 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 1)))))) (.var 1)) (.var 0))
theorem reject337 : ¬ Reader r337 := by
  exact replay_absent true [] 7 3 (by decide) (by decide)
#print axioms reject337
def r338 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 1)))))) (.var 0)) (.var 1))
theorem reject338 : ¬ Reader r338 := by
  exact replay_absent true [] 4 1 (by decide) (by decide)
#print axioms reject338
def r339 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))) (.var 1)) (.var 0))
theorem reject339 : ¬ Reader r339 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.var 2)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject339
def r340 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))))))) (.var 0)) (.var 1))
theorem reject340 : ¬ Reader r340 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) [(.lam (.var 2))] [(.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject340
def r341 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))))) (.var 1)) (.var 0))
theorem reject341 : ¬ Reader r341 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject341
def r342 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))))) (.var 0)) (.var 1))
theorem reject342 : ¬ Reader r342 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject342
def r343 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))))) (.var 1)) (.var 0))
theorem reject343 : ¬ Reader r343 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject343
def r344 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))))) (.var 0)) (.var 1))
theorem reject344 : ¬ Reader r344 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject344
def r345 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject345 : ¬ Reader r345 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject345
def r346 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject346 : ¬ Reader r346 := by
  exact replay_loop true [] 3 4 (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 2)))) (.lam (.var 0)))))))) (.lam (.var 0))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject346
def r347 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.app (.var 0) (.var 1)))))))) (.var 1)) (.var 0))
theorem reject347 : ¬ Reader r347 := by
  exact replay_absent true [] 3 1 (by decide) (by decide)
#print axioms reject347
def r348 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.app (.var 0) (.var 1)))))))) (.var 0)) (.var 1))
theorem reject348 : ¬ Reader r348 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.app (.var 0) (.var 1))))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.lam (.app (.var 0) (.var 1)))))))) (.lam (.lam (.app (.var 0) (.var 1))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject348
def r349 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0)))))))) (.var 1)) (.var 0))
theorem reject349 : ¬ Reader r349 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1], [1, 1]] [[1, 1], [1, 1, 2, 0]] (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0)))))))) (.lam (.app (.var 2) (.lam (.var 0))))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject349
def r350 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0)))))))) (.var 0)) (.var 1))
theorem reject350 : ¬ Reader r350 := by
 exact mixed_reduct true [[1, 1, 1], [1, 1, 1], [1, 1]] [[1, 1], [1, 1, 2, 0]] (.app (.app (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 1) (.lam (.var 0)))))))) (.lam (.app (.var 1) (.lam (.var 0))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))) [] [] (by decide) (by decide)
#print axioms reject350
def r351 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.lam (.var 1)))))))) (.var 1)) (.var 0))
theorem reject351 : ¬ Reader r351 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[1],[],[],[],[],[]] [[],[],[],[],[6],[6],[],[8],[],[],[11],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [1]) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) [1]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) []) (by decide) (by decide) (by decide)
#print axioms reject351
def r352 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.lam (.var 1)))))))) (.var 0)) (.var 1))
theorem reject352 : ¬ Reader r352 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[0],[],[],[],[],[]] [[],[],[],[],[6],[6],[],[8],[],[],[11],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.app (.var 0 [0]) (.lam 7 (.lam 8 (.var 1 []) [8]) [7]) [0]) []) [6]) [5]) [6]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) []) (by decide) (by decide) (by decide)
#print axioms reject352
def r353 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject353 : ¬ Reader r353 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))))) (.lam (.var 0))) [(.lam (.lam (.var 0)))] [(.lam (.var 2)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject353
def r354 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject354 : ¬ Reader r354 := by
  exact replay_loop true [] 3 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.var 1))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))))) (.lam (.var 0))) [(.lam (.lam (.var 0)))] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject354
def r355 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject355 : ¬ Reader r355 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[1,7],[],[],[],[],[]] [[],[],[],[],[6],[6],[],[1,7],[],[],[11],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [1,7]) [7]) []) (.lam 8 (.var 0 []) [8]) []) [6]) [5]) [6]) (.var 1 [1]) []) (.var 0 [0]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) []) (by decide) (by decide) (by decide)
#print axioms reject355
def r356 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject356 : ¬ Reader r356 := by
 exact Rootcert2Flow.reject [] [[],[],[],[],[5],[5],[0,7],[],[],[],[],[]] [[],[],[],[],[6],[6],[],[0,7],[],[],[11],[]] (.app (.app (.app (.app (.lam 4 (.app (.var 0 [5]) (.var 0 [5]) [6]) [4]) (.lam 5 (.lam 6 (.app (.app (.app (.var 1 [5]) (.var 1 [5]) [6]) (.lam 7 (.var 1 [0,7]) [7]) []) (.lam 8 (.var 0 []) [8]) []) [6]) [5]) [6]) (.var 0 [0]) []) (.var 1 [1]) []) (.lam 9 (.app (.app (.var 0 []) (.lam 10 (.lam 11 (.var 1 []) [11]) [10]) []) (.var 4 [3]) []) [9]) []) (by decide) (by decide) (by decide)
#print axioms reject356
def r357 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))))) (.var 1)) (.var 0))
theorem reject357 : ¬ Reader r357 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))))) (.var 1)) [(.lam (.lam (.var 1)))] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject357
def r358 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))))) (.var 0)) (.var 1))
theorem reject358 : ¬ Reader r358 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1)))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))))) (.var 0)) [(.lam (.lam (.var 1)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject358
def r359 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))))) (.var 1)) (.var 0))
theorem reject359 : ¬ Reader r359 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject359
def r360 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))))) (.var 0)) (.var 1))
theorem reject360 : ¬ Reader r360 := by
  exact replay_absent false [] 5 0 (by decide) (by decide)
#print axioms reject360
def r361 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))) (.var 1)) (.var 0))
theorem reject361 : ¬ Reader r361 := by
  exact replay_absent true [] 5 1 (by decide) (by decide)
#print axioms reject361
def r362 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))) (.var 0)) (.var 1))
theorem reject362 : ¬ Reader r362 := by
  exact replay_loop true [] 5 5 (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))) (.lam (.var 0)))))) (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))) (.lam (.var 0))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject362
def r363 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2))))) (.var 1))
theorem reject363 : ¬ Reader r363 := by
  exact replay_loop true [] 1 4 (.app (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2)))) (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1)))) (.lam (.var 2))))) [(.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject363
def r364 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.var 3))))))) (.var 1))
theorem reject364 : ¬ Reader r364 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.lam (.app (.var 0) (.var 2)))), (.lam (.lam (.app (.var 0) (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject364
def r365 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 2) (.lam (.var 1))))))) (.var 1))
theorem reject365 : ¬ Reader r365 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 1) (.lam (.var 1)))), (.lam (.app (.var 1) (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject365
def r366 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.var 3))))))) (.var 1))
theorem reject366 : ¬ Reader r366 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.lam (.var 2)))), (.lam (.app (.var 0) (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject366
def r367 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))))) (.var 1))
theorem reject367 : ¬ Reader r367 := by
  exact replay_loop true [] 5 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject367
def r368 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) (.lam (.var 2))))) (.var 1))
theorem reject368 : ¬ Reader r368 := by
  exact replay_loop true [] 4 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))))) [] [(.lam (.var 1)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject368
def r369 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.var 1)))) (.var 1))
theorem reject369 : ¬ Reader r369 := by
  exact replay_loop true [] 5 2 (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0))))) (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.var 0)))))) (.lam (.var 0))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject369
def r370 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.lam (.var 1)))))) (.var 1))
theorem reject370 : ¬ Reader r370 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject370
def r371 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 3))))) (.lam (.var 0))))) (.var 1))
theorem reject371 : ¬ Reader r371 := by
  exact replay_loop true [] 3 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 2))))) [(.lam (.var 1))] [(.lam (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject371
def r372 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.lam (.var 0))))))))) (.var 1))
theorem reject372 : ¬ Reader r372 := by
 exact BodyLetGrow.grow_reduct true [[1, 1]] [(.app (.var 0) (.lam (.lam (.var 0))))] [] [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject372
def r373 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.lam (.var 0))))))))) (.var 1))
theorem reject373 : ¬ Reader r373 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.lam (.var 0)))))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.lam (.lam (.var 0))))))))) (.app (.var 1) (.lam (.lam (.var 0))))))) [(.app (.var 0) (.lam (.lam (.var 0)))), (.app (.var 0) (.lam (.lam (.var 0))))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject373
def r374 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0)))) (.var 2)))))) (.var 1))
theorem reject374 : ¬ Reader r374 := by
 exact BodyLetGrow.grow_reduct true [[1, 1]] [(.lam (.lam (.var 0))), (.var 0)] [] [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject374
def r375 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.lam (.var 0)))))))) (.var 1))
theorem reject375 : ¬ Reader r375 := by
 exact BodyLetGrow.grow_reduct true [[1, 1]] [(.var 0), (.lam (.lam (.var 0)))] [] [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject375
def r376 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.var 2)))))) (.var 1))
theorem reject376 : ¬ Reader r376 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.var 2))))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 0)))) (.var 3)))))) (.lam (.lam (.var 0)))) (.var 1)))) [(.lam (.lam (.var 0))), (.var 0), (.lam (.lam (.var 0))), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject376
def r377 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.var 0)))))))) (.var 1))
theorem reject377 : ¬ Reader r377 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.var 0))))))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.lam (.lam (.var 0)))))))) (.var 1)) (.lam (.lam (.var 0)))))) [(.var 0), (.lam (.lam (.var 0))), (.var 0), (.lam (.lam (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject377
def r378 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.lam (.var 0)))))) (.var 1))
theorem reject378 : ¬ Reader r378 := by
 exact BodyLetGrow.grow_reduct true [[1, 1]] [(.var 0)] [(.lam (.lam (.var 0)))] [(.lam (.lam (.var 0)))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject378
def r379 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.lam (.var 0)))))) (.var 1))
theorem reject379 : ¬ Reader r379 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))) (.lam (.lam (.var 0)))))) (.var 1)))) [(.var 0), (.var 0), (.lam (.lam (.var 0)))] [(.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject379
def r380 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 2) (.lam (.var 0))))))) (.var 1))
theorem reject380 : ¬ Reader r380 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 2) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.lam (.app (.var 3) (.lam (.var 0))))))))) [(.lam (.app (.var 1) (.lam (.var 0))))] [(.lam (.app (.var 1) (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject380
def r381 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.app (.var 1) (.lam (.lam (.var 1))))))) (.var 1))
theorem reject381 : ¬ Reader r381 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.app (.var 1) (.lam (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.app (.var 2) (.lam (.lam (.var 1))))))))) [(.app (.var 0) (.lam (.lam (.var 1))))] [(.app (.var 0) (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject381
def r382 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.lam (.var 2))))) (.var 1))
theorem reject382 : ¬ Reader r382 := by
 exact BodyLetGrow.grow_reduct true [[1, 1]] [(.lam (.var 0))] [(.lam (.var 1))] [(.lam (.var 1))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject382
def r383 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.lam (.var 2))))) (.var 1))
theorem reject383 : ¬ Reader r383 := by
  exact replay_loop true [] 2 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.lam (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.lam (.var 3))))) (.lam (.var 0))))) [(.lam (.var 0)), (.lam (.var 0)), (.lam (.var 1))] [(.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject383
end Blc.HandlerLet.Slice12250G7
