import Certificates
namespace Blc.Rootcert2Tri
open Term SelfintClass SelfintLowerBound SelfintSourceCost HandlerLet WeakHeadClock
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
set_option linter.unusedSimpArgs false

def A (D : Term) : Term := .lam (.lam (.app (.var 1) D))
def K (D : Term) : Term := .app (.app (A D) (A D)) (A D)
def next (D x : Term) : Term := substDec 0 x (substDec 1 (shift 1 0 (K D)) D)

theorem rule (D x y : Term) : weakSteps 2 (.app (.app (A D) x) y)=
 some (.app x (substDec 0 y (substDec 1 (shift 1 0 x) D))) := by
 simp [weakSteps,weakStep,A,contract,substDec,substDec_shift]

theorem steps_app (n : Nat) {t u : Term} (h : weakSteps n t=some u) (a : Term) :
 weakSteps n (.app t a)=some (.app u a) := by
 induction n generalizing t with
 | zero => simp only [weakSteps,Option.some.injEq] at h; subst u; rfl
 | succ n ih =>
  obtain ⟨v,hv,hu⟩:=Option.bind_eq_some_iff.mp h
  simpa [weakSteps,weak_app hv a] using ih hu

theorem steps_comp (m n : Nat) {t u v : Term}
 (h : weakSteps m t=some u) (g : weakSteps n u=some v) : weakSteps (m+n) t=some v := by
 induction m generalizing t with
 | zero => simp only [weakSteps,Option.some.injEq] at h; subst u; simpa using g
 | succ m ih =>
  obtain ⟨w,hw,hu⟩:=Option.bind_eq_some_iff.mp h
  simpa [weakSteps,Nat.succ_add,hw] using ih hu

theorem step (D x : Term) (hs : weakSteps 2 (K D)=some (.app (A D) (K D))) :
 weakSteps 4 (.app (K D) x)=some (.app (K D) (next D x)) :=
 steps_comp 2 2 (steps_app 2 hs x) (rule D (K D) x)

theorem no_count (D : Term) (hs : weakSteps 2 (K D)=some (.app (A D) (K D))) :
 ∀ n x, ¬ Count (.app (K D) x) n := by
 intro n
 induction n using Nat.strongRecOn with
 | ind n ih =>
  intro x hc
  obtain ⟨m,hm,hcm⟩:=weakSteps_clock 4 (step D x hs) hc
  exact ih m (by omega) (next D x) hcm

inductive Bad : Term → Prop
 | tri (D x : Term) (hs : weakSteps 2 (K D)=some (.app (A D) (K D))) : Bad (.app (K D) x)
 | cycle (core : Term) (ps : List (List Nat)) (extra : List Term)
     (hc : (weakStep core).bind (betaSteps ps)=some (spine core extra)) : Bad core
 | left {f : Term} (a : Term) : Bad f → Bad (.app f a)
 | strict (qs : List Term) {a : Term} : Bad a → Bad (.app (.lam (spine (.var 0) qs)) a)
 | replay (ps : List (List Nat)) {t u : Term} (he : betaSteps ps t=some u) : Bad u → Bad t

theorem subst_spine (xs : List Term) (t a : Term) (j : Nat) :
 substDec j a (spine t xs)=spine (substDec j a t) (xs.map (substDec j a)) := by
 induction xs generalizing t with
 | nil => rfl
 | cons x xs ih => simpa [spine,substDec] using ih (.app t x)

theorem bad_no_count {t : Term} (hb : Bad t) : ∀ n, ¬ Count t n := by
 induction hb with
 | tri D x hs => intro n; exact no_count D hs n x
 | cycle core ps extra hc =>
  intro n hcn
  obtain ⟨u,hu,he⟩:=Option.bind_eq_some_iff.mp hc
  obtain ⟨k,hk,hck⟩:=head_decreases hcn hu
  obtain ⟨l,hl,hcl⟩:=count_reduct k hck (betaSteps_sound ps he)
  obtain ⟨p,hp,hcp⟩:=count_spine_reflect extra core l hcl
  have heq:=count_unique hcn hcp
  omega
 | left a hf ih =>
  intro n hc
  obtain ⟨m,_,hm⟩:=count_app_reflect n _ a hc
  exact ih m hm
 | @strict qs a ha ih =>
  intro n hc
  have hs : weakStep (.app (.lam (spine (.var 0) qs)) a)=
      some (spine a (qs.map (substDec 0 a))) := by
    simp [weakStep,contract,subst_spine,substDec]
  obtain ⟨k,_,hk⟩:=head_decreases hc hs
  obtain ⟨m,_,hm⟩:=count_spine_reflect (qs.map (substDec 0 a)) a k hk
  exact ih m hm
 | replay ps he hb ih =>
  intro n hc
  obtain ⟨m,_,hm⟩:=count_reduct n hc (betaSteps_sound ps he)
  exact ih m hm

theorem reject {r t : Term} (prep : List (List Nat))
 (he : betaSteps prep (.app r Z)=some t) (hb : Bad t) : ¬ Reader r := by
 intro hr
 have red:=betas_preserve_nf (betaSteps_sound prep he) hr.zero_red zeroOut_normal
 obtain ⟨n,hc⟩:=hasNormalForm_count ⟨_,red,zeroOut_normal⟩
 exact bad_no_count hb n hc

#print axioms no_count
#print axioms reject
end Blc.Rootcert2Tri
