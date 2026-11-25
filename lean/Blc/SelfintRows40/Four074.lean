import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four518 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,2,1,0]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,2,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four519 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,3,0,0]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [3,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400964854750 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3)))))))))
private theorem no_v1400964854750 : ¬ MinimalInterpreter v1400964854750 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3))))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3)))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400964853214 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 3))))))))
private theorem no_v1400964853214 : ¬ MinimalInterpreter v1400964853214 :=
  chain_cut false 2 (by decide)

private def v1400964830174 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3))))))))
private theorem no_v1400964830174 : ¬ MinimalInterpreter v1400964830174 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400964828638 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 3)))))))
private theorem no_v1400964828638 : ¬ MinimalInterpreter v1400964828638 :=
  chain_cut false 2 (by decide)

private def v1400964822494 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 3)))))))
private theorem no_v1400964822494 : ¬ MinimalInterpreter v1400964822494 :=
  chain_cut false 2 (by decide)

private def v1400965481438 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v1400965481438 : ¬ MinimalInterpreter v1400965481438 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3))))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965383134 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 3))))))))
private theorem no_v1400965383134 : ¬ MinimalInterpreter v1400965383134 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 3)))))) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.app (.var 2) (.var 3)))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400967803870 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))))))
private theorem no_v1400967803870 : ¬ MinimalInterpreter v1400967803870 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1400967802334 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3))))))))
private theorem no_v1400967802334 : ¬ MinimalInterpreter v1400967802334 :=
  chain_cut false 2 (by decide)

private def v1400967840734 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v1400967840734 : ¬ MinimalInterpreter v1400967840734 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))) (.app (.var 0) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3)))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400977241054 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))))))
private theorem no_v1400977241054 : ¬ MinimalInterpreter v1400977241054 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1400977239518 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 3))))))))
private theorem no_v1400977239518 : ¬ MinimalInterpreter v1400977239518 :=
  cost_cut false 3 (by decide)

private def v1400977277918 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v1400977277918 : ¬ MinimalInterpreter v1400977277918 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3)))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four520 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,0,2,3]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,0,2,3] = [v1400964854750,v1400964853214,v1400964830174,v1400964828638,v1400964822494,v1400965481438,v1400965383134,v1400967803870,v1400967802334,v1400967840734,v1400977241054,v1400977239518,v1400977277918] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964854750) (.cons (no_v1400964853214) (.cons (no_v1400964830174) (.cons (no_v1400964828638) (.cons (no_v1400964822494) (.cons (no_v1400965481438) (.cons (no_v1400965383134) (.cons (no_v1400967803870) (.cons (no_v1400967802334) (.cons (no_v1400967840734) (.cons (no_v1400977241054) (.cons (no_v1400977239518) (.cons (no_v1400977277918) .nil)))))))))))))

private def v1400964854766 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2)))))))))
private theorem no_v1400964854766 : ¬ MinimalInterpreter v1400964854766 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2))))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2)))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400964853230 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 2))))))))
private theorem no_v1400964853230 : ¬ MinimalInterpreter v1400964853230 :=
  chain_cut false 2 (by decide)

private def v1400964830190 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2))))))))
private theorem no_v1400964830190 : ¬ MinimalInterpreter v1400964830190 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400964828654 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 2)))))))
private theorem no_v1400964828654 : ¬ MinimalInterpreter v1400964828654 :=
  chain_cut false 2 (by decide)

private def v1400964822510 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 2)))))))
private theorem no_v1400964822510 : ¬ MinimalInterpreter v1400964822510 :=
  chain_cut false 2 (by decide)

private def v1400965481454 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v1400965481454 : ¬ MinimalInterpreter v1400965481454 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2))))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965383150 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 2))))))))
private theorem no_v1400965383150 : ¬ MinimalInterpreter v1400965383150 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 2)))))) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.app (.var 3) (.var 2)))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400967803886 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))))))
private theorem no_v1400967803886 : ¬ MinimalInterpreter v1400967803886 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1400967802350 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 2))))))))
private theorem no_v1400967802350 : ¬ MinimalInterpreter v1400967802350 :=
  chain_cut false 2 (by decide)

private def v1400967840750 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v1400967840750 : ¬ MinimalInterpreter v1400967840750 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))) (.app (.var 0) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2)))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400977241070 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))))))
private theorem no_v1400977241070 : ¬ MinimalInterpreter v1400977241070 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1400977239534 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 2))))))))
private theorem no_v1400977239534 : ¬ MinimalInterpreter v1400977239534 :=
  cost_cut false 3 (by decide)

private def v1400977277934 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v1400977277934 : ¬ MinimalInterpreter v1400977277934 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2)))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four521 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,0,3,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,0,3,2] = [v1400964854766,v1400964853230,v1400964830190,v1400964828654,v1400964822510,v1400965481454,v1400965383150,v1400967803886,v1400967802350,v1400967840750,v1400977241070,v1400977239534,v1400977277934] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964854766) (.cons (no_v1400964853230) (.cons (no_v1400964830190) (.cons (no_v1400964828654) (.cons (no_v1400964822510) (.cons (no_v1400965481454) (.cons (no_v1400965383150) (.cons (no_v1400967803886) (.cons (no_v1400967802350) (.cons (no_v1400967840750) (.cons (no_v1400977241070) (.cons (no_v1400977239534) (.cons (no_v1400977277934) .nil)))))))))))))

private def v1400964856286 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 3)))))))))
private theorem no_v1400964856286 : ¬ MinimalInterpreter v1400964856286 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 3)))) (.app (.var 0) (.app (.var 0) (.var 2))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1400964853470 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 3))))))))
private theorem no_v1400964853470 : ¬ MinimalInterpreter v1400964853470 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 3))) (.app (.app (.var 0) (.var 0)) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1400964831710 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 3))))))))
private theorem no_v1400964831710 : ¬ MinimalInterpreter v1400964831710 :=
  chain_cut false 2 (by decide)

private def v1400964828894 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 3)))))))
private theorem no_v1400964828894 : ¬ MinimalInterpreter v1400964828894 :=
  chain_cut false 2 (by decide)

private def v1400964822750 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 3)))))))
private theorem no_v1400964822750 : ¬ MinimalInterpreter v1400964822750 :=
  chain_cut false 2 (by decide)

private def v1400965489118 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v1400965489118 : ¬ MinimalInterpreter v1400965489118 :=
  chain_cut false 2 (by decide)

private def v1400965490462 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1400965490462 : ¬ MinimalInterpreter v1400965490462 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.lam (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1400965479198 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1400965479198 : ¬ MinimalInterpreter v1400965479198 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (so_dead (by decide) (.var 3)))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1400965390814 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 3))))))))
private theorem no_v1400965390814 : ¬ MinimalInterpreter v1400965390814 :=
  chain_cut false 2 (by decide)

private def v1400965392158 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v1400965392158 : ¬ MinimalInterpreter v1400965392158 :=
  chain_cut false 2 (by decide)

private def v1400965380894 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 3)))))))
private theorem no_v1400965380894 : ¬ MinimalInterpreter v1400965380894 :=
  chain_cut false 2 (by decide)

private def v1400965356318 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 3)))))))
private theorem no_v1400965356318 : ¬ MinimalInterpreter v1400965356318 :=
  chain_cut false 2 (by decide)

private def v1400967848414 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v1400967848414 : ¬ MinimalInterpreter v1400967848414 :=
  chain_cut false 2 (by decide)

private def v1400977285598 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v1400977285598 : ¬ MinimalInterpreter v1400977285598 :=
  cost_cut false 3 (by decide)

theorem four522 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,1,1,3]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,1,1,3] = [v1400964856286,v1400964853470,v1400964831710,v1400964828894,v1400964822750,v1400965489118,v1400965490462,v1400965479198,v1400965390814,v1400965392158,v1400965380894,v1400965356318,v1400967848414,v1400977285598] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964856286) (.cons (no_v1400964853470) (.cons (no_v1400964831710) (.cons (no_v1400964828894) (.cons (no_v1400964822750) (.cons (no_v1400965489118) (.cons (no_v1400965490462) (.cons (no_v1400965479198) (.cons (no_v1400965390814) (.cons (no_v1400965392158) (.cons (no_v1400965380894) (.cons (no_v1400965356318) (.cons (no_v1400967848414) (.cons (no_v1400977285598) .nil))))))))))))))

private def v1400964856302 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))))))))
private theorem no_v1400964856302 : ¬ MinimalInterpreter v1400964856302 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide))))))

private def v1400964853486 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))))))
private theorem no_v1400964853486 : ¬ MinimalInterpreter v1400964853486 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400964831726 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 2))))))))
private theorem no_v1400964831726 : ¬ MinimalInterpreter v1400964831726 :=
  cost_cut false 2 (by decide)

private def v1400964828910 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 2)))))))
private theorem no_v1400964828910 : ¬ MinimalInterpreter v1400964828910 :=
  cost_cut false 2 (by decide)

private def v1400964822766 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 2)))))))
private theorem no_v1400964822766 : ¬ MinimalInterpreter v1400964822766 :=
  cost_cut false 2 (by decide)

private def v1400965490574 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1400965490574 : ¬ MinimalInterpreter v1400965490574 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965479310 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1400965479310 : ¬ MinimalInterpreter v1400965479310 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 2)))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 2)))) (.app (.app (.var 0) (.var 1)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965478638 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1400965478638 : ¬ MinimalInterpreter v1400965478638 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (.var 2))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965392270 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v1400965392270 : ¬ MinimalInterpreter v1400965392270 :=
  chain_cut false 2 (by decide)

private def v1400965381006 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 2)))))))
private theorem no_v1400965381006 : ¬ MinimalInterpreter v1400965381006 :=
  chain_cut false 2 (by decide)

private def v1400965356430 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 2)))))))
private theorem no_v1400965356430 : ¬ MinimalInterpreter v1400965356430 :=
  chain_cut false 2 (by decide)

private def v1400965369582 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 2)))) (.var 2))))))
private theorem no_v1400965369582 : ¬ MinimalInterpreter v1400965369582 :=
  chain_cut false 2 (by decide)

private def v1400965380334 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 2)))) (.var 2))))))
private theorem no_v1400965380334 : ¬ MinimalInterpreter v1400965380334 :=
  chain_cut false 2 (by decide)

private def v1400965355758 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 2))) (.var 2))))))
private theorem no_v1400965355758 : ¬ MinimalInterpreter v1400965355758 :=
  chain_cut false 2 (by decide)

theorem four523 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,1,2,2]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,1,2,2] = [v1400964856302,v1400964853486,v1400964831726,v1400964828910,v1400964822766,v1400965490574,v1400965479310,v1400965478638,v1400965392270,v1400965381006,v1400965356430,v1400965369582,v1400965380334,v1400965355758] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964856302) (.cons (no_v1400964853486) (.cons (no_v1400964831726) (.cons (no_v1400964828910) (.cons (no_v1400964822766) (.cons (no_v1400965490574) (.cons (no_v1400965479310) (.cons (no_v1400965478638) (.cons (no_v1400965392270) (.cons (no_v1400965381006) (.cons (no_v1400965356430) (.cons (no_v1400965369582) (.cons (no_v1400965380334) (.cons (no_v1400965355758) .nil))))))))))))))

private def v1400964856310 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 1)))))))))
private theorem no_v1400964856310 : ¬ MinimalInterpreter v1400964856310 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 2) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 1)))) (.app (.var 0) (.app (.var 2) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1400964853494 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 1))))))))
private theorem no_v1400964853494 : ¬ MinimalInterpreter v1400964853494 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 2)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 1))) (.app (.app (.var 0) (.var 2)) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1400964831734 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.var 1))))))))
private theorem no_v1400964831734 : ¬ MinimalInterpreter v1400964831734 :=
  chain_cut false 2 (by decide)

private def v1400964828918 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 1)))))))
private theorem no_v1400964828918 : ¬ MinimalInterpreter v1400964828918 :=
  chain_cut false 2 (by decide)

private def v1400964822774 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.var 1)))))))
private theorem no_v1400964822774 : ¬ MinimalInterpreter v1400964822774 :=
  chain_cut false 2 (by decide)

private def v1400965489142 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v1400965489142 : ¬ MinimalInterpreter v1400965489142 :=
  chain_cut false 2 (by decide)

private def v1400965478646 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1400965478646 : ¬ MinimalInterpreter v1400965478646 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 2))) (.var 0)) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1400965390838 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 3) (.var 1))))))))
private theorem no_v1400965390838 : ¬ MinimalInterpreter v1400965390838 :=
  chain_cut false 2 (by decide)

private def v1400965369590 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 3)))) (.var 1))))))
private theorem no_v1400965369590 : ¬ MinimalInterpreter v1400965369590 :=
  chain_cut false 2 (by decide)

private def v1400965380342 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 1))))))
private theorem no_v1400965380342 : ¬ MinimalInterpreter v1400965380342 :=
  chain_cut false 2 (by decide)

private def v1400965355766 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 1))))))
private theorem no_v1400965355766 : ¬ MinimalInterpreter v1400965355766 :=
  chain_cut false 2 (by decide)

private def v1400967848438 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v1400967848438 : ¬ MinimalInterpreter v1400967848438 :=
  chain_cut false 2 (by decide)

private def v1400977285622 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v1400977285622 : ¬ MinimalInterpreter v1400977285622 :=
  cost_cut false 3 (by decide)

theorem four524 : BadRow (markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,1,3,1]) := by
  have h : markedRow ⟨1,2,1,3,4,5⟩ [0,1] [0,1,3,1] = [v1400964856310,v1400964853494,v1400964831734,v1400964828918,v1400964822774,v1400965489142,v1400965478646,v1400965390838,v1400965369590,v1400965380342,v1400965355766,v1400967848438,v1400977285622] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400964856310) (.cons (no_v1400964853494) (.cons (no_v1400964831734) (.cons (no_v1400964828918) (.cons (no_v1400964822774) (.cons (no_v1400965489142) (.cons (no_v1400965478646) (.cons (no_v1400965390838) (.cons (no_v1400965369590) (.cons (no_v1400965380342) (.cons (no_v1400965355766) (.cons (no_v1400967848438) (.cons (no_v1400977285622) .nil)))))))))))))

end Blc.SelfintSingleObject.Rows40
