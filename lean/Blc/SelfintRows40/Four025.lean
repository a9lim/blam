import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1401904666170 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1401904666170 : ¬ MinimalInterpreter v1401904666170 :=
  chain_cut false 3 (by decide)

private def v1401904555578 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 0))))))
private theorem no_v1401904555578 : ¬ MinimalInterpreter v1401904555578 :=
  chain_cut false 3 (by decide)

private def v1401904527930 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 0))))))
private theorem no_v1401904527930 : ¬ MinimalInterpreter v1401904527930 :=
  chain_cut false 3 (by decide)

private def v1398683440698 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1398683440698 : ¬ MinimalInterpreter v1398683440698 :=
  chain_cut false 4 (by decide)

private def v1398683330106 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 0))))))
private theorem no_v1398683330106 : ¬ MinimalInterpreter v1398683330106 :=
  chain_cut false 4 (by decide)

private def v1398683302458 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 0))))))
private theorem no_v1398683302458 : ¬ MinimalInterpreter v1398683302458 :=
  chain_cut false 5 (by decide)

theorem four175 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [2,0,2,0]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [2,0,2,0] = [v1401904666170,v1401904555578,v1401904527930,v1398683440698,v1398683330106,v1398683302458] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904666170) (.cons (no_v1401904555578) (.cons (no_v1401904527930) (.cons (no_v1398683440698) (.cons (no_v1398683330106) (.cons (no_v1398683302458) .nil))))))

private def v1401904293686 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1)))))))))
private theorem no_v1401904293686 : ¬ MinimalInterpreter v1401904293686 :=
  cost_cut false 2 (by decide)

private def v1401904293334 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1))))))))
private theorem no_v1401904293334 : ¬ MinimalInterpreter v1401904293334 :=
  cost_cut false 2 (by decide)

private def v1401904266038 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1))))))))
private theorem no_v1401904266038 : ¬ MinimalInterpreter v1401904266038 :=
  cost_cut false 2 (by decide)

private def v1401904265686 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1)))))))
private theorem no_v1401904265686 : ¬ MinimalInterpreter v1401904265686 :=
  cost_cut false 2 (by decide)

private def v1401904258774 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1)))))))
private theorem no_v1401904258774 : ¬ MinimalInterpreter v1401904258774 :=
  cost_cut false 2 (by decide)

private def v1401904667846 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1401904667846 : ¬ MinimalInterpreter v1401904667846 :=
  chain_cut false 3 (by decide)

private def v1401904666438 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1401904666438 : ¬ MinimalInterpreter v1401904666438 :=
  chain_cut false 3 (by decide)

private def v1401904557254 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1401904557254 : ¬ MinimalInterpreter v1401904557254 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1401904554806 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 1)))))))
private theorem no_v1401904554806 : ¬ MinimalInterpreter v1401904554806 :=
  chain_cut false 3 (by decide)

private def v1401904555846 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1401904555846 : ¬ MinimalInterpreter v1401904555846 :=
  chain_cut false 3 (by decide)

private def v1401904528198 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1401904528198 : ¬ MinimalInterpreter v1401904528198 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1401904527574 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.var 1))))))
private theorem no_v1401904527574 : ¬ MinimalInterpreter v1401904527574 :=
  chain_cut false 3 (by decide)

private def v1398683068214 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1)))))))))
private theorem no_v1398683068214 : ¬ MinimalInterpreter v1398683068214 :=
  chain_cut false 3 (by decide)

private def v1398683067862 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1))))))))
private theorem no_v1398683067862 : ¬ MinimalInterpreter v1398683067862 :=
  chain_cut false 3 (by decide)

private def v1398683040566 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1))))))))
private theorem no_v1398683040566 : ¬ MinimalInterpreter v1398683040566 :=
  chain_cut false 3 (by decide)

private def v1398683040214 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1)))))))
private theorem no_v1398683040214 : ¬ MinimalInterpreter v1398683040214 :=
  chain_cut false 3 (by decide)

private def v1398683033302 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1)))))))
private theorem no_v1398683033302 : ¬ MinimalInterpreter v1398683033302 :=
  chain_cut false 3 (by decide)

private def v1398683442374 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1398683442374 : ¬ MinimalInterpreter v1398683442374 :=
  chain_cut false 4 (by decide)

private def v1398683440966 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1398683440966 : ¬ MinimalInterpreter v1398683440966 :=
  chain_cut false 4 (by decide)

private def v1398683331782 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1398683331782 : ¬ MinimalInterpreter v1398683331782 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398683329334 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 1)))))))
private theorem no_v1398683329334 : ¬ MinimalInterpreter v1398683329334 :=
  chain_cut false 5 (by decide)

private def v1398683330374 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1398683330374 : ¬ MinimalInterpreter v1398683330374 :=
  chain_cut false 4 (by decide)

private def v1398683302726 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1398683302726 : ¬ MinimalInterpreter v1398683302726 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398683302102 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.var 1))))))
private theorem no_v1398683302102 : ¬ MinimalInterpreter v1398683302102 :=
  cost_cut false 7 (by decide)

theorem four176 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [2,1,0,1]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [2,1,0,1] = [v1401904293686,v1401904293334,v1401904266038,v1401904265686,v1401904258774,v1401904667846,v1401904666438,v1401904557254,v1401904554806,v1401904555846,v1401904528198,v1401904527574,v1398683068214,v1398683067862,v1398683040566,v1398683040214,v1398683033302,v1398683442374,v1398683440966,v1398683331782,v1398683329334,v1398683330374,v1398683302726,v1398683302102] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904293686) (.cons (no_v1401904293334) (.cons (no_v1401904266038) (.cons (no_v1401904265686) (.cons (no_v1401904258774) (.cons (no_v1401904667846) (.cons (no_v1401904666438) (.cons (no_v1401904557254) (.cons (no_v1401904554806) (.cons (no_v1401904555846) (.cons (no_v1401904528198) (.cons (no_v1401904527574) (.cons (no_v1398683068214) (.cons (no_v1398683067862) (.cons (no_v1398683040566) (.cons (no_v1398683040214) (.cons (no_v1398683033302) (.cons (no_v1398683442374) (.cons (no_v1398683440966) (.cons (no_v1398683331782) (.cons (no_v1398683329334) (.cons (no_v1398683330374) (.cons (no_v1398683302726) (.cons (no_v1398683302102) .nil))))))))))))))))))))))))

private def v1401904293690 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v1401904293690 : ¬ MinimalInterpreter v1401904293690 :=
  cost_cut false 2 (by decide)

private def v1401904293338 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v1401904293338 : ¬ MinimalInterpreter v1401904293338 :=
  cost_cut false 2 (by decide)

private def v1401904266042 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v1401904266042 : ¬ MinimalInterpreter v1401904266042 :=
  cost_cut false 2 (by decide)

private def v1401904265690 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v1401904265690 : ¬ MinimalInterpreter v1401904265690 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1401904258778 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v1401904258778 : ¬ MinimalInterpreter v1401904258778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1401904666394 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1401904666394 : ¬ MinimalInterpreter v1401904666394 :=
  chain_cut false 3 (by decide)

private def v1401904554810 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 0)))))))
private theorem no_v1401904554810 : ¬ MinimalInterpreter v1401904554810 :=
  chain_cut false 3 (by decide)

private def v1401904555802 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1401904555802 : ¬ MinimalInterpreter v1401904555802 :=
  chain_cut false 3 (by decide)

private def v1401904528154 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0))))))
private theorem no_v1401904528154 : ¬ MinimalInterpreter v1401904528154 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1401904527578 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 0))))))
private theorem no_v1401904527578 : ¬ MinimalInterpreter v1401904527578 :=
  chain_cut false 3 (by decide)

private def v1398683068218 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v1398683068218 : ¬ MinimalInterpreter v1398683068218 :=
  chain_cut false 3 (by decide)

private def v1398683067866 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v1398683067866 : ¬ MinimalInterpreter v1398683067866 :=
  chain_cut false 3 (by decide)

private def v1398683040570 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v1398683040570 : ¬ MinimalInterpreter v1398683040570 :=
  chain_cut false 3 (by decide)

private def v1398683040218 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v1398683040218 : ¬ MinimalInterpreter v1398683040218 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1398683033306 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v1398683033306 : ¬ MinimalInterpreter v1398683033306 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1398683440922 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1398683440922 : ¬ MinimalInterpreter v1398683440922 :=
  chain_cut false 4 (by decide)

private def v1398683329338 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 0)))))))
private theorem no_v1398683329338 : ¬ MinimalInterpreter v1398683329338 :=
  chain_cut false 5 (by decide)

private def v1398683330330 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1398683330330 : ¬ MinimalInterpreter v1398683330330 :=
  chain_cut false 4 (by decide)

private def v1398683302682 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0))))))
private theorem no_v1398683302682 : ¬ MinimalInterpreter v1398683302682 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398683302106 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 0))))))
private theorem no_v1398683302106 : ¬ MinimalInterpreter v1398683302106 :=
  chain_cut false 5 (by decide)

theorem four177 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [2,1,1,0]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [2,1,1,0] = [v1401904293690,v1401904293338,v1401904266042,v1401904265690,v1401904258778,v1401904666394,v1401904554810,v1401904555802,v1401904528154,v1401904527578,v1398683068218,v1398683067866,v1398683040570,v1398683040218,v1398683033306,v1398683440922,v1398683329338,v1398683330330,v1398683302682,v1398683302106] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904293690) (.cons (no_v1401904293338) (.cons (no_v1401904266042) (.cons (no_v1401904265690) (.cons (no_v1401904258778) (.cons (no_v1401904666394) (.cons (no_v1401904554810) (.cons (no_v1401904555802) (.cons (no_v1401904528154) (.cons (no_v1401904527578) (.cons (no_v1398683068218) (.cons (no_v1398683067866) (.cons (no_v1398683040570) (.cons (no_v1398683040218) (.cons (no_v1398683033306) (.cons (no_v1398683440922) (.cons (no_v1398683329338) (.cons (no_v1398683330330) (.cons (no_v1398683302682) (.cons (no_v1398683302106) .nil))))))))))))))))))))

private def v1401904554906 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0)))))))
private theorem no_v1401904554906 : ¬ MinimalInterpreter v1401904554906 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1401904527594 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0))))))
private theorem no_v1401904527594 : ¬ MinimalInterpreter v1401904527594 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398683329434 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0)))))))
private theorem no_v1398683329434 : ¬ MinimalInterpreter v1398683329434 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1398683302122 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0))))))
private theorem no_v1398683302122 : ¬ MinimalInterpreter v1398683302122 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four178 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [2,2,0,0]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [2,2,0,0] = [v1401904554906,v1401904527594,v1398683329434,v1398683302122] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904554906) (.cons (no_v1401904527594) (.cons (no_v1398683329434) (.cons (no_v1398683302122) .nil))))

private def v1401904296758 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1401904296758 : ¬ MinimalInterpreter v1401904296758 :=
  chain_cut false 3 (by decide)

private def v1401904296662 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1401904296662 : ¬ MinimalInterpreter v1401904296662 :=
  chain_cut false 3 (by decide)

private def v1401904266550 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1401904266550 : ¬ MinimalInterpreter v1401904266550 :=
  chain_cut false 3 (by decide)

private def v1401904266454 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1401904266454 : ¬ MinimalInterpreter v1401904266454 :=
  chain_cut false 3 (by decide)

private def v1401904258902 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1401904258902 : ¬ MinimalInterpreter v1401904258902 :=
  chain_cut false 3 (by decide)

private def v1398683071286 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1398683071286 : ¬ MinimalInterpreter v1398683071286 :=
  chain_cut false 3 (by decide)

private def v1398683071190 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1398683071190 : ¬ MinimalInterpreter v1398683071190 :=
  chain_cut false 3 (by decide)

private def v1398683041078 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1398683041078 : ¬ MinimalInterpreter v1398683041078 :=
  chain_cut false 3 (by decide)

private def v1398683040982 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1398683040982 : ¬ MinimalInterpreter v1398683040982 :=
  chain_cut false 3 (by decide)

private def v1398683033430 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1398683033430 : ¬ MinimalInterpreter v1398683033430 :=
  chain_cut false 3 (by decide)

theorem four179 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [3,0,0,1]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [3,0,0,1] = [v1401904296758,v1401904296662,v1401904266550,v1401904266454,v1401904258902,v1398683071286,v1398683071190,v1398683041078,v1398683040982,v1398683033430] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904296758) (.cons (no_v1401904296662) (.cons (no_v1401904266550) (.cons (no_v1401904266454) (.cons (no_v1401904258902) (.cons (no_v1398683071286) (.cons (no_v1398683071190) (.cons (no_v1398683041078) (.cons (no_v1398683040982) (.cons (no_v1398683033430) .nil))))))))))

private def v1401904296762 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1401904296762 : ¬ MinimalInterpreter v1401904296762 :=
  chain_cut false 3 (by decide)

private def v1401904296666 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1401904296666 : ¬ MinimalInterpreter v1401904296666 :=
  chain_cut false 3 (by decide)

private def v1401904266554 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1401904266554 : ¬ MinimalInterpreter v1401904266554 :=
  chain_cut false 3 (by decide)

private def v1401904266458 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1401904266458 : ¬ MinimalInterpreter v1401904266458 :=
  chain_cut false 3 (by decide)

private def v1401904258906 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1401904258906 : ¬ MinimalInterpreter v1401904258906 :=
  chain_cut false 3 (by decide)

private def v1398683071290 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1398683071290 : ¬ MinimalInterpreter v1398683071290 :=
  chain_cut false 3 (by decide)

private def v1398683071194 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1398683071194 : ¬ MinimalInterpreter v1398683071194 :=
  chain_cut false 3 (by decide)

private def v1398683041082 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1398683041082 : ¬ MinimalInterpreter v1398683041082 :=
  chain_cut false 3 (by decide)

private def v1398683040986 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1398683040986 : ¬ MinimalInterpreter v1398683040986 :=
  chain_cut false 3 (by decide)

private def v1398683033434 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1398683033434 : ¬ MinimalInterpreter v1398683033434 :=
  chain_cut false 3 (by decide)

theorem four180 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [3,0,1,0]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [3,0,1,0] = [v1401904296762,v1401904296666,v1401904266554,v1401904266458,v1401904258906,v1398683071290,v1398683071194,v1398683041082,v1398683040986,v1398683033434] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904296762) (.cons (no_v1401904296666) (.cons (no_v1401904266554) (.cons (no_v1401904266458) (.cons (no_v1401904258906) (.cons (no_v1398683071290) (.cons (no_v1398683071194) (.cons (no_v1398683041082) (.cons (no_v1398683040986) (.cons (no_v1398683033434) .nil))))))))))

private def v1401904296858 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1401904296858 : ¬ MinimalInterpreter v1401904296858 :=
  chain_cut false 3 (by decide)

private def v1401904296682 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1401904296682 : ¬ MinimalInterpreter v1401904296682 :=
  chain_cut false 3 (by decide)

private def v1401904266650 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1401904266650 : ¬ MinimalInterpreter v1401904266650 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1401904266474 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1401904266474 : ¬ MinimalInterpreter v1401904266474 :=
  chain_cut false 3 (by decide)

private def v1401904258922 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1401904258922 : ¬ MinimalInterpreter v1401904258922 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1398683071386 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1398683071386 : ¬ MinimalInterpreter v1398683071386 :=
  chain_cut false 3 (by decide)

private def v1398683071210 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1398683071210 : ¬ MinimalInterpreter v1398683071210 :=
  chain_cut false 3 (by decide)

private def v1398683041178 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1398683041178 : ¬ MinimalInterpreter v1398683041178 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1398683041002 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1398683041002 : ¬ MinimalInterpreter v1398683041002 :=
  chain_cut false 3 (by decide)

private def v1398683033450 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1398683033450 : ¬ MinimalInterpreter v1398683033450 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

theorem four181 : BadRow (markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [3,1,0,0]) := by
  have h : markedRow ⟨0,3,0,3,4,4⟩ [0,0,0] [3,1,0,0] = [v1401904296858,v1401904296682,v1401904266650,v1401904266474,v1401904258922,v1398683071386,v1398683071210,v1398683041178,v1398683041002,v1398683033450] := by decide +kernel
  rw [h]
  exact (.cons (no_v1401904296858) (.cons (no_v1401904296682) (.cons (no_v1401904266650) (.cons (no_v1401904266474) (.cons (no_v1401904258922) (.cons (no_v1398683071386) (.cons (no_v1398683071210) (.cons (no_v1398683041178) (.cons (no_v1398683041002) (.cons (no_v1398683033450) .nil))))))))))

end Blc.SelfintSingleObject.Rows40
