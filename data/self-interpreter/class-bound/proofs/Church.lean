import Grow
import Blc.BB35Church
namespace Blc.RootcertChurch
open Term SelfintClass SelfintLowerBound SelfintSourceCost
open HandlerLet BodyLetGrow BB35Church
set_option maxRecDepth 10000

/-- A positive numeral, without materializing its possibly enormous index. -/
def PosNumeral (t : Term) : Prop := ∃ n, Betas t (church (n+1))
theorem pos_two : PosNumeral (church 2) := ⟨1,.refl _⟩
theorem pos_app {t u : Term} (ht : PosNumeral t) (hu : PosNumeral u) :
 PosNumeral (.app t u) := by
 obtain ⟨n,hn⟩ := ht
 obtain ⟨m,hm⟩ := hu
 have hp : 0 < (m+1)^(n+1) := Nat.pow_pos (by omega)
 obtain ⟨q,hq⟩ := Nat.exists_eq_succ_of_ne_zero (by omega : (m+1)^(n+1) ≠ 0)
 refine ⟨q,?_⟩
 change Betas (.app t u) (church q.succ)
 rw [←hq]
 exact betas_trans (betas_app hn hm) (church_exp n (m+1))

def positiveTree : Term → Bool
 | .app f a => positiveTree f && positiveTree a
 | t => t == church 2

theorem positiveTree_sound (t : Term) (h : positiveTree t=true) : PosNumeral t := by
 induction t with
 | var n => simp [positiveTree,church] at h
 | lam b =>
   have he : Term.lam b = church 2 := by simpa [positiveTree] using h
   rw [he]; exact pos_two
 | app f a ihf iha =>
   simp only [positiveTree,Bool.and_eq_true] at h
   exact pos_app (ihf h.1) (iha h.2)

theorem church_apply (n : Nat) (f x : Term) :
 Betas (.app (.app (church n) f) x) (iter f n x) := by
 have he : contract (.lam (iter (.var 1) n (.var 0))) f =
    .lam (iter (shift 1 0 f) n (.var 0)) := by
   simp [contract,substDec,iter_subst]
 have he' : contract (iter (shift 1 0 f) n (.var 0)) x = iter f n x := by
   simp [contract,iter_subst,substDec,substDec_shift]
 exact .head (.appL x (he ▸ Beta.beta _ _))
   (.head (he' ▸ Beta.beta _ _) (.refl _))

theorem sig_spine (xs : List Term) (f : Term) (h k : Nat)
 (hf : signature f=some (h,k)) : signature (spine f xs)=some (h,k+xs.length) := by
 induction xs generalizing f k with
 | nil => simpa [spine] using hf
 | cons x xs ih =>
   have ha : signature (.app f x)=some (h,k+1) := by simp [signature,hf]
   simpa [spine,Nat.add_assoc,Nat.add_left_comm,Nat.add_comm] using ih (.app f x) (k+1) ha

theorem positive_wrong_head {r : Term} (prep : List (List Nat))
 (t f x : Term) (rest : List Term) (h k : Nat)
 (he : betaSteps prep (.app r Z)=some (spine (.app (.app t f) x) rest))
 (ht : positiveTree t=true) (hf : signature f=some (h,k)) (hh : h≠3) : ¬ Reader r := by
 intro hr
 obtain ⟨n,hn⟩ := positiveTree_sound t ht
 have hb := spine_betas (betas_trans (betas_appL x (betas_appL f hn)) (church_apply (n+1) f x)) rest
 have red := betas_preserve_nf (betas_trans (betaSteps_sound prep he) hb) hr.zero_red zeroOut_normal
 have hs : signature (iter f (n+1) x)=some (h,k+1) := by simp [iter,signature,hf]
 have hp := signature_betas red (sig_spine rest _ h (k+1) hs)
 have hh' : h=3 := by simpa [signature,zeroOut] using (congrArg (Option.map Prod.fst) hp).symm
 exact hh hh'

#print axioms positive_wrong_head
end Blc.RootcertChurch
