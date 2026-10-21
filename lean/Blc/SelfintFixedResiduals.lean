/- Fixed beta-exact failure witnesses for application parsing. -/
import Blc.SelfintResidualControl

namespace Blc.SelfintFixedResiduals
open Term SelfintControl SelfintRemainderChain SelfintResidualControl SelfintSharp
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

def dupSource : Term := .lam (.app (.var 0) (.var 0))


def tower : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0)))))))
def towerResult : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2)))))
def towerTrace : List (List Direction) := [[], [], [.left], [.left, .left], [.left], [], [.left], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left], [.left], [], [.left], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left], [.left], [], [.left], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left], [.left], [], [.left], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left], [.left, .left, .left], [.left, .left], [.left], [.left, .left], [.left, .left, .left], [.left, .left], [.left], []]
theorem tower_checked : replay towerTrace
    (.app tower (streamOf (blcCode dupSource) (.var 0))) = some towerResult := by decide
theorem tower_not_remainder : ¬ IsRemainder tower := by
  intro h
  have hs := h.2 dupSource (by decide) (.var 0)
  have ht := join_of_betas (replay_sound tower_checked)
  exact lam_not_join_var _ _ (join_trans (join_symm ht) hs)


def near66 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))) (.var 0)) (.var 0)))))) (.var 0)))))))
def near66Result : Term := (.lam (.var 1))
def near66Trace : List (List Direction) := [[], [], [.left], [.left, .left], [.left], [.left], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left], [.left], [], [.left, .left, .left], [.left, .left], [.left], [.left, .left], [.left], [.left], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left], [.left], [], [.left, .left, .left], [.left, .left], [.left, .left], [.left, .left, .left], [.left, .left], [.left, .left], [.left, .left, .left, .left, .left], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left], [.left], [], [.left], [], [], [.left, .left, .left], [.left, .left], [.left], [.left, .left], [.left], []]
theorem near66_checked : replay near66Trace
    (.app near66 (streamOf (blcCode dupSource) (.var 0))) = some near66Result := by decide
theorem near66_not_remainder : ¬ IsRemainder near66 := by
  intro h
  have hs := h.2 dupSource (by decide) (.var 0)
  have ht := join_of_betas (replay_sound near66_checked)
  exact lam_not_join_var _ _ (join_trans (join_symm ht) hs)


def tail65 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))))))) (.var 0)))))))
def tail65Result : Term := (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 2)))))
def tail65Trace : List (List Direction) := [[], [], [.left], [.left, .left], [.left], [.left], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left], [.left], [], [.left], [.left, .left], [.left], [.left], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left], [.left], [], [.left], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left], [.left], [.left], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left], [.left, .left, .left], [.left, .left], [.left], []]
theorem tail65_checked : replay tail65Trace
    (.app tail65 (streamOf (blcCode dupSource) (.var 0))) = some tail65Result := by decide
theorem tail65_not_remainder : ¬ IsRemainder tail65 := by
  intro h
  have hs := h.2 dupSource (by decide) (.var 0)
  have ht := join_of_betas (replay_sound tail65_checked)
  exact lam_not_join_var _ _ (join_trans (join_symm ht) hs)


def handler65 : Term := (.lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0)))) (.var 0)))))) (.var 0)))))))
def handler65Result : Term := (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 1)))) (.var 1)) (.var 0)))
def handler65Trace : List (List Direction) := [[], [], [.left], [.left, .left], [.left], [.left], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left], [.left], [], [.left], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left], [.left], [.left], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left], [.left], [], [.left], [.left, .left, .left, .left], [.left, .left, .left], [.left, .left, .left], [.left, .left], [.left, .left], [.left], [], [.left], [], [], [.left, .left, .left], [.left, .left], [.left], [], [.under, .left], [.under, .left, .left, .left, .left], [.under, .left, .left, .left]]
theorem handler65_checked : replay handler65Trace
    (.app handler65 (streamOf (blcCode dupSource) (.var 0))) = some handler65Result := by decide
theorem handler65_not_remainder : ¬ IsRemainder handler65 := by
  intro h
  have hs := h.2 dupSource (by decide) (.var 0)
  have ht := join_of_betas (replay_sound handler65_checked)
  exact lam_not_join_var _ _ (join_trans (join_symm ht) hs)

end Blc.SelfintFixedResiduals
