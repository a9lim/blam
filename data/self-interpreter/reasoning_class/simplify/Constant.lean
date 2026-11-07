import Factor
namespace Blc.Simplify
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintWidenHoist SelfintSourceCost SelfintLocalCost SelfintControl
open SelfintFlatMinimum SelfintLambdaSink
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def constant (m : Term) : Term := .lam (shift 1 0 m)

theorem constant_apply (m a : Term) : Beta (.app (constant m) a) m := by
  simpa only [constant,contract,substDec_shift] using Beta.beta (shift 1 0 m) a

theorem constant_price (m : Term) : weight 0 (constant m)=weight 0 m+2+capture m := by
  have hh := shifted_weight m 0 0 (by omega)
  simp only [constant,weight,capture,Nat.reduceAdd] at *
  omega

def Mixed.cemit : Mixed → Term → Term
  | .m, a => a
  | .w, a => constant a
  | .app f x, a => .app (f.cemit a) (x.cemit a)

def cspecialize : Tree → Mixed
  | .leaf => .w
  | .app .leaf _ => .m
  | .app (.app f a) b => .app (cspecialize (.app f a)) (cspecialize b)

theorem cspecialize_reduces (t : Tree) (m : Term) :
    Betas (t.emit (constant m)) ((cspecialize t).cemit m) := by
  induction t with
  | leaf => exact .refl _
  | app f a ihf iha =>
    cases f with
    | leaf => exact .head (constant_apply m (a.emit (constant m))) (.refl _)
    | app g b => exact betas_app ihf iha

theorem Mixed.cbody_subst (u : Mixed) (m : Term) :
    contract (u.cemit (.var 0)) m = u.cemit m := by
  induction u with
  | m => rfl
  | w => simp [cemit,constant,contract,substDec,shift]
  | app f a ihf iha => simp only [cemit,contract,substDec] at *; rw [ihf,iha]

theorem Mixed.cbody_price (u : Mixed) :
    weight 1 (u.cemit (.var 0))+2=4*u.leaves+3*u.wrappers := by
  induction u with
  | m => rfl
  | w => rfl
  | app f a ihf iha => simp only [cemit,weight,leaves,wrappers]; omega

theorem Mixed.cbody_scope (u : Mixed) : FreeUnder 1 (u.cemit (.var 0)) := by
  induction u with
  | m => decide
  | w => decide
  | app f a ihf iha => exact ⟨ihf,iha⟩

def csource (t : Tree) (m : Term) (cs : List Term) : Term :=
  spine (.app (.lam (t.emit (.var 0))) (constant m)) cs

def cresidual (t : Tree) (m : Term) (cs : List Term) : Term :=
  spine (.app (.lam ((cspecialize t).cemit (.var 0))) m) cs

theorem constant_source_join (t : Tree) (m : Term) (cs : List Term) :
    BetaJoin (csource t m cs) (cresidual t m cs) := by
  apply join_spine
  refine ⟨(cspecialize t).cemit m,?_,?_⟩
  · have h := Beta.beta (t.emit (.var 0)) (constant m)
    rw [Tree.emit_subst] at h
    exact .head h (cspecialize_reduces t m)
  · have h := Beta.beta ((cspecialize t).cemit (.var 0)) m
    rw [Mixed.cbody_subst] at h
    exact .head h (.refl _)

theorem constant_source_price (t : Tree) (m : Term) (cs : List Term) :
    weight 0 (cresidual t m cs)+4*t.leaves+2+capture m =
      weight 0 (csource t m cs)+4*(cspecialize t).leaves+3*(cspecialize t).wrappers := by
  have hb := t.emit_weight
  have hd := (cspecialize t).cbody_price
  have ha := constant_price m
  simp only [csource,cresidual,spine_weight,weight,Nat.reduceAdd] at *
  omega

theorem constant_holes (t : Tree) (m : Term) (cs : List Term) (j : Nat) :
    occ j (cresidual t m cs)=occ j (csource t m cs) := by
  simp only [csource,cresidual,spine_occ,occ]
  rw [occ_of_freeUnder _ _ (j+1) t.emit_scope (by omega),
    occ_of_freeUnder _ _ (j+1) (cspecialize t).cbody_scope (by omega)]
  simp only [constant,occ,occ_shift_ge m j 0 (by omega)]

theorem constant_residual_scope (t : Tree) (m : Term) (cs : List Term)
    (hs : FreeUnder 2 (csource t m cs)) : FreeUnder 2 (cresidual t m cs) := by
  have h := spine_scope _ cs 2 hs
  have hm := beta_freeUnder (constant_apply m (.var 0)) 2 ⟨h.2,by decide⟩
  exact spine_scope_replace cs 2 hs
    ⟨closed_freeUnder (t := .lam ((cspecialize t).cemit (.var 0)))
      (cspecialize t).cbody_scope 2,hm⟩

theorem constant_laws {t : Tree} {m : Term} {cs : List Term}
    (hr : ReaderLaws (csource t m cs)) : ReaderLaws (cresidual t m cs) :=
  laws_join hr (constant_residual_scope t m cs hr.scope) (join_symm (constant_source_join t m cs))

theorem constant_minimum_charge {t : Tree} {m : Term} {cs : List Term}
    (hm : MinimumReader (csource t m cs)) :
    4*t.leaves+2+capture m ≤4*(cspecialize t).leaves+3*(cspecialize t).wrappers := by
  have hn := hm.minimal _ (constant_laws hm.laws) ((constant_holes t m cs 1).trans hm.oneHole)
  have hp := constant_source_price t m cs
  omega

theorem constant_small_strict : ∀ t ∈ smallTrees.take 3,
    4*(cspecialize t).leaves+3*(cspecialize t).wrappers < 4*t.leaves+2 := by decide

theorem no_minimum_constant_small {t : Tree} (ht : t ∈ smallTrees.take 3)
    (m : Term) (cs : List Term) : ¬ MinimumReader (csource t m cs) := by
  intro hm
  have hn := constant_minimum_charge hm
  have hs := constant_small_strict t ht
  omega

#print axioms constant_source_join
#print axioms constant_source_price
#print axioms constant_holes
#print axioms constant_laws
#print axioms no_minimum_constant_small
end Blc.Simplify
