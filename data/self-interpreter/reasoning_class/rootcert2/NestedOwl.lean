import Tri
namespace Blc.Rootcert2NestedOwl
open Term SelfintClass SelfintLowerBound SelfintSourceCost HandlerLet WeakHeadClock
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
set_option linter.unusedSimpArgs false

def A : Term := .lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 1)))))
def G (t : Term) : Term := .lam (.app (.var 0) (.app (shift 1 0 t) (.app (.var 0) (shift 1 0 t))))
theorem A_rule (t : Term) : Betas (.app A t) (G t) := .head (.beta _ _) (.refl _)
theorem G_step (t x : Term) : weakStep (.app (G t) x)=some (.app x (.app t (.app x t))) := by
 simp [G,weakStep,contract,substDec,substDec_shift]
inductive Tree : Term → Prop
 | base : Tree (G A)
 | gen {t : Term} : Tree t → Tree (G t)
 | app {f a : Term} : Tree f → Tree a → Tree (.app f a)
def Pay (t : Term) : Prop := t=A ∨ Tree t
theorem G_tree {t : Term} (h : Pay t) : Tree (G t) := by
 cases h with
 | inl he => subst t; exact .base
 | inr ht => exact .gen ht

theorem view {t : Term} (h : Tree t) :
 (∃ f a, t=.app f a ∧ Tree f ∧ Tree a) ∨ (∃ p, t=G p ∧ Pay p) := by
 cases h with
 | base => exact .inr ⟨A,rfl,.inl rfl⟩
 | @gen t h => exact .inr ⟨t,rfl,.inr h⟩
 | @app f a hf ha => exact .inl ⟨f,a,rfl,hf,ha⟩

/-- Applying any allowed atom to A returns another allowed atom. -/
theorem G_A_tree {t : Term} (h : Pay t) :
 ∃ u, Tree u ∧ Betas (.app (G t) A) u := by
 have h0 : Betas (.app (G t) A) (.app A (.app t (G t))) :=
  .head (weakStep_beta (G_step t A)) (betas_appR A (betas_appR t (A_rule t)))
 have hg := G_tree h
 cases h with
 | inl ht =>
  subst t
  refine ⟨G (G (G A)),.gen (.gen hg),?_⟩
  exact betas_trans h0 (betas_trans (betas_appR A (A_rule (G A))) (A_rule (G (G A))))
 | inr ht =>
  exact ⟨G (.app t (G t)),.gen (.app ht hg),betas_trans h0 (A_rule _)⟩

theorem pair_red {p q : Term} (hp : Pay p) (hq : Pay q) :
 ∃ t, Tree t ∧ Betas (.app (G q) (.app p (.app (G q) p))) (.app (G q) t) := by
 cases hp with
 | inl he =>
  subst p
  obtain ⟨u,hu,hr⟩:=G_A_tree hq
  refine ⟨G u,.gen hu,?_⟩
  exact betas_appR (G q) (betas_trans (betas_appR A hr) (A_rule u))
 | inr hp => exact ⟨_,.app hp (.app (G_tree hq) hp),.refl _⟩

theorem no_count : ∀ n, ∀ f, Tree f → ∀ a, Tree a → ∀ m, m≤n → ¬ Count (.app f a) m := by
 intro n
 induction n using Nat.strongRecOn with
 | ind n ih =>
  have atom_case : ∀ p, Pay p → ∀ a, Tree a → ∀ m, m≤n → ¬ Count (.app (G p) a) m := by
   intro p hp a ha m hm hc
   obtain ⟨k,hk,hck⟩:=head_decreases hc (G_step p a)
   cases view ha with
   | inl ha =>
    obtain ⟨b,c,rfl,hb,hcTree⟩:=ha
    obtain ⟨l,hl,hcl⟩:=count_app_reflect k (.app b c) (.app p (.app (.app b c) p)) hck
    exact ih k (by omega) b hb c hcTree l hl hcl
   | inr ha =>
    obtain ⟨q,rfl,hq⟩:=ha
    obtain ⟨t,ht,hr⟩:=pair_red hp hq
    obtain ⟨l,hl,hcl⟩:=count_reduct k hck hr
    exact ih k (by omega) (G q) (G_tree hq) t ht l hl hcl
  intro f hf
  induction hf with
  | base => exact atom_case A (.inl rfl)
  | @gen t ht iht => exact atom_case t (.inr ht)
  | @app f g hf hg ihf ihg =>
   intro a ha m hm hc
   obtain ⟨l,hl,hcl⟩:=count_app_reflect m (.app f g) a hc
   exact ihf g hg l (Nat.le_trans hl hm) hcl

theorem spine_betas {t u : Term} (h : Betas t u) (xs : List Term) : Betas (spine t xs) (spine u xs) := by
 induction xs generalizing t u with
 | nil => exact h
 | cons x xs ih => exact ih (betas_appL x h)
def core : Term := .app (.app A A) (.app A A)
theorem core_no_nf (rest : List Term) : ¬ HasNormalForm (spine core rest) := by
 intro hn
 have hr := spine_betas (betas_app (A_rule A) (A_rule A)) rest
 obtain ⟨u,hu,hun⟩:=hn
 have red := betas_preserve_nf hr hu hun
 obtain ⟨n,hc⟩:=hasNormalForm_count ⟨_,red,hun⟩
 obtain ⟨m,_,hcm⟩:=count_spine_reflect rest _ n hc
 exact no_count m (G A) .base (G A) .base m (Nat.le_refl m) hcm

theorem reject {r : Term} (prep : List (List Nat)) (rest : List Term)
 (he : betaSteps prep (.app r Z)=some (spine core rest)) : ¬ Reader r := by
 intro hr
 have red:=betas_preserve_nf (betaSteps_sound prep he) hr.zero_red zeroOut_normal
 exact core_no_nf rest ⟨_,red,zeroOut_normal⟩
#print axioms no_count
#print axioms reject
end Blc.Rootcert2NestedOwl
