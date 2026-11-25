import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.MultiTypes
open Term SelfintControl SelfintLowerBound Round3Floor38
structure Arrow (n : Nat) where
  dom : List (Fin n)
  cod : Fin n
deriving DecidableEq
abbrev Graph (n : Nat) := Fin n → Option (List (Arrow n))
abbrev Env (n : Nat) := Nat → List (Fin n)
def push (xs : List (Fin n)) (e : Env n) : Env n
  | 0 => xs
  | i+1 => e i
inductive Ty (G : Graph n) : Env n → Term → Fin n → Prop where
  | var {e i z} : z ∈ e i → Ty G e (.var i) z
  | lam {e b z ars} : G z = some ars → (∀ a ∈ ars, Ty G (push a.dom e) b a.cod) → Ty G e (.lam b) z
  | app {e f t z ars a} : G z = some ars → a ∈ ars → Ty G e f z →
      (∀ i ∈ a.dom, Ty G e t i) → Ty G e (.app f t) a.cod
variable {G : Graph n}
def bump (d c i : Nat) := if c≤i then i+d else i
theorem shifted {e : Env n} {t z} (h : Ty G e t z) (d c : Nat) (e' : Env n)
    (he : ∀ i, e' (bump d c i) = e i) : Ty G e' (shift d c t) z := by
  induction h generalizing c e' with
  | @var e i z hi =>
    have hv := Ty.var (G := G) (e := e') (i := bump d c i) ((he i).symm ▸ hi)
    by_cases q : c≤i <;> simpa [shift,bump,q] using hv
  | @lam e b z ars hz hb ih =>
    apply Ty.lam hz
    intro a ha
    apply ih a ha (c+1) (push a.dom e')
    intro i; cases i with
    | zero => simp [bump,push]
    | succ i =>
      by_cases hh : c ≤ i
      · simpa [bump,push,hh,show c+1≤i+1 by omega,show i+1+d=(i+d)+1 by omega] using he i
      · simpa [bump,push,hh,show ¬c+1≤i+1 by omega] using he i
  | @app e f t z ars a hz ha hf ht ih jh => exact .app hz ha (ih _ _ he) (fun i hi => jh i hi _ _ he)
def remove (e : Env n) (j : Nat) : Env n := fun i => if i<j then e i else e (i+1)
@[simp] theorem remove_zero (e : Env n) (xs : List (Fin n)) : remove (push xs e) 0 = e := by funext i; simp [remove,push]
theorem remove_push (e : Env n) (j : Nat) (xs : List (Fin n)) :
    remove (push xs e) (j+1) = push xs (remove e j) := by
  funext i; cases i with
  | zero => simp [remove,push]
  | succ i => by_cases h : i<j <;> simp [remove,push,h]
theorem sub {e : Env n} {t z u} (h : Ty G e t z) (j : Nat)
    (hs : ∀ i ∈ e j, Ty G (remove e j) u i) : Ty G (remove e j) (substDec j u t) z := by
  induction h generalizing j u with
  | @var e i z hz =>
    simp only [substDec]; split
    · rename_i eq; subst i; exact hs _ hz
    · split
      · rename_i gt; apply Ty.var
        simpa [remove,show ¬ i-1<j by omega,show i-1+1=i by omega] using hz
      · rename_i le; apply Ty.var; simpa [remove,show i<j by omega] using hz
  | @lam e b z ars hz hb ih =>
    apply Ty.lam hz
    intro a ha
    rw [← remove_push]
    apply ih a ha (j+1)
    intro i hi
    rw [remove_push]
    exact shifted (hs i hi) 1 0 _ (by intro i; simp [bump,push])
  | @app e f t z ars a hz ha hf ht ih jh => exact .app hz ha (ih _ hs) (fun i hi => jh i hi _ hs)
theorem beta {t u} (hb : Beta t u) {e : Env n} {z} (h : Ty G e t z) : Ty G e u z := by
  induction hb generalizing e z with
  | beta b x =>
    cases h with
    | @app _ _ _ k ars a ha hmem hf hx =>
      cases hf with
      | lam hb hbody =>
        have heq := Option.some.inj (ha.symm.trans hb)
        subst_vars
        simpa only [remove_zero,contract] using sub (hbody a hmem) 0 (by simpa only [remove_zero,push] using hx)
  | appL x _ ih => cases h with | app ha hm hf hx => exact .app ha hm (ih hf) hx
  | appR f _ ih => cases h with | app ha hm hf hx => exact .app ha hm hf (fun i hi => ih (hx _ hi))
  | lam _ ih => cases h with | lam ha hb => exact .lam ha (fun a hm => ih (hb a hm))
theorem betas {t u} (hb : Betas t u) {e : Env n} {z} (h : Ty G e t z) : Ty G e u z := by
  induction hb with
  | refl => exact h
  | head h1 _ ih => exact ih (beta h1 h)
def check (G : Graph n) (e : Env n) : Term → Fin n → Bool
  | .var i,z => decide (z ∈ e i)
  | .lam b,z => (G z).any (fun ars => ars.all (fun a => check G (push a.dom e) b a.cod))
  | .app f t,z => (List.finRange n).any (fun i => (G i).any (fun ars => ars.any (fun a =>
      decide (a.cod = z) && check G e f i && a.dom.all (fun j => check G e t j))))
theorem correct (G : Graph n) (t : Term) (e : Env n) (z : Fin n) :
    check G e t z = true ↔ Ty G e t z := by
  induction t generalizing e z with
  | var i =>
    simp only [check,decide_eq_true_eq]; exact ⟨.var,fun h => by cases h; assumption⟩
  | lam b ih =>
    cases h : G z with
    | none => simp only [check,h,Option.any_none,Bool.false_eq_true,false_iff]; intro ht; cases ht with | lam hg _ => simp [hg] at h
    | some a =>
      simp only [check,h,Option.any_some,List.all_eq_true,ih]
      constructor
      · exact .lam h
      · intro ht; cases ht with | lam hg hb => simp only [h,Option.some.injEq] at hg; subst_vars; exact hb
  | app f t ih jh =>
    simp only [check,List.any_eq_true,Option.any_eq_true,Bool.and_eq_true,decide_eq_true_eq,List.all_eq_true]
    constructor
    · rintro ⟨i,_,ars,ha,a,hm,⟨hz,hf⟩,ht⟩; subst z; exact .app ha hm ((ih _ _).mp hf) (fun j hj => (jh _ _).mp (ht j hj))
    · intro ht; cases ht with
      | @app _ _ _ i ars a ha hm hf hx => exact ⟨i,by simp,ars,ha,a,hm,⟨rfl,(ih _ _).mpr hf⟩,fun j hj => (jh _ _).mpr (hx j hj)⟩
theorem excluded (G : Graph n) (env : Env n) {z : Fin n} {e c m r t u : Term} {aa : List Term}
    (hm : Closed m) (hp : Betas (call e c m r aa) t) (hq : Betas (want c m r aa) u)
    (hn : NFt u) (ht : check G env t z = true) (hu : check G env u z = false) : ¬ IsSelfInterpreter e := by
  intro he
  have h := (correct G _ _ _).mpr (betas (expected he hm hp hq hn) ((correct G _ _ _).mp ht))
  simp_all
end Blc.Floor45.MultiTypes
namespace Blc.Floor45.MultiTypes
open Term SelfintControl SelfintLowerBound WeakHeadClock
theorem rigid_empty {G : Graph n} {t z} (h : Rigid t) : ¬ Ty G (fun _ => []) t z := by
  induction h generalizing z with
  | var => intro v; cases v with | var h => simp at h
  | app a h ih => intro v; cases v with | app _ _ h _ => exact ih h
theorem emptyClock {G : Graph n} {t z k} (hz : G z = none) (h : Count t k) :
    ¬ Ty G (fun _ => []) t z := by
  induction h with
  | @stop t hw =>
    cases t with
    | var i => exact rigid_empty (.var i)
    | app f a => exact rigid_empty (weakStep_none_rigid hw (fun h => h))
    | lam b => intro ht; cases ht with | lam hg _ => simp [hz] at hg
  | step hw _ ih => intro ht; exact ih (beta (weakStep_beta hw) ht)
end Blc.Floor45.MultiTypes
namespace Blc.Floor45.MultiTypes
theorem allNil {α : Type} {p : α → Prop} : ∀ x ∈ ([] : List α), p x := by simp
theorem allCons {α : Type} {p : α → Prop} {x : α} {xs : List α}
    (h : p x) (hs : ∀ i ∈ xs, p i) : ∀ i ∈ x :: xs, p i := by
  intro i hi; rcases List.mem_cons.mp hi with rfl | hi; exact h; exact hs _ hi
end Blc.Floor45.MultiTypes
