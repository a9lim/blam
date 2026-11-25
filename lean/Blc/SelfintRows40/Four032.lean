import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402308795614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402308795614 : ¬ MinimalInterpreter v1402308795614 :=
  cost_cut false 2 (by decide)

private def v1402308794206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))))))
private theorem no_v1402308794206 : ¬ MinimalInterpreter v1402308794206 :=
  cost_cut false 2 (by decide)

private def v1402308817694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1402308817694 : ¬ MinimalInterpreter v1402308817694 :=
  cost_cut false 2 (by decide)

private def v1402308812062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1402308812062 : ¬ MinimalInterpreter v1402308812062 :=
  cost_cut false 2 (by decide)

private def v1402308375326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1402308375326 : ¬ MinimalInterpreter v1402308375326 :=
  cost_cut false 2 (by decide)

private def v1402308365534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 3))))))))
private theorem no_v1402308365534 : ¬ MinimalInterpreter v1402308365534 :=
  chain_cut false 2 (by decide)

private def v1402308369694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 3))))))))
private theorem no_v1402308369694 : ¬ MinimalInterpreter v1402308369694 :=
  cost_cut false 2 (by decide)

private def v1402308259102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1402308259102 : ¬ MinimalInterpreter v1402308259102 :=
  cost_cut false 2 (by decide)

private def v1402308256606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.var 3)))))))
private theorem no_v1402308256606 : ¬ MinimalInterpreter v1402308256606 :=
  chain_cut false 2 (by decide)

private def v1402314804254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 3))))))))))
private theorem no_v1402314804254 : ¬ MinimalInterpreter v1402314804254 :=
  chain_cut false 2 (by decide)

private def v1402314781726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 3)))))))))
private theorem no_v1402314781726 : ¬ MinimalInterpreter v1402314781726 :=
  chain_cut false 2 (by decide)

private def v1402313034782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.lam (.var 3)))))))))
private theorem no_v1402313034782 : ¬ MinimalInterpreter v1402313034782 :=
  chain_cut false 2 (by decide)

private def v1402313012254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.lam (.var 3))))))))
private theorem no_v1402313012254 : ¬ MinimalInterpreter v1402313012254 :=
  chain_cut false 2 (by decide)

private def v1402312569886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.lam (.var 3))))))))
private theorem no_v1402312569886 : ¬ MinimalInterpreter v1402312569886 :=
  chain_cut false 2 (by decide)

theorem four224 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,1,0,3]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,1,0,3] = [v1402308795614,v1402308794206,v1402308817694,v1402308812062,v1402308375326,v1402308365534,v1402308369694,v1402308259102,v1402308256606,v1402314804254,v1402314781726,v1402313034782,v1402313012254,v1402312569886] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308795614) (.cons (no_v1402308794206) (.cons (no_v1402308817694) (.cons (no_v1402308812062) (.cons (no_v1402308375326) (.cons (no_v1402308365534) (.cons (no_v1402308369694) (.cons (no_v1402308259102) (.cons (no_v1402308256606) (.cons (no_v1402314804254) (.cons (no_v1402314781726) (.cons (no_v1402313034782) (.cons (no_v1402313012254) (.cons (no_v1402312569886) .nil))))))))))))))

private def v1402308795630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402308795630 : ¬ MinimalInterpreter v1402308795630 :=
  cost_cut false 2 (by decide)

private def v1402308794222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 1)) (.var 2)))))))))
private theorem no_v1402308794222 : ¬ MinimalInterpreter v1402308794222 :=
  cost_cut false 2 (by decide)

private def v1402308817134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 1) (.var 2))))))))))
private theorem no_v1402308817134 : ¬ MinimalInterpreter v1402308817134 :=
  cost_cut false 2 (by decide)

private def v1402308811886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1402308811886 : ¬ MinimalInterpreter v1402308811886 :=
  cost_cut false 2 (by decide)

private def v1402308374766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v1402308374766 : ¬ MinimalInterpreter v1402308374766 :=
  cost_cut false 2 (by decide)

private def v1402308365550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 2))))))))
private theorem no_v1402308365550 : ¬ MinimalInterpreter v1402308365550 :=
  cost_cut false 2 (by decide)

private def v1402308369518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 2)))))))
private theorem no_v1402308369518 : ¬ MinimalInterpreter v1402308369518 :=
  cost_cut false 2 (by decide)

private def v1402308258926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1402308258926 : ¬ MinimalInterpreter v1402308258926 :=
  cost_cut false 2 (by decide)

private def v1402308256622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 2)))))))
private theorem no_v1402308256622 : ¬ MinimalInterpreter v1402308256622 :=
  cost_cut false 2 (by decide)

private def v1402314802062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 2))))))))))
private theorem no_v1402314802062 : ¬ MinimalInterpreter v1402314802062 :=
  chain_cut false 2 (by decide)

private def v1402314804750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 2))))))))))
private theorem no_v1402314804750 : ¬ MinimalInterpreter v1402314804750 :=
  chain_cut false 2 (by decide)

private def v1402314782222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 2)))))))))
private theorem no_v1402314782222 : ¬ MinimalInterpreter v1402314782222 :=
  chain_cut false 2 (by decide)

private def v1402314781070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 2))))))))
private theorem no_v1402314781070 : ¬ MinimalInterpreter v1402314781070 :=
  chain_cut false 2 (by decide)

private def v1402313032590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.lam (.var 2)))))))))
private theorem no_v1402313032590 : ¬ MinimalInterpreter v1402313032590 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 2)))))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313035278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.lam (.lam (.var 2)))))))))
private theorem no_v1402313035278 : ¬ MinimalInterpreter v1402313035278 :=
  chain_cut false 2 (by decide)

private def v1402312995054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.lam (.app (.var 1) (.var 2))))))))
private theorem no_v1402312995054 : ¬ MinimalInterpreter v1402312995054 :=
  chain_cut false 2 (by decide)

private def v1402312995726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.lam (.var 2))))))))
private theorem no_v1402312995726 : ¬ MinimalInterpreter v1402312995726 :=
  chain_cut false 2 (by decide)

private def v1402313012750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.lam (.var 2))))))))
private theorem no_v1402313012750 : ¬ MinimalInterpreter v1402313012750 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.lam (.lam (.var 2))))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312570382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.lam (.var 2))))))))
private theorem no_v1402312570382 : ¬ MinimalInterpreter v1402312570382 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.lam (.var 2)))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.lam (.lam (.var 2))))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312990094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 1)))) (.lam (.var 2)))))))
private theorem no_v1402312990094 : ¬ MinimalInterpreter v1402312990094 :=
  chain_cut false 2 (by decide)

private def v1402313011598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.lam (.var 2)))))))
private theorem no_v1402313011598 : ¬ MinimalInterpreter v1402313011598 :=
  chain_cut false 2 (by decide)

private def v1402312569230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.lam (.var 2)))))))
private theorem no_v1402312569230 : ¬ MinimalInterpreter v1402312569230 :=
  chain_cut false 2 (by decide)

private def v1402312560014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.lam (.var 2)))))))
private theorem no_v1402312560014 : ¬ MinimalInterpreter v1402312560014 :=
  chain_cut false 2 (by decide)

theorem four225 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,1,1,2]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,1,1,2] = [v1402308795630,v1402308794222,v1402308817134,v1402308811886,v1402308374766,v1402308365550,v1402308369518,v1402308258926,v1402308256622,v1402314802062,v1402314804750,v1402314782222,v1402314781070,v1402313032590,v1402313035278,v1402312995054,v1402312995726,v1402313012750,v1402312570382,v1402312990094,v1402313011598,v1402312569230,v1402312560014] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308795630) (.cons (no_v1402308794222) (.cons (no_v1402308817134) (.cons (no_v1402308811886) (.cons (no_v1402308374766) (.cons (no_v1402308365550) (.cons (no_v1402308369518) (.cons (no_v1402308258926) (.cons (no_v1402308256622) (.cons (no_v1402314802062) (.cons (no_v1402314804750) (.cons (no_v1402314782222) (.cons (no_v1402314781070) (.cons (no_v1402313032590) (.cons (no_v1402313035278) (.cons (no_v1402312995054) (.cons (no_v1402312995726) (.cons (no_v1402313012750) (.cons (no_v1402312570382) (.cons (no_v1402312990094) (.cons (no_v1402313011598) (.cons (no_v1402312569230) (.cons (no_v1402312560014) .nil)))))))))))))))))))))))

private def v1402308795638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402308795638 : ¬ MinimalInterpreter v1402308795638 :=
  cost_cut false 2 (by decide)

private def v1402308794230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 2)) (.var 1)))))))))
private theorem no_v1402308794230 : ¬ MinimalInterpreter v1402308794230 :=
  cost_cut false 2 (by decide)

private def v1402308817142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 2) (.var 1))))))))))
private theorem no_v1402308817142 : ¬ MinimalInterpreter v1402308817142 :=
  cost_cut false 2 (by decide)

private def v1402308817862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1402308817862 : ¬ MinimalInterpreter v1402308817862 :=
  cost_cut false 2 (by decide)

private def v1402308812230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1402308812230 : ¬ MinimalInterpreter v1402308812230 :=
  cost_cut false 2 (by decide)

private def v1402308374774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v1402308374774 : ¬ MinimalInterpreter v1402308374774 :=
  cost_cut false 2 (by decide)

private def v1402308375494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1402308375494 : ¬ MinimalInterpreter v1402308375494 :=
  cost_cut false 2 (by decide)

private def v1402308365558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 2) (.var 1))))))))
private theorem no_v1402308365558 : ¬ MinimalInterpreter v1402308365558 :=
  cost_cut false 2 (by decide)

private def v1402308369862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.lam (.var 1))))))))
private theorem no_v1402308369862 : ¬ MinimalInterpreter v1402308369862 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308259270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1402308259270 : ¬ MinimalInterpreter v1402308259270 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308364150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 2)))) (.var 1)))))))
private theorem no_v1402308364150 : ¬ MinimalInterpreter v1402308364150 :=
  cost_cut false 2 (by decide)

private def v1402308256630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 2)) (.var 1)))))))
private theorem no_v1402308256630 : ¬ MinimalInterpreter v1402308256630 :=
  cost_cut false 2 (by decide)

private def v1402314781126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 1))))))))
private theorem no_v1402314781126 : ¬ MinimalInterpreter v1402314781126 :=
  chain_cut false 2 (by decide)

private def v1402314780790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 1)))))))
private theorem no_v1402314780790 : ¬ MinimalInterpreter v1402314780790 :=
  chain_cut false 2 (by decide)

private def v1402312995062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.lam (.app (.var 2) (.var 1))))))))
private theorem no_v1402312995062 : ¬ MinimalInterpreter v1402312995062 :=
  chain_cut false 2 (by decide)

private def v1402312990150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 2)))) (.lam (.var 1)))))))
private theorem no_v1402312990150 : ¬ MinimalInterpreter v1402312990150 :=
  chain_cut false 2 (by decide)

private def v1402313011654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 1)))))))
private theorem no_v1402313011654 : ¬ MinimalInterpreter v1402313011654 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.app (.var 1) (so_dead (by decide) (.var 2)))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.app (.var 0) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312569286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 2))) (.lam (.var 1)))))))
private theorem no_v1402312569286 : ¬ MinimalInterpreter v1402312569286 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 2))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.app (.var 1) (.var 0)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312989814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.lam (.var 2))))) (.var 1))))))
private theorem no_v1402312989814 : ¬ MinimalInterpreter v1402312989814 :=
  chain_cut false 2 (by decide)

private def v1402313011318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 2))))) (.var 1))))))
private theorem no_v1402313011318 : ¬ MinimalInterpreter v1402313011318 :=
  chain_cut false 2 (by decide)

private def v1402312568950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 2)))) (.var 1))))))
private theorem no_v1402312568950 : ¬ MinimalInterpreter v1402312568950 :=
  chain_cut false 2 (by decide)

private def v1402312559734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.lam (.var 2))) (.var 1))))))
private theorem no_v1402312559734 : ¬ MinimalInterpreter v1402312559734 :=
  chain_cut false 2 (by decide)

theorem four226 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,1,2,1]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,1,2,1] = [v1402308795638,v1402308794230,v1402308817142,v1402308817862,v1402308812230,v1402308374774,v1402308375494,v1402308365558,v1402308369862,v1402308259270,v1402308364150,v1402308256630,v1402314781126,v1402314780790,v1402312995062,v1402312990150,v1402313011654,v1402312569286,v1402312989814,v1402313011318,v1402312568950,v1402312559734] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308795638) (.cons (no_v1402308794230) (.cons (no_v1402308817142) (.cons (no_v1402308817862) (.cons (no_v1402308812230) (.cons (no_v1402308374774) (.cons (no_v1402308375494) (.cons (no_v1402308365558) (.cons (no_v1402308369862) (.cons (no_v1402308259270) (.cons (no_v1402308364150) (.cons (no_v1402308256630) (.cons (no_v1402314781126) (.cons (no_v1402314780790) (.cons (no_v1402312995062) (.cons (no_v1402312990150) (.cons (no_v1402313011654) (.cons (no_v1402312569286) (.cons (no_v1402312989814) (.cons (no_v1402313011318) (.cons (no_v1402312568950) (.cons (no_v1402312559734) .nil))))))))))))))))))))))

private def v1402308795642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402308795642 : ¬ MinimalInterpreter v1402308795642 :=
  cost_cut false 2 (by decide)

private def v1402308794234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))))
private theorem no_v1402308794234 : ¬ MinimalInterpreter v1402308794234 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 2) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide)))))))

private def v1402308811898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1402308811898 : ¬ MinimalInterpreter v1402308811898 :=
  cost_cut false 2 (by decide)

private def v1402308365562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 3) (.var 0))))))))
private theorem no_v1402308365562 : ¬ MinimalInterpreter v1402308365562 :=
  chain_cut false 2 (by decide)

private def v1402308369530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 3)))) (.var 0)))))))
private theorem no_v1402308369530 : ¬ MinimalInterpreter v1402308369530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 3)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 3)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 1) (.app (.var 0) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308258938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1402308258938 : ¬ MinimalInterpreter v1402308258938 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 3))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.app (.var 1) (.var 0)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308256634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 3)) (.var 0)))))))
private theorem no_v1402308256634 : ¬ MinimalInterpreter v1402308256634 :=
  chain_cut false 2 (by decide)

private def v1402314780794 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 0)))))))
private theorem no_v1402314780794 : ¬ MinimalInterpreter v1402314780794 :=
  chain_cut false 2 (by decide)

private def v1402312989818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.lam (.var 3))))) (.var 0))))))
private theorem no_v1402312989818 : ¬ MinimalInterpreter v1402312989818 :=
  chain_cut false 2 (by decide)

private def v1402313011322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 0))))))
private theorem no_v1402313011322 : ¬ MinimalInterpreter v1402313011322 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 2)))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 3))))) (.var 0)) (.app (.var 1) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312568954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 3)))) (.var 0))))))
private theorem no_v1402312568954 : ¬ MinimalInterpreter v1402312568954 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 3)))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.app (.var 1) (.var 0)) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four227 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,1,3,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,1,3,0] = [v1402308795642,v1402308794234,v1402308811898,v1402308365562,v1402308369530,v1402308258938,v1402308256634,v1402314780794,v1402312989818,v1402313011322,v1402312568954] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308795642) (.cons (no_v1402308794234) (.cons (no_v1402308811898) (.cons (no_v1402308365562) (.cons (no_v1402308369530) (.cons (no_v1402308258938) (.cons (no_v1402308256634) (.cons (no_v1402314780794) (.cons (no_v1402312989818) (.cons (no_v1402313011322) (.cons (no_v1402312568954) .nil)))))))))))

private def v1402308819342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v1402308819342 : ¬ MinimalInterpreter v1402308819342 :=
  cost_cut false 2 (by decide)

private def v1402308812430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v1402308812430 : ¬ MinimalInterpreter v1402308812430 :=
  cost_cut false 2 (by decide)

private def v1402308376974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v1402308376974 : ¬ MinimalInterpreter v1402308376974 :=
  cost_cut false 2 (by decide)

private def v1402308365934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 2))))))))
private theorem no_v1402308365934 : ¬ MinimalInterpreter v1402308365934 :=
  cost_cut false 2 (by decide)

private def v1402308370062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.lam (.var 2))))))))
private theorem no_v1402308370062 : ¬ MinimalInterpreter v1402308370062 :=
  cost_cut false 2 (by decide)

private def v1402308259470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.lam (.var 2))))))))
private theorem no_v1402308259470 : ¬ MinimalInterpreter v1402308259470 :=
  cost_cut false 2 (by decide)

private def v1402308256686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 2)))))))
private theorem no_v1402308256686 : ¬ MinimalInterpreter v1402308256686 :=
  cost_cut false 2 (by decide)

private def v1402312997262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v1402312997262 : ¬ MinimalInterpreter v1402312997262 :=
  chain_cut false 2 (by decide)

private def v1402312560270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.lam (.var 2)))))))
private theorem no_v1402312560270 : ¬ MinimalInterpreter v1402312560270 :=
  chain_cut false 2 (by decide)

theorem four228 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,2,0,2]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,2,0,2] = [v1402308819342,v1402308812430,v1402308376974,v1402308365934,v1402308370062,v1402308259470,v1402308256686,v1402312997262,v1402312560270] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308819342) (.cons (no_v1402308812430) (.cons (no_v1402308376974) (.cons (no_v1402308365934) (.cons (no_v1402308370062) (.cons (no_v1402308259470) (.cons (no_v1402308256686) (.cons (no_v1402312997262) (.cons (no_v1402312560270) .nil)))))))))

private def v1402308796022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.app (.var 1) (.var 1))))))))))
private theorem no_v1402308796022 : ¬ MinimalInterpreter v1402308796022 :=
  cost_cut false 2 (by decide)

private def v1402308794294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 2) (.var 1)) (.var 1)))))))))
private theorem no_v1402308794294 : ¬ MinimalInterpreter v1402308794294 :=
  cost_cut false 2 (by decide)

private def v1402308819398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v1402308819398 : ¬ MinimalInterpreter v1402308819398 :=
  cost_cut false 2 (by decide)

private def v1402308812486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v1402308812486 : ¬ MinimalInterpreter v1402308812486 :=
  cost_cut false 2 (by decide)

private def v1402308812342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.lam (.var 1))) (.var 1))))))))
private theorem no_v1402308812342 : ¬ MinimalInterpreter v1402308812342 :=
  cost_cut false 2 (by decide)

private def v1402308377030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1402308377030 : ¬ MinimalInterpreter v1402308377030 :=
  cost_cut false 2 (by decide)

private def v1402308370118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.lam (.var 1))))))))
private theorem no_v1402308370118 : ¬ MinimalInterpreter v1402308370118 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308259526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1402308259526 : ¬ MinimalInterpreter v1402308259526 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide))))))

private def v1402308364214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 1)))) (.var 1)))))))
private theorem no_v1402308364214 : ¬ MinimalInterpreter v1402308364214 :=
  cost_cut false 2 (by decide)

private def v1402308369974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.lam (.var 1)))) (.var 1)))))))
private theorem no_v1402308369974 : ¬ MinimalInterpreter v1402308369974 :=
  cost_cut false 2 (by decide)

private def v1402308259382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1402308259382 : ¬ MinimalInterpreter v1402308259382 :=
  cost_cut false 2 (by decide)

private def v1402312996982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.lam (.app (.var 1) (.var 1))))))))
private theorem no_v1402312996982 : ¬ MinimalInterpreter v1402312996982 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.lam (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.lam (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (so_dead (by decide) (.app (.var 1) (.var 1)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312997318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v1402312997318 : ¬ MinimalInterpreter v1402312997318 :=
  chain_cut false 2 (by decide)

private def v1402312986230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.app (.var 1) (.var 1)))))))
private theorem no_v1402312986230 : ¬ MinimalInterpreter v1402312986230 :=
  chain_cut false 2 (by decide)

private def v1402312990406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 1)))) (.lam (.var 1)))))))
private theorem no_v1402312990406 : ¬ MinimalInterpreter v1402312990406 :=
  chain_cut false 2 (by decide)

private def v1402312560326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 1)) (.lam (.var 1)))))))
private theorem no_v1402312560326 : ¬ MinimalInterpreter v1402312560326 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 1)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.app (.var 1) (so_dead (by decide) (.var 1))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312560182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1))) (.var 1))))))
private theorem no_v1402312560182 : ¬ MinimalInterpreter v1402312560182 :=
  chain_cut false 2 (by decide)

private def v1402312557494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.var 1)) (.var 1))))))
private theorem no_v1402312557494 : ¬ MinimalInterpreter v1402312557494 :=
  chain_cut false 2 (by decide)

theorem four229 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,2,1,1]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,2,1,1] = [v1402308796022,v1402308794294,v1402308819398,v1402308812486,v1402308812342,v1402308377030,v1402308370118,v1402308259526,v1402308364214,v1402308369974,v1402308259382,v1402312996982,v1402312997318,v1402312986230,v1402312990406,v1402312560326,v1402312560182,v1402312557494] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308796022) (.cons (no_v1402308794294) (.cons (no_v1402308819398) (.cons (no_v1402308812486) (.cons (no_v1402308812342) (.cons (no_v1402308377030) (.cons (no_v1402308370118) (.cons (no_v1402308259526) (.cons (no_v1402308364214) (.cons (no_v1402308369974) (.cons (no_v1402308259382) (.cons (no_v1402312996982) (.cons (no_v1402312997318) (.cons (no_v1402312986230) (.cons (no_v1402312990406) (.cons (no_v1402312560326) (.cons (no_v1402312560182) (.cons (no_v1402312557494) .nil))))))))))))))))))

private def v1402308812346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))))
private theorem no_v1402308812346 : ¬ MinimalInterpreter v1402308812346 :=
  cost_cut false 2 (by decide)

private def v1402308365946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 2) (.var 0))))))))
private theorem no_v1402308365946 : ¬ MinimalInterpreter v1402308365946 :=
  cost_cut false 2 (by decide)

private def v1402308364218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 2)))) (.var 0)))))))
private theorem no_v1402308364218 : ¬ MinimalInterpreter v1402308364218 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 2)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.app (.var 2) (.var 2)))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.app (.var 1) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308369978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))))
private theorem no_v1402308369978 : ¬ MinimalInterpreter v1402308369978 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.lam (.var 2)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 1) (.lam (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 1) (.app (.var 1) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308259386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1402308259386 : ¬ MinimalInterpreter v1402308259386 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 2)) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.app (.var 1) (.var 1)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide))))))

private def v1402308256698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 2)) (.var 0)))))))
private theorem no_v1402308256698 : ¬ MinimalInterpreter v1402308256698 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.lam (.var 1))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 2)) (.var 0)) (.app (.app (.var 1) (so_dead (by decide) (.var 1))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402312990266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.lam (.var 2))))) (.var 0))))))
private theorem no_v1402312990266 : ¬ MinimalInterpreter v1402312990266 :=
  chain_cut false 2 (by decide)

private def v1402312560186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 2))) (.var 0))))))
private theorem no_v1402312560186 : ¬ MinimalInterpreter v1402312560186 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.app (.var 1) (so_dead (by decide) (.var 1))) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four230 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,2,2,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,2,2,0] = [v1402308812346,v1402308365946,v1402308364218,v1402308369978,v1402308259386,v1402308256698,v1402312990266,v1402312560186] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308812346) (.cons (no_v1402308365946) (.cons (no_v1402308364218) (.cons (no_v1402308369978) (.cons (no_v1402308259386) (.cons (no_v1402308256698) (.cons (no_v1402312990266) (.cons (no_v1402312560186) .nil))))))))

end Blc.SelfintSingleObject.Rows40
