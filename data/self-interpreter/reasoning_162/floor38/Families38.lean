/- Universal two-argument pumps, with constructive instantiation of open traces. -/
import OneArgument38
namespace Blc.Round3Floor38
open Term SelfintSharp SelfintLowerBound WeakHeadClock
set_option maxHeartbeats 8000000

def inst2 (t x y : Term) : Term := substDec 0 y (substDec 1 (shift 1 0 x) t)
theorem inst2_app (f a x y : Term) :
    inst2 (.app f a) x y = .app (inst2 f x y) (inst2 a x y) := rfl
theorem inst2_first (x y : Term) : inst2 (.var 1) x y = x := by
  simp [inst2, substDec, substDec_shift]
theorem inst2_second (x y : Term) : inst2 (.var 0) x y = y := by
  simp [inst2, substDec]
theorem inst2_closed {t : Term} (h : Closed t) (x y : Term) : inst2 t x y = t := by
  simp only [inst2, substDec_closed _ _ h]
theorem inst2_betas {t u : Term} (h : Betas t u) (x y : Term) :
    Betas (inst2 t x y) (inst2 u x y) :=
  SelfintControl.betas_subst (SelfintControl.betas_subst h 1 (shift 1 0 x)) 0 y

theorem family2_no_count (f g : Term) (next1 next2 : Term → Term → Term)
    (hs : weakStep f = some g)
    (hr : ∀ x y, Betas (.app (.app g x) y)
      (.app (.app f (next1 x y)) (next2 x y))) :
    ∀ n x y, ¬ Count (.app (.app f x) y) n := by
  intro n
  induction n using Nat.strongRecOn with
  | ind n ih =>
      intro x y hn
      obtain ⟨k, hk, hck⟩ := head_decreases hn (weak_app (weak_app hs x) y)
      obtain ⟨j, hj, hcj⟩ := count_reduct k hck (hr x y)
      exact ih j (by omega) (next1 x y) (next2 x y) hcj

theorem fixed_family2_no_count (f g p q : Term) (hf : Closed f) (hg : Closed g)
    (hs : weakStep f = some g)
    (hr : Betas (.app (.app g (.var 1)) (.var 0)) (.app (.app f p) q)) :
    ∀ n x y, ¬ Count (.app (.app f x) y) n := by
  apply family2_no_count f g (inst2 p) (inst2 q) hs
  intro x y
  have hi := inst2_betas hr x y
  simpa only [inst2_app, inst2_closed hf, inst2_closed hg, inst2_first, inst2_second] using hi

theorem fixed_family1_no_count (f g p : Term) (hf : Closed f) (hg : Closed g)
    (hs : weakStep f = some g)
    (hr : Betas (.app g (.var 0)) (.app f p)) :
    ∀ n x, ¬ Count (.app f x) n := by
  apply family_no_count f g (fun x => substDec 0 x p) hs
  intro x
  have hi := SelfintControl.betas_subst hr 0 x
  simpa only [substDec, substDec_closed _ _ hf, substDec_closed _ _ hg,
    if_pos rfl, ite_true] using hi

end Blc.Round3Floor38
