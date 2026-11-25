import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402312629486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v1402312629486 : ¬ MinimalInterpreter v1402312629486 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312628078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v1402312628078 : ¬ MinimalInterpreter v1402312628078 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402311437550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402311437550 : ¬ MinimalInterpreter v1402311437550 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 1))) (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402311388398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402311388398 : ¬ MinimalInterpreter v1402311388398 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 1))) (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312617198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312617198 : ¬ MinimalInterpreter v1402312617198 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312469742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312469742 : ¬ MinimalInterpreter v1402312469742 :=
  chain_cut false 2 (by decide)

private def v1402312468334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v1402312468334 : ¬ MinimalInterpreter v1402312468334 :=
  chain_cut false 2 (by decide)

private def v1402312465262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1)) (.var 2))))))
private theorem no_v1402312465262 : ¬ MinimalInterpreter v1402312465262 :=
  chain_cut false 2 (by decide)

private def v1402312428398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v1402312428398 : ¬ MinimalInterpreter v1402312428398 :=
  chain_cut false 2 (by decide)

private def v1402407591150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402407591150 : ¬ MinimalInterpreter v1402407591150 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402407589742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))))
private theorem no_v1402407589742 : ¬ MinimalInterpreter v1402407589742 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402407578862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402407578862 : ¬ MinimalInterpreter v1402407578862 :=
  chain_cut false 4 (by decide)

private def v1402407577454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))))
private theorem no_v1402407577454 : ¬ MinimalInterpreter v1402407577454 :=
  chain_cut false 4 (by decide)

private def v1402407574382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))))
private theorem no_v1402407574382 : ¬ MinimalInterpreter v1402407574382 :=
  chain_cut false 4 (by decide)

theorem five656 : BadRow (bucket false 4 3 5 [0,0,1,1,2]) := by
  have h : bucket false 4 3 5 [0,0,1,1,2] = [v1402312629486,v1402312628078,v1402311437550,v1402311388398,v1402312617198,v1402312469742,v1402312468334,v1402312465262,v1402312428398,v1402407591150,v1402407589742,v1402407578862,v1402407577454,v1402407574382] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402312629486) (.cons (no_v1402312628078) (.cons (no_v1402311437550) (.cons (no_v1402311388398) (.cons (no_v1402312617198) (.cons (no_v1402312469742) (.cons (no_v1402312468334) (.cons (no_v1402312465262) (.cons (no_v1402312428398) (.cons (no_v1402407591150) (.cons (no_v1402407589742) (.cons (no_v1402407578862) (.cons (no_v1402407577454) (.cons (no_v1402407574382) .nil))))))))))))))

theorem five657 : BadRow (bucket true 4 3 5 [0,0,1,1,2]) := by
  have h : bucket true 4 3 5 [0,0,1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402312629494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 2) (.var 1))))))))
private theorem no_v1402312629494 : ¬ MinimalInterpreter v1402312629494 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312628086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 1)))))))
private theorem no_v1402312628086 : ¬ MinimalInterpreter v1402312628086 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402311437558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402311437558 : ¬ MinimalInterpreter v1402311437558 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 1))) (.app (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0) (by decide) (by decide)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402311388406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402311388406 : ¬ MinimalInterpreter v1402311388406 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 1))) (.app (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0) (by decide) (by decide)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312617206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312617206 : ¬ MinimalInterpreter v1402312617206 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 1))) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312469750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 2) (.var 1)))))))
private theorem no_v1402312469750 : ¬ MinimalInterpreter v1402312469750 :=
  chain_cut false 2 (by decide)

private def v1402312468342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))) (.var 1))))))
private theorem no_v1402312468342 : ¬ MinimalInterpreter v1402312468342 :=
  chain_cut false 2 (by decide)

private def v1402312465270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 1)))) (.var 2)) (.var 1))))))
private theorem no_v1402312465270 : ¬ MinimalInterpreter v1402312465270 :=
  chain_cut false 2 (by decide)

private def v1402312428406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2)) (.var 1))))))
private theorem no_v1402312428406 : ¬ MinimalInterpreter v1402312428406 :=
  chain_cut false 2 (by decide)

private def v1402329917302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 1)))))
private theorem no_v1402329917302 : ¬ MinimalInterpreter v1402329917302 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 1))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 1))) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (.var 1)) (.var 0) (by decide) (by decide)))))

private def v1402329914230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.var 1)))))
private theorem no_v1402329914230 : ¬ MinimalInterpreter v1402329914230 :=
  chain_cut false 2 (by decide)

private def v1402407591158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))))
private theorem no_v1402407591158 : ¬ MinimalInterpreter v1402407591158 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402407589750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))))
private theorem no_v1402407589750 : ¬ MinimalInterpreter v1402407589750 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402407578870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1)))))))))
private theorem no_v1402407578870 : ¬ MinimalInterpreter v1402407578870 :=
  chain_cut false 4 (by decide)

private def v1402407577462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1))))))))
private theorem no_v1402407577462 : ¬ MinimalInterpreter v1402407577462 :=
  chain_cut false 4 (by decide)

private def v1402407574390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1))))))))
private theorem no_v1402407574390 : ¬ MinimalInterpreter v1402407574390 :=
  chain_cut false 4 (by decide)

theorem five658 : BadRow (bucket false 4 3 5 [0,0,1,2,1]) := by
  have h : bucket false 4 3 5 [0,0,1,2,1] = [v1402312629494,v1402312628086,v1402311437558,v1402311388406,v1402312617206,v1402312469750,v1402312468342,v1402312465270,v1402312428406,v1402329917302,v1402329914230,v1402407591158,v1402407589750,v1402407578870,v1402407577462,v1402407574390] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402312629494) (.cons (no_v1402312628086) (.cons (no_v1402311437558) (.cons (no_v1402311388406) (.cons (no_v1402312617206) (.cons (no_v1402312469750) (.cons (no_v1402312468342) (.cons (no_v1402312465270) (.cons (no_v1402312428406) (.cons (no_v1402329917302) (.cons (no_v1402329914230) (.cons (no_v1402407591158) (.cons (no_v1402407589750) (.cons (no_v1402407578870) (.cons (no_v1402407577462) (.cons (no_v1402407574390) .nil))))))))))))))))

theorem five659 : BadRow (bucket true 4 3 5 [0,0,1,2,1]) := by
  have h : bucket true 4 3 5 [0,0,1,2,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313535738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 0))))))))))
private theorem no_v1402313535738 : ¬ MinimalInterpreter v1402313535738 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 1) (.var 0)))) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 1) (.var 0))) (.app (.var 3) (.var 0)) (.var 2) (by decide) (by decide))))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402313486586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 3) (.var 0)))))))))
private theorem no_v1402313486586 : ¬ MinimalInterpreter v1402313486586 :=
  chain_cut false 2 (by decide)

private def v1402312749306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.var 3) (.var 0)))))))))
private theorem no_v1402312749306 : ¬ MinimalInterpreter v1402312749306 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.app (.var 3) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 1) (.var 0)))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 1) (.var 0))) (.app (.var 3) (.var 0)) (.var 2) (by decide) (by decide)))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402312700154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.app (.var 3) (.var 0))))))))
private theorem no_v1402312700154 : ¬ MinimalInterpreter v1402312700154 :=
  chain_cut false 2 (by decide)

private def v1402312503546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.app (.var 3) (.var 0))))))))
private theorem no_v1402312503546 : ¬ MinimalInterpreter v1402312503546 :=
  chain_cut false 2 (by decide)

private def v1402332093690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402332093690 : ¬ MinimalInterpreter v1402332093690 :=
  chain_cut false 2 (by decide)

private def v1402332092282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0)))))))))
private theorem no_v1402332092282 : ¬ MinimalInterpreter v1402332092282 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 0))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402332081402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.var 0)))))))))
private theorem no_v1402332081402 : ¬ MinimalInterpreter v1402332081402 :=
  chain_cut false 2 (by decide)

private def v1402332079994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0))))))))
private theorem no_v1402332079994 : ¬ MinimalInterpreter v1402332079994 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402332076922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.var 0))))))))
private theorem no_v1402332076922 : ¬ MinimalInterpreter v1402332076922 :=
  chain_cut false 2 (by decide)

private def v1402332388602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402332388602 : ¬ MinimalInterpreter v1402332388602 :=
  chain_cut false 2 (by decide)

private def v1402332387194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))))
private theorem no_v1402332387194 : ¬ MinimalInterpreter v1402332387194 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402332410106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 0))))))))))
private theorem no_v1402332410106 : ¬ MinimalInterpreter v1402332410106 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 1) (.var 0))) (.app (.var 3) (.var 0)) (.var 2) (by decide) (by decide)))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)) (.var 1) (by decide) (by decide))) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402332360954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 3) (.var 0)))))))))
private theorem no_v1402332360954 : ¬ MinimalInterpreter v1402332360954 :=
  chain_cut false 2 (by decide)

private def v1402333568250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402333568250 : ¬ MinimalInterpreter v1402333568250 :=
  chain_cut false 2 (by decide)

private def v1402333566842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))))
private theorem no_v1402333566842 : ¬ MinimalInterpreter v1402333566842 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402330422522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v1402330422522 : ¬ MinimalInterpreter v1402330422522 :=
  chain_cut false 2 (by decide)

private def v1402330421114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v1402330421114 : ¬ MinimalInterpreter v1402330421114 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 3)) (.var 0)) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402329917306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))) (.var 0)))))
private theorem no_v1402329917306 : ¬ MinimalInterpreter v1402329917306 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))) (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))) (.var 0)) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)) (by decide) (by decide)))))

private def v1402329914234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))) (.var 0)))))
private theorem no_v1402329914234 : ¬ MinimalInterpreter v1402329914234 :=
  chain_cut false 2 (by decide)

private def v1402407907578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 0))))))))))
private theorem no_v1402407907578 : ¬ MinimalInterpreter v1402407907578 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.app (.var 1) (.var 0)))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.lam (r := (.var 2)) (g := (.app (.var 1) (.var 0))) (.app (.var 3) (.var 0)) (.var 2) (by decide) (by decide)))) (.app (.var 0) (.lam (r := (.var 1)) (g := (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)) (.var 1) (by decide) (by decide))) (by decide) (by decide)) (.lam (r := (.var 0)) (g := (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)) (.var 0) (by decide) (by decide)) (by decide) (by decide))))))

private def v1402407858426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 3) (.var 0)))))))))
private theorem no_v1402407858426 : ¬ MinimalInterpreter v1402407858426 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402409065722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0))))))))))
private theorem no_v1402409065722 : ¬ MinimalInterpreter v1402409065722 :=
  chain_cut false 8 (by decide)

private def v1402409064314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0)))))))))
private theorem no_v1402409064314 : ¬ MinimalInterpreter v1402409064314 :=
  w_cut false 0 (by decide)

theorem five660 : BadRow (bucket false 4 3 5 [0,0,1,3,0]) := by
  have h : bucket false 4 3 5 [0,0,1,3,0] = [v1402313535738,v1402313486586,v1402312749306,v1402312700154,v1402312503546,v1402332093690,v1402332092282,v1402332081402,v1402332079994,v1402332076922,v1402332388602,v1402332387194,v1402332410106,v1402332360954,v1402333568250,v1402333566842,v1402330422522,v1402330421114,v1402329917306,v1402329914234,v1402407907578,v1402407858426,v1402409065722,v1402409064314] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313535738) (.cons (no_v1402313486586) (.cons (no_v1402312749306) (.cons (no_v1402312700154) (.cons (no_v1402312503546) (.cons (no_v1402332093690) (.cons (no_v1402332092282) (.cons (no_v1402332081402) (.cons (no_v1402332079994) (.cons (no_v1402332076922) (.cons (no_v1402332388602) (.cons (no_v1402332387194) (.cons (no_v1402332410106) (.cons (no_v1402332360954) (.cons (no_v1402333568250) (.cons (no_v1402333566842) (.cons (no_v1402330422522) (.cons (no_v1402330421114) (.cons (no_v1402329917306) (.cons (no_v1402329914234) (.cons (no_v1402407907578) (.cons (no_v1402407858426) (.cons (no_v1402409065722) (.cons (no_v1402409064314) .nil))))))))))))))))))))))))

theorem five661 : BadRow (bucket true 4 3 5 [0,0,1,3,0]) := by
  have h : bucket true 4 3 5 [0,0,1,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402313537646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 2))))))))))
private theorem no_v1402313537646 : ¬ MinimalInterpreter v1402313537646 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 2)))))))) (.lam (r := (.app (.var 1) (.lam (.app (.var 0) (.var 1))))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)) (.var 1) (by decide) (by decide))))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313488494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 2)))))))))
private theorem no_v1402313488494 : ¬ MinimalInterpreter v1402313488494 :=
  chain_cut false 2 (by decide)

private def v1402313476014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 2)))))))
private theorem no_v1402313476014 : ¬ MinimalInterpreter v1402313476014 :=
  chain_cut false 2 (by decide)

private def v1402312751214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.app (.var 0) (.var 2)))))))))
private theorem no_v1402312751214 : ¬ MinimalInterpreter v1402312751214 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.app (.var 0) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.app (.var 0) (.var 2))))))) (.lam (r := (.app (.var 1) (.lam (.app (.var 0) (.var 1))))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)) (.var 1) (by decide) (by decide)))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312702062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.app (.var 0) (.var 2))))))))
private theorem no_v1402312702062 : ¬ MinimalInterpreter v1402312702062 :=
  chain_cut false 2 (by decide)

private def v1402312505454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.app (.var 0) (.var 2))))))))
private theorem no_v1402312505454 : ¬ MinimalInterpreter v1402312505454 :=
  chain_cut false 2 (by decide)

private def v1402312617582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.app (.var 0) (.var 2)))))))
private theorem no_v1402312617582 : ¬ MinimalInterpreter v1402312617582 :=
  chain_cut false 2 (by decide)

private def v1402312615854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 0))))) (.var 2))))))
private theorem no_v1402312615854 : ¬ MinimalInterpreter v1402312615854 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312612782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 0)))) (.var 2))))))
private theorem no_v1402312612782 : ¬ MinimalInterpreter v1402312612782 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402312689582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 0))))) (.var 2))))))
private theorem no_v1402312689582 : ¬ MinimalInterpreter v1402312689582 :=
  chain_cut false 2 (by decide)

private def v1402312492974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 0)))) (.var 2))))))
private theorem no_v1402312492974 : ¬ MinimalInterpreter v1402312492974 :=
  chain_cut false 2 (by decide)

private def v1402312465326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 2)))) (.var 0)) (.var 2))))))
private theorem no_v1402312465326 : ¬ MinimalInterpreter v1402312465326 :=
  chain_cut false 2 (by decide)

private def v1402332412014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 2))))))))))
private theorem no_v1402332412014 : ¬ MinimalInterpreter v1402332412014 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 2)))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.app (.var 0) (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)) (.var 1) (by decide) (by decide)))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402332362862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 2)))))))))
private theorem no_v1402332362862 : ¬ MinimalInterpreter v1402332362862 :=
  chain_cut false 2 (by decide)

private def v1402332350382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 2)))))))
private theorem no_v1402332350382 : ¬ MinimalInterpreter v1402332350382 :=
  chain_cut false 2 (by decide)

private def v1402407909486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 2))))))))))
private theorem no_v1402407909486 : ¬ MinimalInterpreter v1402407909486 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 2))))))) (.lam (r := (.app (.var 1) (.lam (.app (.var 0) (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.lam (r := (.var 1)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)) (.var 1) (by decide) (by decide)))) (.app (.var 1) (.lam (r := (.var 0)) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.var 1)) (.var 0) (by decide) (by decide))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402407860334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 2)))))))))
private theorem no_v1402407860334 : ¬ MinimalInterpreter v1402407860334 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407847854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 0)))) (.var 2)))))))
private theorem no_v1402407847854 : ¬ MinimalInterpreter v1402407847854 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem five662 : BadRow (bucket false 4 3 5 [0,0,2,0,2]) := by
  have h : bucket false 4 3 5 [0,0,2,0,2] = [v1402313537646,v1402313488494,v1402313476014,v1402312751214,v1402312702062,v1402312505454,v1402312617582,v1402312615854,v1402312612782,v1402312689582,v1402312492974,v1402312465326,v1402332412014,v1402332362862,v1402332350382,v1402407909486,v1402407860334,v1402407847854] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313537646) (.cons (no_v1402313488494) (.cons (no_v1402313476014) (.cons (no_v1402312751214) (.cons (no_v1402312702062) (.cons (no_v1402312505454) (.cons (no_v1402312617582) (.cons (no_v1402312615854) (.cons (no_v1402312612782) (.cons (no_v1402312689582) (.cons (no_v1402312492974) (.cons (no_v1402312465326) (.cons (no_v1402332412014) (.cons (no_v1402332362862) (.cons (no_v1402332350382) (.cons (no_v1402407909486) (.cons (no_v1402407860334) (.cons (no_v1402407847854) .nil))))))))))))))))))

theorem five663 : BadRow (bucket true 4 3 5 [0,0,2,0,2]) := by
  have h : bucket true 4 3 5 [0,0,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
