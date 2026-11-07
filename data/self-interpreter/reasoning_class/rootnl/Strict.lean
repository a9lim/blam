import Replicator
namespace Blc.RootNLStrict
open Term SelfintClass SelfintLowerBound SelfintSourceCost
open HandlerLet WeakHeadClock RootNLReplicator
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

/-- A syntactically strict lambda forwards head demand to its argument. -/
inductive Bad : Term → Prop
 | cycle (core : Term) (ps : List (List Nat)) (extra : List Term)
     (hc : (weakStep core).bind (betaSteps ps)=some (spine core extra)) : Bad core
 | left {f : Term} (a : Term) : Bad f → Bad (.app f a)
 | strict (qs : List Term) {a : Term} : Bad a → Bad (.app (.lam (spine (.var 0) qs)) a)
 | replay (ps : List (List Nat)) {t u : Term} (he : betaSteps ps t=some u) : Bad u → Bad t

theorem bad_no_count {t : Term} (hb : Bad t) : ∀ n, ¬ Count t n := by
 induction hb with
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
#print axioms bad_no_count
#print axioms reject
end Blc.RootNLStrict
