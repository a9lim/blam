import Flow
import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.XBasic36
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r10324 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.var 1)))
theorem reject10324 : ¬ Reader r10324 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10324

def r10325 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) (.lam (.var 1))) (.var 1))
theorem reject10325 : ¬ Reader r10325 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 0))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10325

def r10326 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.var 0))
theorem reject10326 : ¬ Reader r10326 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.var 1)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10326

def r10327 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.var 1))))) (.var 0)) (.var 1))
theorem reject10327 : ¬ Reader r10327 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.var 1)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10327

def r10328 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.var 1)))
theorem reject10328 : ¬ Reader r10328 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.lam (.var 0))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10328

def r10329 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.lam (.var 1))))) (.var 0))
theorem reject10329 : ¬ Reader r10329 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.lam (.lam (.var 1)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10329

def r10330 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 1)))))
theorem reject10330 : ¬ Reader r10330 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10330

def r10331 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 0))))
theorem reject10331 : ¬ Reader r10331 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.var 1)), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10331

def r10332 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.lam (.lam (.var 1))))) (.var 1))
theorem reject10332 : ¬ Reader r10332 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.lam (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10332

def r10333 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 1)))))
theorem reject10333 : ¬ Reader r10333 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10333

def r10334 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 1))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject10334 : ¬ Reader r10334 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 1)), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10334

def r10335 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject10335 : ¬ Reader r10335 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 1)), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10335

def r10420 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject10420 : ¬ Reader r10420 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 0)), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10420

def r10421 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject10421 : ¬ Reader r10421 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 0)), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10421

def r10422 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 1)))) (.var 1)) (.lam (.var 1)))
theorem reject10422 : ¬ Reader r10422 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 1))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10422

def r10423 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 1)))) (.lam (.var 1))) (.var 1))
theorem reject10423 : ¬ Reader r10423 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 1))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10423

def r10424 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.var 2))))) (.var 1)) (.var 0))
theorem reject10424 : ¬ Reader r10424 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.var 2)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10424

def r10425 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.var 2))))) (.var 0)) (.var 1))
theorem reject10425 : ¬ Reader r10425 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.var 2)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10425

def r10426 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.lam (.lam (.var 2))))
theorem reject10426 : ¬ Reader r10426 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.var 0)), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10426

def r10427 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.var 1)))) (.lam (.var 1)))
theorem reject10427 : ¬ Reader r10427 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.lam (.var 1))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10427

def r10428 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.lam (.var 2))))) (.var 0))
theorem reject10428 : ¬ Reader r10428 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.lam (.lam (.var 2)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10428

def r10429 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 2)))))
theorem reject10429 : ¬ Reader r10429 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10429

def r10430 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.var 1))))
theorem reject10430 : ¬ Reader r10430 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.var 1)), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10430

def r10431 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.var 2)))) (.lam (.var 0)))
theorem reject10431 : ¬ Reader r10431 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.lam (.var 2))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10431

def r10432 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.lam (.lam (.var 2))))) (.var 1))
theorem reject10432 : ¬ Reader r10432 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.lam (.lam (.lam (.var 2)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10432

def r10433 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 2)))))
theorem reject10433 : ¬ Reader r10433 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10433

def r10434 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 1))) (.lam (.lam (.var 1)))) (.var 1))
theorem reject10434 : ¬ Reader r10434 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 1)), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10434

def r10435 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.var 1))))
theorem reject10435 : ¬ Reader r10435 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 1)), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10435

def r10436 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 2)))) (.lam (.var 0))) (.var 1))
theorem reject10436 : ¬ Reader r10436 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 2))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10436

def r10437 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 2)))) (.var 1)) (.lam (.var 0)))
theorem reject10437 : ¬ Reader r10437 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 2))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10437

def r11323 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0)))))
theorem reject11323 : ¬ Reader r11323 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11323

def r11324 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1))
theorem reject11324 : ¬ Reader r11324 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 0)), (.app (.var 0) (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11324

def r11325 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject11325 : ¬ Reader r11325 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 0))), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11325

def r11326 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject11326 : ¬ Reader r11326 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 0))), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11326

def r11327 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject11327 : ¬ Reader r11327 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.app (.var 0) (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11327

def r11328 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject11328 : ¬ Reader r11328 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.app (.var 0) (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11328

def r11329 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject11329 : ¬ Reader r11329 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.app (.var 0) (.lam (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11329

def r11330 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject11330 : ¬ Reader r11330 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.app (.var 0) (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11330

def r11331 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.lam (.lam (.var 0)))))
theorem reject11331 : ¬ Reader r11331 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.var 0)), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11331

def r11332 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.var 0)))) (.app (.var 0) (.lam (.var 0))))
theorem reject11332 : ¬ Reader r11332 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.lam (.var 0))), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11332

def r11333 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.app (.var 0) (.lam (.var 0)))))) (.var 0))
theorem reject11333 : ¬ Reader r11333 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.lam (.app (.var 0) (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11333

def r11334 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 0))
theorem reject11334 : ¬ Reader r11334 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.app (.var 0) (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11334

def r11335 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.var 0))))))
theorem reject11335 : ¬ Reader r11335 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.lam (.app (.var 0) (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11335

def r11336 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.lam (.var 0))))))
theorem reject11336 : ¬ Reader r11336 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11336

def r11337 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 0))))
theorem reject11337 : ¬ Reader r11337 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11337

def r11338 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.var 0)))
theorem reject11338 : ¬ Reader r11338 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11338

def r11339 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.var 0)))))) (.var 1))
theorem reject11339 : ¬ Reader r11339 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.lam (.lam (.app (.var 0) (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11339

def r11340 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.app (.var 0) (.lam (.lam (.var 0)))))) (.var 1))
theorem reject11340 : ¬ Reader r11340 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.lam (.app (.var 0) (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11340

def r11341 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.app (.var 0) (.lam (.var 0))))))
theorem reject11341 : ¬ Reader r11341 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.lam (.app (.var 0) (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11341

def r11342 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.var 0))))))
theorem reject11342 : ¬ Reader r11342 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11342

def r11343 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.var 0) (.lam (.var 0)))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11343 : ¬ Reader r11343 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.app (.var 0) (.lam (.var 0))), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11343

def r11344 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11344 : ¬ Reader r11344 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11344

def r11345 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.var 0) (.lam (.lam (.var 0))))) (.lam (.var 0))) (.var 1))
theorem reject11345 : ¬ Reader r11345 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.app (.var 0) (.lam (.lam (.var 0)))), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11345

def r11346 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.var 0) (.lam (.lam (.var 0))))) (.var 1)) (.lam (.var 0)))
theorem reject11346 : ¬ Reader r11346 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.app (.var 0) (.lam (.lam (.var 0)))), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11346

def r11635 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0))
theorem reject11635 : ¬ Reader r11635 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11635

def r11636 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1))
theorem reject11636 : ¬ Reader r11636 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11636

def r11637 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 0))
theorem reject11637 : ¬ Reader r11637 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11637

def r11638 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))
theorem reject11638 : ¬ Reader r11638 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11638

def r11639 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.var 0)))))) (.var 1))
theorem reject11639 : ¬ Reader r11639 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11639

def r11640 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.app (.var 0) (.var 0))))))
theorem reject11640 : ¬ Reader r11640 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.app (.var 0) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11640

def r11836 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject11836 : ¬ Reader r11836 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11836

def r11837 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject11837 : ¬ Reader r11837 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.var 0)))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11837

def r11838 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.app (.var 0) (.var 0)))
theorem reject11838 : ¬ Reader r11838 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.lam (.lam (.var 0)))), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11838

def r11839 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))
theorem reject11839 : ¬ Reader r11839 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.app (.var 0) (.lam (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11839

def r11840 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.var 0))
theorem reject11840 : ¬ Reader r11840 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.app (.var 0) (.lam (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11840

def r11841 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 0)))))
theorem reject11841 : ¬ Reader r11841 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11841

def r11842 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.lam (.lam (.var 0))))))
theorem reject11842 : ¬ Reader r11842 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.app (.var 0) (.lam (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11842

def r11843 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.var 1))
theorem reject11843 : ¬ Reader r11843 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.app (.var 0) (.lam (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11843

def r11844 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject11844 : ¬ Reader r11844 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.app (.var 0) (.lam (.lam (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11844

def r11845 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.var 0) (.lam (.lam (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject11845 : ¬ Reader r11845 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.app (.var 0) (.lam (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11845

def r11846 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject11846 : ¬ Reader r11846 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.app (.var 0) (.var 0)), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11846

def r11847 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject11847 : ¬ Reader r11847 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11847

def r11959 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 1)) (.var 0))
theorem reject11959 : ¬ Reader r11959 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.lam (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11959

def r11960 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0)) (.var 1))
theorem reject11960 : ¬ Reader r11960 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.lam (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11960

def r11961 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 0))
theorem reject11961 : ¬ Reader r11961 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.lam (.lam (.lam (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11961

def r11962 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.var 0))))))
theorem reject11962 : ¬ Reader r11962 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11962

def r11963 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.lam (.lam (.lam (.var 0)))))) (.var 1))
theorem reject11963 : ¬ Reader r11963 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.lam (.lam (.lam (.lam (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11963

def r11964 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.var 0))))))
theorem reject11964 : ¬ Reader r11964 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.lam (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11964

def r12037 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.lam (.var 1)))
theorem reject12037 : ¬ Reader r12037 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12037

def r12038 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.var 0))))) (.lam (.var 1))) (.var 1))
theorem reject12038 : ¬ Reader r12038 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.var 0)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12038

def r12039 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 1)) (.var 0))
theorem reject12039 : ¬ Reader r12039 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.lam (.var 1))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12039

def r12040 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0)) (.var 1))
theorem reject12040 : ¬ Reader r12040 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.lam (.var 1))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12040

def r12041 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.lam (.var 1)))
theorem reject12041 : ¬ Reader r12041 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12041

def r12042 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 0))
theorem reject12042 : ¬ Reader r12042 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.lam (.lam (.lam (.var 1))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12042

def r12043 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.var 1))))))
theorem reject12043 : ¬ Reader r12043 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.lam (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12043

def r12044 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.lam (.var 0)))))
theorem reject12044 : ¬ Reader r12044 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.var 1)), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12044

def r12045 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.lam (.lam (.lam (.var 1)))))) (.var 1))
theorem reject12045 : ¬ Reader r12045 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.lam (.lam (.lam (.lam (.var 1))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12045

def r12046 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.var 1))))))
theorem reject12046 : ¬ Reader r12046 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.lam (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12046

def r12047 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 1))) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject12047 : ¬ Reader r12047 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 1)), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12047

def r12048 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject12048 : ¬ Reader r12048 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 1)), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12048

def r12178 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1)) (.lam (.lam (.var 2))))
theorem reject12178 : ¬ Reader r12178 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 0))), (.var 1), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12178

def r12179 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) (.lam (.lam (.var 2)))) (.var 1))
theorem reject12179 : ¬ Reader r12179 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 0))), (.lam (.lam (.var 2))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12179

def r12180 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.var 1))))) (.var 1)) (.lam (.var 1)))
theorem reject12180 : ¬ Reader r12180 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.var 1)))), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12180

def r12181 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.var 1))))) (.lam (.var 1))) (.var 1))
theorem reject12181 : ¬ Reader r12181 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.var 1)))), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12181

def r12182 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.lam (.var 2)))))) (.var 1)) (.var 0))
theorem reject12182 : ¬ Reader r12182 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.lam (.var 2))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12182

def r12183 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.lam (.var 2)))))) (.var 0)) (.var 1))
theorem reject12183 : ¬ Reader r12183 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.lam (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12183

def r12184 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.var 0)))) (.lam (.lam (.var 2))))
theorem reject12184 : ¬ Reader r12184 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.lam (.var 0))), (.lam (.lam (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12184

def r12185 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.lam (.var 1))))) (.lam (.var 1)))
theorem reject12185 : ¬ Reader r12185 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.lam (.lam (.var 1)))), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12185

def r12186 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.lam (.lam (.var 2)))))) (.var 0))
theorem reject12186 : ¬ Reader r12186 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.lam (.lam (.lam (.var 2))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12186

def r12187 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.var 2))))))
theorem reject12187 : ¬ Reader r12187 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.lam (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12187

def r12188 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 1))) (.lam (.lam (.lam (.var 1)))))
theorem reject12188 : ¬ Reader r12188 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.var 1)), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12188

def r12189 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.var 2)))) (.lam (.lam (.var 0))))
theorem reject12189 : ¬ Reader r12189 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.lam (.var 2))), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12189

def r12190 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.lam (.lam (.lam (.var 2)))))) (.var 1))
theorem reject12190 : ¬ Reader r12190 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.lam (.lam (.lam (.lam (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12190

def r12191 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.var 2))))))
theorem reject12191 : ¬ Reader r12191 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.lam (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12191

def r12192 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 1))) (.lam (.lam (.lam (.var 1))))) (.var 1))
theorem reject12192 : ¬ Reader r12192 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 1)), (.lam (.lam (.lam (.var 1)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12192

def r12193 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 1))) (.var 1)) (.lam (.lam (.lam (.var 1)))))
theorem reject12193 : ¬ Reader r12193 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.var 1)), (.var 1), (.lam (.lam (.lam (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12193

def r12194 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 2)))) (.lam (.lam (.var 0)))) (.var 1))
theorem reject12194 : ¬ Reader r12194 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 2))), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12194

def r12195 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 2)))) (.var 1)) (.lam (.lam (.var 0))))
theorem reject12195 : ¬ Reader r12195 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 2))), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12195

def r12340 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.lam (.lam (.var 0))))))) (.var 1)) (.var 0))
theorem reject12340 : ¬ Reader r12340 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.lam (.lam (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12340

def r12341 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.lam (.lam (.lam (.var 0))))))) (.var 0)) (.var 1))
theorem reject12341 : ¬ Reader r12341 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.lam (.lam (.lam (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12341

def r12342 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.lam (.lam (.lam (.var 0))))))) (.var 0))
theorem reject12342 : ¬ Reader r12342 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.lam (.lam (.lam (.lam (.lam (.var 0)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12342

def r12343 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.lam (.lam (.var 0)))))))
theorem reject12343 : ¬ Reader r12343 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 1), (.var 0), (.lam (.lam (.lam (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12343

def r12344 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.lam (.lam (.lam (.lam (.var 0))))))) (.var 1))
theorem reject12344 : ¬ Reader r12344 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.lam (.lam (.lam (.lam (.lam (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12344

def r12345 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.lam (.lam (.var 0)))))))
theorem reject12345 : ¬ Reader r12345 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.var 1), (.lam (.lam (.lam (.lam (.lam (.var 0)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject12345

def r1325 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 1)) (.var 0)) (.var 0))
theorem reject1325 : ¬ Reader r1325 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1325

def r1326 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 0)) (.var 1)) (.var 0))
theorem reject1326 : ¬ Reader r1326 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1326

def r1327 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 0)) (.var 0)) (.var 1))
theorem reject1327 : ¬ Reader r1327 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1327

def r3150 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
theorem reject3150 : ¬ Reader r3150 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.var 0), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3150

def r3151 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
theorem reject3151 : ¬ Reader r3151 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.app (.var 0) (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3151

def r3152 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject3152 : ¬ Reader r3152 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3152

def r3153 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
theorem reject3153 : ¬ Reader r3153 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3153

def r3154 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
theorem reject3154 : ¬ Reader r3154 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3154

def r3155 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
theorem reject3155 : ¬ Reader r3155 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.app (.var 0) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3155

def r6613 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject6613 : ¬ Reader r6613 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6613

def r6614 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject6614 : ¬ Reader r6614 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6614

def r6615 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject6615 : ¬ Reader r6615 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6615

def r6616 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject6616 : ¬ Reader r6616 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6616

def r6617 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject6617 : ¬ Reader r6617 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6617

def r6618 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject6618 : ¬ Reader r6618 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6618

def r7315 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject7315 : ¬ Reader r7315 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7315

def r7316 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject7316 : ¬ Reader r7316 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7316

def r7317 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject7317 : ¬ Reader r7317 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7317

def r7318 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject7318 : ¬ Reader r7318 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7318

def r7319 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject7319 : ¬ Reader r7319 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7319

def r7320 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject7320 : ¬ Reader r7320 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7320

def r10750 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject10750 : ¬ Reader r10750 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10750

def r10751 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject10751 : ¬ Reader r10751 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10751

def r10752 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject10752 : ¬ Reader r10752 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10752

def r10753 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject10753 : ¬ Reader r10753 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10753

def r10754 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject10754 : ¬ Reader r10754 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10754

def r10755 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject10755 : ¬ Reader r10755 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject10755

def r11371 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject11371 : ¬ Reader r11371 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11371

def r11372 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject11372 : ¬ Reader r11372 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11372

def r11373 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject11373 : ¬ Reader r11373 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11373

def r11374 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject11374 : ¬ Reader r11374 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11374

def r11375 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject11375 : ¬ Reader r11375 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11375

def r11376 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject11376 : ¬ Reader r11376 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11376

def r11377 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject11377 : ¬ Reader r11377 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11377

def r11378 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject11378 : ¬ Reader r11378 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11378

def r11379 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject11379 : ¬ Reader r11379 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11379

def r11380 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject11380 : ¬ Reader r11380 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11380

def r11381 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject11381 : ¬ Reader r11381 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11381

def r11382 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject11382 : ¬ Reader r11382 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 0))))) [] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11382

def r1434 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject1434 : ¬ Reader r1434 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1434

def r1435 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject1435 : ¬ Reader r1435 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1435

def r1436 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject1436 : ¬ Reader r1436 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1436

def r1437 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject1437 : ¬ Reader r1437 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1437

def r1438 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject1438 : ¬ Reader r1438 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1438

def r1439 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject1439 : ¬ Reader r1439 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1439

def r3679 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject3679 : ¬ Reader r3679 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3679

def r3680 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject3680 : ¬ Reader r3680 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3680

def r3681 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0))
theorem reject3681 : ¬ Reader r3681 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3681

def r3682 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0))))
theorem reject3682 : ¬ Reader r3682 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 1), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3682

def r3683 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3683 : ¬ Reader r3683 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3683

def r3684 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0))))
theorem reject3684 : ¬ Reader r3684 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 0), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3684

def r5447 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject5447 : ¬ Reader r5447 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5447

def r5448 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject5448 : ¬ Reader r5448 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5448

def r5449 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0)))
theorem reject5449 : ¬ Reader r5449 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 1), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5449

def r5450 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0))))
theorem reject5450 : ¬ Reader r5450 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 1), (.var 0), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5450

def r5451 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0))
theorem reject5451 : ¬ Reader r5451 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5451

def r5452 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0)))
theorem reject5452 : ¬ Reader r5452 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5452

def r5453 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject5453 : ¬ Reader r5453 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 0), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5453

def r5454 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject5454 : ¬ Reader r5454 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 0), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5454

def r5455 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject5455 : ¬ Reader r5455 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5455

def r5456 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject5456 : ¬ Reader r5456 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.app (.var 0) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5456

def r5457 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject5457 : ¬ Reader r5457 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.app (.var 0) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5457

def r5458 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject5458 : ¬ Reader r5458 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5458

def r7099 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject7099 : ¬ Reader r7099 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7099

def r7100 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject7100 : ¬ Reader r7100 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7100

def r7101 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject7101 : ¬ Reader r7101 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7101

def r7102 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject7102 : ¬ Reader r7102 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7102

def r7103 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject7103 : ¬ Reader r7103 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7103

def r7104 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject7104 : ¬ Reader r7104 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7104

def r7941 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject7941 : ¬ Reader r7941 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7941

def r7942 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject7942 : ¬ Reader r7942 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7942

def r7943 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject7943 : ¬ Reader r7943 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7943

def r7944 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject7944 : ¬ Reader r7944 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7944

def r7945 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject7945 : ¬ Reader r7945 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7945

def r7946 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject7946 : ¬ Reader r7946 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7946

def r7947 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject7947 : ¬ Reader r7947 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7947

def r7948 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject7948 : ¬ Reader r7948 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7948

def r7949 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject7949 : ¬ Reader r7949 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7949

def r7950 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject7950 : ¬ Reader r7950 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7950

def r7951 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject7951 : ¬ Reader r7951 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7951

def r7952 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject7952 : ¬ Reader r7952 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7952

def r11653 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject11653 : ¬ Reader r11653 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11653

def r11654 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject11654 : ¬ Reader r11654 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.lam (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11654

def r11655 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.var 0))
theorem reject11655 : ¬ Reader r11655 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 1), (.lam (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11655

def r11656 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 0)))))
theorem reject11656 : ¬ Reader r11656 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 1), (.var 0), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11656

def r11657 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject11657 : ¬ Reader r11657 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 0), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11657

def r11658 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject11658 : ¬ Reader r11658 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2, 2], [2, 2], []] (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) [(.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))))))] [(.var 0), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11658

def r1452 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject1452 : ¬ Reader r1452 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1452

def r1453 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject1453 : ¬ Reader r1453 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1453

def r1454 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject1454 : ¬ Reader r1454 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1454

def r1455 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject1455 : ¬ Reader r1455 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1455

def r1456 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject1456 : ¬ Reader r1456 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1456

def r1457 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject1457 : ¬ Reader r1457 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1457

def r3697 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject3697 : ¬ Reader r3697 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3697

def r3698 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject3698 : ¬ Reader r3698 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3698

def r3699 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 0))
theorem reject3699 : ¬ Reader r3699 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 1), (.lam (.app (.var 0) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3699

def r3700 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.var 0))))
theorem reject3700 : ¬ Reader r3700 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 1), (.var 0), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3700

def r3701 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1))
theorem reject3701 : ¬ Reader r3701 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 0), (.lam (.app (.var 0) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3701

def r3702 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0))))
theorem reject3702 : ¬ Reader r3702 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 0), (.var 1), (.lam (.app (.var 0) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject3702

def r5483 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject5483 : ¬ Reader r5483 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.var 0)), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5483

def r5484 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1))
theorem reject5484 : ¬ Reader r5484 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.var 0)), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5484

def r5485 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 0)))
theorem reject5485 : ¬ Reader r5485 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 1), (.lam (.var 0)), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5485

def r5486 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.app (.var 0) (.lam (.var 0))))
theorem reject5486 : ¬ Reader r5486 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 1), (.var 0), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5486

def r5487 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 0))
theorem reject5487 : ¬ Reader r5487 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 1), (.app (.var 0) (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5487

def r5488 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.app (.var 0) (.var 0))) (.lam (.var 0)))
theorem reject5488 : ¬ Reader r5488 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 1), (.app (.var 0) (.var 0)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5488

def r5489 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0))))
theorem reject5489 : ¬ Reader r5489 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 0), (.var 1), (.app (.var 0) (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5489

def r5490 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1))
theorem reject5490 : ¬ Reader r5490 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 0), (.app (.var 0) (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5490

def r5491 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject5491 : ¬ Reader r5491 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.app (.var 0) (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5491

def r5492 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject5492 : ¬ Reader r5492 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.app (.var 0) (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5492

def r5493 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1))
theorem reject5493 : ¬ Reader r5493 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.app (.var 0) (.var 0)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5493

def r5494 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0)))
theorem reject5494 : ¬ Reader r5494 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5494

def r7117 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject7117 : ¬ Reader r7117 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7117

def r7118 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject7118 : ¬ Reader r7118 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7118

def r7119 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject7119 : ¬ Reader r7119 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7119

def r7120 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject7120 : ¬ Reader r7120 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7120

def r7121 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject7121 : ¬ Reader r7121 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7121

def r7122 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject7122 : ¬ Reader r7122 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7122

def r7977 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.var 1)) (.lam (.var 1)))
theorem reject7977 : ¬ Reader r7977 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.var 0)), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7977

def r7978 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.var 0))) (.lam (.var 1))) (.var 1))
theorem reject7978 : ¬ Reader r7978 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.var 0)), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7978

def r7979 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 1)) (.var 0))
theorem reject7979 : ¬ Reader r7979 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7979

def r7980 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1))
theorem reject7980 : ¬ Reader r7980 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.lam (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7980

def r7981 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 0))) (.lam (.var 1)))
theorem reject7981 : ¬ Reader r7981 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 1), (.lam (.var 0)), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7981

def r7982 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.var 1)))) (.var 0))
theorem reject7982 : ¬ Reader r7982 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 1), (.lam (.lam (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7982

def r7983 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.var 1))))
theorem reject7983 : ¬ Reader r7983 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 1), (.var 0), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7983

def r7984 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.var 1))) (.lam (.var 0)))
theorem reject7984 : ¬ Reader r7984 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 1), (.lam (.var 1)), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7984

def r7985 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.var 1)))) (.var 1))
theorem reject7985 : ¬ Reader r7985 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 0), (.lam (.lam (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7985

def r7986 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.var 1))))
theorem reject7986 : ¬ Reader r7986 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 0), (.var 1), (.lam (.lam (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7986

def r7987 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.lam (.var 0))) (.var 1))
theorem reject7987 : ¬ Reader r7987 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.var 1)), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7987

def r7988 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.var 1))) (.var 1)) (.lam (.var 0)))
theorem reject7988 : ¬ Reader r7988 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.var 1)), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject7988

def r11671 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 0))))) (.var 1)) (.var 0))
theorem reject11671 : ¬ Reader r11671 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.lam (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11671

def r11672 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.var 0))))) (.var 0)) (.var 1))
theorem reject11672 : ¬ Reader r11672 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.lam (.lam (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11672

def r11673 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.lam (.lam (.lam (.var 0))))) (.var 0))
theorem reject11673 : ¬ Reader r11673 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 1), (.lam (.lam (.lam (.var 0)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11673

def r11674 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0)) (.lam (.lam (.lam (.var 0)))))
theorem reject11674 : ¬ Reader r11674 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 1), (.var 0), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11674

def r11675 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 0)) (.lam (.lam (.lam (.var 0))))) (.var 1))
theorem reject11675 : ¬ Reader r11675 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 0), (.lam (.lam (.lam (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11675

def r11676 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1)) (.lam (.lam (.lam (.var 0)))))
theorem reject11676 : ¬ Reader r11676 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))))] [(.var 0), (.var 1), (.lam (.lam (.lam (.var 0)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11676

def r1548 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject1548 : ¬ Reader r1548 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1548

def r1549 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject1549 : ¬ Reader r1549 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1549

def r1550 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject1550 : ¬ Reader r1550 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1550

def r5963 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
theorem reject5963 : ¬ Reader r5963 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 1), (.var 0), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5963

def r5964 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
theorem reject5964 : ¬ Reader r5964 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 1), (.app (.var 0) (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5964

def r5965 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject5965 : ¬ Reader r5965 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 0), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5965

def r5966 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
theorem reject5966 : ¬ Reader r5966 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 0), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5966

def r5967 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
theorem reject5967 : ¬ Reader r5967 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.app (.var 0) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5967

def r5968 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
theorem reject5968 : ¬ Reader r5968 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.app (.var 0) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject5968

def r6795 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject6795 : ¬ Reader r6795 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6795

def r6796 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject6796 : ¬ Reader r6796 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6796

def r6797 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject6797 : ¬ Reader r6797 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6797

def r6798 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject6798 : ¬ Reader r6798 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6798

def r6799 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject6799 : ¬ Reader r6799 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6799

def r6800 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject6800 : ¬ Reader r6800 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6800

def r8376 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject8376 : ¬ Reader r8376 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8376

def r8377 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject8377 : ¬ Reader r8377 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8377

def r8378 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject8378 : ¬ Reader r8378 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8378

def r8379 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject8379 : ¬ Reader r8379 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8379

def r8380 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject8380 : ¬ Reader r8380 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8380

def r8381 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject8381 : ¬ Reader r8381 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8381

def r11115 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject11115 : ¬ Reader r11115 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11115

def r11116 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject11116 : ¬ Reader r11116 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11116

def r11117 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject11117 : ¬ Reader r11117 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11117

def r11118 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 1)) (.var 0)) (.lam (.lam (.var 0))))
theorem reject11118 : ¬ Reader r11118 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 1), (.var 0), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11118

def r11119 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.lam (.lam (.var 0)))) (.var 1))
theorem reject11119 : ¬ Reader r11119 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 0), (.lam (.lam (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11119

def r11120 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 1)) (.lam (.lam (.var 0))))
theorem reject11120 : ¬ Reader r11120 := by
 exact mixed_reduct true [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1]] [[1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 1)))))))] [(.app (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.lam (.var 1))))))), (.var 0), (.var 1), (.lam (.lam (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11120

def r1650 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.var 0)) (.var 0))
theorem reject1650 : ¬ Reader r1650 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1650

def r1651 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 1)) (.var 0))
theorem reject1651 : ¬ Reader r1651 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1651

def r1652 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 0)) (.var 1))
theorem reject1652 : ¬ Reader r1652 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject1652

def r6194 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))
theorem reject6194 : ¬ Reader r6194 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6194

def r6195 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))
theorem reject6195 : ¬ Reader r6195 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.app (.var 0) (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6195

def r6196 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))
theorem reject6196 : ¬ Reader r6196 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.app (.var 0) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6196

def r6197 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))
theorem reject6197 : ¬ Reader r6197 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6197

def r6198 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))
theorem reject6198 : ¬ Reader r6198 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.app (.var 0) (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6198

def r6199 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))
theorem reject6199 : ¬ Reader r6199 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.app (.var 0) (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6199

def r6985 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.var 1)) (.var 0))
theorem reject6985 : ¬ Reader r6985 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6985

def r6986 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 0))) (.var 0)) (.var 1))
theorem reject6986 : ¬ Reader r6986 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.var 0)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6986

def r6987 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.lam (.var 0))) (.var 0))
theorem reject6987 : ¬ Reader r6987 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.lam (.var 0)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6987

def r6988 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 0)))
theorem reject6988 : ¬ Reader r6988 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6988

def r6989 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.lam (.var 0))) (.var 1))
theorem reject6989 : ¬ Reader r6989 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6989

def r6990 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 0)))
theorem reject6990 : ¬ Reader r6990 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.lam (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject6990

def r8637 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.var 0)) (.lam (.var 1)))
theorem reject8637 : ¬ Reader r8637 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.var 0), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8637

def r8638 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.lam (.var 1))) (.var 0))
theorem reject8638 : ¬ Reader r8638 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.lam (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8638

def r8639 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 1)) (.lam (.var 1)))
theorem reject8639 : ¬ Reader r8639 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.var 1), (.lam (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8639

def r8640 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.lam (.var 1))) (.var 1))
theorem reject8640 : ¬ Reader r8640 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 0), (.lam (.var 1)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8640

def r8641 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 1))) (.var 1)) (.var 0))
theorem reject8641 : ¬ Reader r8641 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.var 1)), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8641

def r8642 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.lam (.var 1))) (.var 0)) (.var 1))
theorem reject8642 : ¬ Reader r8642 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.var 1)), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject8642

def r11437 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.var 0)))) (.var 1)) (.var 0))
theorem reject11437 : ¬ Reader r11437 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.lam (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11437

def r11438 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.lam (.lam (.var 0)))) (.var 0)) (.var 1))
theorem reject11438 : ¬ Reader r11438 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.lam (.lam (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11438

def r11439 : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.var 1)) (.lam (.lam (.var 0)))) (.var 0))
theorem reject11439 : ¬ Reader r11439 := by
 exact mixed_reduct true [[1, 1, 1, 1]] [[2], [2, 1], [2], [1], [1, 2], [1, 1]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.lam (.var 0)))))) [(.lam (.var 0))] [(.var 1), (.lam (.lam (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide)
#print axioms reject11439
end Blc.HandlerLet.XBasic36
