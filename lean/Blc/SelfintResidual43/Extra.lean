import Blc.SelfintResidual43.RegularBase
import Blc.SelfintResidual43.Weighted
import Blc.SelfintSourceRefutations

set_option Elab.async false
namespace Blc.Floor43
open Term SelfintSharp SelfintLowerBound SelfintProbe SelfintControl Round3Floor38 WeakHeadClock
def diag := Term.lam (.app (.var 0) (.var 0))
theorem diagCount {e} (he : IsSelfInterpreter e) : ∃ n, Count (.app e diag) n := by
  obtain ⟨k,h⟩ := inputCount (e := e) (c := diag) (m := identity) (r := .var 0)
    (args := []) (k := 3) he (by decide) (by decide)
  obtain ⟨m,_,hm⟩ := count_app_left h
  exact ⟨m,hm⟩
theorem kCount {e} (he : IsSelfInterpreter e) : ∃ n, Count (.app e churchTrue) n := by
  obtain ⟨k,h⟩ := inputCount (e := e) (c := churchTrue) (m := identity) (r := .var 0)
    (args := []) (k := 2) he (by decide) (by decide)
  obtain ⟨m,_,hm⟩ := count_app_left h
  exact ⟨m,hm⟩
theorem soRaw {e t : Term} (h : Betas e t) (hs : SelfintSingleObject.SO t) : ¬ IsSelfInterpreter e :=
  fun he => SelfintSingleObject.selfInterpreter_not_so (SelfintSingleObject.SourceRefutations.reduct_interprets h he) hs
theorem soK {e t : Term} (h : Betas (.app e churchTrue) t) (hs : SelfintSingleObject.SO t) : ¬ IsSelfInterpreter e :=
  fun he => SelfintSingleObject.specialized_not_so he h hs
inductive Recipe where
  | v | a (f x : Recipe) | closed (b : Recipe) | dead (b : Recipe)
  | obj (r g : Term) (b s : Recipe)
def soVerify : Recipe → Term → Bool
  | .v,.var _ => true
  | .a f x,.app u v => soVerify f u && soVerify x v
  | .closed x,.lam b => decide (Closed (.lam b)) && soVerify x b
  | .dead x,.lam b => decide (occ 0 b = 0) && soVerify x b
  | .obj r g x y,.lam b => decide (FreeUnder 1 (.lam g) ∧ Term.lam b = substDec 0 r (.lam g)) && soVerify x b && soVerify y r
  | _,_ => false
theorem soVerify_sound (p : Recipe) (t : Term) (h : soVerify p t=true) : SelfintSingleObject.SO t := by
  induction p generalizing t with
  | v => cases t <;> simp [soVerify] at h; exact .var _
  | a f x ih ix =>
    cases t <;> simp [soVerify] at h
    exact .app (ih _ h.1) (ix _ h.2)
  | closed p ih =>
    cases t <;> simp [soVerify] at h
    exact SelfintSingleObject.so_closed_lam h.1 (ih _ h.2)
  | dead p ih =>
    cases t <;> simp [soVerify] at h
    exact SelfintSingleObject.so_dead h.1 (ih _ h.2)
  | obj r g x y ix iy =>
    cases t <;> simp [soVerify] at h
    exact .lam (ix _ h.1.2) (iy _ h.2) h.1.1.1 h.1.1.2

theorem probeJoin {e c m r u v : Term} {ps qs : List (List Direction)} {args : List Term}
    (hm : Closed m) (hp : replay ps (call e c m r args) = some u)
    (hq : replay qs (want c m r args) = some v) (he : IsSelfInterpreter e) : BetaJoin u v :=
  join_symm (join_after_betas (replay_sound hq) (join_symm
    (join_after_betas (replay_sound hp) (joinArgs (contract_join he hm c r) args))))
theorem probeHead {t u : Term} (ht : headStep t = none) (hu : headStep u = none)
    (hm : headSignature t ≠ headSignature u) : ¬ BetaJoin t u :=
  fun h => hm (hnf_join_signature ht hu h)
theorem probeW {t u : Term} (ht : WGrammar38.B WGrammar38.empty t) (hu : headStep u = none) :
    ¬ BetaJoin t u := by
  intro hj
  obtain ⟨k,v,hv,hz⟩ := (solvable_join hj).2 ⟨0,u,rfl,hu⟩
  obtain ⟨_,hn,_⟩ := WGrammar38.progress v (WGrammar38.steps_preserve k ht hv)
  rw [show headStep v = none from hz] at hn
  contradiction
theorem hasLam {t : Term} (h : headStep t = none) (hz : (headSignature t).1=0) {b} :
    ¬ BetaJoin (.lam b) t := by
  rintro ⟨u,ha,hb⟩
  obtain ⟨v,rfl,_⟩ := lam_betas_shape ha
  have hq := congrArg Prod.fst (hnf_betas_signature h hb)
  simp [headSignature,hz] at hq
theorem absentNF {t v : Term} (i : Nat) (ht : occ i t=0) (hv : NFt v) (hx : occ i v ≠ 0) : ¬ BetaJoin t v := by
  rintro ⟨w,ha,hb⟩
  have he := normalForm_betas_eq (fun _ => nft_no_beta hv) hb
  subst w
  exact hx (occ_zero_betas ha i ht)
end Blc.Floor43
