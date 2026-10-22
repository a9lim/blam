import Size38Sources
import Families38
namespace Blc.Round3Floor38.Size38
open Term SelfintSharp SelfintLowerBound WeakHeadClock
set_option maxRecDepth 100000
set_option maxHeartbeats 12000000


theorem e0_excluded : ¬ IsSelfInterpreter e0 :=
  OneArgument38.excluded .abc false


theorem e7_excluded : ¬ IsSelfInterpreter e7 :=
  OneArgument38.excluded .abc true


theorem e14_excluded : ¬ IsSelfInterpreter e14 :=
  OneArgument38.excluded .acb false


theorem e21_excluded : ¬ IsSelfInterpreter e21 :=
  OneArgument38.excluded .acb true


theorem e28_excluded : ¬ IsSelfInterpreter e28 :=
  OneArgument38.excluded .bac false


theorem e35_excluded : ¬ IsSelfInterpreter e35 :=
  OneArgument38.excluded .bac true


theorem e42_excluded : ¬ IsSelfInterpreter e42 :=
  OneArgument38.excluded .bca false


theorem e49_excluded : ¬ IsSelfInterpreter e49 :=
  OneArgument38.excluded .bca true


theorem e56_excluded : ¬ IsSelfInterpreter e56 :=
  OneArgument38.excluded .cab false


theorem e63_excluded : ¬ IsSelfInterpreter e63 :=
  OneArgument38.excluded .cab true


theorem e70_excluded : ¬ IsSelfInterpreter e70 :=
  OneArgument38.excluded .cba false


theorem e77_excluded : ¬ IsSelfInterpreter e77 :=
  OneArgument38.excluded .cba true


def core64 : Term := (.app (.app (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))) (.var 0))))) (.var 2)))) (.var 1))

def first64 : Term := (.app (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))) (.var 0))))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))) (.var 0))))) (.var 4)))) (.var 1)))) (.var 0))) (.var 1))

def extra64 : List Term := [(.var 1), (.var 1)]

def tail64 : List Term := [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))]

theorem step64 : weakStep core64 = some first64 := by decide

theorem cycle64 : replay [[], [.left], [.left, .left]] first64 = some (tApps core64 extra64) := by decide

theorem prefix64 : replay [[.left, .left], [.left, .left], [.left]]
  (.app (.app e64 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core64 tail64) := by decide

theorem e64_excluded : ¬ IsSelfInterpreter e64 :=
  not_selfint_pump extra64 tail64 step64 (replay_sound cycle64) (replay_sound prefix64)

def core97 : Term := (.app (.lam (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 3))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))))))) (.lam (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 3))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))))))))

def first97 : Term := (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 2))) (.app (.lam (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 3))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))))))) (.lam (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 3))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))

def extra97 : List Term := [(.app (.lam (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 3))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))))))) (.lam (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 3))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))))))), (.lam (.app (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 4))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))))))) (.lam (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 4))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))))) (.app (.lam (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 4))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))))))) (.lam (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 4))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))))))))) (.app (.var 0) (.var 0))) (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))]

def tail97 : List Term := [(.lam (.app (.app (.app (.lam (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 4))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))))))) (.lam (.app (.app (.lam (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))) (.app (.var 0) (.var 0))) (.var 4))) (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6)))))))))))) (.app (.var 0) (.var 0))) (.var 2)))]

theorem step97 : weakStep core97 = some first97 := by decide

theorem cycle97 : replay [[.left], [.left, .left], [.left]] first97 = some (tApps core97 extra97) := by decide

theorem prefix97 : replay [[.left, .left], [.left, .left], [.left], [.left], [], [], [.left], []]
  (.app (.app e97 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core97 tail97) := by decide

theorem e97_excluded : ¬ IsSelfInterpreter e97 :=
  not_selfint_pump extra97 tail97 step97 (replay_sound cycle97) (replay_sound prefix97)

def core118 : Term := (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))) (.var 2)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))

def first118 : Term := (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))) (.var 3)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))) (.var 4)) (.var 0)))) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))

def extra118 : List Term := [(.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))), (.var 1), (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))) (.var 3)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))))) (.var 0)))]

def tail118 : List Term := []

theorem step118 : weakStep core118 = some first118 := by decide

theorem cycle118 : replay [[], [], [.left, .left]] first118 = some (tApps core118 extra118) := by decide

theorem prefix118 : replay [[.left, .left], [.left, .left], [.left]]
  (.app (.app e118 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core118 tail118) := by decide

theorem e118_excluded : ¬ IsSelfInterpreter e118 :=
  not_selfint_pump extra118 tail118 step118 (replay_sound cycle118) (replay_sound prefix118)

def core123 : Term := (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))) (.var 0)) (.var 2)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))

def first123 : Term := (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))) (.var 0)) (.var 3))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))) (.var 0)) (.var 4)))) (.var 0)) (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))

def extra123 : List Term := [(.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))), (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))) (.var 0)) (.var 3)))) (.var 0)) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))), (.var 1)]

def tail123 : List Term := [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))), (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))) (.var 0)) (.var 3)))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))))))), (.var 1)]

theorem step123 : weakStep core123 = some first123 := by decide

theorem cycle123 : replay [[], [], [.left, .left]] first123 = some (tApps core123 extra123) := by decide

theorem prefix123 : replay [[.left, .left], [.left, .left], [.left], [.left], [], [], [.left, .left]]
  (.app (.app e123 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core123 tail123) := by decide

theorem e123_excluded : ¬ IsSelfInterpreter e123 :=
  not_selfint_pump extra123 tail123 step123 (replay_sound cycle123) (replay_sound prefix123)

def core135 : Term := (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))

def first135 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))) (.var 3)))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))) (.var 4))))) (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))

def extra135 : List Term := [(.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))))))) (.var 2)))), (.app (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))) (.var 1)) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))]

def tail135 : List Term := []

theorem step135 : weakStep core135 = some first135 := by decide

theorem cycle135 : replay [[], [], [], [.left, .left], [.left, .left], [.left]] first135 = some (tApps core135 extra135) := by decide

theorem prefix135 : replay [[.left, .left], [.left, .left], [.left]]
  (.app (.app e135 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core135 tail135) := by decide

theorem e135_excluded : ¬ IsSelfInterpreter e135 :=
  not_selfint_pump extra135 tail135 step135 (replay_sound cycle135) (replay_sound prefix135)

def core136 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 4) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 5) (.var 1)))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 4) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 5) (.var 1)))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))))))))

def first136 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 4) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 5) (.var 1)))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 4) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 5) (.var 1)))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))))))))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 4) (.var 1)))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))))

def extra136 : List Term := [(.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 4) (.var 1)))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))]

def tail136 : List Term := [(.lam (.app (.var 2) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))))))]

theorem step136 : weakStep core136 = some first136 := by decide

theorem cycle136 : replay [] first136 = some (tApps core136 extra136) := by decide

theorem prefix136 : replay [[.left, .left], [.left, .left], [.left], [.left, .right, .under, .right], [.left], [], []]
  (.app (.app e136 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core136 tail136) := by decide

theorem e136_excluded : ¬ IsSelfInterpreter e136 :=
  not_selfint_pump extra136 tail136 step136 (replay_sound cycle136) (replay_sound prefix136)

def core138 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))) (.var 3)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))) (.var 3)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))))))))

def first138 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))) (.var 3)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5))))))))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))) (.var 3)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))

def extra138 : List Term := [(.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))) (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))]

def tail138 : List Term := [(.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))), (.var 1)]

theorem step138 : weakStep core138 = some first138 := by decide

theorem cycle138 : replay [] first138 = some (tApps core138 extra138) := by decide

theorem prefix138 : replay [[.left, .left], [.left, .left], [.left], [.left], [], []]
  (.app (.app e138 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core138 tail138) := by decide

theorem e138_excluded : ¬ IsSelfInterpreter e138 :=
  not_selfint_pump extra138 tail138 step138 (replay_sound cycle138) (replay_sound prefix138)

def core141 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))))

def first141 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))) (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3)))))))))

def extra141 : List Term := [(.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))))) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))))))]

def tail141 : List Term := [(.app (.var 1) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))]

theorem step141 : weakStep core141 = some first141 := by decide

theorem cycle141 : replay [] first141 = some (tApps core141 extra141) := by decide

theorem prefix141 : replay [[.left, .left], [.left, .left], [.left], [.left], [], [.right, .under, .right], []]
  (.app (.app e141 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core141 tail141) := by decide

theorem e141_excluded : ¬ IsSelfInterpreter e141 :=
  not_selfint_pump extra141 tail141 step141 (replay_sound cycle141) (replay_sound prefix141)

def core143 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))))))

def first143 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 5)))))))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))))

def extra143 : List Term := [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))), (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))))]

def tail143 : List Term := [(.var 1), (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))]

theorem step143 : weakStep core143 = some first143 := by decide

theorem cycle143 : replay [] first143 = some (tApps core143 extra143) := by decide

theorem prefix143 : replay [[.left, .left], [.left, .left], [.left], [.left], [], []]
  (.app (.app e143 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core143 tail143) := by decide

theorem e143_excluded : ¬ IsSelfInterpreter e143 :=
  not_selfint_pump extra143 tail143 step143 (replay_sound cycle143) (replay_sound prefix143)

def core146 : Term := (.app (.app (.app (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1)) (.app (.app (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1)))

def first146 : Term := (.app (.app (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 0)))) (.var 1)) (.app (.app (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1)))

def extra146 : List Term := [(.app (.app (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 1)), (.lam (.lam (.app (.app (.app (.app (.app (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 3)) (.app (.app (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 3))) (.app (.app (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 3))) (.app (.app (.var 1) (.var 1)) (.var 0)))))]

def tail146 : List Term := [(.lam (.lam (.app (.app (.app (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 3)) (.app (.app (.var 1) (.var 1)) (.var 0))))), (.lam (.lam (.app (.app (.app (.app (.app (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 3)) (.app (.app (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 3))) (.lam (.lam (.app (.app (.app (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))) (.app (.app (.var 1) (.var 1)) (.var 0))))) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.var 5)) (.app (.app (.var 1) (.var 1)) (.var 0)))))) (.app (.app (.var 1) (.var 1)) (.var 0))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))]

theorem step146 : weakStep core146 = some first146 := by decide

theorem cycle146 : replay [[.left], [.left], [], []] first146 = some (tApps core146 extra146) := by decide

theorem prefix146 : replay [[.left, .left], [.left, .left], [.left, .left], [.left, .left], [.left], [.left], [.left, .left, .left], [.left, .left], [.left, .left], [.left], [.left]]
  (.app (.app e146 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core146 tail146) := by decide

theorem e146_excluded : ¬ IsSelfInterpreter e146 :=
  not_selfint_pump extra146 tail146 step146 (replay_sound cycle146) (replay_sound prefix146)

def core150 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.app (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0))))) (.app (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0)))))))

def first150 : Term := (.app (.app (.app (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0))))) (.app (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0)))))) (.lam (.lam (.app (.app (.app (.app (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0))))) (.app (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))))

def extra150 : List Term := [(.app (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0))))), (.lam (.lam (.app (.app (.app (.app (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0))))) (.app (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0))))]

def tail150 : List Term := [(.lam (.lam (.app (.app (.app (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (.lam (.app (.app (.lam (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) (.app (.var 1) (.var 1))) (.var 0)))) (.app (.var 1) (.var 1))) (.var 0))))) (.app (.var 1) (.var 1))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))]

theorem step150 : weakStep core150 = some first150 := by decide

theorem cycle150 : replay [[.left, .left], [.left], [.left, .left], [.left]] first150 = some (tApps core150 extra150) := by decide

theorem prefix150 : replay [[.left, .left], [.left, .left], [.left, .left], [.left, .left], [.left], [.left, .left], [.left, .left, .left], [.left, .left], [.left, .left, .left], [.left, .left]]
  (.app (.app e150 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core150 tail150) := by decide

theorem e150_excluded : ¬ IsSelfInterpreter e150 :=
  not_selfint_pump extra150 tail150 step150 (replay_sound cycle150) (replay_sound prefix150)

def core182 : Term := (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))) (.var 1)) (.var 0))))) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))) (.var 1)) (.var 0))))) (.var 1)) (.var 0)))))

def first182 : Term := (.app (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))) (.var 1)) (.var 0))))) (.var 1)) (.var 0)))))

def extra182 : List Term := [(.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))), (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))) (.var 1)) (.var 0))))) (.var 1)) (.var 0))))]

def tail182 : List Term := [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))]

theorem step182 : weakStep core182 = some first182 := by decide

theorem cycle182 : replay [[], [.left, .left], [.left, .left], [.left]] first182 = some (tApps core182 extra182) := by decide

theorem prefix182 : replay [[.left, .left], [.left, .left], [.left, .left], [.left, .left], [.left]]
  (.app (.app e182 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core182 tail182) := by decide

theorem e182_excluded : ¬ IsSelfInterpreter e182 :=
  not_selfint_pump extra182 tail182 step182 (replay_sound cycle182) (replay_sound prefix182)

def core192 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)))))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))) (.var 0)) (.var 1))))) (.var 1))

def first192 : Term := (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))) (.var 0)) (.var 1)))) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))) (.var 0)) (.var 1))))) (.var 0)) (.var 1))))) (.var 1))

def extra192 : List Term := [(.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1)))))), (.lam (.lam (.app (.app (.app (.var 1) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))) (.var 0)) (.var 1))))) (.var 0)) (.var 1))))]

def tail192 : List Term := [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))]

theorem step192 : weakStep core192 = some first192 := by decide

theorem cycle192 : replay [[.left], [], [.left, .left], [.left]] first192 = some (tApps core192 extra192) := by decide

theorem prefix192 : replay [[.left, .left], [.left, .left]]
  (.app (.app e192 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core192 tail192) := by decide

theorem e192_excluded : ¬ IsSelfInterpreter e192 :=
  not_selfint_pump extra192 tail192 step192 (replay_sound cycle192) (replay_sound prefix192)

def core196 : Term := (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) (.var 0)))))) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) (.var 1))

def first196 : Term := (.app (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) (.var 0)))))) (.var 0)))) (.var 1))

def extra196 : List Term := [(.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) (.var 0)))))) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) (.var 1)) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) (.var 0)))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) (.var 0)))))) (.var 3))) (.var 0))))))]

def tail196 : List Term := [(.app (.app (.app (.app (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) (.var 0)))))) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) (.var 1)) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))]

theorem step196 : weakStep core196 = some first196 := by decide

theorem cycle196 : replay [[], [], [.left, .left], [.left, .left], [.left], [.left], []] first196 = some (tApps core196 extra196) := by decide

theorem prefix196 : replay [[.left, .left], [.left, .left], [.left, .left], [.left, .left], [.left], [.left], []]
  (.app (.app e196 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core196 tail196) := by decide

theorem e196_excluded : ¬ IsSelfInterpreter e196 :=
  not_selfint_pump extra196 tail196 step196 (replay_sound cycle196) (replay_sound prefix196)

def core200 : Term := (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))) (.var 0)))))) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))) (.var 0)))))) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))) (.var 0))))))

def first200 : Term := (.app (.lam (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))) (.var 0)))))) (.var 0))) (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))) (.var 0)))))) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))) (.var 0))))))

def extra200 : List Term := [(.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))) (.var 0))))))) (.var 0)))), (.app (.app (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))) (.var 0)))))) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))))) (.var 0)))))]

def tail200 : List Term := [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))]

theorem step200 : weakStep core200 = some first200 := by decide

theorem cycle200 : replay [[], [.left], [.left, .left], [.left, .left], [.left], [.left, .left], [.left]] first200 = some (tApps core200 extra200) := by decide

theorem prefix200 : replay [[.left, .left], [.left, .left], [.left, .left], [.left, .left], [.left], [.left, .left], [.left]]
  (.app (.app e200 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core200 tail200) := by decide

theorem e200_excluded : ¬ IsSelfInterpreter e200 :=
  not_selfint_pump extra200 tail200 step200 (replay_sound cycle200) (replay_sound prefix200)

def core202 : Term := (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) (.var 0))))) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) (.var 0))))) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) (.var 0)))))

def first202 : Term := (.app (.lam (.app (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) (.var 0))))) (.var 0)))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) (.var 0))))) (.var 0))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) (.var 0))))) (.var 0))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) (.var 0)))))

def extra202 : List Term := [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))) (.var 0))))]

def tail202 : List Term := [(.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))]

theorem step202 : weakStep core202 = some first202 := by decide

theorem cycle202 : replay [[]] first202 = some (tApps core202 extra202) := by decide

theorem prefix202 : replay [[.left, .left], [.left, .left], [.left, .left], [.left, .left], [.left], [.left, .left, .left], [.left, .left]]
  (.app (.app e202 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core202 tail202) := by decide

theorem e202_excluded : ¬ IsSelfInterpreter e202 :=
  not_selfint_pump extra202 tail202 step202 (replay_sound cycle202) (replay_sound prefix202)

def core212 : Term := (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))))))))) (.var 1))

def first212 : Term := (.app (.lam (.app (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))))))) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))))))))) (.var 0)) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))))))) (.var 1))

def extra212 : List Term := [(.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))))))]

def tail212 : List Term := [(.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2)))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))]

theorem step212 : weakStep core212 = some first212 := by decide

theorem cycle212 : replay [[]] first212 = some (tApps core212 extra212) := by decide

theorem prefix212 : replay [[.left, .left], [.left, .left], [.left, .left], [.left, .left], [.left]]
  (.app (.app e212 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core212 tail212) := by decide

theorem e212_excluded : ¬ IsSelfInterpreter e212 :=
  not_selfint_pump extra212 tail212 step212 (replay_sound cycle212) (replay_sound prefix212)

def core693 : Term := (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))) (.var 1))

def first693 : Term := (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))) (.var 1))))) (.var 1))

def extra693 : List Term := [(.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))]

def tail693 : List Term := [(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))]

theorem step693 : weakStep core693 = some first693 := by decide

theorem cycle693 : replay [[], [], [.left]] first693 = some (tApps core693 extra693) := by decide

theorem prefix693 : replay [[.left, .left], [.left, .left, .left], [.left, .left]]
  (.app (.app e693 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core693 tail693) := by decide

theorem e693_excluded : ¬ IsSelfInterpreter e693 :=
  not_selfint_pump extra693 tail693 step693 (replay_sound cycle693) (replay_sound prefix693)

def core765 : Term := (.app (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))) (.var 3)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))

def first765 : Term := (.app (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))) (.var 4))))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))) (.var 5)))))) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))

def extra765 : List Term := [(.lam (.app (.app (.var 0) (.app (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))) (.var 2)))]

def tail765 : List Term := []

theorem step765 : weakStep core765 = some first765 := by decide

theorem cycle765 : replay [[], [], [.left]] first765 = some (tApps core765 extra765) := by decide

theorem prefix765 : replay [[.left, .left], [.left, .left], [.left], [.left, .left], [.left]]
  (.app (.app e765 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (tApps core765 tail765) := by decide

theorem e765_excluded : ¬ IsSelfInterpreter e765 :=
  not_selfint_pump extra765 tail765 step765 (replay_sound cycle765) (replay_sound prefix765)

def core919 : Term := (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.lam (.var 2))) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.lam (.var 2))) (.var 0))))))

def first919 : Term := (.lam (.lam (.app (.app (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.lam (.var 2))) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.lam (.var 2))) (.var 0)))))) (.lam (.var 2))) (.var 0))))

def paramA919 : Term := (.lam (.var 2))

def paramB919 : Term := (.var 0)

theorem closedCore919 : Closed core919 := by decide

theorem closedFirst919 : Closed first919 := by decide

theorem step919 : weakStep core919 = some first919 := by decide

theorem cycle919 : replay [[.left], []] (.app (.app first919 (.var 1)) (.var 0)) =
  some (.app (.app core919 paramA919) paramB919) := by decide

theorem prefix919 : replay [[.left, .left]]
  (.app (.app e919 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (.app (.app core919 (.var 1)) (SelfintControl.quoteI (.var 0))) := by decide

theorem e919_excluded : ¬ IsSelfInterpreter e919 := by
  intro he
  have hn := betas_preserve_hasNormalForm (replay_sound prefix919) (identity_has_normal_form he)
  obtain ⟨k, hk⟩ := hasNormalForm_count hn
  exact fixed_family2_no_count core919 first919 paramA919 paramB919
    closedCore919 closedFirst919 step919 (replay_sound cycle919) k _ _ hk

def core920 : Term := (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.lam (.var 1)))))))

def first920 : Term := (.lam (.lam (.app (.app (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.lam (.var 1)))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.lam (.var 1))))))) (.var 1)) (.lam (.var 1)))))

def paramA920 : Term := (.var 1)

def paramB920 : Term := (.lam (.var 1))

theorem closedCore920 : Closed core920 := by decide

theorem closedFirst920 : Closed first920 := by decide

theorem step920 : weakStep core920 = some first920 := by decide

theorem cycle920 : replay [[.left], []] (.app (.app first920 (.var 1)) (.var 0)) =
  some (.app (.app core920 paramA920) paramB920) := by decide

theorem prefix920 : replay [[.left, .left]]
  (.app (.app e920 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (.app (.app core920 (.var 1)) (SelfintControl.quoteI (.var 0))) := by decide

theorem e920_excluded : ¬ IsSelfInterpreter e920 := by
  intro he
  have hn := betas_preserve_hasNormalForm (replay_sound prefix920) (identity_has_normal_form he)
  obtain ⟨k, hk⟩ := hasNormalForm_count hn
  exact fixed_family2_no_count core920 first920 paramA920 paramB920
    closedCore920 closedFirst920 step920 (replay_sound cycle920) k _ _ hk

def core934 : Term := (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.lam (.var 1))) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.lam (.var 1))) (.var 1))))))

def first934 : Term := (.lam (.lam (.app (.app (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.lam (.var 1))) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.lam (.var 1))) (.var 1)))))) (.lam (.var 1))) (.var 1))))

def paramA934 : Term := (.lam (.var 1))

def paramB934 : Term := (.var 1)

theorem closedCore934 : Closed core934 := by decide

theorem closedFirst934 : Closed first934 := by decide

theorem step934 : weakStep core934 = some first934 := by decide

theorem cycle934 : replay [[.left], []] (.app (.app first934 (.var 1)) (.var 0)) =
  some (.app (.app core934 paramA934) paramB934) := by decide

theorem prefix934 : replay [[.left, .left]]
  (.app (.app e934 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (.app (.app core934 (.var 1)) (SelfintControl.quoteI (.var 0))) := by decide

theorem e934_excluded : ¬ IsSelfInterpreter e934 := by
  intro he
  have hn := betas_preserve_hasNormalForm (replay_sound prefix934) (identity_has_normal_form he)
  obtain ⟨k, hk⟩ := hasNormalForm_count hn
  exact fixed_family2_no_count core934 first934 paramA934 paramB934
    closedCore934 closedFirst934 step934 (replay_sound cycle934) k _ _ hk

def core935 : Term := (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.lam (.var 2)))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.lam (.var 2)))))))

def first935 : Term := (.lam (.lam (.app (.app (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.lam (.var 2)))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.lam (.var 2))))))) (.var 0)) (.lam (.var 2)))))

def paramA935 : Term := (.var 0)

def paramB935 : Term := (.lam (.var 2))

theorem closedCore935 : Closed core935 := by decide

theorem closedFirst935 : Closed first935 := by decide

theorem step935 : weakStep core935 = some first935 := by decide

theorem cycle935 : replay [[.left], []] (.app (.app first935 (.var 1)) (.var 0)) =
  some (.app (.app core935 paramA935) paramB935) := by decide

theorem prefix935 : replay [[.left, .left]]
  (.app (.app e935 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (.app (.app core935 (.var 1)) (SelfintControl.quoteI (.var 0))) := by decide

theorem e935_excluded : ¬ IsSelfInterpreter e935 := by
  intro he
  have hn := betas_preserve_hasNormalForm (replay_sound prefix935) (identity_has_normal_form he)
  obtain ⟨k, hk⟩ := hasNormalForm_count hn
  exact fixed_family2_no_count core935 first935 paramA935 paramB935
    closedCore935 closedFirst935 step935 (replay_sound cycle935) k _ _ hk

def core723 : Term := (.app (.app (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.var 1)) (.app (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.var 1)))

def first723 : Term := (.app (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 3) (.var 0))))) (.app (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.var 1)))

theorem scopeCore723 : FreeUnder 2 core723 := by decide

theorem scopeFirst723 : FreeUnder 2 first723 := by decide

theorem step723 : weakStep core723 = some first723 := by decide

theorem cycle723 : replay [[.left], []] (.app first723 (.var 2)) =
  some (.app core723 (.app (.var 1) (.var 2))) := by decide

theorem cycle723_all (x : Term) : Betas (.app first723 x) (.app core723 (.app (.var 1) x)) := by
  have h := SelfintControl.betas_subst (replay_sound cycle723) 2 x
  change Betas (substDec 2 x (.app first723 (.var 2)))
    (substDec 2 x (.app core723 (.app (.var 1) (.var 2)))) at h
  simpa only [substDec, if_pos rfl, ite_true, if_false, Nat.reduceEqDiff, Nat.reduceGT,
    substDec_of_freeUnder _ _ _ scopeCore723, substDec_of_freeUnder _ _ _ scopeFirst723] using h

theorem prefix723 : replay [[.left, .left], [.left, .left, .left], [.left, .left], [.left], [.left, .left], [.left], []]
  (.app (.app e723 (.var 1)) (SelfintControl.quoteI (.var 0))) =
  some (.app core723 (.app (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))) := by decide

theorem e723_excluded : ¬ IsSelfInterpreter e723 := by
  intro he
  have hn := betas_preserve_hasNormalForm (replay_sound prefix723) (identity_has_normal_form he)
  obtain ⟨k, hk⟩ := hasNormalForm_count hn
  exact family_no_count core723 first723 (Term.app (.var 1)) step723 cycle723_all k _ hk

def proved : List Term := [e0, e7, e14, e21, e28, e35, e42, e49, e56, e63, e64, e70, e77, e97, e118, e123, e135, e136, e138, e141, e143, e146, e150, e182, e192, e196, e200, e202, e212, e693, e723, e765, e919, e920, e934, e935]

theorem proved_excluded (e : Term) (h : e ∈ proved) : ¬ IsSelfInterpreter e := by
  simp only [proved, List.mem_cons, List.not_mem_nil, or_false] at h
  rcases h with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact e0_excluded
  · exact e7_excluded
  · exact e14_excluded
  · exact e21_excluded
  · exact e28_excluded
  · exact e35_excluded
  · exact e42_excluded
  · exact e49_excluded
  · exact e56_excluded
  · exact e63_excluded
  · exact e64_excluded
  · exact e70_excluded
  · exact e77_excluded
  · exact e97_excluded
  · exact e118_excluded
  · exact e123_excluded
  · exact e135_excluded
  · exact e136_excluded
  · exact e138_excluded
  · exact e141_excluded
  · exact e143_excluded
  · exact e146_excluded
  · exact e150_excluded
  · exact e182_excluded
  · exact e192_excluded
  · exact e196_excluded
  · exact e200_excluded
  · exact e202_excluded
  · exact e212_excluded
  · exact e693_excluded
  · exact e723_excluded
  · exact e765_excluded
  · exact e919_excluded
  · exact e920_excluded
  · exact e934_excluded
  · exact e935_excluded

#print axioms proved_excluded

end Blc.Round3Floor38.Size38
