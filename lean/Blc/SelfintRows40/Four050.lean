import Blc.Selfint40Evidence.R301464817274
import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1400965483766 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1400965483766 : ¬ MinimalInterpreter v1400965483766 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965483382 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1400965483382 : ¬ MinimalInterpreter v1400965483382 :=
  chain_cut false 2 (by decide)

private def v1400965477622 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1400965477622 : ¬ MinimalInterpreter v1400965477622 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965477238 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1400965477238 : ¬ MinimalInterpreter v1400965477238 :=
  chain_cut false 2 (by decide)

private def v1400965475702 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1400965475702 : ¬ MinimalInterpreter v1400965475702 :=
  chain_cut false 2 (by decide)

private def v1400965385462 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1400965385462 : ¬ MinimalInterpreter v1400965385462 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965385078 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1400965385078 : ¬ MinimalInterpreter v1400965385078 :=
  chain_cut false 2 (by decide)

private def v1400965379318 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1)))))))
private theorem no_v1400965379318 : ¬ MinimalInterpreter v1400965379318 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965354742 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1400965354742 : ¬ MinimalInterpreter v1400965354742 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965378934 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 1))))))
private theorem no_v1400965378934 : ¬ MinimalInterpreter v1400965378934 :=
  chain_cut false 2 (by decide)

private def v1400965377398 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1))))))
private theorem no_v1400965377398 : ¬ MinimalInterpreter v1400965377398 :=
  chain_cut false 2 (by decide)

private def v1400965354358 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1400965354358 : ¬ MinimalInterpreter v1400965354358 :=
  chain_cut false 2 (by decide)

private def v1400965352822 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 1))))))
private theorem no_v1400965352822 : ¬ MinimalInterpreter v1400965352822 :=
  chain_cut false 2 (by decide)

private def v1400965346678 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1400965346678 : ¬ MinimalInterpreter v1400965346678 :=
  chain_cut false 2 (by decide)

private def v1400967843062 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1400967843062 : ¬ MinimalInterpreter v1400967843062 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400967842678 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1400967842678 : ¬ MinimalInterpreter v1400967842678 :=
  chain_cut false 2 (by decide)

private def v1400967836918 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1400967836918 : ¬ MinimalInterpreter v1400967836918 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400967836534 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1400967836534 : ¬ MinimalInterpreter v1400967836534 :=
  chain_cut false 2 (by decide)

private def v1400967834998 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1400967834998 : ¬ MinimalInterpreter v1400967834998 :=
  chain_cut false 2 (by decide)

private def v1400967990518 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1400967990518 : ¬ MinimalInterpreter v1400967990518 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 0) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1400967990134 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1400967990134 : ¬ MinimalInterpreter v1400967990134 :=
  chain_cut false 2 (by decide)

private def v1400967597302 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1400967597302 : ¬ MinimalInterpreter v1400967597302 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400967596918 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1400967596918 : ¬ MinimalInterpreter v1400967596918 :=
  chain_cut false 2 (by decide)

private def v1400977280246 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1400977280246 : ¬ MinimalInterpreter v1400977280246 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400977279862 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1400977279862 : ¬ MinimalInterpreter v1400977279862 :=
  cost_cut false 3 (by decide)

private def v1400977274102 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1400977274102 : ¬ MinimalInterpreter v1400977274102 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400977273718 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1400977273718 : ¬ MinimalInterpreter v1400977273718 :=
  cost_cut false 3 (by decide)

private def v1400977272182 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1400977272182 : ¬ MinimalInterpreter v1400977272182 :=
  cost_cut false 3 (by decide)

private def v1400977427702 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1400977427702 : ¬ MinimalInterpreter v1400977427702 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1400977427318 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1400977427318 : ¬ MinimalInterpreter v1400977427318 :=
  cost_cut false 3 (by decide)

private def v1400978017526 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1400978017526 : ¬ MinimalInterpreter v1400978017526 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1400978017142 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1400978017142 : ¬ MinimalInterpreter v1400978017142 :=
  cost_cut false 3 (by decide)

private def v1400976444662 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1400976444662 : ¬ MinimalInterpreter v1400976444662 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400976444278 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1400976444278 : ¬ MinimalInterpreter v1400976444278 :=
  cycle_cut 2 8 (by decide) (by decide)

theorem four350 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,0,0,2,1]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,0,0,2,1] = [v1400965483766,v1400965483382,v1400965477622,v1400965477238,v1400965475702,v1400965385462,v1400965385078,v1400965379318,v1400965354742,v1400965378934,v1400965377398,v1400965354358,v1400965352822,v1400965346678,v1400967843062,v1400967842678,v1400967836918,v1400967836534,v1400967834998,v1400967990518,v1400967990134,v1400967597302,v1400967596918,v1400977280246,v1400977279862,v1400977274102,v1400977273718,v1400977272182,v1400977427702,v1400977427318,v1400978017526,v1400978017142,v1400976444662,v1400976444278] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965483766) (.cons (no_v1400965483382) (.cons (no_v1400965477622) (.cons (no_v1400965477238) (.cons (no_v1400965475702) (.cons (no_v1400965385462) (.cons (no_v1400965385078) (.cons (no_v1400965379318) (.cons (no_v1400965354742) (.cons (no_v1400965378934) (.cons (no_v1400965377398) (.cons (no_v1400965354358) (.cons (no_v1400965352822) (.cons (no_v1400965346678) (.cons (no_v1400967843062) (.cons (no_v1400967842678) (.cons (no_v1400967836918) (.cons (no_v1400967836534) (.cons (no_v1400967834998) (.cons (no_v1400967990518) (.cons (no_v1400967990134) (.cons (no_v1400967597302) (.cons (no_v1400967596918) (.cons (no_v1400977280246) (.cons (no_v1400977279862) (.cons (no_v1400977274102) (.cons (no_v1400977273718) (.cons (no_v1400977272182) (.cons (no_v1400977427702) (.cons (no_v1400977427318) (.cons (no_v1400978017526) (.cons (no_v1400978017142) (.cons (no_v1400976444662) (.cons (no_v1400976444278) .nil))))))))))))))))))))))))))))))))))

private def v1400965484142 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1400965484142 : ¬ MinimalInterpreter v1400965484142 :=
  chain_cut false 2 (by decide)

private def v1400965483438 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1400965483438 : ¬ MinimalInterpreter v1400965483438 :=
  chain_cut false 2 (by decide)

private def v1400965477998 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1400965477998 : ¬ MinimalInterpreter v1400965477998 :=
  chain_cut false 2 (by decide)

private def v1400965477294 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1400965477294 : ¬ MinimalInterpreter v1400965477294 :=
  chain_cut false 2 (by decide)

private def v1400965475758 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1400965475758 : ¬ MinimalInterpreter v1400965475758 :=
  chain_cut false 2 (by decide)

private def v1400965385838 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1400965385838 : ¬ MinimalInterpreter v1400965385838 :=
  chain_cut false 2 (by decide)

private def v1400965385134 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1400965385134 : ¬ MinimalInterpreter v1400965385134 :=
  chain_cut false 2 (by decide)

private def v1400965379694 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)))))))
private theorem no_v1400965379694 : ¬ MinimalInterpreter v1400965379694 :=
  chain_cut false 2 (by decide)

private def v1400965355118 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1400965355118 : ¬ MinimalInterpreter v1400965355118 :=
  chain_cut false 2 (by decide)

private def v1400965378990 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 2))))))
private theorem no_v1400965378990 : ¬ MinimalInterpreter v1400965378990 :=
  chain_cut false 2 (by decide)

private def v1400965377454 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 2))))))
private theorem no_v1400965377454 : ¬ MinimalInterpreter v1400965377454 :=
  chain_cut false 2 (by decide)

private def v1400965354414 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1400965354414 : ¬ MinimalInterpreter v1400965354414 :=
  chain_cut false 2 (by decide)

private def v1400965352878 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 2))))))
private theorem no_v1400965352878 : ¬ MinimalInterpreter v1400965352878 :=
  chain_cut false 2 (by decide)

private def v1400965346734 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1400965346734 : ¬ MinimalInterpreter v1400965346734 :=
  chain_cut false 2 (by decide)

private def v1400967843438 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1400967843438 : ¬ MinimalInterpreter v1400967843438 :=
  chain_cut false 2 (by decide)

private def v1400967842734 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1400967842734 : ¬ MinimalInterpreter v1400967842734 :=
  chain_cut false 2 (by decide)

private def v1400967837294 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1400967837294 : ¬ MinimalInterpreter v1400967837294 :=
  chain_cut false 2 (by decide)

private def v1400967836590 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1400967836590 : ¬ MinimalInterpreter v1400967836590 :=
  chain_cut false 2 (by decide)

private def v1400967835054 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1400967835054 : ¬ MinimalInterpreter v1400967835054 :=
  chain_cut false 2 (by decide)

private def v1400967990894 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1400967990894 : ¬ MinimalInterpreter v1400967990894 :=
  chain_cut false 2 (by decide)

private def v1400967990190 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1400967990190 : ¬ MinimalInterpreter v1400967990190 :=
  chain_cut false 2 (by decide)

private def v1400967597678 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1400967597678 : ¬ MinimalInterpreter v1400967597678 :=
  chain_cut false 2 (by decide)

private def v1400967596974 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1400967596974 : ¬ MinimalInterpreter v1400967596974 :=
  chain_cut false 2 (by decide)

private def v1400977280622 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1400977280622 : ¬ MinimalInterpreter v1400977280622 :=
  cost_cut false 3 (by decide)

private def v1400977279918 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1400977279918 : ¬ MinimalInterpreter v1400977279918 :=
  cost_cut false 3 (by decide)

private def v1400977274478 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1400977274478 : ¬ MinimalInterpreter v1400977274478 :=
  cost_cut false 3 (by decide)

private def v1400977273774 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1400977273774 : ¬ MinimalInterpreter v1400977273774 :=
  cost_cut false 3 (by decide)

private def v1400977272238 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1400977272238 : ¬ MinimalInterpreter v1400977272238 :=
  cost_cut false 3 (by decide)

private def v1400977428078 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1400977428078 : ¬ MinimalInterpreter v1400977428078 :=
  cost_cut false 3 (by decide)

private def v1400977427374 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1400977427374 : ¬ MinimalInterpreter v1400977427374 :=
  cost_cut false 3 (by decide)

private def v1400978017902 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1400978017902 : ¬ MinimalInterpreter v1400978017902 :=
  cost_cut false 3 (by decide)

private def v1400978017198 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1400978017198 : ¬ MinimalInterpreter v1400978017198 :=
  cost_cut false 3 (by decide)

private def v1400976445038 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1400976445038 : ¬ MinimalInterpreter v1400976445038 :=
  cost_cut false 10 (by decide)

private def v1400976444334 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1400976444334 : ¬ MinimalInterpreter v1400976444334 :=
  cycle_cut 2 8 (by decide) (by decide)

theorem four351 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,0,1,0,2]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,0,1,0,2] = [v1400965484142,v1400965483438,v1400965477998,v1400965477294,v1400965475758,v1400965385838,v1400965385134,v1400965379694,v1400965355118,v1400965378990,v1400965377454,v1400965354414,v1400965352878,v1400965346734,v1400967843438,v1400967842734,v1400967837294,v1400967836590,v1400967835054,v1400967990894,v1400967990190,v1400967597678,v1400967596974,v1400977280622,v1400977279918,v1400977274478,v1400977273774,v1400977272238,v1400977428078,v1400977427374,v1400978017902,v1400978017198,v1400976445038,v1400976444334] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965484142) (.cons (no_v1400965483438) (.cons (no_v1400965477998) (.cons (no_v1400965477294) (.cons (no_v1400965475758) (.cons (no_v1400965385838) (.cons (no_v1400965385134) (.cons (no_v1400965379694) (.cons (no_v1400965355118) (.cons (no_v1400965378990) (.cons (no_v1400965377454) (.cons (no_v1400965354414) (.cons (no_v1400965352878) (.cons (no_v1400965346734) (.cons (no_v1400967843438) (.cons (no_v1400967842734) (.cons (no_v1400967837294) (.cons (no_v1400967836590) (.cons (no_v1400967835054) (.cons (no_v1400967990894) (.cons (no_v1400967990190) (.cons (no_v1400967597678) (.cons (no_v1400967596974) (.cons (no_v1400977280622) (.cons (no_v1400977279918) (.cons (no_v1400977274478) (.cons (no_v1400977273774) (.cons (no_v1400977272238) (.cons (no_v1400977428078) (.cons (no_v1400977427374) (.cons (no_v1400978017902) (.cons (no_v1400978017198) (.cons (no_v1400976445038) (.cons (no_v1400976444334) .nil))))))))))))))))))))))))))))))))))

theorem four352 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,0,1,1,1]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400965484154 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1400965484154 : ¬ MinimalInterpreter v1400965484154 :=
  chain_cut false 2 (by decide)

private def v1400965483450 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1400965483450 : ¬ MinimalInterpreter v1400965483450 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965478010 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1400965478010 : ¬ MinimalInterpreter v1400965478010 :=
  chain_cut false 2 (by decide)

private def v1400965477306 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1400965477306 : ¬ MinimalInterpreter v1400965477306 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965475770 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1400965475770 : ¬ MinimalInterpreter v1400965475770 :=
  chain_cut false 2 (by decide)

private def v1400965385850 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1400965385850 : ¬ MinimalInterpreter v1400965385850 :=
  chain_cut false 2 (by decide)

private def v1400965385146 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1400965385146 : ¬ MinimalInterpreter v1400965385146 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965379706 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 0)))))))
private theorem no_v1400965379706 : ¬ MinimalInterpreter v1400965379706 :=
  chain_cut false 2 (by decide)

private def v1400965355130 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1400965355130 : ¬ MinimalInterpreter v1400965355130 :=
  chain_cut false 2 (by decide)

private def v1400965379002 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0))))))
private theorem no_v1400965379002 : ¬ MinimalInterpreter v1400965379002 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965377466 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))))))
private theorem no_v1400965377466 : ¬ MinimalInterpreter v1400965377466 :=
  chain_cut false 2 (by decide)

private def v1400965354426 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1400965354426 : ¬ MinimalInterpreter v1400965354426 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965352890 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)) (.var 0))))))
private theorem no_v1400965352890 : ¬ MinimalInterpreter v1400965352890 :=
  chain_cut false 2 (by decide)

private def v1400965346746 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1400965346746 : ¬ MinimalInterpreter v1400965346746 :=
  chain_cut false 2 (by decide)

private def v1400967843450 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1400967843450 : ¬ MinimalInterpreter v1400967843450 :=
  chain_cut false 2 (by decide)

private def v1400967842746 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1400967842746 : ¬ MinimalInterpreter v1400967842746 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400967837306 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1400967837306 : ¬ MinimalInterpreter v1400967837306 :=
  chain_cut false 2 (by decide)

private def v1400967836602 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1400967836602 : ¬ MinimalInterpreter v1400967836602 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400967835066 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1400967835066 : ¬ MinimalInterpreter v1400967835066 :=
  chain_cut false 2 (by decide)

private def v1400967990906 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1400967990906 : ¬ MinimalInterpreter v1400967990906 :=
  chain_cut false 2 (by decide)

private def v1400967990202 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1400967990202 : ¬ MinimalInterpreter v1400967990202 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1400967597690 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1400967597690 : ¬ MinimalInterpreter v1400967597690 :=
  chain_cut false 2 (by decide)

private def v1400967596986 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1400967596986 : ¬ MinimalInterpreter v1400967596986 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400967541690 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 0)))))
private theorem no_v1400967541690 : ¬ MinimalInterpreter v1400967541690 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 0))) (.app (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v1400967540154 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.var 0)))))
private theorem no_v1400967540154 : ¬ MinimalInterpreter v1400967540154 :=
  chain_cut false 2 (by decide)

private def v1400977280634 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1400977280634 : ¬ MinimalInterpreter v1400977280634 :=
  cost_cut false 3 (by decide)

private def v1400977279930 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1400977279930 : ¬ MinimalInterpreter v1400977279930 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400977274490 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1400977274490 : ¬ MinimalInterpreter v1400977274490 :=
  cost_cut false 3 (by decide)

private def v1400977273786 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1400977273786 : ¬ MinimalInterpreter v1400977273786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400977272250 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1400977272250 : ¬ MinimalInterpreter v1400977272250 :=
  cost_cut false 3 (by decide)

private def v1400977428090 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1400977428090 : ¬ MinimalInterpreter v1400977428090 :=
  cost_cut false 3 (by decide)

private def v1400977427386 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1400977427386 : ¬ MinimalInterpreter v1400977427386 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1400978017914 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1400978017914 : ¬ MinimalInterpreter v1400978017914 :=
  cost_cut false 3 (by decide)

private def v1400978017210 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1400978017210 : ¬ MinimalInterpreter v1400978017210 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1400976445050 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1400976445050 : ¬ MinimalInterpreter v1400976445050 :=
  fun he => _root_.Certgen.R301464817274.excluded he.1

private def v1400976444346 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1400976444346 : ¬ MinimalInterpreter v1400976444346 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400976192442 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 0))))
private theorem no_v1400976192442 : ¬ MinimalInterpreter v1400976192442 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0)))))

private def v1400976190906 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.var 0))))
private theorem no_v1400976190906 : ¬ MinimalInterpreter v1400976190906 :=
  cycle_cut 1 2 (by decide) (by decide)

theorem four353 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,0,1,2,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,0,1,2,0] = [v1400965484154,v1400965483450,v1400965478010,v1400965477306,v1400965475770,v1400965385850,v1400965385146,v1400965379706,v1400965355130,v1400965379002,v1400965377466,v1400965354426,v1400965352890,v1400965346746,v1400967843450,v1400967842746,v1400967837306,v1400967836602,v1400967835066,v1400967990906,v1400967990202,v1400967597690,v1400967596986,v1400967541690,v1400967540154,v1400977280634,v1400977279930,v1400977274490,v1400977273786,v1400977272250,v1400977428090,v1400977427386,v1400978017914,v1400978017210,v1400976445050,v1400976444346,v1400976192442,v1400976190906] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965484154) (.cons (no_v1400965483450) (.cons (no_v1400965478010) (.cons (no_v1400965477306) (.cons (no_v1400965475770) (.cons (no_v1400965385850) (.cons (no_v1400965385146) (.cons (no_v1400965379706) (.cons (no_v1400965355130) (.cons (no_v1400965379002) (.cons (no_v1400965377466) (.cons (no_v1400965354426) (.cons (no_v1400965352890) (.cons (no_v1400965346746) (.cons (no_v1400967843450) (.cons (no_v1400967842746) (.cons (no_v1400967837306) (.cons (no_v1400967836602) (.cons (no_v1400967835066) (.cons (no_v1400967990906) (.cons (no_v1400967990202) (.cons (no_v1400967597690) (.cons (no_v1400967596986) (.cons (no_v1400967541690) (.cons (no_v1400967540154) (.cons (no_v1400977280634) (.cons (no_v1400977279930) (.cons (no_v1400977274490) (.cons (no_v1400977273786) (.cons (no_v1400977272250) (.cons (no_v1400977428090) (.cons (no_v1400977427386) (.cons (no_v1400978017914) (.cons (no_v1400978017210) (.cons (no_v1400976445050) (.cons (no_v1400976444346) (.cons (no_v1400976192442) (.cons (no_v1400976190906) .nil))))))))))))))))))))))))))))))))))))))

private def v1400965484342 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1400965484342 : ¬ MinimalInterpreter v1400965484342 :=
  chain_cut false 2 (by decide)

private def v1400965483478 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1400965483478 : ¬ MinimalInterpreter v1400965483478 :=
  chain_cut false 2 (by decide)

private def v1400965478198 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1400965478198 : ¬ MinimalInterpreter v1400965478198 :=
  chain_cut false 2 (by decide)

private def v1400965477334 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1400965477334 : ¬ MinimalInterpreter v1400965477334 :=
  chain_cut false 2 (by decide)

private def v1400965475798 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1400965475798 : ¬ MinimalInterpreter v1400965475798 :=
  chain_cut false 2 (by decide)

private def v1400965386038 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1400965386038 : ¬ MinimalInterpreter v1400965386038 :=
  chain_cut false 2 (by decide)

private def v1400965385174 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1400965385174 : ¬ MinimalInterpreter v1400965385174 :=
  chain_cut false 2 (by decide)

private def v1400965379894 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 1)))))))
private theorem no_v1400965379894 : ¬ MinimalInterpreter v1400965379894 :=
  chain_cut false 2 (by decide)

private def v1400965355318 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1400965355318 : ¬ MinimalInterpreter v1400965355318 :=
  chain_cut false 2 (by decide)

private def v1400965379030 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 1))))))
private theorem no_v1400965379030 : ¬ MinimalInterpreter v1400965379030 :=
  chain_cut false 2 (by decide)

private def v1400965377494 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 1))))))
private theorem no_v1400965377494 : ¬ MinimalInterpreter v1400965377494 :=
  chain_cut false 2 (by decide)

private def v1400965354454 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1400965354454 : ¬ MinimalInterpreter v1400965354454 :=
  chain_cut false 2 (by decide)

private def v1400965352918 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)) (.var 1))))))
private theorem no_v1400965352918 : ¬ MinimalInterpreter v1400965352918 :=
  chain_cut false 2 (by decide)

private def v1400965346774 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1400965346774 : ¬ MinimalInterpreter v1400965346774 :=
  chain_cut false 2 (by decide)

private def v1400967843638 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1400967843638 : ¬ MinimalInterpreter v1400967843638 :=
  chain_cut false 2 (by decide)

private def v1400967842774 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1400967842774 : ¬ MinimalInterpreter v1400967842774 :=
  chain_cut false 2 (by decide)

private def v1400967837494 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1400967837494 : ¬ MinimalInterpreter v1400967837494 :=
  chain_cut false 2 (by decide)

private def v1400967836630 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1400967836630 : ¬ MinimalInterpreter v1400967836630 :=
  chain_cut false 2 (by decide)

private def v1400967835094 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1400967835094 : ¬ MinimalInterpreter v1400967835094 :=
  chain_cut false 2 (by decide)

private def v1400967991094 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1400967991094 : ¬ MinimalInterpreter v1400967991094 :=
  chain_cut false 2 (by decide)

private def v1400967990230 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1400967990230 : ¬ MinimalInterpreter v1400967990230 :=
  chain_cut false 2 (by decide)

private def v1400967597878 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1400967597878 : ¬ MinimalInterpreter v1400967597878 :=
  chain_cut false 2 (by decide)

private def v1400967597014 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1400967597014 : ¬ MinimalInterpreter v1400967597014 :=
  chain_cut false 2 (by decide)

private def v1400977280822 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1400977280822 : ¬ MinimalInterpreter v1400977280822 :=
  cost_cut false 3 (by decide)

private def v1400977279958 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1400977279958 : ¬ MinimalInterpreter v1400977279958 :=
  cost_cut false 3 (by decide)

private def v1400977274678 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1400977274678 : ¬ MinimalInterpreter v1400977274678 :=
  cost_cut false 3 (by decide)

private def v1400977273814 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1400977273814 : ¬ MinimalInterpreter v1400977273814 :=
  cost_cut false 3 (by decide)

private def v1400977272278 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1400977272278 : ¬ MinimalInterpreter v1400977272278 :=
  cost_cut false 3 (by decide)

private def v1400977428278 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1400977428278 : ¬ MinimalInterpreter v1400977428278 :=
  cost_cut false 3 (by decide)

private def v1400977427414 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1400977427414 : ¬ MinimalInterpreter v1400977427414 :=
  cost_cut false 3 (by decide)

private def v1400978018102 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1400978018102 : ¬ MinimalInterpreter v1400978018102 :=
  cost_cut false 3 (by decide)

private def v1400978017238 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1400978017238 : ¬ MinimalInterpreter v1400978017238 :=
  cost_cut false 3 (by decide)

private def v1400976445238 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1400976445238 : ¬ MinimalInterpreter v1400976445238 :=
  cost_cut false 7 (by decide)

private def v1400976444374 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1400976444374 : ¬ MinimalInterpreter v1400976444374 :=
  cycle_cut 3 4 (by decide) (by decide)

theorem four354 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,0,2,0,1]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,0,2,0,1] = [v1400965484342,v1400965483478,v1400965478198,v1400965477334,v1400965475798,v1400965386038,v1400965385174,v1400965379894,v1400965355318,v1400965379030,v1400965377494,v1400965354454,v1400965352918,v1400965346774,v1400967843638,v1400967842774,v1400967837494,v1400967836630,v1400967835094,v1400967991094,v1400967990230,v1400967597878,v1400967597014,v1400977280822,v1400977279958,v1400977274678,v1400977273814,v1400977272278,v1400977428278,v1400977427414,v1400978018102,v1400978017238,v1400976445238,v1400976444374] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965484342) (.cons (no_v1400965483478) (.cons (no_v1400965478198) (.cons (no_v1400965477334) (.cons (no_v1400965475798) (.cons (no_v1400965386038) (.cons (no_v1400965385174) (.cons (no_v1400965379894) (.cons (no_v1400965355318) (.cons (no_v1400965379030) (.cons (no_v1400965377494) (.cons (no_v1400965354454) (.cons (no_v1400965352918) (.cons (no_v1400965346774) (.cons (no_v1400967843638) (.cons (no_v1400967842774) (.cons (no_v1400967837494) (.cons (no_v1400967836630) (.cons (no_v1400967835094) (.cons (no_v1400967991094) (.cons (no_v1400967990230) (.cons (no_v1400967597878) (.cons (no_v1400967597014) (.cons (no_v1400977280822) (.cons (no_v1400977279958) (.cons (no_v1400977274678) (.cons (no_v1400977273814) (.cons (no_v1400977272278) (.cons (no_v1400977428278) (.cons (no_v1400977427414) (.cons (no_v1400978018102) (.cons (no_v1400978017238) (.cons (no_v1400976445238) (.cons (no_v1400976444374) .nil))))))))))))))))))))))))))))))))))

private def v1400965484346 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1400965484346 : ¬ MinimalInterpreter v1400965484346 :=
  chain_cut false 2 (by decide)

private def v1400965483482 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1400965483482 : ¬ MinimalInterpreter v1400965483482 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0))))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965478202 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1400965478202 : ¬ MinimalInterpreter v1400965478202 :=
  chain_cut false 2 (by decide)

private def v1400965477338 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1400965477338 : ¬ MinimalInterpreter v1400965477338 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965475802 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1400965475802 : ¬ MinimalInterpreter v1400965475802 :=
  chain_cut false 2 (by decide)

private def v1400965386042 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1400965386042 : ¬ MinimalInterpreter v1400965386042 :=
  chain_cut false 2 (by decide)

private def v1400965385178 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1400965385178 : ¬ MinimalInterpreter v1400965385178 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965379898 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 0)))))))
private theorem no_v1400965379898 : ¬ MinimalInterpreter v1400965379898 :=
  chain_cut false 2 (by decide)

private def v1400965355322 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1400965355322 : ¬ MinimalInterpreter v1400965355322 :=
  chain_cut false 2 (by decide)

private def v1400965379034 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0))))))
private theorem no_v1400965379034 : ¬ MinimalInterpreter v1400965379034 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965377498 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0))))))
private theorem no_v1400965377498 : ¬ MinimalInterpreter v1400965377498 :=
  chain_cut false 2 (by decide)

private def v1400965354458 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1400965354458 : ¬ MinimalInterpreter v1400965354458 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965352922 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)) (.var 0))))))
private theorem no_v1400965352922 : ¬ MinimalInterpreter v1400965352922 :=
  chain_cut false 2 (by decide)

private def v1400965346778 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1400965346778 : ¬ MinimalInterpreter v1400965346778 :=
  chain_cut false 2 (by decide)

private def v1400967843642 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1400967843642 : ¬ MinimalInterpreter v1400967843642 :=
  chain_cut false 2 (by decide)

private def v1400967842778 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1400967842778 : ¬ MinimalInterpreter v1400967842778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400967837498 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1400967837498 : ¬ MinimalInterpreter v1400967837498 :=
  chain_cut false 2 (by decide)

private def v1400967836634 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1400967836634 : ¬ MinimalInterpreter v1400967836634 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400967835098 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1400967835098 : ¬ MinimalInterpreter v1400967835098 :=
  chain_cut false 2 (by decide)

private def v1400967991098 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1400967991098 : ¬ MinimalInterpreter v1400967991098 :=
  chain_cut false 2 (by decide)

private def v1400967990234 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1400967990234 : ¬ MinimalInterpreter v1400967990234 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.app (.var 0) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1400967597882 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1400967597882 : ¬ MinimalInterpreter v1400967597882 :=
  chain_cut false 2 (by decide)

private def v1400967597018 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1400967597018 : ¬ MinimalInterpreter v1400967597018 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400967541722 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 0)))))
private theorem no_v1400967541722 : ¬ MinimalInterpreter v1400967541722 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 0))) (.app (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v1400967540186 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))) (.var 0)))))
private theorem no_v1400967540186 : ¬ MinimalInterpreter v1400967540186 :=
  chain_cut false 2 (by decide)

private def v1400977280826 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1400977280826 : ¬ MinimalInterpreter v1400977280826 :=
  cost_cut false 3 (by decide)

private def v1400977279962 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1400977279962 : ¬ MinimalInterpreter v1400977279962 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400977274682 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v1400977274682 : ¬ MinimalInterpreter v1400977274682 :=
  cost_cut false 3 (by decide)

private def v1400977273818 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v1400977273818 : ¬ MinimalInterpreter v1400977273818 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400977272282 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v1400977272282 : ¬ MinimalInterpreter v1400977272282 :=
  cost_cut false 3 (by decide)

private def v1400977428282 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1400977428282 : ¬ MinimalInterpreter v1400977428282 :=
  cost_cut false 3 (by decide)

private def v1400977427418 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1400977427418 : ¬ MinimalInterpreter v1400977427418 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1400978018106 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v1400978018106 : ¬ MinimalInterpreter v1400978018106 :=
  cost_cut false 3 (by decide)

private def v1400978017242 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v1400978017242 : ¬ MinimalInterpreter v1400978017242 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1400976445242 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1400976445242 : ¬ MinimalInterpreter v1400976445242 :=
  cost_cut false 7 (by decide)

private def v1400976444378 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1400976444378 : ¬ MinimalInterpreter v1400976444378 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400976192474 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 0))))
private theorem no_v1400976192474 : ¬ MinimalInterpreter v1400976192474 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 0)))))

private def v1400976190938 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))) (.var 0))))
private theorem no_v1400976190938 : ¬ MinimalInterpreter v1400976190938 :=
  cycle_cut 1 2 (by decide) (by decide)

theorem four355 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,0,2,1,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,0,2,1,0] = [v1400965484346,v1400965483482,v1400965478202,v1400965477338,v1400965475802,v1400965386042,v1400965385178,v1400965379898,v1400965355322,v1400965379034,v1400965377498,v1400965354458,v1400965352922,v1400965346778,v1400967843642,v1400967842778,v1400967837498,v1400967836634,v1400967835098,v1400967991098,v1400967990234,v1400967597882,v1400967597018,v1400967541722,v1400967540186,v1400977280826,v1400977279962,v1400977274682,v1400977273818,v1400977272282,v1400977428282,v1400977427418,v1400978018106,v1400978017242,v1400976445242,v1400976444378,v1400976192474,v1400976190938] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965484346) (.cons (no_v1400965483482) (.cons (no_v1400965478202) (.cons (no_v1400965477338) (.cons (no_v1400965475802) (.cons (no_v1400965386042) (.cons (no_v1400965385178) (.cons (no_v1400965379898) (.cons (no_v1400965355322) (.cons (no_v1400965379034) (.cons (no_v1400965377498) (.cons (no_v1400965354458) (.cons (no_v1400965352922) (.cons (no_v1400965346778) (.cons (no_v1400967843642) (.cons (no_v1400967842778) (.cons (no_v1400967837498) (.cons (no_v1400967836634) (.cons (no_v1400967835098) (.cons (no_v1400967991098) (.cons (no_v1400967990234) (.cons (no_v1400967597882) (.cons (no_v1400967597018) (.cons (no_v1400967541722) (.cons (no_v1400967540186) (.cons (no_v1400977280826) (.cons (no_v1400977279962) (.cons (no_v1400977274682) (.cons (no_v1400977273818) (.cons (no_v1400977272282) (.cons (no_v1400977428282) (.cons (no_v1400977427418) (.cons (no_v1400978018106) (.cons (no_v1400978017242) (.cons (no_v1400976445242) (.cons (no_v1400976444378) (.cons (no_v1400976192474) (.cons (no_v1400976190938) .nil))))))))))))))))))))))))))))))))))))))

private def v1400965490286 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v1400965490286 : ¬ MinimalInterpreter v1400965490286 :=
  chain_cut false 2 (by decide)

private def v1400965490094 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v1400965490094 : ¬ MinimalInterpreter v1400965490094 :=
  chain_cut false 2 (by decide)

private def v1400965479022 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v1400965479022 : ¬ MinimalInterpreter v1400965479022 :=
  chain_cut false 2 (by decide)

private def v1400965478830 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v1400965478830 : ¬ MinimalInterpreter v1400965478830 :=
  chain_cut false 2 (by decide)

private def v1400965476014 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v1400965476014 : ¬ MinimalInterpreter v1400965476014 :=
  chain_cut false 2 (by decide)

private def v1400965391982 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v1400965391982 : ¬ MinimalInterpreter v1400965391982 :=
  chain_cut false 2 (by decide)

private def v1400965391790 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v1400965391790 : ¬ MinimalInterpreter v1400965391790 :=
  chain_cut false 2 (by decide)

private def v1400965380718 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 2)))))))
private theorem no_v1400965380718 : ¬ MinimalInterpreter v1400965380718 :=
  chain_cut false 2 (by decide)

private def v1400965356142 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v1400965356142 : ¬ MinimalInterpreter v1400965356142 :=
  chain_cut false 2 (by decide)

private def v1400965380526 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))))))
private theorem no_v1400965380526 : ¬ MinimalInterpreter v1400965380526 :=
  chain_cut false 2 (by decide)

private def v1400965377710 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))))))
private theorem no_v1400965377710 : ¬ MinimalInterpreter v1400965377710 :=
  chain_cut false 2 (by decide)

private def v1400965355950 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v1400965355950 : ¬ MinimalInterpreter v1400965355950 :=
  chain_cut false 2 (by decide)

private def v1400965353134 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 2))))))
private theorem no_v1400965353134 : ¬ MinimalInterpreter v1400965353134 :=
  chain_cut false 2 (by decide)

private def v1400965346990 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v1400965346990 : ¬ MinimalInterpreter v1400965346990 :=
  chain_cut false 2 (by decide)

private def v1400967849582 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v1400967849582 : ¬ MinimalInterpreter v1400967849582 :=
  chain_cut false 2 (by decide)

private def v1400967849390 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v1400967849390 : ¬ MinimalInterpreter v1400967849390 :=
  chain_cut false 2 (by decide)

private def v1400967838318 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v1400967838318 : ¬ MinimalInterpreter v1400967838318 :=
  chain_cut false 2 (by decide)

private def v1400967838126 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v1400967838126 : ¬ MinimalInterpreter v1400967838126 :=
  chain_cut false 2 (by decide)

private def v1400967835310 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v1400967835310 : ¬ MinimalInterpreter v1400967835310 :=
  chain_cut false 2 (by decide)

private def v1400977286766 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v1400977286766 : ¬ MinimalInterpreter v1400977286766 :=
  cost_cut false 3 (by decide)

private def v1400977286574 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v1400977286574 : ¬ MinimalInterpreter v1400977286574 :=
  cost_cut false 3 (by decide)

private def v1400977275502 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v1400977275502 : ¬ MinimalInterpreter v1400977275502 :=
  cost_cut false 3 (by decide)

private def v1400977275310 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v1400977275310 : ¬ MinimalInterpreter v1400977275310 :=
  cost_cut false 3 (by decide)

private def v1400977272494 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v1400977272494 : ¬ MinimalInterpreter v1400977272494 :=
  cost_cut false 3 (by decide)

theorem four356 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,1,0,0,2]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,1,0,0,2] = [v1400965490286,v1400965490094,v1400965479022,v1400965478830,v1400965476014,v1400965391982,v1400965391790,v1400965380718,v1400965356142,v1400965380526,v1400965377710,v1400965355950,v1400965353134,v1400965346990,v1400967849582,v1400967849390,v1400967838318,v1400967838126,v1400967835310,v1400977286766,v1400977286574,v1400977275502,v1400977275310,v1400977272494] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965490286) (.cons (no_v1400965490094) (.cons (no_v1400965479022) (.cons (no_v1400965478830) (.cons (no_v1400965476014) (.cons (no_v1400965391982) (.cons (no_v1400965391790) (.cons (no_v1400965380718) (.cons (no_v1400965356142) (.cons (no_v1400965380526) (.cons (no_v1400965377710) (.cons (no_v1400965355950) (.cons (no_v1400965353134) (.cons (no_v1400965346990) (.cons (no_v1400967849582) (.cons (no_v1400967849390) (.cons (no_v1400967838318) (.cons (no_v1400967838126) (.cons (no_v1400967835310) (.cons (no_v1400977286766) (.cons (no_v1400977286574) (.cons (no_v1400977275502) (.cons (no_v1400977275310) (.cons (no_v1400977272494) .nil))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
