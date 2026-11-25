import Certificates
namespace Blc.RootNLReplicator
open Term SelfintClass SelfintLowerBound SelfintSourceCost
open HandlerLet WeakHeadClock
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

/-- Nonempty application trees over one term. -/
inductive Tree (A : Term) : Term → Prop
 | atom : Tree A A
 | app {f a : Term} : Tree A f → Tree A a → Tree A (.app f a)

theorem subst_spine (xs : List Term) (t a : Term) (j : Nat) :
 substDec j a (spine t xs)=spine (substDec j a t) (xs.map (substDec j a)) := by
 induction xs generalizing t with
 | nil => rfl
 | cons x xs ih => simpa [spine,substDec] using ih (.app t x)

theorem tree_subst {D A x : Term} (hD : Tree (.var 0) D) (hx : Tree A x) :
 Tree A (substDec 0 x D) := by
 induction hD with
 | atom => simpa [substDec] using hx
 | app hf ha ihf iha => exact .app ihf iha

def replicator (D : Term) (qs : List Term) : Term :=
 .lam (spine (.app (.var 0) D) qs)

theorem replicator_step (D x : Term) (qs : List Term) :
 weakStep (.app (replicator D qs) x)=
   some (spine (.app x (substDec 0 x D)) (qs.map (substDec 0 x))) := by
 simp [replicator,weakStep,contract,subst_spine,substDec]

/-- A source helper that feeds every call another nonempty application tree
of that same call cannot hand control to the stream. Arbitrary payloads qs
are allowed; their contents are irrelevant to the persistent head prefix. -/
theorem no_count (D : Term) (qs : List Term) (hD : Tree (.var 0) D) :
 ∀ n, ∀ f, Tree (replicator D qs) f → ∀ a, Tree (replicator D qs) a →
 ∀ m, m≤n → ¬ Count (.app f a) m := by
 intro n
 induction n using Nat.strongRecOn with
 | ind n ih =>
  intro f hf
  induction hf with
  | @app f g hf hg ihf ihg =>
   intro a ha m hm hc
   obtain ⟨l,hl,hcl⟩:=count_app_reflect m (.app f g) a hc
   exact ihf g hg l (Nat.le_trans hl hm) hcl
  | atom =>
   intro a ha m hm hc
   obtain ⟨k,hk,hck⟩:=head_decreases hc (replicator_step D a qs)
   obtain ⟨l,hl,hcl⟩:=count_spine_reflect (qs.map (substDec 0 a)) _ k hck
   exact ih k (by omega) a ha (substDec 0 a D) (tree_subst hD ha) l hl hcl

theorem no_nf (D f a : Term) (qs rest : List Term) (hD : Tree (.var 0) D)
 (hf : Tree (replicator D qs) f) (ha : Tree (replicator D qs) a) :
 ¬ HasNormalForm (spine (.app f a) rest) := by
 intro hn
 obtain ⟨n,hc⟩:=hasNormalForm_count hn
 obtain ⟨m,_,hcm⟩:=count_spine_reflect rest _ n hc
 exact no_count D qs hD m f hf a ha m (Nat.le_refl m) hcm

theorem reject {r : Term} (prep : List (List Nat)) (D f a : Term)
 (qs rest : List Term) (hD : Tree (.var 0) D)
 (hf : Tree (replicator D qs) f) (ha : Tree (replicator D qs) a)
 (he : betaSteps prep (.app r Z)=some (spine (.app f a) rest)) : ¬ Reader r := by
 intro hr
 have red:=betas_preserve_nf (betaSteps_sound prep he) hr.zero_red zeroOut_normal
 exact no_nf D f a qs rest hD hf ha ⟨_,red,zeroOut_normal⟩

#print axioms no_count
#print axioms reject
end Blc.RootNLReplicator
