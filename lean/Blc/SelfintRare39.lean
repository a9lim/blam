import Blc.SelfintSourceRefutations

/- Three fixed identity-source clock pumps from floor38/Residuals39.lean. -/

namespace Blc.SelfintSingleObject.Rare39

open Term SelfintSharp SelfintLowerBound WeakHeadClock Round3Floor38

def e399 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 0)) (.var 1))))))

def corefour399 : Term := (.app (.app (.app (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 0)) (.var 1))))) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 0)) (.var 1))))))

def firstfour399 : Term := (.app (.app (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.lam (.var 1)))) (.var 0)) (.var 1)))) (.lam (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 0)) (.var 1))))))

def extrafour399 : List Term := [(.lam (.lam (.var 1)))]

def tailfour399 : List Term := [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))), (.var 1)]

theorem stepfour399 : weakStep corefour399 = some firstfour399 := by decide

theorem cyclefour399 : replay [[.left], []] firstfour399 = some (tApps corefour399 extrafour399) := by decide

theorem prefixfour399 : replay [[.left, .left], [.left, .left], [.left], [], [.left, .left, .left], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left]]
  (.app (.app e399 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps corefour399 tailfour399) := by decide

theorem excludedfour399 : ¬ IsSelfInterpreter e399 :=
  not_selfint_pump extrafour399 tailfour399 stepfour399 (replay_sound cyclefour399) (replay_sound prefixfour399)

def e1000 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1))))))

def corefour1000 : Term := (.app (.app (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))) (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1)))))))

def firstfour1000 : Term := (.app (.app (.lam (.lam (.app (.app (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1))))) (.var 0)) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1)))))) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))) (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1)))))))

def extrafour1000 : List Term := [(.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1)))))]

def tailfour1000 : List Term := [(.var 1)]

theorem stepfour1000 : weakStep corefour1000 = some firstfour1000 := by decide

theorem cyclefour1000 : replay [[.left], [], [.left, .left], [.left], []] firstfour1000 = some (tApps corefour1000 extrafour1000) := by decide

theorem prefixfour1000 : replay [[.left, .left], [.left, .left], [.left], []]
  (.app (.app e1000 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps corefour1000 tailfour1000) := by decide

theorem excludedfour1000 : ¬ IsSelfInterpreter e1000 :=
  not_selfint_pump extrafour1000 tailfour1000 stepfour1000 (replay_sound cyclefour1000) (replay_sound prefixfour1000)

def e553 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.var 0)))))

def corefive553 : Term := (.app (.app (.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.var 0)))) (.app (.var 1) (.var 0))))) (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.var 0)))) (.app (.var 1) (.var 0))))) (.app (.var 1) (.var 0)))))) (.lam (.var 0)))

def firstfive553 : Term := (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.var 0)))) (.app (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.var 0)))) (.app (.var 1) (.var 0))))) (.app (.var 1) (.var 0))))) (.var 0)))) (.lam (.var 0)))

def extrafive553 : List Term := []

def tailfive553 : List Term := [(.lam (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))]

theorem stepfive553 : weakStep corefive553 = some firstfive553 := by decide

theorem cyclefive553 : replay [[], [.right], [.right, .under], [.right, .under, .under, .right, .left], []] firstfive553 = some (tApps corefive553 extrafive553) := by decide

theorem prefixfive553 : replay [[.left, .left], [.left, .left], [.left, .left, .left]]
  (.app (.app e553 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps corefive553 tailfive553) := by decide

theorem excludedfive553 : ¬ IsSelfInterpreter e553 :=
  not_selfint_pump extrafive553 tailfive553 stepfive553 (replay_sound cyclefive553) (replay_sound prefixfive553)

end Blc.SelfintSingleObject.Rare39
