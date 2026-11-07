import Handoff
namespace Blc.Simplify
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintWidenHoist SelfintSourceCost SelfintLocalCost SelfintControl
open SelfintFlatMinimum SelfintLambdaSink
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def betaAt : List Nat → Term → Option Term
  | [], .app (.lam b) a => some (contract b a)
  | 0::p, .lam b => (betaAt p b).map .lam
  | 0::p, .app f a => (betaAt p f).map (fun f' => .app f' a)
  | 1::p, .app f a => (betaAt p a).map (.app f)
  | _, _ => none

theorem betaAt_sound {p : List Nat} {t u : Term} (h : betaAt p t = some u) : Beta t u := by
  induction p generalizing t u with
  | nil =>
    cases t with
    | var n => simp [betaAt] at h
    | lam b => simp [betaAt] at h
    | app f a =>
      cases f with
      | var n => simp [betaAt] at h
      | app f a => simp [betaAt] at h
      | lam b =>
        change some (contract b a) = some u at h
        cases h
        exact .beta b a
  | cons n p ih =>
    cases t with
    | var i => simp [betaAt] at h
    | lam b =>
      cases n with
      | zero =>
        simp only [betaAt,Option.map_eq_some_iff] at h
        obtain ⟨b',hb,rfl⟩ := h
        exact .lam (ih hb)
      | succ n => simp [betaAt] at h
    | app f a =>
      cases n with
      | zero =>
        simp only [betaAt,Option.map_eq_some_iff] at h
        obtain ⟨f',hf,rfl⟩ := h
        exact .appL _ (ih hf)
      | succ n =>
        cases n with
        | zero =>
          change (betaAt p a).map (.app f) = some u at h
          simp only [Option.map_eq_some_iff] at h
          obtain ⟨a',ha,rfl⟩ := h
          exact .appR _ (ih ha)
        | succ n => simp [betaAt] at h

def pathSteps : List (List Nat) → Term → Option Term
  | [], t => some t
  | p::ps, t => (betaAt p t).bind (pathSteps ps)

theorem paths_sound {ps : List (List Nat)} {t u : Term}
    (h : pathSteps ps t = some u) : Betas t u := by
  induction ps generalizing t with
  | nil => simp only [pathSteps,Option.some.injEq] at h; subst u; exact .refl _
  | cons p ps ih =>
    simp only [pathSteps,Option.bind_eq_some_iff] at h
    obtain ⟨v,hv,hrest⟩ := h
    exact .head (betaAt_sound hv) (ih hrest)

/-- Arbitrary-body specialization. Hole preservation is a separate source check. -/
theorem no_minimum_join {r s : Term} (hj : BetaJoin r s)
    (hs : FreeUnder 2 s) (ho : occ 1 s = 1) (hw : weight 0 s < weight 0 r) :
    ¬ MinimumReader r := by
  intro hm
  have hl := laws_join hm.laws hs (join_symm hj)
  have hn := hm.minimal s hl ho
  omega

theorem general_root_price (b a d p : Term) (cs : List Term) :
    (weight 0 (spine (.app (.lam d) p) cs) : Int) -
      weight 0 (spine (.app (.lam b) a) cs) =
      (weight 1 d : Int) - weight 1 b + weight 0 p - weight 0 a := by
  simp only [spine_weight,weight,Nat.reduceAdd,Int.natCast_add]
  omega

theorem general_root_occ (b a d p : Term) (cs : List Term) (j : Nat) :
    occ j (spine (.app (.lam d) p) cs) = occ (j+1) d + occ j p + spineOcc j cs := by
  simp only [spine_occ,occ]

theorem general_root_laws {b a d p : Term} {cs : List Term}
    (hj : BetaJoin (contract b a) (contract d p))
    (hs : FreeUnder 2 (spine (.app (.lam d) p) cs))
    (hr : ReaderLaws (spine (.app (.lam b) a) cs)) :
    ReaderLaws (spine (.app (.lam d) p) cs) := by
  apply laws_join hr hs
  apply join_spine
  have h1 : BetaJoin (.app (.lam b) a) (contract b a) := join_of_betas (.head (.beta b a) (.refl _))
  have h2 : BetaJoin (.app (.lam d) p) (contract d p) := join_of_betas (.head (.beta d p) (.refl _))
  exact join_trans h2 (join_trans (join_symm hj) (join_symm h1))

#print axioms paths_sound
#print axioms general_root_price
#print axioms general_root_laws
#print axioms no_minimum_join
end Blc.Simplify
