import Blc.Selfint40Evidence.RegularBase
import Blc.Selfint40Evidence.Base

namespace Blc.Floor40.Parity
open Term SelfintLowerBound WeakHeadClock Round3Floor38
abbrev ap := Term.app
abbrev two (f x y : Term) := ap (ap f x) y
def swap (x : Term) : Term := .lam (.lam (two x (.var 0) (.var 1)))
def box (x : Term) : Term := .lam x
def n : Term := .lam (two (.var 0) (.lam (.lam (two (.var 2) (.var 0) (.var 1)))) (.lam (.var 1)))
theorem nc : Closed n := by decide
theorem swc {x} (hx : Closed x) : Closed (swap x) :=
  ⟨⟨closed_freeUnder hx 2, by decide⟩, by decide⟩
theorem bxc {x} (hx : Closed x) : Closed (box x) := closed_freeUnder hx 1
theorem ns {x} (hx : Closed x) : weakStep (ap n x) = some (two x (swap x) (box x)) := by
  simp [n,swap,box,two,ap,weakStep,contract,substDec,shift_closed _ _ hx]
theorem sw {x y z} (hx : Closed x) (hy : Closed y) :
    Betas (two (swap x) y z) (two x z y) := by
  have first : Beta (ap (swap x) y) (.lam (two x (.var 0) y)) := by
    simpa [swap,two,ap,contract,substDec,substDec_closed _ _ hx,shift_closed _ _ hy]
      using (Beta.beta (.lam (two x (.var 0) (.var 1))) y)
  apply Betas.head (Beta.appL z first)
  apply Betas.head (by
    change Beta (ap (.lam (two x (.var 0) y)) z) (two x z y)
    simpa [two,ap,contract,substDec,substDec_closed _ _ hx,substDec_closed _ _ hy] using
      (Beta.beta (two x (.var 0) y) z))
  exact .refl _
theorem bx {x} (hx : Closed x) (a : Term) : Beta (ap (box x) a) x := by
  simpa [box,ap,contract,substDec_closed _ _ hx] using (Beta.beta x a)
def Even (w : Term) : Prop :=
  Closed w ∧ ∀ p q, Closed p → Closed q → Betas (two w p q) (two n p q)
theorem even_n : Even n := ⟨nc,fun _ _ _ _ => .refl _⟩
theorem nextEven {w} (h : Even w) : Even (swap (swap w)) := by
  refine ⟨swc (swc h.1),?_⟩
  intro p q hp hq
  exact betas_trans (sw (swc h.1) hp) (betas_trans (sw h.1 hq) (h.2 _ _ hp hq))
theorem round {w} (h : Even w) :
    Betas (two w (swap w) (box w))
      (ap (two n (swap (swap w)) (box (box (swap w)))) (box w)) := by
  have hs := swc h.1
  have hss := swc hs
  have hk := bxc hs
  have hkk := bxc hk
  apply betas_trans (h.2 _ _ hs (bxc h.1))
  apply betas_trans (betas_appL (box w) (.head (weakStep_beta (ns hs)) (.refl _)))
  apply betas_trans (betas_appL (box w) (sw h.1 hss))
  apply betas_trans (betas_appL (box w) (h.2 _ _ hk hss))
  apply betas_trans (betas_appL (box w) (betas_appL (swap (swap w))
    (.head (weakStep_beta (ns hk)) (.refl _))))
  apply betas_trans (betas_appL (box w) (betas_appL (swap (swap w))
    (betas_appL (box (box (swap w))) (.head (bx hs _) (.refl _)))))
  apply betas_trans (betas_appL (box w) (sw h.1 hkk))
  exact betas_appL (box w) (h.2 _ _ hss hkk)
theorem noCount (k : Nat) : ∀ w, Even w → ¬ Count (ap n w) k := by
  induction k using Nat.strongRecOn with
  | ind k ih =>
    intro w hw hc
    obtain ⟨j,hj,hc⟩ := head_decreases hc (ns hw.1)
    obtain ⟨l,hl,hc⟩ := count_reduct j hc (round hw)
    obtain ⟨m,hm,hc⟩ := count_app_left hc
    obtain ⟨d,hd,hc⟩ := count_app_left hc
    exact ih d (by omega) _ (nextEven hw) hc
theorem excluded : ¬ IsSelfInterpreter e302887566022 := by
  intro he
  have hr : SelfintSharp.replay [[]] e302887566022 = some (ap n n) := by decide
  obtain ⟨k,hk⟩ := clocks_replay (rawCount he) hr
  exact noCount k n even_n hk
#print axioms excluded
end Blc.Floor40.Parity
