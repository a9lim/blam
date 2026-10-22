import Church
namespace Blc.RootcertOwl
open Term SelfintClass SelfintLowerBound SelfintSourceCost
open HandlerLet BodyLetGrow WeakHeadClock BB35Church
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def O : Term := .lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))
def G (n : Nat) : Term := .lam (iter (.var 0) (n+1) (.app O (.var 0)))

theorem O_closed : Closed O := by decide

theorem G_shift (n d c : Nat) : shift d c (G n)=G n := by
 simp [G,shift,iter_shift,shift_closed d (c+1) O_closed]

theorem G_step (n : Nat) (x : Term) :
 weakStep (.app (G n) x)=some (iter x (n+1) (.app O x)) := by
 simp [G,weakStep,contract,iter_subst,substDec,O,shift]

theorem O_G (n : Nat) : Betas (.app O (G n)) (G (n+1)) := by
 have h0 : contract (.lam (.app (.var 0) (.app (.var 1) (.var 0)))) (G n) =
    .lam (.app (.var 0) (.app (G n) (.var 0))) := by
   simp [contract,substDec,shift,G_shift]
 have h1 := weakStep_beta (G_step n (.var 0))
 exact .head (h0 ▸ Beta.beta _ _) (betas_lam
   (.head (.appR (.var 0) h1) (.refl _)))

theorem iter_right {x y : Term} (h : Betas x y) (f : Term) (n : Nat) :
 Betas (iter f n x) (iter f n y) := by
 induction n with
 | zero => exact h
 | succ n ih => exact betas_appR f ih

inductive Tree : Term → Prop where
 | atom (n : Nat) : Tree (G n)
 | app {f a : Term} : Tree f → Tree a → Tree (.app f a)

theorem iter_tree {f x : Term} (hf : Tree f) (hx : Tree x) (n : Nat) :
 Tree (iter f n x) := by
 induction n with
 | zero => exact hx
 | succ n ih => exact .app hf ih

/-- Every nontrivial application tree of the positive owl functions diverges
    at the head. The decreasing measure is its finite weak-head clock. -/
theorem no_count : ∀ n, ∀ f, Tree f → ∀ a, Tree a →
 ∀ m, m ≤ n → ¬ Count (.app f a) m := by
 intro n
 induction n using Nat.strongRecOn with
 | ind n ih =>
  intro f hf
  induction hf with
  | @app f g hf hg ihf ihg =>
   intro a ha m hm hc
   obtain ⟨l,hl,hcl⟩ := count_app_reflect m (.app f g) a hc
   exact ihf g hg l (Nat.le_trans hl hm) hcl
  | atom p =>
   intro a ha m hm hc
   obtain ⟨k,hk,hck⟩ := head_decreases hc (G_step p a)
   cases ha with
   | @app b c hb hcTree =>
    obtain ⟨l,hl,hcl⟩ := count_app_reflect k (.app b c)
      (iter (.app b c) p (.app O (.app b c))) hck
    exact ih k (by omega) b hb c hcTree l hl hcl
   | atom q =>
    have red := iter_right (O_G q) (G q) (p+1)
    obtain ⟨l,hl,hcl⟩ := count_reduct k hck red
    exact ih k (by omega) (G q) (.atom q)
      (iter (G q) p (G (q+1))) (iter_tree (.atom q) (.atom (q+1)) p) l hl hcl

theorem no_nf (f a : Term) (hf : Tree f) (ha : Tree a) (rest : List Term) :
 ¬ HasNormalForm (spine (.app f a) rest) := by
 intro hn
 obtain ⟨n,hc⟩ := hasNormalForm_count hn
 obtain ⟨m,_,hcm⟩ := count_spine_reflect rest _ n hc
 exact no_count m f hf a ha m (Nat.le_refl m) hcm

def core : Term := .app (.app O O) (.app (.app O O) O)
theorem OO : Betas (.app O O) (G 0) := .head (.beta _ _) (.refl _)
theorem OOO : Betas (.app (.app O O) O) (G 1) := by
 have he : betaSteps [[1],[]] (.app (.app O O) O)=some (.app O (.app O O)) := by decide
 exact betas_trans (betaSteps_sound _ he) (betas_trans (betas_appR O OO) (O_G 0))
theorem core_no_nf (rest : List Term) : ¬ HasNormalForm (spine core rest) :=
 betas_noNormalForm (spine_betas (betas_app OO OOO) rest)
  (no_nf (G 0) (G 1) (.atom 0) (.atom 1) rest)

theorem reject {r : Term} (prep : List (List Nat)) (rest : List Term)
 (he : betaSteps prep (.app r Z)=some (spine core rest)) : ¬ Reader r := by
 intro hr
 have hn := betas_preserve_nf (betaSteps_sound prep he) hr.zero_red zeroOut_normal
 exact core_no_nf rest ⟨_,hn,zeroOut_normal⟩
#print axioms reject
end Blc.RootcertOwl
