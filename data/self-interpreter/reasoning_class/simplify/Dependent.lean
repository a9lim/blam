import Factor
namespace Blc.Simplify
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintWidenHoist SelfintSourceCost SelfintLocalCost SelfintControl
open SelfintFlatMinimum SelfintLambdaSink
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

theorem depwrap_apply (p a : Term) :
    Beta (.app (depwrap p) a) (.app a (.app p a)) := by
  simpa [depwrap,contract,substDec,substDec_shift] using
    Beta.beta (.app (.var 0) (.app (shift 1 0 p) (.var 0))) a

def Mixed.demit : Mixed → Term → Term
  | .m, p => p
  | .w, p => depwrap p
  | .app f a, p => .app (f.demit p) (a.demit p)

def dapply : Mixed → Mixed → Mixed
  | .w, .w => .app (.app .m .w) (.app .m (.app .m .w))
  | .w, a => .app a (.app .m a)
  | f, a => .app f a

def dspecialize : Tree → Mixed
  | .leaf => .w
  | .app f a => dapply (dspecialize f) (dspecialize a)

theorem dapply_reduces (f a : Mixed) (p : Term) :
    Betas (.app (f.demit p) (a.demit p)) ((dapply f a).demit p) := by
  cases f with
  | m => exact .refl _
  | app f a => exact .refl _
  | w =>
    cases a with
    | m => exact .head (depwrap_apply p p) (.refl _)
    | app f a => exact .head (depwrap_apply p ((Mixed.app f a).demit p)) (.refl _)
    | w =>
      exact .head (depwrap_apply p (depwrap p))
        (.head (depwrap_apply p (.app p (depwrap p))) (.refl _))

theorem dspecialize_reduces (t : Tree) (p : Term) :
    Betas (t.emit (depwrap p)) ((dspecialize t).demit p) := by
  induction t with
  | leaf => exact .refl _
  | app f a ihf iha =>
    exact betas_trans (betas_app ihf iha) (dapply_reduces _ _ p)

theorem Tree.emit_join (t : Tree) {a b : Term} (hj : BetaJoin a b) :
    BetaJoin (t.emit a) (t.emit b) := by
  induction t with
  | leaf => exact hj
  | app f a ihf iha => exact join_trans (join_appL _ ihf) (join_appR _ iha)

theorem Mixed.dbody_subst (u : Mixed) (p : Term) :
    contract (u.demit (.var 0)) p=u.demit p := by
  induction u with
  | m => rfl
  | w => simp [demit,depwrap,contract,substDec,shift]
  | app f a ihf iha => simp only [demit,contract,substDec] at *; rw [ihf,iha]

theorem Mixed.dbody_price (u : Mixed) :
    weight 1 (u.demit (.var 0))+2=4*u.leaves+11*u.wrappers := by
  induction u with
  | m => rfl
  | w => rfl
  | app f a ihf iha => simp only [demit,weight,leaves,wrappers]; omega

theorem Mixed.dbody_scope (u : Mixed) : FreeUnder 1 (u.demit (.var 0)) := by
  induction u with
  | m => decide
  | w => decide
  | app f a ihf iha => exact ⟨ihf,iha⟩

def dsource (t : Tree) (m : Term) (cs : List Term) : Term :=
  spine (.app (.lam (t.emit (.var 0))) (dependent m)) cs

def dresidual (t : Tree) (m : Term) (cs : List Term) : Term :=
  spine (.app (.lam ((dspecialize t).demit (.var 0))) (.lam m)) cs

theorem dependent_source_join (t : Tree) (m : Term) (cs : List Term) :
    BetaJoin (dsource t m cs) (dresidual t m cs) := by
  apply join_spine
  have hb := Beta.beta (t.emit (.var 0)) (dependent m)
  rw [Tree.emit_subst] at hb
  have h1 := t.emit_join (join_symm (join_of_betas (dependent_reconstruct m)))
  have h2 := join_of_betas (dspecialize_reduces t (.lam m))
  have hc := Beta.beta ((dspecialize t).demit (.var 0)) (.lam m)
  rw [Mixed.dbody_subst] at hc
  exact join_trans (join_of_betas (.head hb (.refl _)))
    (join_trans h1 (join_trans h2 (join_symm (join_of_betas (.head hc (.refl _))))))

theorem dependent_source_price (t : Tree) (m : Term) (cs : List Term) :
    weight 0 (dresidual t m cs)+4*t.leaves+4 =
      weight 0 (dsource t m cs)+4*(dspecialize t).leaves+11*(dspecialize t).wrappers := by
  have hb := t.emit_weight
  have hd := (dspecialize t).dbody_price
  have ha := dependent_price m
  simp only [dsource,dresidual,spine_weight,weight,Nat.reduceAdd] at *
  omega

theorem dependent_holes (t : Tree) (m : Term) (cs : List Term) (j : Nat) :
    occ j (dresidual t m cs)=occ j (dsource t m cs) := by
  simp only [dsource,dresidual,spine_occ,occ]
  rw [occ_of_freeUnder _ _ (j+1) t.emit_scope (by omega),
    occ_of_freeUnder _ _ (j+1) (dspecialize t).dbody_scope (by omega)]
  simp only [dependent,occ,show 0≠j+1 by omega,↓reduceIte,Nat.zero_add]

theorem dependent_residual_scope (t : Tree) (m : Term) (cs : List Term)
    (hs : FreeUnder 2 (dsource t m cs)) : FreeUnder 2 (dresidual t m cs) := by
  have h := spine_scope _ cs 2 hs
  exact spine_scope_replace cs 2 hs
    ⟨closed_freeUnder (t := .lam ((dspecialize t).demit (.var 0)))
      (dspecialize t).dbody_scope 2,h.2.2⟩

theorem dependent_laws {t : Tree} {m : Term} {cs : List Term}
    (hr : ReaderLaws (dsource t m cs)) : ReaderLaws (dresidual t m cs) :=
  laws_join hr (dependent_residual_scope t m cs hr.scope) (join_symm (dependent_source_join t m cs))

theorem dependent_minimum_charge {t : Tree} {m : Term} {cs : List Term}
    (hm : MinimumReader (dsource t m cs)) :
    4*t.leaves+4 ≤4*(dspecialize t).leaves+11*(dspecialize t).wrappers := by
  have hn := hm.minimal _ (dependent_laws hm.laws) ((dependent_holes t m cs 1).trans hm.oneHole)
  have hp := dependent_source_price t m cs
  omega

theorem dependent_counts (t : Tree) :
    t.leaves ≤ (dspecialize t).leaves ∧ 1 ≤ (dspecialize t).wrappers := by
  induction t with
  | leaf => decide
  | app f a ihf iha =>
    simp only [dspecialize]
    cases hf : dspecialize f <;> cases ha : dspecialize a <;>
      simp only [hf,ha,dapply,Mixed.leaves,Mixed.wrappers,Tree.leaves] at * <;> omega

/-- Opaque dependent factoring always costs at least seven bits, for ANY tree. -/
theorem dependent_uniform_overhead (t : Tree) (m : Term) (cs : List Term) :
    weight 0 (dsource t m cs)+7 ≤ weight 0 (dresidual t m cs) := by
  have hh := dependent_counts t
  have hp := dependent_source_price t m cs
  omega

/-- This factoring transformation is more expensive on all eight small trees.
    That is a limitation of the transformation, not a minimum-reader counterexample. -/
theorem dependent_small_positive : ∀ t ∈ smallTrees,
    4*t.leaves+4 < 4*(dspecialize t).leaves+11*(dspecialize t).wrappers := by decide

#print axioms dependent_uniform_overhead
#print axioms dependent_source_join
#print axioms dependent_source_price
#print axioms dependent_holes
#print axioms dependent_laws
#print axioms dependent_small_positive
end Blc.Simplify
