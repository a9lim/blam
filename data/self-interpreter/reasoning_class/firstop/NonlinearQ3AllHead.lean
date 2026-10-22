import NonlinearCertificates
namespace Blc.FirstopNonlinear.Q3AllHead
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r267 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)) (.var 0)))
theorem reject267 : ¬ Reader r267 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject267

def r268 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)) (.var 0)))
theorem reject268 : ¬ Reader r268 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject268

def r269 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 0)) (.var 2)))
theorem reject269 : ¬ Reader r269 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject269

def r273 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)) (.var 1)))
theorem reject273 : ¬ Reader r273 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject273

def r274 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1)) (.var 0)))
theorem reject274 : ¬ Reader r274 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject274

def r275 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)) (.var 1)))
theorem reject275 : ¬ Reader r275 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject275

def r276 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.var 2)))
theorem reject276 : ¬ Reader r276 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject276

def r277 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 2)) (.var 0)))
theorem reject277 : ¬ Reader r277 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject277

def r278 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.var 2)))
theorem reject278 : ¬ Reader r278 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject278

def r285 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)) (.lam (.var 0))))
theorem reject285 : ¬ Reader r285 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject285

def r286 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.lam (.var 0))) (.var 0)))
theorem reject286 : ¬ Reader r286 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject286

def r287 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)) (.lam (.var 0))))
theorem reject287 : ¬ Reader r287 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject287

def r288 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 0)) (.lam (.var 0))) (.var 2)))
theorem reject288 : ¬ Reader r288 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject288

def r289 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 2)) (.var 0)))
theorem reject289 : ¬ Reader r289 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject289

def r290 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.lam (.var 0))) (.var 0)) (.var 2)))
theorem reject290 : ¬ Reader r290 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject290

def r297 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1)) (.var 1)))
theorem reject297 : ¬ Reader r297 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject297

def r298 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 2)) (.var 1)))
theorem reject298 : ¬ Reader r298 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject298

def r299 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.var 1)) (.var 1)) (.var 2)))
theorem reject299 : ¬ Reader r299 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject299

def r429 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)) (.var 0)))
theorem reject429 : ¬ Reader r429 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject429

def r430 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)) (.var 0)))
theorem reject430 : ¬ Reader r430 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject430

def r431 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 0)) (.var 2)))
theorem reject431 : ¬ Reader r431 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject431

def r438 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 0)) (.var 1)))
theorem reject438 : ¬ Reader r438 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject438

def r439 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 2)) (.var 1)) (.var 0)))
theorem reject439 : ¬ Reader r439 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject439

def r440 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 2)) (.var 1)))
theorem reject440 : ¬ Reader r440 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject440

def r441 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 0)) (.var 1)) (.var 2)))
theorem reject441 : ¬ Reader r441 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject441

def r442 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 2)) (.var 0)))
theorem reject442 : ¬ Reader r442 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject442

def r443 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 0)))))) (.var 1)) (.var 0)) (.var 2)))
theorem reject443 : ¬ Reader r443 := by
  exact head_reduct true 4 (0,6) (by decide) (by decide)
#print axioms reject443

def r456 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 2)) (.var 0)) (.var 0)))
theorem reject456 : ¬ Reader r456 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject456

def r457 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 2)) (.var 0)))
theorem reject457 : ¬ Reader r457 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject457

def r458 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))))) (.var 0)) (.var 0)) (.var 2)))
theorem reject458 : ¬ Reader r458 := by
  exact head_reduct true 2 (0,6) (by decide) (by decide)
#print axioms reject458

end Blc.FirstopNonlinear.Q3AllHead
