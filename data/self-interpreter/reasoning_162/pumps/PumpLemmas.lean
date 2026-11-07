import Blc.WeakHeadClock
namespace Blc.Round3Pumps
open Term SelfintLowerBound WeakHeadClock
set_option maxRecDepth 8192
set_option maxHeartbeats 2000000

def apps (t : Term) : List Term → Term
  | [] => t
  | a :: as => apps (.app t a) as

theorem apps_append (t : Term) (as bs : List Term) :
    apps t (as ++ bs) = apps (apps t as) bs := by
  induction as generalizing t with
  | nil => rfl
  | cons a as ih => exact ih (.app t a)

def Advance (t u : Term) : Prop := ∃ v, weakStep t = some v ∧ Betas v u

theorem advance_apps {t u : Term} (h : Advance t u) (as : List Term) :
    Advance (apps t as) (apps u as) := by
  induction as generalizing t u with
  | nil => exact h
  | cons a as ih =>
    obtain ⟨v, hv, hr⟩ := h
    exact ih ⟨_, weak_app hv a, betas_appL a hr⟩

theorem invariant_no_count (Inv : Term → Prop)
    (progress : ∀ t, Inv t → ∃ u, Inv u ∧ Advance t u) :
    ∀ n t, Inv t → ¬ Count t n := by
  intro n
  induction n using Nat.strongRecOn with
  | ind n ih =>
    intro t ht hc
    obtain ⟨u, hu, v, hv, hrest⟩ := progress t ht
    obtain ⟨k, hk, hck⟩ := head_decreases hc hv
    obtain ⟨j, hj, hcj⟩ := count_reduct k hck hrest
    exact ih j (by omega) u hu hcj

theorem invariant_no_nf (Inv : Term → Prop)
    (progress : ∀ t, Inv t → ∃ u, Inv u ∧ Advance t u)
    {t : Term} (ht : Inv t) : ¬ HasNormalForm t := by
  intro hn
  obtain ⟨n, hc⟩ := hasNormalForm_count hn
  exact invariant_no_count Inv progress n t ht hc

/-- A substitution-stable pump may grow a protected trailing spine. -/
theorem family_pump_no_nf {α : Type} (term : α → Term) (next : α → α)
    (extra : α → List Term)
    (step : ∀ a, Advance (term a) (apps (term (next a)) (extra a)))
    (a : α) (tail : List Term) : ¬ HasNormalForm (apps (term a) tail) := by
  let Inv := fun t => ∃ a tail, t = apps (term a) tail
  apply invariant_no_nf Inv ?_ ⟨a, tail, rfl⟩
  intro t ht
  obtain ⟨b, rest, rfl⟩ := ht
  refine ⟨apps (term (next b)) (extra b ++ rest), ⟨next b, extra b ++ rest, rfl⟩, ?_⟩
  rw [apps_append]
  exact advance_apps (step b) rest

/-- The NEXT / variable-arm wrapper grammar for V = lambda u. u list u. -/
inductive H (next wrap : Term → Term) : Term → Prop where
  | next (c : Term) : H next wrap (next c)
  | wrap {s : Term} : H next wrap s → H next wrap (wrap s)

def States (next wrap : Term → Term) (i : Term) (t : Term) : Prop :=
  ∃ s u tail, H next wrap s ∧ H next wrap u ∧
    t = apps (.app (.app s i) u) tail

theorem wrapper_progress (next wrap kont : Term → Term) (i : Term)
    (peel : ∀ s u, Advance (.app (.app (wrap s) i) u) (.app (.app s i) u))
    (parse : ∀ c u, Advance (.app (.app (next c) i) u)
      (.app (.app (.app u i) (wrap u)) (next (kont c))))
    (t : Term) (ht : States next wrap i t) :
    ∃ u, States next wrap i u ∧ Advance t u := by
  obtain ⟨s, u, tail, hs, hu, rfl⟩ := ht
  cases hs with
  | next c =>
    refine ⟨apps (.app (.app (.app u i) (wrap u)) (next (kont c))) tail, ?_, ?_⟩
    · exact ⟨u, wrap u, next (kont c) :: tail, hu, .wrap hu, rfl⟩
    · exact advance_apps (parse c u) tail
  | @wrap s hs =>
    refine ⟨apps (.app (.app s i) u) tail, ?_, ?_⟩
    · exact ⟨s, u, tail, hs, hu, rfl⟩
    · exact advance_apps (peel s u) tail

theorem wrapper_no_nf (next wrap kont : Term → Term) (i : Term)
    (peel : ∀ s u, Advance (.app (.app (wrap s) i) u) (.app (.app s i) u))
    (parse : ∀ c u, Advance (.app (.app (next c) i) u)
      (.app (.app (.app u i) (wrap u)) (next (kont c))))
    {s u : Term} (hs : H next wrap s) (hu : H next wrap u) (tail : List Term) :
    ¬ HasNormalForm (apps (.app (.app s i) u) tail) :=
  invariant_no_nf (States next wrap i)
    (wrapper_progress next wrap kont i peel parse) ⟨s, u, tail, hs, hu, rfl⟩

#print axioms family_pump_no_nf
#print axioms wrapper_no_nf
end Blc.Round3Pumps
