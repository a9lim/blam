import NonlinearCertificates
namespace Blc.FirstopNonlinear.Q3AllMissing
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r351 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.var 0)) (.var 1)))
theorem reject351 : ¬ Reader r351 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject351

def r352 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1)) (.var 0)))
theorem reject352 : ¬ Reader r352 := by
  exact absent_reduct true 9 1 (by decide) (by decide)
#print axioms reject352

def r353 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 2)) (.var 1)))
theorem reject353 : ¬ Reader r353 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject353

def r354 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 0)) (.var 1)) (.var 2)))
theorem reject354 : ¬ Reader r354 := by
  exact absent_reduct true 9 3 (by decide) (by decide)
#print axioms reject354

def r355 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 2)) (.var 0)))
theorem reject355 : ¬ Reader r355 := by
  exact absent_reduct true 11 1 (by decide) (by decide)
#print axioms reject355

def r356 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 0)) (.var 2)))
theorem reject356 : ¬ Reader r356 := by
  exact absent_reduct true 11 3 (by decide) (by decide)
#print axioms reject356

def r357 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1)) (.var 1)))
theorem reject357 : ¬ Reader r357 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject357

def r358 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 2)) (.var 1)))
theorem reject358 : ¬ Reader r358 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject358

def r359 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 1)) (.var 2)))
theorem reject359 : ¬ Reader r359 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject359

def r360 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.var 1)) (.lam (.var 0))))
theorem reject360 : ¬ Reader r360 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject360

def r361 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 2)) (.lam (.var 0))) (.var 1)))
theorem reject361 : ¬ Reader r361 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject361

def r362 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.var 2)) (.lam (.var 0))))
theorem reject362 : ¬ Reader r362 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject362

def r363 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.var 1)) (.lam (.var 0))) (.var 2)))
theorem reject363 : ¬ Reader r363 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject363

def r364 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.var 2)) (.var 1)))
theorem reject364 : ¬ Reader r364 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject364

def r365 : Term := (.lam (.app (.app (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.var 1)))))) (.lam (.var 0))) (.var 1)) (.var 2)))
theorem reject365 : ¬ Reader r365 := by
  exact absent_reduct true 7 3 (by decide) (by decide)
#print axioms reject365

end Blc.FirstopNonlinear.Q3AllMissing
