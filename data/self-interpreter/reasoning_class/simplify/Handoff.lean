import Blc.SelfintLambdaSink
import Blc.SelfintValuesTransfer

/- Static source specialization for one independent-payload hand-off family.
   No reader floor, finite probe assumption, or normalization bound is used. -/
namespace Blc.Simplify
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintWidenHoist SelfintSourceCost SelfintLocalCost SelfintControl
open SelfintFlatMinimum SelfintLambdaSink
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

/-- W(M) = lambda z. z M, hygienically. M need not be closed or normal. -/
def wrap (m : Term) : Term := .lam (.app (.var 0) (shift 1 0 m))

def capture (m : Term) : Nat := freeLeaves 0 m + 3 * occ 1 m

theorem capture_scoped (m : Term) (hs : FreeUnder 2 m) :
    capture m = occ 0 m + 4*occ 1 m := by
  have h0 := freeLeaves_split m 0
  have h1 := freeLeaves_split m 1
  have hz := freeLeaves_closed m 2 hs
  simp only [capture,Nat.reduceAdd] at *
  omega

theorem wrap_apply (m a : Term) : Beta (.app (wrap m) a) (.app a m) := by
  simpa [wrap,contract,substDec,substDec_shift] using
    (Beta.beta (.app (.var 0) (shift 1 0 m)) a)

theorem wrap_diagonal (m : Term) :
    Betas (.app (wrap m) (wrap m)) (.app m m) :=
  .head (wrap_apply m (wrap m)) (.head (wrap_apply m m) (.refl _))

theorem wrap_price (m : Term) : weight 0 (wrap m) = weight 0 m + 6 + capture m := by
  have h := shifted_weight m 0 0 (by omega)
  simp only [wrap,weight,Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte] at *
  simp only [capture]
  omega

theorem wrap_occ (m : Term) (j : Nat) : occ j (wrap m) = occ j m := by
  simp only [wrap,occ,occ_shift_ge m j 0 (by omega),show 0≠j+1 by omega,↓reduceIte]
  omega

theorem wrap_depth (m : Term) (j : Nat) :
    occDepth j (wrap m) = occDepth j m + occ j m := by
  simp only [wrap,occDepth,occ,occDepth_shift_ge m j 0 (by omega),
    occ_shift_ge m j 0 (by omega),show 0≠j+1 by omega,↓reduceIte]
  omega

theorem wrap_lambdas (m : Term) : lamCount (wrap m) = 1+lamCount m := by
  simp [wrap,lamCount,lamCount_shift,Nat.add_comm]

inductive Tree where
  | leaf : Tree
  | app : Tree → Tree → Tree
  deriving DecidableEq, Repr

namespace Tree

def leaves : Tree → Nat
  | .leaf => 1
  | .app f a => leaves f + leaves a

def emit : Tree → Term → Term
  | .leaf, a => a
  | .app f x, a => .app (emit f a) (emit x a)

theorem emit_subst (t : Tree) (m : Term) :
    contract (t.emit (.var 0)) m = t.emit m := by
  induction t with
  | leaf => rfl
  | app f a ihf iha => simp only [emit,contract,substDec] at *; rw [ihf,iha]

theorem emit_scope (t : Tree) : FreeUnder 1 (t.emit (.var 0)) := by
  induction t with
  | leaf => decide
  | app f a ihf iha => exact ⟨ihf,iha⟩

theorem emit_weight (t : Tree) : weight 1 (t.emit (.var 0)) + 2 = 4*t.leaves := by
  induction t with
  | leaf => rfl
  | app f a ihf iha => simp only [emit,weight,leaves]; omega

theorem emit_lambdas (t : Tree) : lamCount (t.emit (.var 0)) = 0 := by
  induction t with
  | leaf => rfl
  | app f a ihf iha => simp [emit,lamCount,ihf,iha]
end Tree

/-- Opaque m leaves and residual W(m) leaves. -/
inductive Mixed where
  | m : Mixed
  | w : Mixed
  | app : Mixed → Mixed → Mixed
  deriving DecidableEq, Repr

namespace Mixed

def leaves : Mixed → Nat
  | .m | .w => 1
  | .app f a => leaves f + leaves a

def wrappers : Mixed → Nat
  | .m => 0
  | .w => 1
  | .app f a => wrappers f + wrappers a

def emit : Mixed → Term → Term
  | .m, a => a
  | .w, a => wrap a
  | .app f x, a => .app (emit f a) (emit x a)

/-- The root binder shares M. Every residual wrapper uses its variable once. -/
def body (u : Mixed) : Term := u.emit (.var 0)

theorem body_subst (u : Mixed) (a : Term) : contract u.body a = u.emit a := by
  induction u with
  | m => rfl
  | w => simp [body,emit,wrap,contract,substDec,shift]
  | app f x ihf ihx => simp only [body,emit,contract,substDec] at *; rw [ihf,ihx]

theorem body_scope (u : Mixed) : FreeUnder 1 u.body := by
  induction u with
  | m => decide
  | w => decide
  | app f a ihf iha => exact ⟨ihf,iha⟩

theorem body_weight (u : Mixed) :
    weight 1 u.body + 2 = 4*u.leaves + 7*u.wrappers := by
  induction u with
  | m => rfl
  | w => rfl
  | app f a ihf iha => simp only [body,emit,weight,leaves,wrappers] at *; omega

theorem body_lambdas (u : Mixed) : lamCount u.body = u.wrappers := by
  induction u with
  | m => rfl
  | w => rfl
  | app f a ihf iha => simp only [body,emit,lamCount,wrappers] at *; omega
end Mixed

/-- Normalize only W X -> X M. M is never inspected. -/
def specialize : Tree → Mixed
  | .leaf => .w
  | .app .leaf .leaf => .app .m .m
  | .app .leaf (.app f a) => .app (specialize (.app f a)) .m
  | .app (.app f a) b => .app (specialize (.app f a)) (specialize b)

theorem specialize_leaves (t : Tree) : (specialize t).leaves = t.leaves := by
  induction t with
  | leaf => rfl
  | app f a ihf iha =>
    cases f with
    | leaf =>
      cases a with
      | leaf => rfl
      | app g b => simp only [specialize,Mixed.leaves,Tree.leaves] at *; omega
    | app g b => simp only [specialize,Mixed.leaves,Tree.leaves] at *; omega

theorem specialize_reduces (t : Tree) (m : Term) :
    Betas (t.emit (wrap m)) ((specialize t).emit m) := by
  induction t with
  | leaf => exact .refl _
  | app f a ihf iha =>
    cases f with
    | leaf =>
      cases a with
      | leaf => exact wrap_diagonal m
      | app g b =>
        exact .head (wrap_apply m ((Tree.app g b).emit (wrap m))) (betas_appL m iha)
    | app g b => exact betas_app ihf iha

/-- Source and specialized source, with arbitrary unchanged pending operands. -/
def source (t : Tree) (m : Term) (cs : List Term) : Term :=
  spine (.app (.lam (t.emit (.var 0))) (wrap m)) cs

def residual (t : Tree) (m : Term) (cs : List Term) : Term :=
  spine (.app (.lam (specialize t).body) m) cs

theorem source_join (t : Tree) (m : Term) (cs : List Term) :
    BetaJoin (source t m cs) (residual t m cs) := by
  apply join_spine
  refine ⟨(specialize t).emit m,?_,?_⟩
  · have h := Beta.beta (t.emit (.var 0)) (wrap m)
    rw [Tree.emit_subst] at h
    exact .head h (specialize_reduces t m)
  · have h := Beta.beta (specialize t).body m
    rw [Mixed.body_subst] at h
    exact .head h (.refl _)

theorem source_price (t : Tree) (m : Term) (cs : List Term) :
    weight 0 (residual t m cs) + 6 + capture m =
      weight 0 (source t m cs) + 7*(specialize t).wrappers := by
  have h1 := t.emit_weight
  have h2 := (specialize t).body_weight
  have h3 := wrap_price m
  rw [specialize_leaves] at h2
  simp only [source,residual,spine_weight,weight,Nat.reduceAdd] at *
  omega

theorem source_lambdas (t : Tree) (m : Term) (cs : List Term) :
    lamCount (residual t m cs) + 1 =
      lamCount (source t m cs) + (specialize t).wrappers := by
  simp only [source,residual,spine_lambdas,lamCount,Tree.emit_lambdas,
    Mixed.body_lambdas,wrap_lambdas]
  omega

theorem closed_template_occ (t : Term) (h : FreeUnder 1 t) (j : Nat) :
    occ j (.lam t) = 0 := occ_of_freeUnder (.lam t) 0 j h (by omega)

theorem source_holes (t : Tree) (m : Term) (cs : List Term) (j : Nat) :
    occ j (residual t m cs) = occ j (source t m cs) := by
  simp only [source,residual,spine_occ]
  change occ j (.lam (specialize t).body)+occ j m+spineOcc j cs =
    occ j (.lam (t.emit (.var 0)))+occ j (wrap m)+spineOcc j cs
  rw [closed_template_occ _ (specialize t).body_scope,
    closed_template_occ _ t.emit_scope,wrap_occ]

theorem source_depth (t : Tree) (m : Term) (cs : List Term) (j : Nat) :
    occDepth j (source t m cs) = occDepth j (residual t m cs)+occ j m := by
  have h1 := occDepth_zero (closed_template_occ _ t.emit_scope j)
  have h2 := occDepth_zero (closed_template_occ _ (specialize t).body_scope j)
  simp only [source,residual,spine_depth]
  change occDepth j (.lam (t.emit (.var 0)))+occDepth j (wrap m)+spineDepth j cs =
    occDepth j (.lam (specialize t).body)+occDepth j m+spineDepth j cs+occ j m
  rw [h1,h2,wrap_depth]
  omega

theorem wrap_scope_inv (m : Term) (h : FreeUnder 2 (wrap m)) : FreeUnder 2 m := by
  have hh := beta_freeUnder (wrap_apply m (.var 0)) 2 ⟨h,by decide⟩
  exact hh.2

theorem residual_scope (t : Tree) (m : Term) (cs : List Term)
    (hs : FreeUnder 2 (source t m cs)) : FreeUnder 2 (residual t m cs) := by
  apply spine_scope_replace cs 2 hs
  have h := spine_scope _ cs 2 hs
  exact ⟨closed_freeUnder (t := .lam (specialize t).body) (specialize t).body_scope 2,wrap_scope_inv m h.2⟩

/-- Full laws for every unary length transfer; this is not a probe lemma. -/
theorem residual_laws {t : Tree} {m : Term} {cs : List Term}
    (hr : ReaderLaws (source t m cs)) : ReaderLaws (residual t m cs) :=
  laws_join hr (residual_scope t m cs hr.scope) (join_symm (source_join t m cs))

/-- An exact necessary capture charge, independent of all external floors. -/
theorem minimum_charge {t : Tree} {m : Term} {cs : List Term}
    (hm : MinimumReader (source t m cs)) :
    6+capture m ≤ 7*(specialize t).wrappers := by
  have hl := residual_laws hm.laws
  have hj := (source_holes t m cs 1).trans hm.oneHole
  have h := hm.minimal _ hl hj
  have hp := source_price t m cs
  omega

theorem minimum_single_residual {t : Tree} {m : Term} {cs : List Term}
    (hm : MinimumReader (source t m cs)) (h : (specialize t).wrappers=1) :
    capture m ≤1 := by
  have hc := minimum_charge hm
  rw [h] at hc
  omega

/-- All residual-free static hand-offs are strictly non-minimal at ANY weight. -/
theorem no_minimum_static {t : Tree} {m : Term} {cs : List Term}
    (h : (specialize t).wrappers=0) : ¬ MinimumReader (source t m cs) := by
  intro hm
  have hc := minimum_charge hm
  rw [h] at hc
  omega

/-- The eight pure application shapes with two through four leaves. -/
def smallTrees : List Tree := [
  .app .leaf .leaf,
  .app .leaf (.app .leaf .leaf),
  .app (.app .leaf .leaf) .leaf,
  .app .leaf (.app .leaf (.app .leaf .leaf)),
  .app .leaf (.app (.app .leaf .leaf) .leaf),
  .app (.app .leaf .leaf) (.app .leaf .leaf),
  .app (.app .leaf (.app .leaf .leaf)) .leaf,
  .app (.app (.app .leaf .leaf) .leaf) .leaf]

theorem small_residuals : smallTrees.map (fun t => (specialize t).wrappers) =
    [0,0,1,0,1,0,1,2] := by decide

/-- A nontrivial closed idempotent: J = lambda x. x (lambda y. x). -/
def idem : Term := .lam (.app (.var 0) (.lam (.var 1)))

theorem idem_idempotent : BetaJoin (.app idem idem) idem :=
  join_of_betas (headSteps_beta_star (by decide : headSteps 3 (.app idem idem) = some idem))

theorem idem_price : weight 0 idem=11 := by decide

/-- Squash a selected x x to x at any lexical depth, preserving the rest. -/
inductive Squash : Nat → Term → Term → Nat → Prop
  | here (j : Nat) : Squash j (.app (.var j) (.var j)) (.var j) (j+4)
  | lam {j b b' s} : Squash (j+1) b b' s → Squash j (.lam b) (.lam b') s
  | appL {j f f' s} (a : Term) : Squash j f f' s → Squash j (.app f a) (.app f' a) s
  | appR {j a a' s} (f : Term) : Squash j a a' s → Squash j (.app f a) (.app f a') s

theorem Squash.positive {j b b' s} (h : Squash j b b' s) : 0<s := by
  induction h with
  | here j => omega
  | lam _ ih => exact ih
  | appL _ _ ih => exact ih
  | appR _ _ ih => exact ih

theorem Squash.price {j b b' s} (h : Squash j b b' s) (d : Nat) (hj : j<d+1) :
    weight d b = weight d b' + s := by
  induction h generalizing d with
  | here j => simp only [weight,show j≠d+1 by omega,↓reduceIte]; omega
  | @lam j b b' s h ih =>
    have he := ih (d+1) (by omega)
    simp only [weight]; omega
  | appL a h ih => simp only [weight,ih d hj]; omega
  | appR f h ih => simp only [weight,ih d hj]; omega

theorem Squash.occ {j b b' s} (h : Squash j b b' s) (i : Nat) (hne : i≠j) :
    Blc.occ i b = Blc.occ i b' := by
  induction h generalizing i with
  | here j => simp [Blc.occ,Ne.symm hne]
  | lam h ih => exact ih (i+1) (by omega)
  | appL a h ih => simp only [Blc.occ,ih i hne]
  | appR f h ih => simp only [Blc.occ,ih i hne]

theorem Squash.scope {j b b' s} (h : Squash j b b' s) (k : Nat)
    (hs : FreeUnder k b) : FreeUnder k b' := by
  induction h generalizing k with
  | here j => exact hs.1
  | lam h ih => exact ih (k+1) hs
  | appL a h ih => exact ⟨ih k hs.1,hs.2⟩
  | appR f h ih => exact ⟨hs.1,ih k hs.2⟩

theorem Squash.subst_join {j b b' s} (h : Squash j b b' s) (a : Term)
    (ha : BetaJoin (.app a a) a) :
    BetaJoin (substDec j a b) (substDec j a b') := by
  induction h generalizing a with
  | here j => simpa [substDec] using ha
  | lam h ih =>
    have hs : BetaJoin (.app (shift 1 0 a) (shift 1 0 a)) (shift 1 0 a) :=
      SelfintValuesTransfer.join_shift ha 0
    obtain ⟨u,h1,h2⟩ := ih (shift 1 0 a) hs
    exact ⟨.lam u,betas_lam h1,betas_lam h2⟩
  | appL x h ih => exact join_appL _ (ih a ha)
  | appR f h ih => exact join_appR _ (ih a ha)

theorem Squash.root_join {b b' s} (h : Squash 0 b b' s) (a : Term)
    (ha : BetaJoin (.app a a) a) (cs : List Term) :
    BetaJoin (spine (.app (.lam b) a) cs) (spine (.app (.lam b') a) cs) := by
  apply join_spine
  have h1 : BetaJoin (.app (.lam b) a) (contract b a) :=
    join_of_betas (.head (.beta b a) (.refl _))
  have h2 : BetaJoin (.app (.lam b') a) (contract b' a) :=
    join_of_betas (.head (.beta b' a) (.refl _))
  exact join_trans h1 (join_trans (h.subst_join a ha) (join_symm h2))

/-- Source-level elimination of ANY diagonal use of an idempotent helper.
    The body can contain arbitrary lambdas, redexes, c and j. -/
theorem no_minimum_idempotent_diagonal {b b' s} (h : Squash 0 b b' s)
    (a : Term) (ha : BetaJoin (.app a a) a) (cs : List Term) :
    ¬ MinimumReader (spine (.app (.lam b) a) cs) := by
  intro hm
  have hs := spine_scope _ cs 2 hm.laws.scope
  have hs' : FreeUnder 2 (spine (.app (.lam b') a) cs) :=
    spine_scope_replace cs 2 hm.laws.scope ⟨h.scope 3 hs.1,hs.2⟩
  have hl := laws_join hm.laws hs' (join_symm (h.root_join a ha cs))
  have hj : occ 1 (spine (.app (.lam b') a) cs)=1 := by
    have ho := h.occ 2 (by decide)
    simpa only [spine_occ,occ,Nat.reduceAdd,←ho] using hm.oneHole
  have hn := hm.minimal _ hl hj
  have hp := h.price 1 (by decide)
  have hpos := h.positive
  simp only [spine_weight,weight,Nat.reduceAdd] at hn
  omega

#print axioms capture_scoped
#print axioms minimum_single_residual
#print axioms small_residuals
#print axioms idem_idempotent
#print axioms no_minimum_idempotent_diagonal
#print axioms specialize_reduces
#print axioms source_join
#print axioms source_price
#print axioms source_lambdas
#print axioms source_holes
#print axioms source_depth
#print axioms residual_laws
#print axioms no_minimum_static
end Blc.Simplify
