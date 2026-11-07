import Special
namespace Blc.BodyLetGrow
open Term SelfintClass SelfintLowerBound SelfintSourceCost
open SelfintStreamSpecializer WeakHeadClock HandlerLet
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def lift (xs : List Term) := xs.map (shift 1 0)

theorem subst_spine (xs : List Term) (t a : Term) (j : Nat) :
 substDec j a (spine t xs) = spine (substDec j a t) (xs.map (substDec j a)) := by
 induction xs generalizing t with
 | nil => rfl
 | cons x xs ih => simpa [spine, substDec] using ih (.app t x)

theorem shift_spine (xs : List Term) (t : Term) (d c : Nat) :
 shift d c (spine t xs) = spine (shift d c t) (xs.map (shift d c)) := by
 induction xs generalizing t with
 | nil => rfl
 | cons x xs ih => simpa [spine,shift] using ih (.app t x)

theorem spine_append (xs ys : List Term) (t : Term) :
 spine t (xs++ys)=spine (spine t xs) ys := by
 induction xs generalizing t with
 | nil => rfl
 | cons x xs ih => exact ih (.app t x)

theorem subst_lift (xs : List Term) (a : Term) :
 (lift xs).map (substDec 0 a)=xs := by
 simp [lift,List.map_map,Function.comp_def,substDec_shift]

theorem shift_lift (xs : List Term) (c : Nat) (hc : c ≤ 1) :
 (lift xs).map (shift 1 c) = xs.map (shift 2 0) := by
 simp [lift,List.map_map,Function.comp_def,shift_shift0 1 1 c _ hc]

def G (ws : List Term) (x : Term) : Term :=
 .lam (spine (.app (shift 1 0 x) (.var 0)) (lift ws))
def A (ws ts : List Term) : Term :=
 .lam (spine (.app (.var 0) (G (lift ws) (.var 0))) (lift ts))

theorem subst_G (ws : List Term) (x : Term) :
 substDec 0 x (G (lift ws) (.var 0))=G ws x := by
 simp [G,substDec,shift,subst_spine,lift,List.map_map,Function.comp_def,
  shift_shift0 1 1 0 _ (by omega), substDec_shift0 1 2 _ _ (by omega)]

theorem contract_A (ws ts : List Term) (x : Term) :
 contract (spine (.app (.var 0) (G (lift ws) (.var 0))) (lift ts)) x =
 spine (.app x (G ws x)) ts := by
 simp [contract,subst_spine,substDec,subst_G,subst_lift]

theorem A_step (ws ts : List Term) (x : Term) :
 weakStep (.app (A ws ts) x)=some (spine (.app x (G ws x)) ts) := by
 simpa [A,weakStep] using congrArg some (contract_A ws ts x)

theorem shift_A (ws ts : List Term) :
 shift 1 0 (A ws ts)=A (lift ws) (lift ts) := by
 simp [A,G,shift,shift_spine,lift,List.map_map,Function.comp_def,
  shift_shift0 1 1 1 _ (by omega),
  shift_shift0 1 1 0 _ (by omega),
  shift_shift0 1 2 2 _ (by omega),
  shift_shift0 1 2 0 _ (by omega)]

theorem G_A (ws ts : List Term) :
 Betas (G ws (A ws ts)) (A ws (ts++ws)) := by
 unfold G
 rw [shift_A]
 apply betas_lam
 have hb := SelfintSourceCost.spine_beta (Beta.beta (spine (.app (.var 0) (G (lift (lift ws)) (.var 0))) (lift (lift ts))) (.var 0)) (lift ws)
 rw [contract_A] at hb
 apply Betas.head hb
 simpa [A,G,lift,List.map_append,spine_append] using Betas.refl (spine (spine (.app (.var 0) (G (lift ws) (.var 0))) (lift ts)) (lift ws))

theorem spine_betas {t u : Term} (h : Betas t u) (xs : List Term) :
 Betas (spine t xs) (spine u xs) := by
 induction xs generalizing t u with
 | nil => exact h
 | cons x xs ih => exact ih (betas_appL x h)

theorem no_count (ws : List Term) : ∀ n, ∀ ts ss, ¬ Count (.app (A ws ts) (A ws ss)) n := by
 intro n
 induction n using Nat.strongRecOn with
 | ind n ih =>
  intro ts ss hc
  obtain ⟨m,hm,hcm⟩ := head_decreases hc (A_step ws ts (A ws ss))
  have br := betas_appR (A ws ss) (G_A ws ss)
  have sr := spine_betas br ts
  obtain ⟨k,hk,hck⟩ := count_reduct m hcm sr
  obtain ⟨l,hl,hcl⟩ := count_spine_reflect ts _ k hck
  exact ih l (by omega) ss (ss++ws) hcl

theorem no_nf (ws ts ss rest : List Term) :
 ¬ HasNormalForm (spine (.app (A ws ts) (A ws ss)) rest) := by
 intro hn
 obtain ⟨n,hc⟩ := hasNormalForm_count hn
 obtain ⟨m,_,hcm⟩ := count_spine_reflect rest _ n hc
 exact no_count ws m ts ss hcm

theorem grow_reduct {r : Term} (z : Bool) (prep : List (List Nat))
 (ws ts ss rest : List Term)
 (he : betaSteps prep (.app r (input z))=some (spine (.app (A ws ts) (A ws ss)) rest)) : ¬ Reader r := by
 intro hr
 have red := betas_preserve_nf (betaSteps_sound prep he) (reader_red hr z) (output_nf z)
 exact no_nf ws ts ss rest ⟨_,red,output_nf z⟩
#print axioms grow_reduct
end Blc.BodyLetGrow
