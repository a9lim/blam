import Blc.SelfintSourceRefutations
namespace Blc.SelfintRecursiveTypes
open Term SelfintLowerBound WeakHeadClock
abbrev Env := Nat → List Nat
def cons (a : List Nat) (ρ : Env) : Env | 0 => a | i+1 => ρ i
def ins (j : Nat) (a : List Nat) (ρ : Env) : Env :=
  fun i => if i < j then ρ i else if i = j then a else ρ (i-1)
theorem ins_zero (a : List Nat) (ρ : Env) : ins 0 a ρ = cons a ρ := by
  funext i; cases i <;> simp [ins,cons]
theorem ins_cons (j : Nat) (a b : List Nat) (ρ : Env) :
    ins (j+1) a (cons b ρ) = cons b (ins j a ρ) := by
  funext i; cases i with
  | zero => simp [ins,cons]
  | succ i => cases i <;> cases j <;> simp [ins,cons]
structure Table where
  dom : List (List Nat)
  cod : List (List Nat)
def D (m : Table) (i : Nat) := m.dom[i]?.getD []
def C (m : Table) (i : Nat) := m.cod[i]?.getD []
def has (m : Table) (ρ : Env) : Term → Nat → Bool
  | .var v, i => decide (i ∈ ρ v ∨ 0 ∈ ρ v)
  | .lam _, 0 => false
  | .lam b, j+1 => (C m j).all (has m (cons (D m j) ρ) b)
  | .app f a, i => has m ρ f 0 || (List.range m.dom.length).any fun j =>
        decide (i ∈ C m j ∨ 0 ∈ C m j) && has m ρ f (j+1) && (D m j).all (has m ρ a)
theorem bot {m ρ t} (h : has m ρ t 0 = true) (i) : has m ρ t i = true := by
  cases t with
  | var v => simpa [has] using (Or.inr (by simpa [has] using h) : i ∈ ρ v ∨ 0 ∈ ρ v)
  | lam b => cases h
  | app f a =>
    simp only [has,Bool.or_eq_true,List.any_eq_true,Bool.and_eq_true,decide_eq_true_eq] at h ⊢
    rcases h with h | ⟨j,hj,⟨hh,hf⟩,ha⟩
    · exact Or.inl h
    · exact Or.inr ⟨j,hj,⟨Or.inr (hh.elim id id),hf⟩,ha⟩
theorem shiftHas (m : Table) (ρ : Env) (t : Term) (j : Nat) (v : List Nat) :
    ∀ i, has m (ins j v ρ) (shift 1 j t) i = has m ρ t i := by
  induction t generalizing ρ j with
  | var n =>
    intro i
    by_cases hn : n ≥ j
    · simp [shift,hn,has,ins,show ¬ n+1 < j by omega,show n+1 ≠ j by omega]
    · simp [shift,hn,has,ins,show n < j by omega]
  | app f a hf ha => intro i; simp [shift,has,hf,funext (ha ρ j)]
  | lam b ih =>
    intro i; cases i with
    | zero => rfl
    | succ i => simp only [shift,has,←ins_cons,funext (ih _ _)]
theorem substHas (m : Table) (t a : Term) (j : Nat) (ρ : Env) (dom : List Nat)
    (ha : ∀ i ∈ dom, has m ρ a i = true) (i : Nat)
    (ht : has m (ins j dom ρ) t i = true) : has m ρ (substDec j a t) i = true := by
  induction t generalizing ρ j a i with
  | var n =>
    by_cases eq : n=j
    · subst n
      simp [has,ins] at ht
      simp only [substDec,if_pos rfl]
      exact ht.elim (ha i) (fun h => bot (ha 0 h) i)
    · by_cases lt : n<j
      · simpa [substDec,eq,show ¬ n>j by omega,has,ins,lt] using ht
      · simpa [substDec,eq,show n>j by omega,has,ins,lt] using ht
  | app f x hf hx =>
    simp only [substDec,has,Bool.or_eq_true,List.any_eq_true,Bool.and_eq_true,List.all_eq_true] at ht ⊢
    rcases ht with h | ⟨j',hj,⟨hc,hf'⟩,ha'⟩
    · exact Or.inl (hf _ _ _ ha _ h)
    · exact Or.inr ⟨j',hj,⟨hc,hf _ _ _ ha _ hf'⟩,fun k hk => hx _ _ _ ha _ (ha' k hk)⟩
  | lam b ih =>
    cases i with
    | zero => cases ht
    | succ i =>
      simp only [substDec,has,List.all_eq_true,←ins_cons] at ht ⊢
      intro k hk
      apply ih _ _ _ _ k (ht k hk)
      intro u hu
      rw [←ins_zero,shiftHas]
      exact ha u hu
theorem preserved {m ρ t u} (h : Beta t u) :
    ∀ i, has m ρ t i = true → has m ρ u i = true := by
  induction h generalizing ρ with
  | beta b a =>
    intro i ht
    simp only [has,Bool.false_or,List.any_eq_true,Bool.and_eq_true,decide_eq_true_eq,List.all_eq_true] at ht
    obtain ⟨j,_,⟨hc,hb⟩,ha⟩ := ht
    rw [←ins_zero] at hb
    rcases hc with h | h
    · exact substHas _ _ _ 0 _ _ ha _ (hb _ h)
    · exact bot (substHas _ _ _ 0 _ _ ha _ (hb _ h)) i
  | lam h ih =>
    intro i hi; cases i with
    | zero => cases hi
    | succ i =>
      simp only [has,List.all_eq_true] at hi ⊢
      exact fun k hk => ih k (hi k hk)
  | appL a h ih =>
    intro i ht
    simp only [has,Bool.or_eq_true,List.any_eq_true,Bool.and_eq_true] at ht ⊢
    rcases ht with h | ⟨j,hm,⟨hc,hf⟩,ha⟩
    · exact Or.inl (ih _ h)
    · exact Or.inr ⟨j,hm,⟨hc,ih _ hf⟩,ha⟩
  | appR f h ih =>
    intro i ht
    simp only [has,Bool.or_eq_true,List.any_eq_true,Bool.and_eq_true,List.all_eq_true] at ht ⊢
    rcases ht with h | ⟨j,hm,⟨hc,hf⟩,ha⟩
    · exact Or.inl h
    · exact Or.inr ⟨j,hm,⟨hc,hf⟩,fun k hk => ih _ (ha k hk)⟩
theorem star {m ρ t u} (h : Betas t u) (i) (ht : has m ρ t i = true) : has m ρ u i = true := by
  induction h with
  | refl => exact ht
  | head h _ ih => exact ih (preserved h i ht)
def empty : Env := fun _ => []
theorem noVar {m t v} (i) (ht : has m empty t i=true) : ¬ BetaJoin t (.var v) := by
  rintro ⟨u,hu,hv⟩
  have eq := normalForm_betas_eq (fun _ h => by cases h) hv
  subst u
  simpa [has,empty] using star hu i ht
theorem noClock {m t} (ht : has m empty t 0=true) (hc : Closed t) {n} : ¬ Count t n := by
  intro hn
  induction hn with
  | @step t u _ hw _ ih =>
    exact ih (preserved (weakStep_beta hw) 0 ht) (SelfintProbe.betas_scope (.head (weakStep_beta hw) (.refl _)) 0 hc)
  | @stop t hw =>
    cases t with
    | var i => exact Nat.not_lt_zero i hc
    | lam b => cases ht
    | app f a =>
      have hr := weakStep_none_rigid hw (fun h => h)
      have bad {x : Term} (hx : Rigid x) : ¬ Closed x := by
        induction hx with
        | var i => exact Nat.not_lt_zero i
        | app a h ih => exact fun q => ih q.1
      exact bad hr hc
end Blc.SelfintRecursiveTypes
