import Tri
import Blc.BB35Church
namespace Blc.Rootcert2TripleOwl
open Term SelfintClass SelfintLowerBound SelfintSourceCost HandlerLet WeakHeadClock BB35Church
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
set_option linter.unusedSimpArgs false

def A : Term := .lam (.lam (iter (.var 0) 3 (.var 1)))
def a : Nat → Term | 0 => A | n+1 => .app A (a n)
def G (n : Nat) : Term := .lam (iter (.var 0) 3 (shift 1 0 (a n)))
theorem A_closed : Closed A := by decide
theorem a_closed (n : Nat) : Closed (a n) := by
 induction n with
 | zero => exact A_closed
 | succ n ih => exact ⟨A_closed,ih⟩
theorem G_shift (n d c : Nat) : shift d c (G n)=G n := by
 simp [G,shift,iter_shift,shift_closed 1 0 (a_closed n),shift_closed d (c+1) (a_closed n)]
theorem G_step (n : Nat) (x : Term) : weakStep (.app (G n) x)=some (iter x 3 (a n)) := by
 simp [G,weakStep,contract,iter_subst,substDec,substDec_shift]
theorem A_a (n : Nat) : Betas (.app A (a n)) (G n) := by
 have he : contract (.lam (iter (.var 0) 3 (.var 1))) (a n)=G n := by
  simp [contract,substDec,iter_subst,G]
 exact .head (he ▸ Beta.beta _ _) (.refl _)
theorem G_A (n : Nat) : Betas (.app (G n) A) (G (n+2)) := by
 have hs := weakStep_beta (G_step n A)
 have he : iter A 3 (a n) = a (n+3) := rfl
 rw [he] at hs
 exact .head hs (A_a (n+2))
theorem iter_right {x y : Term} (h : Betas x y) (f : Term) (n : Nat) :
 Betas (iter f n x) (iter f n y) := by
 induction n with
 | zero => exact h
 | succ n ih => exact betas_appR f ih
inductive Tree : Term → Prop
 | atom (n : Nat) : Tree (G n)
 | app {f a : Term} : Tree f → Tree a → Tree (.app f a)
theorem iter_tree {f x : Term} (hf : Tree f) (hx : Tree x) (n : Nat) : Tree (iter f n x) := by
 induction n with
 | zero => exact hx
 | succ n ih => exact .app hf ih

theorem no_count : ∀ n, ∀ f, Tree f → ∀ a, Tree a → ∀ m, m≤n → ¬ Count (.app f a) m := by
 intro n
 induction n using Nat.strongRecOn with
 | ind n ih =>
  intro f hf
  induction hf with
  | @app f g hf hg ihf ihg =>
   intro a ha m hm hc
   obtain ⟨l,hl,hcl⟩:=count_app_reflect m (.app f g) a hc
   exact ihf g hg l (Nat.le_trans hl hm) hcl
  | atom p =>
   intro a ha m hm hc
   obtain ⟨k,hk,hck⟩:=head_decreases hc (G_step p a)
   cases ha with
   | @app b c hb hcTree =>
    obtain ⟨l,hl,hcl⟩:=count_app_reflect k (.app b c) (iter (.app b c) 2 (a p)) hck
    exact ih k (by omega) b hb c hcTree l hl hcl
   | atom q =>
    cases p with
    | zero =>
     have red := iter_right (G_A q) (G q) 2
     obtain ⟨l,hl,hcl⟩:=count_reduct k hck red
     exact ih k (by omega) (G q) (.atom q) (iter (G q) 1 (G (q+2)))
       (iter_tree (.atom q) (.atom (q+2)) 1) l hl hcl
    | succ p =>
     have red := iter_right (A_a p) (G q) 3
     obtain ⟨l,hl,hcl⟩:=count_reduct k hck red
     exact ih k (by omega) (G q) (.atom q) (iter (G q) 2 (G p))
       (iter_tree (.atom q) (.atom p) 2) l hl hcl

theorem spine_betas {t u : Term} (h : Betas t u) (xs : List Term) : Betas (spine t xs) (spine u xs) := by
 induction xs generalizing t u with
 | nil => exact h
 | cons x xs ih => exact ih (betas_appL x h)
def core : Term := .app (.app A A) (.app A A)
theorem core_no_nf (rest : List Term) : ¬ HasNormalForm (spine core rest) := by
 intro hn
 have hr := spine_betas (betas_app (A_a 0) (A_a 0)) rest
 obtain ⟨u,hu,hun⟩:=hn
 have red := betas_preserve_nf hr hu hun
 obtain ⟨n,hc⟩:=hasNormalForm_count ⟨_,red,hun⟩
 obtain ⟨m,_,hcm⟩:=count_spine_reflect rest _ n hc
 exact no_count m (G 0) (.atom 0) (G 0) (.atom 0) m (Nat.le_refl m) hcm

theorem reject {r : Term} (prep : List (List Nat)) (rest : List Term)
 (he : betaSteps prep (.app r Z)=some (spine core rest)) : ¬ Reader r := by
 intro hr
 have red:=betas_preserve_nf (betaSteps_sound prep he) hr.zero_red zeroOut_normal
 exact core_no_nf rest ⟨_,red,zeroOut_normal⟩
#print axioms no_count
#print axioms reject
end Blc.Rootcert2TripleOwl
