import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four322 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,2,2,0,0]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [0,2,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381370744046 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1381370744046 : ¬ MinimalInterpreter v1381370744046 :=
  cost_cut false 1 (by decide)

private def v1381370743662 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1381370743662 : ¬ MinimalInterpreter v1381370743662 :=
  cost_cut false 1 (by decide)

private def v1381370737902 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1381370737902 : ¬ MinimalInterpreter v1381370737902 :=
  cost_cut false 1 (by decide)

private def v1381370737518 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1381370737518 : ¬ MinimalInterpreter v1381370737518 :=
  cost_cut false 1 (by decide)

private def v1381370735982 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1381370735982 : ¬ MinimalInterpreter v1381370735982 :=
  cost_cut false 1 (by decide)

private def v1381370383598 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1381370383598 : ¬ MinimalInterpreter v1381370383598 :=
  cost_cut false 1 (by decide)

private def v1381370383214 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1381370383214 : ¬ MinimalInterpreter v1381370383214 :=
  cost_cut false 1 (by decide)

private def v1381370377454 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2)))))))
private theorem no_v1381370377454 : ¬ MinimalInterpreter v1381370377454 :=
  cost_cut false 1 (by decide)

private def v1381370287342 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1381370287342 : ¬ MinimalInterpreter v1381370287342 :=
  cost_cut false 1 (by decide)

private def v1381370377070 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 2))))))
private theorem no_v1381370377070 : ¬ MinimalInterpreter v1381370377070 :=
  cost_cut false 1 (by decide)

private def v1381370375534 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2))))))
private theorem no_v1381370375534 : ¬ MinimalInterpreter v1381370375534 :=
  cost_cut false 1 (by decide)

private def v1381370286958 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1381370286958 : ¬ MinimalInterpreter v1381370286958 :=
  cost_cut false 1 (by decide)

private def v1381370285422 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)) (.var 2))))))
private theorem no_v1381370285422 : ¬ MinimalInterpreter v1381370285422 :=
  cost_cut false 1 (by decide)

private def v1381370262894 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1381370262894 : ¬ MinimalInterpreter v1381370262894 :=
  cost_cut false 1 (by decide)

private def v1381376249070 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1381376249070 : ¬ MinimalInterpreter v1381376249070 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381376248686 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1381376248686 : ¬ MinimalInterpreter v1381376248686 :=
  cost_cut false 1 (by decide)

private def v1381376242926 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1381376242926 : ¬ MinimalInterpreter v1381376242926 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381376242542 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1381376242542 : ¬ MinimalInterpreter v1381376242542 :=
  cost_cut false 1 (by decide)

private def v1381376241006 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1381376241006 : ¬ MinimalInterpreter v1381376241006 :=
  cost_cut false 1 (by decide)

private def v1381376396526 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1381376396526 : ¬ MinimalInterpreter v1381376396526 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1381376396142 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1381376396142 : ¬ MinimalInterpreter v1381376396142 :=
  cost_cut false 1 (by decide)

private def v1381374954734 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1381374954734 : ¬ MinimalInterpreter v1381374954734 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381374954350 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1381374954350 : ¬ MinimalInterpreter v1381374954350 :=
  cost_cut false 1 (by decide)

theorem four323 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,0,0,1,2]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,0,0,1,2] = [v1381370744046,v1381370743662,v1381370737902,v1381370737518,v1381370735982,v1381370383598,v1381370383214,v1381370377454,v1381370287342,v1381370377070,v1381370375534,v1381370286958,v1381370285422,v1381370262894,v1381376249070,v1381376248686,v1381376242926,v1381376242542,v1381376241006,v1381376396526,v1381376396142,v1381374954734,v1381374954350] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370744046) (.cons (no_v1381370743662) (.cons (no_v1381370737902) (.cons (no_v1381370737518) (.cons (no_v1381370735982) (.cons (no_v1381370383598) (.cons (no_v1381370383214) (.cons (no_v1381370377454) (.cons (no_v1381370287342) (.cons (no_v1381370377070) (.cons (no_v1381370375534) (.cons (no_v1381370286958) (.cons (no_v1381370285422) (.cons (no_v1381370262894) (.cons (no_v1381376249070) (.cons (no_v1381376248686) (.cons (no_v1381376242926) (.cons (no_v1381376242542) (.cons (no_v1381376241006) (.cons (no_v1381376396526) (.cons (no_v1381376396142) (.cons (no_v1381374954734) (.cons (no_v1381374954350) .nil)))))))))))))))))))))))

private def v1381370744054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1381370744054 : ¬ MinimalInterpreter v1381370744054 :=
  cost_cut false 1 (by decide)

private def v1381370743670 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1381370743670 : ¬ MinimalInterpreter v1381370743670 :=
  cost_cut false 1 (by decide)

private def v1381370737910 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1381370737910 : ¬ MinimalInterpreter v1381370737910 :=
  cost_cut false 1 (by decide)

private def v1381370737526 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1381370737526 : ¬ MinimalInterpreter v1381370737526 :=
  cost_cut false 1 (by decide)

private def v1381370735990 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1381370735990 : ¬ MinimalInterpreter v1381370735990 :=
  cost_cut false 1 (by decide)

private def v1381370383606 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1381370383606 : ¬ MinimalInterpreter v1381370383606 :=
  cost_cut false 1 (by decide)

private def v1381370383222 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1381370383222 : ¬ MinimalInterpreter v1381370383222 :=
  cost_cut false 1 (by decide)

private def v1381370377462 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1)))))))
private theorem no_v1381370377462 : ¬ MinimalInterpreter v1381370377462 :=
  cost_cut false 1 (by decide)

private def v1381370287350 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1381370287350 : ¬ MinimalInterpreter v1381370287350 :=
  cost_cut false 1 (by decide)

private def v1381370377078 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 1))))))
private theorem no_v1381370377078 : ¬ MinimalInterpreter v1381370377078 :=
  cost_cut false 1 (by decide)

private def v1381370375542 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1))))))
private theorem no_v1381370375542 : ¬ MinimalInterpreter v1381370375542 :=
  cost_cut false 1 (by decide)

private def v1381370286966 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1381370286966 : ¬ MinimalInterpreter v1381370286966 :=
  cost_cut false 1 (by decide)

private def v1381370285430 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)) (.var 1))))))
private theorem no_v1381370285430 : ¬ MinimalInterpreter v1381370285430 :=
  cost_cut false 1 (by decide)

private def v1381370262902 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1381370262902 : ¬ MinimalInterpreter v1381370262902 :=
  cost_cut false 1 (by decide)

private def v1381376249078 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1381376249078 : ¬ MinimalInterpreter v1381376249078 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381376248694 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1381376248694 : ¬ MinimalInterpreter v1381376248694 :=
  cost_cut false 1 (by decide)

private def v1381376242934 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))
private theorem no_v1381376242934 : ¬ MinimalInterpreter v1381376242934 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381376242550 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))))
private theorem no_v1381376242550 : ¬ MinimalInterpreter v1381376242550 :=
  cost_cut false 1 (by decide)

private def v1381376241014 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))))
private theorem no_v1381376241014 : ¬ MinimalInterpreter v1381376241014 :=
  cost_cut false 1 (by decide)

private def v1381376396534 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v1381376396534 : ¬ MinimalInterpreter v1381376396534 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1381376396150 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v1381376396150 : ¬ MinimalInterpreter v1381376396150 :=
  cost_cut false 1 (by decide)

private def v1381374954742 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1381374954742 : ¬ MinimalInterpreter v1381374954742 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381374954358 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1381374954358 : ¬ MinimalInterpreter v1381374954358 :=
  cost_cut false 1 (by decide)

theorem four324 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,0,0,2,1]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,0,0,2,1] = [v1381370744054,v1381370743670,v1381370737910,v1381370737526,v1381370735990,v1381370383606,v1381370383222,v1381370377462,v1381370287350,v1381370377078,v1381370375542,v1381370286966,v1381370285430,v1381370262902,v1381376249078,v1381376248694,v1381376242934,v1381376242550,v1381376241014,v1381376396534,v1381376396150,v1381374954742,v1381374954358] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370744054) (.cons (no_v1381370743670) (.cons (no_v1381370737910) (.cons (no_v1381370737526) (.cons (no_v1381370735990) (.cons (no_v1381370383606) (.cons (no_v1381370383222) (.cons (no_v1381370377462) (.cons (no_v1381370287350) (.cons (no_v1381370377078) (.cons (no_v1381370375542) (.cons (no_v1381370286966) (.cons (no_v1381370285430) (.cons (no_v1381370262902) (.cons (no_v1381376249078) (.cons (no_v1381376248694) (.cons (no_v1381376242934) (.cons (no_v1381376242550) (.cons (no_v1381376241014) (.cons (no_v1381376396534) (.cons (no_v1381376396150) (.cons (no_v1381374954742) (.cons (no_v1381374954358) .nil)))))))))))))))))))))))

private def v1381370744430 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1381370744430 : ¬ MinimalInterpreter v1381370744430 :=
  cost_cut false 1 (by decide)

private def v1381370743726 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1381370743726 : ¬ MinimalInterpreter v1381370743726 :=
  cost_cut false 1 (by decide)

private def v1381370738286 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1381370738286 : ¬ MinimalInterpreter v1381370738286 :=
  cost_cut false 1 (by decide)

private def v1381370737582 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1381370737582 : ¬ MinimalInterpreter v1381370737582 :=
  cost_cut false 1 (by decide)

private def v1381370736046 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1381370736046 : ¬ MinimalInterpreter v1381370736046 :=
  cost_cut false 1 (by decide)

private def v1381370383982 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1381370383982 : ¬ MinimalInterpreter v1381370383982 :=
  cost_cut false 1 (by decide)

private def v1381370383278 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1381370383278 : ¬ MinimalInterpreter v1381370383278 :=
  cost_cut false 1 (by decide)

private def v1381370377838 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)))))))
private theorem no_v1381370377838 : ¬ MinimalInterpreter v1381370377838 :=
  cost_cut false 1 (by decide)

private def v1381370287726 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1381370287726 : ¬ MinimalInterpreter v1381370287726 :=
  cost_cut false 1 (by decide)

private def v1381370377134 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 2))))))
private theorem no_v1381370377134 : ¬ MinimalInterpreter v1381370377134 :=
  cost_cut false 1 (by decide)

private def v1381370375598 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 2))))))
private theorem no_v1381370375598 : ¬ MinimalInterpreter v1381370375598 :=
  cost_cut false 1 (by decide)

private def v1381370287022 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1381370287022 : ¬ MinimalInterpreter v1381370287022 :=
  cost_cut false 1 (by decide)

private def v1381370285486 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)) (.var 2))))))
private theorem no_v1381370285486 : ¬ MinimalInterpreter v1381370285486 :=
  cost_cut false 1 (by decide)

private def v1381370262958 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1381370262958 : ¬ MinimalInterpreter v1381370262958 :=
  cost_cut false 1 (by decide)

private def v1381376249454 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1381376249454 : ¬ MinimalInterpreter v1381376249454 :=
  cost_cut false 1 (by decide)

private def v1381376248750 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1381376248750 : ¬ MinimalInterpreter v1381376248750 :=
  cost_cut false 1 (by decide)

private def v1381376243310 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v1381376243310 : ¬ MinimalInterpreter v1381376243310 :=
  cost_cut false 1 (by decide)

private def v1381376242606 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v1381376242606 : ¬ MinimalInterpreter v1381376242606 :=
  cost_cut false 1 (by decide)

private def v1381376241070 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v1381376241070 : ¬ MinimalInterpreter v1381376241070 :=
  cost_cut false 1 (by decide)

private def v1381376396910 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v1381376396910 : ¬ MinimalInterpreter v1381376396910 :=
  cost_cut false 1 (by decide)

private def v1381376396206 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v1381376396206 : ¬ MinimalInterpreter v1381376396206 :=
  cost_cut false 1 (by decide)

private def v1381374955118 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1381374955118 : ¬ MinimalInterpreter v1381374955118 :=
  cost_cut false 1 (by decide)

private def v1381374954414 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1381374954414 : ¬ MinimalInterpreter v1381374954414 :=
  cost_cut false 1 (by decide)

theorem four325 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,0,1,0,2]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,0,1,0,2] = [v1381370744430,v1381370743726,v1381370738286,v1381370737582,v1381370736046,v1381370383982,v1381370383278,v1381370377838,v1381370287726,v1381370377134,v1381370375598,v1381370287022,v1381370285486,v1381370262958,v1381376249454,v1381376248750,v1381376243310,v1381376242606,v1381376241070,v1381376396910,v1381376396206,v1381374955118,v1381374954414] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370744430) (.cons (no_v1381370743726) (.cons (no_v1381370738286) (.cons (no_v1381370737582) (.cons (no_v1381370736046) (.cons (no_v1381370383982) (.cons (no_v1381370383278) (.cons (no_v1381370377838) (.cons (no_v1381370287726) (.cons (no_v1381370377134) (.cons (no_v1381370375598) (.cons (no_v1381370287022) (.cons (no_v1381370285486) (.cons (no_v1381370262958) (.cons (no_v1381376249454) (.cons (no_v1381376248750) (.cons (no_v1381376243310) (.cons (no_v1381376242606) (.cons (no_v1381376241070) (.cons (no_v1381376396910) (.cons (no_v1381376396206) (.cons (no_v1381374955118) (.cons (no_v1381374954414) .nil)))))))))))))))))))))))

theorem four326 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,0,1,1,1]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381370744442 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1381370744442 : ¬ MinimalInterpreter v1381370744442 :=
  cost_cut false 1 (by decide)

private def v1381370743738 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1381370743738 : ¬ MinimalInterpreter v1381370743738 :=
  cost_cut false 1 (by decide)

private def v1381370738298 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1381370738298 : ¬ MinimalInterpreter v1381370738298 :=
  cost_cut false 1 (by decide)

private def v1381370737594 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1381370737594 : ¬ MinimalInterpreter v1381370737594 :=
  cost_cut false 1 (by decide)

private def v1381370736058 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1381370736058 : ¬ MinimalInterpreter v1381370736058 :=
  cost_cut false 1 (by decide)

private def v1381370383994 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1381370383994 : ¬ MinimalInterpreter v1381370383994 :=
  cost_cut false 1 (by decide)

private def v1381370383290 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1381370383290 : ¬ MinimalInterpreter v1381370383290 :=
  cost_cut false 1 (by decide)

private def v1381370377850 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 0)))))))
private theorem no_v1381370377850 : ¬ MinimalInterpreter v1381370377850 :=
  cost_cut false 1 (by decide)

private def v1381370287738 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1381370287738 : ¬ MinimalInterpreter v1381370287738 :=
  cost_cut false 1 (by decide)

private def v1381370377146 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0))))))
private theorem no_v1381370377146 : ¬ MinimalInterpreter v1381370377146 :=
  cost_cut false 1 (by decide)

private def v1381370375610 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))))))
private theorem no_v1381370375610 : ¬ MinimalInterpreter v1381370375610 :=
  cost_cut false 1 (by decide)

private def v1381370287034 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1381370287034 : ¬ MinimalInterpreter v1381370287034 :=
  cost_cut false 1 (by decide)

private def v1381370285498 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2)) (.var 0))))))
private theorem no_v1381370285498 : ¬ MinimalInterpreter v1381370285498 :=
  cost_cut false 1 (by decide)

private def v1381370262970 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1381370262970 : ¬ MinimalInterpreter v1381370262970 :=
  cost_cut false 1 (by decide)

private def v1381376249466 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1381376249466 : ¬ MinimalInterpreter v1381376249466 :=
  cost_cut false 1 (by decide)

private def v1381376248762 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1381376248762 : ¬ MinimalInterpreter v1381376248762 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381376243322 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v1381376243322 : ¬ MinimalInterpreter v1381376243322 :=
  cost_cut false 1 (by decide)

private def v1381376242618 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v1381376242618 : ¬ MinimalInterpreter v1381376242618 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381376241082 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v1381376241082 : ¬ MinimalInterpreter v1381376241082 :=
  cost_cut false 1 (by decide)

private def v1381376396922 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v1381376396922 : ¬ MinimalInterpreter v1381376396922 :=
  cost_cut false 1 (by decide)

private def v1381376396218 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v1381376396218 : ¬ MinimalInterpreter v1381376396218 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.app (.var 1) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1381374955130 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1381374955130 : ¬ MinimalInterpreter v1381374955130 :=
  cost_cut false 1 (by decide)

private def v1381374954426 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1381374954426 : ¬ MinimalInterpreter v1381374954426 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.app (.var 1) (.var 0)) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1381374899130 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 0)))))
private theorem no_v1381374899130 : ¬ MinimalInterpreter v1381374899130 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 0))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 0))) (.app (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0)) (.var 0) (by decide) (by decide)))))

private def v1381374897594 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.var 0)))))
private theorem no_v1381374897594 : ¬ MinimalInterpreter v1381374897594 :=
  cost_cut false 1 (by decide)

theorem four327 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,0,1,2,0]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,0,1,2,0] = [v1381370744442,v1381370743738,v1381370738298,v1381370737594,v1381370736058,v1381370383994,v1381370383290,v1381370377850,v1381370287738,v1381370377146,v1381370375610,v1381370287034,v1381370285498,v1381370262970,v1381376249466,v1381376248762,v1381376243322,v1381376242618,v1381376241082,v1381376396922,v1381376396218,v1381374955130,v1381374954426,v1381374899130,v1381374897594] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370744442) (.cons (no_v1381370743738) (.cons (no_v1381370738298) (.cons (no_v1381370737594) (.cons (no_v1381370736058) (.cons (no_v1381370383994) (.cons (no_v1381370383290) (.cons (no_v1381370377850) (.cons (no_v1381370287738) (.cons (no_v1381370377146) (.cons (no_v1381370375610) (.cons (no_v1381370287034) (.cons (no_v1381370285498) (.cons (no_v1381370262970) (.cons (no_v1381376249466) (.cons (no_v1381376248762) (.cons (no_v1381376243322) (.cons (no_v1381376242618) (.cons (no_v1381376241082) (.cons (no_v1381376396922) (.cons (no_v1381376396218) (.cons (no_v1381374955130) (.cons (no_v1381374954426) (.cons (no_v1381374899130) (.cons (no_v1381374897594) .nil)))))))))))))))))))))))))

private def v1381370744630 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1381370744630 : ¬ MinimalInterpreter v1381370744630 :=
  cost_cut false 1 (by decide)

private def v1381370743766 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1381370743766 : ¬ MinimalInterpreter v1381370743766 :=
  cost_cut false 1 (by decide)

private def v1381370738486 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1381370738486 : ¬ MinimalInterpreter v1381370738486 :=
  cost_cut false 1 (by decide)

private def v1381370737622 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1381370737622 : ¬ MinimalInterpreter v1381370737622 :=
  cost_cut false 1 (by decide)

private def v1381370736086 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1381370736086 : ¬ MinimalInterpreter v1381370736086 :=
  cost_cut false 1 (by decide)

private def v1381370384182 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1381370384182 : ¬ MinimalInterpreter v1381370384182 :=
  cost_cut false 1 (by decide)

private def v1381370383318 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1381370383318 : ¬ MinimalInterpreter v1381370383318 :=
  cost_cut false 1 (by decide)

private def v1381370378038 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 1)))))))
private theorem no_v1381370378038 : ¬ MinimalInterpreter v1381370378038 :=
  cost_cut false 1 (by decide)

private def v1381370287926 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1381370287926 : ¬ MinimalInterpreter v1381370287926 :=
  cost_cut false 1 (by decide)

private def v1381370377174 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 1))))))
private theorem no_v1381370377174 : ¬ MinimalInterpreter v1381370377174 :=
  cost_cut false 1 (by decide)

private def v1381370375638 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 1))))))
private theorem no_v1381370375638 : ¬ MinimalInterpreter v1381370375638 :=
  cost_cut false 1 (by decide)

private def v1381370287062 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1381370287062 : ¬ MinimalInterpreter v1381370287062 :=
  cost_cut false 1 (by decide)

private def v1381370285526 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)) (.var 1))))))
private theorem no_v1381370285526 : ¬ MinimalInterpreter v1381370285526 :=
  cost_cut false 1 (by decide)

private def v1381370262998 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1381370262998 : ¬ MinimalInterpreter v1381370262998 :=
  cost_cut false 1 (by decide)

private def v1381376249654 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1381376249654 : ¬ MinimalInterpreter v1381376249654 :=
  cost_cut false 1 (by decide)

private def v1381376248790 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1381376248790 : ¬ MinimalInterpreter v1381376248790 :=
  cost_cut false 1 (by decide)

private def v1381376243510 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v1381376243510 : ¬ MinimalInterpreter v1381376243510 :=
  cost_cut false 1 (by decide)

private def v1381376242646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v1381376242646 : ¬ MinimalInterpreter v1381376242646 :=
  cost_cut false 1 (by decide)

private def v1381376241110 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v1381376241110 : ¬ MinimalInterpreter v1381376241110 :=
  cost_cut false 1 (by decide)

private def v1381376397110 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v1381376397110 : ¬ MinimalInterpreter v1381376397110 :=
  cost_cut false 1 (by decide)

private def v1381376396246 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v1381376396246 : ¬ MinimalInterpreter v1381376396246 :=
  cost_cut false 1 (by decide)

private def v1381374955318 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1381374955318 : ¬ MinimalInterpreter v1381374955318 :=
  cost_cut false 1 (by decide)

private def v1381374954454 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1381374954454 : ¬ MinimalInterpreter v1381374954454 :=
  cost_cut false 1 (by decide)

theorem four328 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,0,2,0,1]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [1,0,2,0,1] = [v1381370744630,v1381370743766,v1381370738486,v1381370737622,v1381370736086,v1381370384182,v1381370383318,v1381370378038,v1381370287926,v1381370377174,v1381370375638,v1381370287062,v1381370285526,v1381370262998,v1381376249654,v1381376248790,v1381376243510,v1381376242646,v1381376241110,v1381376397110,v1381376396246,v1381374955318,v1381374954454] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370744630) (.cons (no_v1381370743766) (.cons (no_v1381370738486) (.cons (no_v1381370737622) (.cons (no_v1381370736086) (.cons (no_v1381370384182) (.cons (no_v1381370383318) (.cons (no_v1381370378038) (.cons (no_v1381370287926) (.cons (no_v1381370377174) (.cons (no_v1381370375638) (.cons (no_v1381370287062) (.cons (no_v1381370285526) (.cons (no_v1381370262998) (.cons (no_v1381376249654) (.cons (no_v1381376248790) (.cons (no_v1381376243510) (.cons (no_v1381376242646) (.cons (no_v1381376241110) (.cons (no_v1381376397110) (.cons (no_v1381376396246) (.cons (no_v1381374955318) (.cons (no_v1381374954454) .nil)))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
