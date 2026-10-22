import Certificates
namespace Blc.PendingClosed
open Term SelfintClass SelfintLowerBound SelfintSourceCost HandlerLet
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

theorem reject_cycle {reader : Term} (c j n r : Term)
    (prep ps qs : List (List Nat)) (core : Term) (extra rest : List Term) (rhs : Term)
    (he : betaSteps prep (inst4 c j n r (.app reader Z))=some (spine core rest))
    (hc : (weakStep core).bind (betaSteps ps)=some (spine core extra))
    (hf : replay qs (inst4 c j n r zeroOut)=rhs) (hn : NFt rhs) : ¬ Reader reader := by
  intro hr
  have hred:=betas_trans (inst4_red c j n r hr.zero_red) (replay_sound qs _)
  rw [hf] at hred
  have hnormal:=SelfintClassNext.nft_normal hn
  have h:=betas_preserve_nf (betaSteps_sound prep he) hred hnormal
  exact mixed_cycle_no_nf core extra rest ps hc ⟨_,h,hnormal⟩
#print axioms reject_cycle
end Blc.PendingClosed
