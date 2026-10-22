import NonlinearCertificates
namespace Blc.FirstopNonlinear.Q1RootMixed
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def r1334 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.app (.var 2) (.var 1))))
theorem reject1334 : ¬ Reader r1334 := by
  exact mixed_reduct true [[], [1], [1, 1, 1]] [[2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide)
#print axioms reject1334

def r1335 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.app (.var 1) (.var 2))))
theorem reject1335 : ¬ Reader r1335 := by
  exact mixed_reduct true [[], [1], [1, 1, 1]] [[2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide)
#print axioms reject1335

def r1336 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.var 2) (.var 1))))
theorem reject1336 : ¬ Reader r1336 := by
  exact mixed_reduct true [[], [1], [1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide)
#print axioms reject1336

def r1337 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.var 1) (.var 2))))
theorem reject1337 : ¬ Reader r1337 := by
  exact mixed_reduct true [[], [1], [1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide)
#print axioms reject1337

def r1344 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject1344 : ¬ Reader r1344 := by
  exact mixed_reduct true [[], [1], [1, 1, 1]] [[2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide)
#print axioms reject1344

def r1345 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject1345 : ¬ Reader r1345 := by
  exact mixed_reduct true [[], [2], [1], [1, 1, 1]] [[2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0)] (by decide) (by decide)
#print axioms reject1345

def r1346 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.var 2) (.lam (.var 2)))))
theorem reject1346 : ¬ Reader r1346 := by
  exact mixed_reduct true [[], [1], [1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.lam (.var 1)))] (by decide) (by decide)
#print axioms reject1346

def r1347 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.app (.lam (.var 2)) (.var 2))))
theorem reject1347 : ¬ Reader r1347 := by
  exact mixed_reduct true [[], [2], [1], [1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 0)] (by decide) (by decide)
#print axioms reject1347

def r1356 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 2)))
theorem reject1356 : ¬ Reader r1356 := by
  exact mixed_reduct true [[], [1], [1, 1, 1]] [[2, 0]] (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject1356

def r1357 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))))) (.var 2)))
theorem reject1357 : ¬ Reader r1357 := by
  exact mixed_reduct true [[], [1], [1, 1, 1]] [[2], [2]] (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1)))))) [] [(.var 0), (.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject1357

def r1755 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 2)))))) (.var 2)))
theorem reject1755 : ¬ Reader r1755 := by
  exact mixed_reduct true [[], [1], [1, 1, 1]] [[1], [1, 1], [1, 2]] (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1))))) [(.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 1)))) (.var 0))] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject1755

def r1764 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))) (.var 2)))
theorem reject1764 : ¬ Reader r1764 := by
  exact mixed_reduct true [[], [1], [1, 1, 1]] [[1, 2, 0]] (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))) [(.var 0)] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject1764

def r1487 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.app (.var 2) (.var 1))))
theorem reject1487 : ¬ Reader r1487 := by
  exact mixed_reduct true [[], [1], [1, 1, 1]] [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 1) (.var 0))] (by decide) (by decide)
#print axioms reject1487

def r1488 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) (.app (.var 1) (.var 2))))
theorem reject1488 : ¬ Reader r1488 := by
  exact mixed_reduct true [[], [1], [1, 1, 1]] [[2, 1], [2, 1], [2, 1, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.lam (.lam (.var 1))), (.var 3), (.app (.var 0) (.var 1))] (by decide) (by decide)
#print axioms reject1488

def r1905 : Term := (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))) (.var 2)))
theorem reject1905 : ¬ Reader r1905 := by
  exact mixed_reduct true [[], [1], [1, 1, 1]] [[2, 1, 1], [2, 1, 1, 1], [2, 1, 1, 1], [2, 1, 1], [2, 1, 1, 1, 1], [2, 1, 1, 1, 1, 1], [2, 1, 1, 1, 1], [2, 1, 1, 1], [2, 1, 1], [2, 1], [2]] (.app (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.var 0) (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))) (.var 0)) (.var 0)) (.var 1))))) [] [(.lam (.lam (.var 1))), (.var 3), (.var 1)] (by decide) (by decide)
#print axioms reject1905

end Blc.FirstopNonlinear.Q1RootMixed
