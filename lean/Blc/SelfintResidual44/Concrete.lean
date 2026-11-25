import Blc.SelfintResidual44.More

set_option Elab.async false
namespace Blc.Floor44.Concrete
open Term SelfintLowerBound SelfintSourceCost SelfintRegularSoundness SelfintProbe WeakHeadClock SelfintControl Round3Floor38
inductive Cl where
  | mk (t : Term) (env : List Cl)
def den : Cl → Term
  | .mk t es => instN (es.map den) 0 t
structure S where
  curr : Cl
  stack : List Cl
def term (s : S) := spine (den s.curr) (s.stack.map den)
def step : S → Option S
  | ⟨.mk (.var i) es,ss⟩ => (es[i]?).map (fun c => ⟨c,ss⟩)
  | ⟨.mk (.app f a) es,ss⟩ => some ⟨.mk f es,.mk a es::ss⟩
  | ⟨.mk (.lam _) _,[]⟩ => none
  | ⟨.mk (.lam b) es,c::ss⟩ => some ⟨.mk b (c::es),ss⟩
theorem step_betas {s u} (h : step s = some u) : Betas (term s) (term u) := by
  cases s with | mk c ss =>
  cases c with | mk t es =>
  cases t with
  | var i =>
    obtain ⟨v,hv,rfl⟩ := Option.map_eq_some_iff.mp h
    have hh : (es.map den)[i]? = some (den v) := by simp [hv]
    have hl : instN (es.map den) 0 (.var i) = den v := by
      simpa only [Nat.zero_add,shift_zero] using instN_var_lookup _ 0 i _ hh
    simp only [term,den,hl]; exact .refl _
  | app f a =>
    simp only [step,Option.some.injEq] at h; subst u
    simp only [term,den,instN_app,List.map_cons,spine]; exact .refl _
  | lam b =>
    cases ss with
    | nil => cases h
    | cons c ss =>
      simp only [step,Option.some.injEq] at h; subst u
      have hw := beta_spine (instN (es.map den) 1 b) (den c) (ss.map den)
      apply Betas.head _ (.refl _)
      apply weakStep_beta
      simpa only [term,den,instN_lam,List.map_cons,instN,shift_zero,contract,spine] using hw

def run : Nat → S → S
  | 0,s => s
  | n+1,s => match step s with | none => s | some u => run n u
theorem trace (n : Nat) (s : S) : Betas (term s) (term (run n s)) := by
  induction n generalizing s with
  | zero => exact .refl _
  | succ n ih => cases h : step s with
    | none => simpa [run,h] using Betas.refl (term s)
    | some u => simpa [run,h] using betas_trans (step_betas h) (ih u)
theorem extvar (es : List Term) (d i : Nat) :
    instN es d (.var (d+es.length+i)) = .var (d+i) := by
  induction es generalizing d with
  | nil => simp [instN]
  | cons a es ih =>
    simp only [instN,List.length_cons]
    rw [show d+(es.length+1)+i=(d+1)+es.length+i by omega,ih]
    simp [substDec,show d+1+i≠d by omega,show d+1+i>d by omega]
inductive Obs where | lam | rigid (i args : Nat) deriving DecidableEq
def obs : S → Option Obs
  | ⟨.mk (.lam _) _,[]⟩ => some .lam
  | ⟨.mk (.var i) es,ss⟩ => if es.length ≤ i then some (.rigid (i-es.length) ss.length) else none
  | _ => none
def spec : Obs → Term → Prop
  | .lam,t => ∃ b,t=.lam b
  | .rigid i k,t => Rigid t ∧ shape t=(i,k)
theorem spine_apps (t : Term) (as : List Term) : spine t as = apps t as := by
  induction as generalizing t with
  | nil => rfl
  | cons a as ih => exact ih (.app t a)
theorem obs_ok {s z} (h : obs s = some z) : spec z (term s) := by
  cases s with | mk c ss =>
  cases c with | mk t es =>
  cases t with
  | app => cases h
  | lam b =>
    cases ss with
    | nil => cases h; simp [spec,term,den,instN_lam,spine]
    | cons => cases h
  | var i =>
    simp only [obs] at h
    split at h
    next hi =>
      cases h
      have hh := extvar (es.map den) 0 (i-es.length)
      simp only [List.length_map,Nat.zero_add] at hh
      rw [show es.length+(i-es.length)=i by omega] at hh
      simp only [term,den,hh,spec,spine_apps]
      change Rigid (apps (.var _) _) ∧ shape (apps (.var _) _) = _
      exact ⟨apps_rigid (.var _) _, by simp [shape_apps,shape]⟩
    next => cases h
theorem unique {s t x y} (hx : spec x s) (hy : spec y t) (hj : BetaJoin s t) : x=y := by
  cases x <;> cases y
  · rfl
  · obtain ⟨b,rfl⟩ := hx; exact (lam_not_join_rigid hy.1 hj).elim
  · obtain ⟨b,rfl⟩ := hy; exact (lam_not_join_rigid hx.1 (join_symm hj)).elim
  · obtain ⟨h1,h2⟩ := hx; obtain ⟨h3,h4⟩ := hy
    have eq := h2.symm.trans ((rigid_join_shape h1 h3 hj).trans h4)
    cases eq; rfl
def inspect (n : Nat) (t : Term) := obs (run n ⟨.mk t [],[]⟩)
theorem mismatch {t u x y} {n k} (h : BetaJoin t u)
    (hx : inspect n t = some x) (hy : inspect k u = some y) (hn : x≠y) : False := by
  have h1 := trace n ⟨.mk t [],[]⟩
  have h2 := trace k ⟨.mk u [],[]⟩
  simp only [term,den,List.map_nil,spine,instN] at h1 h2
  exact hn (unique (obs_ok hx) (obs_ok hy)
    (join_symm (join_after_betas h2 (join_symm (join_after_betas h1 h)))))
theorem reject {e c m r x y args} {n k} (hm : Closed m)
    (hx : inspect n (call e c m r args) = some x)
    (hy : inspect k (want c m r args) = some y) (hn : x≠y) : ¬ IsSelfInterpreter e :=
  fun he => mismatch (joinArgs (contract_join he hm c r) args) hx hy hn
end Blc.Floor44.Concrete
