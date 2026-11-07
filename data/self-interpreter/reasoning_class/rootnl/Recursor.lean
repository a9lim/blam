import Grow
namespace Blc.RootcertRecursor
open Term SelfintClass SelfintLowerBound SelfintSourceCost
open HandlerLet BodyLetGrow WeakHeadClock
set_option maxRecDepth 10000

def H : Term := .lam (.lam (.app (.var 1) (.app (.var 0) (.var 1))))
def K : Term := .app (.app H (.app H H)) H

theorem step (x : Term) : weakSteps 6 (.app K x)=some (.app K (.app x K)) := by
 simp [weakSteps,weakStep,K,H,contract,substDec,shift,substDec_shift]

theorem no_count : ∀ n, ∀ x, ¬ Count (.app K x) n := by
 intro n
 induction n using Nat.strongRecOn with
 | ind n ih =>
  intro x hc
  obtain ⟨m,hm,hcm⟩ := weakSteps_clock 6 (step x) hc
  exact ih m (by omega) (.app x K) hcm

theorem no_nf (x : Term) (rest : List Term) :
 ¬ HasNormalForm (spine (.app K x) rest) := by
 intro hn
 obtain ⟨n,hc⟩ := hasNormalForm_count hn
 obtain ⟨m,_,hcm⟩ := count_spine_reflect rest _ n hc
 exact no_count m x hcm

theorem reject {r : Term} (prep : List (List Nat)) (x : Term) (rest : List Term)
 (he : betaSteps prep (.app r Z)=some (spine (.app K x) rest)) : ¬ Reader r := by
 intro hr
 have hn := betas_preserve_nf (betaSteps_sound prep he) hr.zero_red zeroOut_normal
 exact no_nf x rest ⟨_,hn,zeroOut_normal⟩
#print axioms reject
end Blc.RootcertRecursor
