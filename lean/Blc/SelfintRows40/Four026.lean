import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402307241918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 4))))))))))
private theorem no_v1402307241918 : ¬ MinimalInterpreter v1402307241918 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3))))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 3))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 4)))) (.app (.var 1) (.var 3)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402307238846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 4)))))))))
private theorem no_v1402307238846 : ¬ MinimalInterpreter v1402307238846 :=
  chain_cut false 2 (by decide)

private def v1402307192766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 4)))))))))
private theorem no_v1402307192766 : ¬ MinimalInterpreter v1402307192766 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 4))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 3))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 4))) (.app (.var 1) (.var 3)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402307189694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 4))))))))
private theorem no_v1402307189694 : ¬ MinimalInterpreter v1402307189694 :=
  chain_cut false 2 (by decide)

private def v1402307177406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 4))))))))
private theorem no_v1402307177406 : ¬ MinimalInterpreter v1402307177406 :=
  chain_cut false 2 (by decide)

private def v1402308495294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 4))))))))))
private theorem no_v1402308495294 : ¬ MinimalInterpreter v1402308495294 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))) (.lam (r := (.lam (.app (.var 1) (.var 3)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 4))))) (so_dead (by decide) (.app (.var 1) (.var 3))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308501054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 4))))))))))
private theorem no_v1402308501054 : ¬ MinimalInterpreter v1402308501054 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 3))))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.lam (.var 3)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 4))))) (.app (.var 1) (so_dead (by decide) (.var 3))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402308488766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 4)))))))))
private theorem no_v1402308488766 : ¬ MinimalInterpreter v1402308488766 :=
  chain_cut false 2 (by decide)

private def v1402308298686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 4)))))))))
private theorem no_v1402308298686 : ¬ MinimalInterpreter v1402308298686 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 4))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 3)))))) (.lam (r := (.lam (.app (.var 1) (.var 3)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.app (.var 2) (.var 4)))) (so_dead (by decide) (.app (.var 1) (.var 3))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308304446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 4)))))))))
private theorem no_v1402308304446 : ¬ MinimalInterpreter v1402308304446 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 4))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 3)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.lam (.var 3)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 4)))) (.app (.var 1) (so_dead (by decide) (.var 3))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402308292158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 4))))))))
private theorem no_v1402308292158 : ¬ MinimalInterpreter v1402308292158 :=
  chain_cut false 2 (by decide)

private def v1402308243006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 4))))))))
private theorem no_v1402308243006 : ¬ MinimalInterpreter v1402308243006 :=
  chain_cut false 2 (by decide)

private def v1402313140158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 4))))))))))
private theorem no_v1402313140158 : ¬ MinimalInterpreter v1402313140158 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 3))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 4))) (.app (.var 1) (.var 3)) (by decide) (by decide)))) (.var 1) (by decide) (by decide))))))

private def v1402313137086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 4)))))))))
private theorem no_v1402313137086 : ¬ MinimalInterpreter v1402313137086 :=
  chain_cut false 2 (by decide)

private def v1402313213886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 4))))))))))
private theorem no_v1402313213886 : ¬ MinimalInterpreter v1402313213886 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))) (.app (.var 0) (.lam (r := (.lam (.app (.var 1) (.var 3)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 4)))) (so_dead (by decide) (.app (.var 1) (.var 3))) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402313514558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 4))))))))))
private theorem no_v1402313514558 : ¬ MinimalInterpreter v1402313514558 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))) (.lam (r := (.lam (.app (.var 1) (.lam (.var 3))))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (so_dead (by decide) (.var 4)))))) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 3)))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312728126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.var 4)))))))))
private theorem no_v1402312728126 : ¬ MinimalInterpreter v1402312728126 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.lam (.var 4))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.var 3)))))) (.lam (r := (.lam (.app (.var 1) (.lam (.var 3))))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.app (.var 2) (so_dead (by decide) (.var 4))))) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 3)))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402332094014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 4))))))))))
private theorem no_v1402332094014 : ¬ MinimalInterpreter v1402332094014 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3))))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 1) (.lam (.var 3)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 4)))) (.app (.var 1) (so_dead (by decide) (.var 3))) (by decide) (by decide)))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402332081726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 4)))))))))
private theorem no_v1402332081726 : ¬ MinimalInterpreter v1402332081726 :=
  chain_cut false 2 (by decide)

private def v1402332388926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 4))))))))))
private theorem no_v1402332388926 : ¬ MinimalInterpreter v1402332388926 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3))))))) (.app (.var 0) (.lam (r := (.lam (.app (.var 1) (.lam (.var 3))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (so_dead (by decide) (.var 4))))) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 3)))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402407511998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 4))))))))))
private theorem no_v1402407511998 : ¬ MinimalInterpreter v1402407511998 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 3))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 4))) (.app (.var 1) (.var 3)) (by decide) (by decide))) (.var 1) (by decide) (by decide)))))))

private def v1402407508926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 4)))))))))
private theorem no_v1402407508926 : ¬ MinimalInterpreter v1402407508926 :=
  chain_cut false 4 (by decide)

private def v1402407585726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 4))))))))))
private theorem no_v1402407585726 : ¬ MinimalInterpreter v1402407585726 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))) (.lam (r := (.lam (.app (.var 1) (.var 3)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 4)))) (so_dead (by decide) (.app (.var 1) (.var 3))) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1402407591486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 4))))))))))
private theorem no_v1402407591486 : ¬ MinimalInterpreter v1402407591486 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 3)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.lam (.var 3)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 4)))) (.app (.var 1) (so_dead (by decide) (.var 3))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1402407579198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 4)))))))))
private theorem no_v1402407579198 : ¬ MinimalInterpreter v1402407579198 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402407886398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 4))))))))))
private theorem no_v1402407886398 : ¬ MinimalInterpreter v1402407886398 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.lam (.app (.var 2) (.var 3)))))) (.lam (r := (.lam (.app (.var 1) (.lam (.var 3))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (so_dead (by decide) (.var 4))))) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 3)))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

theorem four182 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,0,2,4]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,0,2,4] = [v1402307241918,v1402307238846,v1402307192766,v1402307189694,v1402307177406,v1402308495294,v1402308501054,v1402308488766,v1402308298686,v1402308304446,v1402308292158,v1402308243006,v1402313140158,v1402313137086,v1402313213886,v1402313514558,v1402312728126,v1402332094014,v1402332081726,v1402332388926,v1402407511998,v1402407508926,v1402407585726,v1402407591486,v1402407579198,v1402407886398] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307241918) (.cons (no_v1402307238846) (.cons (no_v1402307192766) (.cons (no_v1402307189694) (.cons (no_v1402307177406) (.cons (no_v1402308495294) (.cons (no_v1402308501054) (.cons (no_v1402308488766) (.cons (no_v1402308298686) (.cons (no_v1402308304446) (.cons (no_v1402308292158) (.cons (no_v1402308243006) (.cons (no_v1402313140158) (.cons (no_v1402313137086) (.cons (no_v1402313213886) (.cons (no_v1402313514558) (.cons (no_v1402312728126) (.cons (no_v1402332094014) (.cons (no_v1402332081726) (.cons (no_v1402332388926) (.cons (no_v1402407511998) (.cons (no_v1402407508926) (.cons (no_v1402407585726) (.cons (no_v1402407591486) (.cons (no_v1402407579198) (.cons (no_v1402407886398) .nil))))))))))))))))))))))))))

private def v1402308501278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.lam (.var 3))))))))))
private theorem no_v1402308501278 : ¬ MinimalInterpreter v1402308501278 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.lam (.var 3)))))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 3) (so_dead (by decide) (.var 3))))) (.app (.var 2) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308488990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.lam (.var 3)))))))))
private theorem no_v1402308488990 : ¬ MinimalInterpreter v1402308488990 :=
  chain_cut false 2 (by decide)

private def v1402308486110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 3))) (.var 3))))))))
private theorem no_v1402308486110 : ¬ MinimalInterpreter v1402308486110 :=
  chain_cut false 2 (by decide)

private def v1402308304670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.lam (.var 3)))))))))
private theorem no_v1402308304670 : ¬ MinimalInterpreter v1402308304670 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.lam (.var 3))))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (so_dead (by decide) (.var 3)))) (.app (.var 2) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308292382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.lam (.var 3))))))))
private theorem no_v1402308292382 : ¬ MinimalInterpreter v1402308292382 :=
  chain_cut false 2 (by decide)

private def v1402308243230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.lam (.var 3))))))))
private theorem no_v1402308243230 : ¬ MinimalInterpreter v1402308243230 :=
  chain_cut false 2 (by decide)

private def v1402308289502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.var 3)))))))
private theorem no_v1402308289502 : ¬ MinimalInterpreter v1402308289502 :=
  chain_cut false 2 (by decide)

private def v1402308240350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 3)))))))
private theorem no_v1402308240350 : ¬ MinimalInterpreter v1402308240350 :=
  chain_cut false 2 (by decide)

private def v1402313514782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.lam (.var 3))))))))))
private theorem no_v1402313514782 : ¬ MinimalInterpreter v1402313514782 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.lam (.var 3)))))))) (.lam (r := (.lam (.app (.var 2) (.lam (.var 2))))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (so_dead (by decide) (.var 3)))))) (so_dead (by decide) (.app (.var 2) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312728350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.lam (.var 3)))))))))
private theorem no_v1402312728350 : ¬ MinimalInterpreter v1402312728350 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.lam (.var 3))))))) (.lam (r := (.lam (.app (.var 2) (.lam (.var 2))))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.app (.var 3) (so_dead (by decide) (.var 3))))) (so_dead (by decide) (.app (.var 2) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402332094238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.lam (.var 3))))))))))
private theorem no_v1402332094238 : ¬ MinimalInterpreter v1402332094238 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.lam (.var 3)))))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 2) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (so_dead (by decide) (.var 3)))) (.app (.var 2) (so_dead (by decide) (.var 2))) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1402332081950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.lam (.var 3)))))))))
private theorem no_v1402332081950 : ¬ MinimalInterpreter v1402332081950 :=
  chain_cut false 2 (by decide)

private def v1402332079070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 3))))))))
private theorem no_v1402332079070 : ¬ MinimalInterpreter v1402332079070 :=
  chain_cut false 2 (by decide)

private def v1402332389150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.lam (.var 3))))))))))
private theorem no_v1402332389150 : ¬ MinimalInterpreter v1402332389150 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.lam (.var 3)))))))) (.app (.var 0) (.lam (r := (.lam (.app (.var 2) (.lam (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (so_dead (by decide) (.var 3))))) (so_dead (by decide) (.app (.var 2) (so_dead (by decide) (.var 2)))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402407591710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.lam (.var 3))))))))))
private theorem no_v1402407591710 : ¬ MinimalInterpreter v1402407591710 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.var 3) (.lam (.var 3))))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (so_dead (by decide) (.var 3)))) (.app (.var 2) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402407579422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.lam (.var 3)))))))))
private theorem no_v1402407579422 : ¬ MinimalInterpreter v1402407579422 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402407576542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 3))))))))
private theorem no_v1402407576542 : ¬ MinimalInterpreter v1402407576542 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402407886622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.lam (.var 3))))))))))
private theorem no_v1402407886622 : ¬ MinimalInterpreter v1402407886622 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 3) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 3) (.lam (.var 3))))))) (.lam (r := (.lam (.app (.var 2) (.lam (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 3) (so_dead (by decide) (.var 3))))) (so_dead (by decide) (.app (.var 2) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four183 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,0,3,3]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,0,3,3] = [v1402308501278,v1402308488990,v1402308486110,v1402308304670,v1402308292382,v1402308243230,v1402308289502,v1402308240350,v1402313514782,v1402312728350,v1402332094238,v1402332081950,v1402332079070,v1402332389150,v1402407591710,v1402407579422,v1402407576542,v1402407886622] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308501278) (.cons (no_v1402308488990) (.cons (no_v1402308486110) (.cons (no_v1402308304670) (.cons (no_v1402308292382) (.cons (no_v1402308243230) (.cons (no_v1402308289502) (.cons (no_v1402308240350) (.cons (no_v1402313514782) (.cons (no_v1402312728350) (.cons (no_v1402332094238) (.cons (no_v1402332081950) (.cons (no_v1402332079070) (.cons (no_v1402332389150) (.cons (no_v1402407591710) (.cons (no_v1402407579422) (.cons (no_v1402407576542) (.cons (no_v1402407886622) .nil))))))))))))))))))

private def v1402307241966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 4) (.var 2))))))))))
private theorem no_v1402307241966 : ¬ MinimalInterpreter v1402307241966 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 4) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 2))))))) (so_dead (by decide) (.lam (r := (.app (.var 3) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 4) (.var 2)))) (.app (.var 3) (.var 1)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402307238894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 4)) (.var 2)))))))))
private theorem no_v1402307238894 : ¬ MinimalInterpreter v1402307238894 :=
  chain_cut false 2 (by decide)

private def v1402307192814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 4) (.var 2)))))))))
private theorem no_v1402307192814 : ¬ MinimalInterpreter v1402307192814 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 4) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 2)))))) (so_dead (by decide) (.lam (r := (.app (.var 3) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 4) (.var 2))) (.app (.var 3) (.var 1)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402307189742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 4))) (.var 2))))))))
private theorem no_v1402307189742 : ¬ MinimalInterpreter v1402307189742 :=
  chain_cut false 2 (by decide)

private def v1402307177454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 4)) (.var 2))))))))
private theorem no_v1402307177454 : ¬ MinimalInterpreter v1402307177454 :=
  chain_cut false 2 (by decide)

private def v1402308495342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 4) (.var 2))))))))))
private theorem no_v1402308495342 : ¬ MinimalInterpreter v1402308495342 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 4) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))) (.lam (r := (.lam (.app (.var 3) (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.app (.var 4) (.var 2))))) (so_dead (by decide) (.app (.var 3) (.var 1))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308486126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 4))) (.var 2))))))))
private theorem no_v1402308486126 : ¬ MinimalInterpreter v1402308486126 :=
  chain_cut false 2 (by decide)

private def v1402308298734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 4) (.var 2)))))))))
private theorem no_v1402308298734 : ¬ MinimalInterpreter v1402308298734 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 4) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 3) (.var 2)))))) (.lam (r := (.lam (.app (.var 3) (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.app (.var 4) (.var 2)))) (so_dead (by decide) (.app (.var 3) (.var 1))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308289518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 4)))) (.var 2)))))))
private theorem no_v1402308289518 : ¬ MinimalInterpreter v1402308289518 :=
  chain_cut false 2 (by decide)

private def v1402308240366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 4))) (.var 2)))))))
private theorem no_v1402308240366 : ¬ MinimalInterpreter v1402308240366 :=
  chain_cut false 2 (by decide)

private def v1402313140206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 4) (.var 2))))))))))
private theorem no_v1402313140206 : ¬ MinimalInterpreter v1402313140206 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 4) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2))))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 3) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 4) (.var 2))) (.app (.var 3) (.var 1)) (by decide) (by decide)))) (.var 1) (by decide) (by decide))))))

private def v1402313137134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 4)) (.var 2)))))))))
private theorem no_v1402313137134 : ¬ MinimalInterpreter v1402313137134 :=
  chain_cut false 2 (by decide)

private def v1402313213934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 4) (.var 2))))))))))
private theorem no_v1402313213934 : ¬ MinimalInterpreter v1402313213934 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 4) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2))))))) (.app (.var 0) (.lam (r := (.lam (.app (.var 3) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 4) (.var 2)))) (so_dead (by decide) (.app (.var 3) (.var 1))) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402332079086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 4))) (.var 2))))))))
private theorem no_v1402332079086 : ¬ MinimalInterpreter v1402332079086 :=
  chain_cut false 2 (by decide)

private def v1402407512046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 4) (.var 2))))))))))
private theorem no_v1402407512046 : ¬ MinimalInterpreter v1402407512046 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 4) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 2)))))) (so_dead (by decide) (.lam (r := (.app (.var 3) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 4) (.var 2))) (.app (.var 3) (.var 1)) (by decide) (by decide))) (.var 1) (by decide) (by decide)))))))

private def v1402407508974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 4)) (.var 2)))))))))
private theorem no_v1402407508974 : ¬ MinimalInterpreter v1402407508974 :=
  chain_cut false 4 (by decide)

private def v1402407585774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 4) (.var 2))))))))))
private theorem no_v1402407585774 : ¬ MinimalInterpreter v1402407585774 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 4) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.lam (.app (.var 3) (.var 2)))))) (.lam (r := (.lam (.app (.var 3) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (so_dead (by decide) (.app (.var 4) (.var 2)))) (so_dead (by decide) (.app (.var 3) (.var 1))) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1402407576558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 4))) (.var 2))))))))
private theorem no_v1402407576558 : ¬ MinimalInterpreter v1402407576558 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem four184 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,0,4,2]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,0,4,2] = [v1402307241966,v1402307238894,v1402307192814,v1402307189742,v1402307177454,v1402308495342,v1402308486126,v1402308298734,v1402308289518,v1402308240366,v1402313140206,v1402313137134,v1402313213934,v1402332079086,v1402407512046,v1402407508974,v1402407585774,v1402407576558] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307241966) (.cons (no_v1402307238894) (.cons (no_v1402307192814) (.cons (no_v1402307189742) (.cons (no_v1402307177454) (.cons (no_v1402308495342) (.cons (no_v1402308486126) (.cons (no_v1402308298734) (.cons (no_v1402308289518) (.cons (no_v1402308240366) (.cons (no_v1402313140206) (.cons (no_v1402313137134) (.cons (no_v1402313213934) (.cons (no_v1402332079086) (.cons (no_v1402407512046) (.cons (no_v1402407508974) (.cons (no_v1402407585774) (.cons (no_v1402407576558) .nil))))))))))))))))))

private def v1402307244990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 4))))))))))
private theorem no_v1402307244990 : ¬ MinimalInterpreter v1402307244990 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 3)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 4)))) (.app (.var 0) (.app (.var 0) (.var 3))) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))

private def v1402307239358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 4)))))))))
private theorem no_v1402307239358 : ¬ MinimalInterpreter v1402307239358 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 4))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 3))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 4))) (.app (.app (.var 0) (.var 0)) (.var 3)) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))

private def v1402307195838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 4)))))))))
private theorem no_v1402307195838 : ¬ MinimalInterpreter v1402307195838 :=
  chain_cut false 2 (by decide)

private def v1402307190206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 4))))))))
private theorem no_v1402307190206 : ¬ MinimalInterpreter v1402307190206 :=
  chain_cut false 2 (by decide)

private def v1402307177918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 4))))))))
private theorem no_v1402307177918 : ¬ MinimalInterpreter v1402307177918 :=
  chain_cut false 2 (by decide)

private def v1402308510654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.var 4))))))))))
private theorem no_v1402308510654 : ¬ MinimalInterpreter v1402308510654 :=
  chain_cut false 2 (by decide)

private def v1402308513342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 4))))))))))
private theorem no_v1402308513342 : ¬ MinimalInterpreter v1402308513342 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.lam (.var 2))) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.lam (.var 3))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (so_dead (by decide) (.var 4))))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 3)))) (by decide) (by decide)) (so_dead (by decide) (.var 2)) (by decide) (by decide))))))

private def v1402308490814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 4)))))))))
private theorem no_v1402308490814 : ¬ MinimalInterpreter v1402308490814 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.var 4))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.lam (.var 2))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (so_dead (by decide) (.var 4)))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 3))) (by decide) (by decide)) (so_dead (by decide) (.var 2)) (by decide) (by decide))))))

private def v1402308314046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.var 4)))))))))
private theorem no_v1402308314046 : ¬ MinimalInterpreter v1402308314046 :=
  chain_cut false 2 (by decide)

private def v1402308316734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.var 4)))))))))
private theorem no_v1402308316734 : ¬ MinimalInterpreter v1402308316734 :=
  chain_cut false 2 (by decide)

private def v1402308294206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.var 4))))))))
private theorem no_v1402308294206 : ¬ MinimalInterpreter v1402308294206 :=
  chain_cut false 2 (by decide)

private def v1402308245054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.var 4))))))))
private theorem no_v1402308245054 : ¬ MinimalInterpreter v1402308245054 :=
  chain_cut false 2 (by decide)

private def v1402313229246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 4))))))))))
private theorem no_v1402313229246 : ¬ MinimalInterpreter v1402313229246 :=
  chain_cut false 2 (by decide)

private def v1402313575998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 4))))))))))
private theorem no_v1402313575998 : ¬ MinimalInterpreter v1402313575998 :=
  chain_cut false 2 (by decide)

private def v1402313586750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 4))))))))))
private theorem no_v1402313586750 : ¬ MinimalInterpreter v1402313586750 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.lam (.var 4)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.var 2)))) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.lam (.lam (.var 3)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 4)))))) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 3))))) (by decide) (by decide)) (so_dead (by decide) (so_dead (by decide) (.var 2))) (by decide) (by decide)))))

private def v1402313496638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 4)))))))))
private theorem no_v1402313496638 : ¬ MinimalInterpreter v1402313496638 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.lam (.lam (.var 4))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.var 2)))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.var 3))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (so_dead (by decide) (so_dead (by decide) (.var 4))))) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (by decide) (by decide)) (so_dead (by decide) (so_dead (by decide) (.var 2))) (by decide) (by decide)))))

private def v1402312789566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.lam (.var 4)))))))))
private theorem no_v1402312789566 : ¬ MinimalInterpreter v1402312789566 :=
  chain_cut false 2 (by decide)

private def v1402312800318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.lam (.lam (.var 4)))))))))
private theorem no_v1402312800318 : ¬ MinimalInterpreter v1402312800318 :=
  chain_cut false 2 (by decide)

private def v1402312710206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.lam (.lam (.var 4))))))))
private theorem no_v1402312710206 : ¬ MinimalInterpreter v1402312710206 :=
  chain_cut false 2 (by decide)

private def v1402312513598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.lam (.lam (.var 4))))))))
private theorem no_v1402312513598 : ¬ MinimalInterpreter v1402312513598 :=
  chain_cut false 2 (by decide)

private def v1402332450366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 4))))))))))
private theorem no_v1402332450366 : ¬ MinimalInterpreter v1402332450366 :=
  chain_cut false 2 (by decide)

private def v1402407601086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.var 4))))))))))
private theorem no_v1402407601086 : ¬ MinimalInterpreter v1402407601086 :=
  chain_cut false 4 (by decide)

private def v1402407947838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.lam (.var 4))))))))))
private theorem no_v1402407947838 : ¬ MinimalInterpreter v1402407947838 :=
  chain_cut false 6 (by decide)

theorem four185 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,1,1,4]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,1,1,4] = [v1402307244990,v1402307239358,v1402307195838,v1402307190206,v1402307177918,v1402308510654,v1402308513342,v1402308490814,v1402308314046,v1402308316734,v1402308294206,v1402308245054,v1402313229246,v1402313575998,v1402313586750,v1402313496638,v1402312789566,v1402312800318,v1402312710206,v1402312513598,v1402332450366,v1402407601086,v1402407947838] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307244990) (.cons (no_v1402307239358) (.cons (no_v1402307195838) (.cons (no_v1402307190206) (.cons (no_v1402307177918) (.cons (no_v1402308510654) (.cons (no_v1402308513342) (.cons (no_v1402308490814) (.cons (no_v1402308314046) (.cons (no_v1402308316734) (.cons (no_v1402308294206) (.cons (no_v1402308245054) (.cons (no_v1402313229246) (.cons (no_v1402313575998) (.cons (no_v1402313586750) (.cons (no_v1402313496638) (.cons (no_v1402312789566) (.cons (no_v1402312800318) (.cons (no_v1402312710206) (.cons (no_v1402312513598) (.cons (no_v1402332450366) (.cons (no_v1402407601086) (.cons (no_v1402407947838) .nil)))))))))))))))))))))))

private def v1402308424670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 3))))))))))
private theorem no_v1402308424670 : ¬ MinimalInterpreter v1402308424670 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 3))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.lam (.app (.var 1) (.var 2))))) (.app (.var 0) (so_dead (by decide) (.app (.var 1) (.app (.var 2) (.var 3))))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308419038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 3)))))))))
private theorem no_v1402308419038 : ¬ MinimalInterpreter v1402308419038 :=
  cost_cut false 2 (by decide)

private def v1402308510686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 2) (.var 3))))))))))
private theorem no_v1402308510686 : ¬ MinimalInterpreter v1402308510686 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 2) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 2) (.var 3))))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 1) (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.app (.var 2) (.var 3))))) (.app (.var 0) (so_dead (by decide) (.app (.var 1) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308513566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 3))))))))))
private theorem no_v1402308513566 : ¬ MinimalInterpreter v1402308513566 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 1)))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (so_dead (by decide) (.var 3))))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.app (.var 0) (so_dead (by decide) (.var 1))) (by decide) (by decide))))))

private def v1402308491038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 3)))))))))
private theorem no_v1402308491038 : ¬ MinimalInterpreter v1402308491038 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 3)))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 3)))) (.app (.app (.var 0) (.var 1)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308489694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.var 3))))))))
private theorem no_v1402308489694 : ¬ MinimalInterpreter v1402308489694 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 1))) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (.var 3))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308314078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 2) (.var 3)))))))))
private theorem no_v1402308314078 : ¬ MinimalInterpreter v1402308314078 :=
  cost_cut false 2 (by decide)

private def v1402308316958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 3)))))))))
private theorem no_v1402308316958 : ¬ MinimalInterpreter v1402308316958 :=
  cost_cut false 2 (by decide)

private def v1402308277214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 3))))))))
private theorem no_v1402308277214 : ¬ MinimalInterpreter v1402308277214 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 2) (.var 3)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 2) (.var 3))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308294430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 3))))))))
private theorem no_v1402308294430 : ¬ MinimalInterpreter v1402308294430 :=
  cost_cut false 2 (by decide)

private def v1402308245278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 3))))))))
private theorem no_v1402308245278 : ¬ MinimalInterpreter v1402308245278 :=
  cost_cut false 2 (by decide)

private def v1402308271582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 2)))) (.var 3)))))))
private theorem no_v1402308271582 : ¬ MinimalInterpreter v1402308271582 :=
  chain_cut false 2 (by decide)

private def v1402308293086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 2)))) (.var 3)))))))
private theorem no_v1402308293086 : ¬ MinimalInterpreter v1402308293086 :=
  chain_cut false 2 (by decide)

private def v1402308243934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 2))) (.var 3)))))))
private theorem no_v1402308243934 : ¬ MinimalInterpreter v1402308243934 :=
  chain_cut false 2 (by decide)

private def v1402308234718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 2)) (.var 3)))))))
private theorem no_v1402308234718 : ¬ MinimalInterpreter v1402308234718 :=
  chain_cut false 2 (by decide)

private def v1402313143262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3))))))))))
private theorem no_v1402313143262 : ¬ MinimalInterpreter v1402313143262 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3))))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.var 2) (.var 3)))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402313137630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 3)))))))))
private theorem no_v1402313137630 : ¬ MinimalInterpreter v1402313137630 :=
  cost_cut false 2 (by decide)

private def v1402313587742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 3))))))))))
private theorem no_v1402313587742 : ¬ MinimalInterpreter v1402313587742 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.lam (.var 3)))))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 2)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (so_dead (by decide) (so_dead (by decide) (.var 3)))))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313497630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 3)))))))))
private theorem no_v1402313497630 : ¬ MinimalInterpreter v1402313497630 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.lam (.var 3))))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 2))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (so_dead (by decide) (.var 3))))) (.app (.app (.var 0) (.var 1)) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313492254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 3))))))))
private theorem no_v1402313492254 : ¬ MinimalInterpreter v1402313492254 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.lam (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 2))) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 1))) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (so_dead (by decide) (.var 3)))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312801310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.lam (.var 3)))))))))
private theorem no_v1402312801310 : ¬ MinimalInterpreter v1402312801310 :=
  chain_cut false 2 (by decide)

private def v1402312639454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 2) (.var 3))))))))
private theorem no_v1402312639454 : ¬ MinimalInterpreter v1402312639454 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 2) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 2) (.var 3)))))) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (so_dead (by decide) (.app (.var 2) (.var 3)))) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312711198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.lam (.var 3))))))))
private theorem no_v1402312711198 : ¬ MinimalInterpreter v1402312711198 :=
  chain_cut false 2 (by decide)

private def v1402312514590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.var 3))))))))
private theorem no_v1402312514590 : ¬ MinimalInterpreter v1402312514590 :=
  chain_cut false 2 (by decide)

private def v1402312619806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 2)))) (.lam (.var 3)))))))
private theorem no_v1402312619806 : ¬ MinimalInterpreter v1402312619806 :=
  chain_cut false 2 (by decide)

private def v1402312705822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 2)))) (.lam (.var 3)))))))
private theorem no_v1402312705822 : ¬ MinimalInterpreter v1402312705822 :=
  chain_cut false 2 (by decide)

private def v1402312509214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 2))) (.lam (.var 3)))))))
private theorem no_v1402312509214 : ¬ MinimalInterpreter v1402312509214 :=
  chain_cut false 2 (by decide)

private def v1402332017630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3))))))))))
private theorem no_v1402332017630 : ¬ MinimalInterpreter v1402332017630 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 3)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.var 2) (.var 3)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402332011998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 3)))))))))
private theorem no_v1402332011998 : ¬ MinimalInterpreter v1402332011998 :=
  cost_cut false 2 (by decide)

theorem four186 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,1,2,3]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,1,2,3] = [v1402308424670,v1402308419038,v1402308510686,v1402308513566,v1402308491038,v1402308489694,v1402308314078,v1402308316958,v1402308277214,v1402308294430,v1402308245278,v1402308271582,v1402308293086,v1402308243934,v1402308234718,v1402313143262,v1402313137630,v1402313587742,v1402313497630,v1402313492254,v1402312801310,v1402312639454,v1402312711198,v1402312514590,v1402312619806,v1402312705822,v1402312509214,v1402332017630,v1402332011998] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308424670) (.cons (no_v1402308419038) (.cons (no_v1402308510686) (.cons (no_v1402308513566) (.cons (no_v1402308491038) (.cons (no_v1402308489694) (.cons (no_v1402308314078) (.cons (no_v1402308316958) (.cons (no_v1402308277214) (.cons (no_v1402308294430) (.cons (no_v1402308245278) (.cons (no_v1402308271582) (.cons (no_v1402308293086) (.cons (no_v1402308243934) (.cons (no_v1402308234718) (.cons (no_v1402313143262) (.cons (no_v1402313137630) (.cons (no_v1402313587742) (.cons (no_v1402313497630) (.cons (no_v1402313492254) (.cons (no_v1402312801310) (.cons (no_v1402312639454) (.cons (no_v1402312711198) (.cons (no_v1402312514590) (.cons (no_v1402312619806) (.cons (no_v1402312705822) (.cons (no_v1402312509214) (.cons (no_v1402332017630) (.cons (no_v1402332011998) .nil)))))))))))))))))))))))))))))

private def v1402308424686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 2))))))))))
private theorem no_v1402308424686 : ¬ MinimalInterpreter v1402308424686 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 3) (.var 2))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.lam (.app (.var 1) (.var 2))))) (.app (.var 0) (so_dead (by decide) (.app (.var 1) (.app (.var 3) (.var 2))))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308419054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 3)) (.var 2)))))))))
private theorem no_v1402308419054 : ¬ MinimalInterpreter v1402308419054 :=
  cost_cut false 2 (by decide)

private def v1402308510702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 2))))))))))
private theorem no_v1402308510702 : ¬ MinimalInterpreter v1402308510702 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 2))))))) (.lam (r := (.app (.var 0) (.lam (.app (.var 2) (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.app (.var 3) (.var 2))))) (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308513678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.lam (.var 2))))))))))
private theorem no_v1402308513678 : ¬ MinimalInterpreter v1402308513678 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 0) (.app (.var 2) (.lam (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 3) (so_dead (by decide) (.var 2))))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308491150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.lam (.var 2)))))))))
private theorem no_v1402308491150 : ¬ MinimalInterpreter v1402308491150 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 2)))))) (.lam (r := (.app (.app (.var 0) (.var 2)) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (so_dead (by decide) (.var 2)))) (.app (.app (.var 0) (.var 2)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308489710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 2))))))))
private theorem no_v1402308489710 : ¬ MinimalInterpreter v1402308489710 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 2))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 2))) (.app (.app (.var 0) (so_dead (by decide) (.var 2))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308314094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 3) (.var 2)))))))))
private theorem no_v1402308314094 : ¬ MinimalInterpreter v1402308314094 :=
  cost_cut false 2 (by decide)

private def v1402308317070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.lam (.var 2)))))))))
private theorem no_v1402308317070 : ¬ MinimalInterpreter v1402308317070 :=
  chain_cut false 2 (by decide)

private def v1402308277230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 3) (.var 2))))))))
private theorem no_v1402308277230 : ¬ MinimalInterpreter v1402308277230 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 3) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 3) (.var 2)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 3) (.var 2))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308294542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.lam (.var 2))))))))
private theorem no_v1402308294542 : ¬ MinimalInterpreter v1402308294542 :=
  chain_cut false 2 (by decide)

private def v1402308245390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.lam (.var 2))))))))
private theorem no_v1402308245390 : ¬ MinimalInterpreter v1402308245390 :=
  chain_cut false 2 (by decide)

private def v1402308293102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 2)))))))
private theorem no_v1402308293102 : ¬ MinimalInterpreter v1402308293102 :=
  cost_cut false 2 (by decide)

private def v1402308243950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 2)))))))
private theorem no_v1402308243950 : ¬ MinimalInterpreter v1402308243950 :=
  cost_cut false 2 (by decide)

private def v1402308234734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 3)) (.var 2)))))))
private theorem no_v1402308234734 : ¬ MinimalInterpreter v1402308234734 :=
  chain_cut false 2 (by decide)

private def v1402313143278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2))))))))))
private theorem no_v1402313143278 : ¬ MinimalInterpreter v1402313143278 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.var 3) (.var 2)))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402313137646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 2)))))))))
private theorem no_v1402313137646 : ¬ MinimalInterpreter v1402313137646 :=
  cost_cut false 2 (by decide)

private def v1402313576334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.lam (.var 2))))))))))
private theorem no_v1402313576334 : ¬ MinimalInterpreter v1402313576334 :=
  chain_cut false 2 (by decide)

private def v1402313492366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 2))))))))
private theorem no_v1402313492366 : ¬ MinimalInterpreter v1402313492366 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 2)))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 2))) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (so_dead (by decide) (.var 2)))) (.app (.app (.var 0) (so_dead (by decide) (.var 2))) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402313490926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 2)))))))
private theorem no_v1402313490926 : ¬ MinimalInterpreter v1402313490926 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 3)))) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.lam (.lam (.var 2)))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (.var 2))) (.app (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312789902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 3) (.lam (.var 2)))))))))
private theorem no_v1402312789902 : ¬ MinimalInterpreter v1402312789902 :=
  chain_cut false 2 (by decide)

private def v1402312639470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 3) (.var 2))))))))
private theorem no_v1402312639470 : ¬ MinimalInterpreter v1402312639470 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 3) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 1))) (.lam (.app (.var 3) (.var 2)))))) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (so_dead (by decide) (.app (.var 3) (.var 2)))) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312619918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 3)))) (.lam (.var 2)))))))
private theorem no_v1402312619918 : ¬ MinimalInterpreter v1402312619918 :=
  chain_cut false 2 (by decide)

private def v1402312705934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.lam (.var 2)))))))
private theorem no_v1402312705934 : ¬ MinimalInterpreter v1402312705934 :=
  chain_cut false 2 (by decide)

private def v1402312509326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.lam (.var 2)))))))
private theorem no_v1402312509326 : ¬ MinimalInterpreter v1402312509326 :=
  chain_cut false 2 (by decide)

private def v1402312618478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 3))))) (.var 2))))))
private theorem no_v1402312618478 : ¬ MinimalInterpreter v1402312618478 :=
  chain_cut false 2 (by decide)

private def v1402312704494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 3))))) (.var 2))))))
private theorem no_v1402312704494 : ¬ MinimalInterpreter v1402312704494 :=
  chain_cut false 2 (by decide)

private def v1402312507886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 3)))) (.var 2))))))
private theorem no_v1402312507886 : ¬ MinimalInterpreter v1402312507886 :=
  chain_cut false 2 (by decide)

private def v1402332017646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2))))))))))
private theorem no_v1402332017646 : ¬ MinimalInterpreter v1402332017646 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 2)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.var 1) (.var 2)))) (so_dead (by decide) (.app (.var 1) (.app (.var 3) (.var 2)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402332012014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 2)))))))))
private theorem no_v1402332012014 : ¬ MinimalInterpreter v1402332012014 :=
  cost_cut false 2 (by decide)

private def v1402332450702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 3) (.lam (.var 2))))))))))
private theorem no_v1402332450702 : ¬ MinimalInterpreter v1402332450702 :=
  chain_cut false 2 (by decide)

private def v1402407948174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.lam (.var 2))))))))))
private theorem no_v1402407948174 : ¬ MinimalInterpreter v1402407948174 :=
  chain_cut false 6 (by decide)

theorem four187 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,1,3,2]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,1,3,2] = [v1402308424686,v1402308419054,v1402308510702,v1402308513678,v1402308491150,v1402308489710,v1402308314094,v1402308317070,v1402308277230,v1402308294542,v1402308245390,v1402308293102,v1402308243950,v1402308234734,v1402313143278,v1402313137646,v1402313576334,v1402313492366,v1402313490926,v1402312789902,v1402312639470,v1402312619918,v1402312705934,v1402312509326,v1402312618478,v1402312704494,v1402312507886,v1402332017646,v1402332012014,v1402332450702,v1402407948174] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308424686) (.cons (no_v1402308419054) (.cons (no_v1402308510702) (.cons (no_v1402308513678) (.cons (no_v1402308491150) (.cons (no_v1402308489710) (.cons (no_v1402308314094) (.cons (no_v1402308317070) (.cons (no_v1402308277230) (.cons (no_v1402308294542) (.cons (no_v1402308245390) (.cons (no_v1402308293102) (.cons (no_v1402308243950) (.cons (no_v1402308234734) (.cons (no_v1402313143278) (.cons (no_v1402313137646) (.cons (no_v1402313576334) (.cons (no_v1402313492366) (.cons (no_v1402313490926) (.cons (no_v1402312789902) (.cons (no_v1402312639470) (.cons (no_v1402312619918) (.cons (no_v1402312705934) (.cons (no_v1402312509326) (.cons (no_v1402312618478) (.cons (no_v1402312704494) (.cons (no_v1402312507886) (.cons (no_v1402332017646) (.cons (no_v1402332012014) (.cons (no_v1402332450702) (.cons (no_v1402407948174) .nil)))))))))))))))))))))))))))))))

private def v1402307245046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 4) (.var 1))))))))))
private theorem no_v1402307245046 : ¬ MinimalInterpreter v1402307245046 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 4) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 3) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 4) (.var 1)))) (.app (.var 0) (.app (.var 3) (.var 0))) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))

private def v1402307239414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 4)) (.var 1)))))))))
private theorem no_v1402307239414 : ¬ MinimalInterpreter v1402307239414 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 4)) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (so_dead (by decide) (.lam (r := (.var 2)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 3)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 4)) (.var 1))) (.app (.app (.var 0) (.var 3)) (.var 0)) (by decide) (by decide)) (.var 2) (by decide) (by decide)))))))

private def v1402307195894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 4) (.var 1)))))))))
private theorem no_v1402307195894 : ¬ MinimalInterpreter v1402307195894 :=
  chain_cut false 2 (by decide)

private def v1402307190262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 4))) (.var 1))))))))
private theorem no_v1402307190262 : ¬ MinimalInterpreter v1402307190262 :=
  chain_cut false 2 (by decide)

private def v1402307177974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 4)) (.var 1))))))))
private theorem no_v1402307177974 : ¬ MinimalInterpreter v1402307177974 :=
  chain_cut false 2 (by decide)

private def v1402308510710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 4) (.var 1))))))))))
private theorem no_v1402308510710 : ¬ MinimalInterpreter v1402308510710 :=
  chain_cut false 2 (by decide)

private def v1402308489718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 4))) (.var 1))))))))
private theorem no_v1402308489718 : ¬ MinimalInterpreter v1402308489718 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 4))) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.lam (.var 2))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 3))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 4))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 3))) (.var 0)) (by decide) (by decide)) (so_dead (by decide) (.var 2)) (by decide) (by decide))))))

private def v1402308314102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 4) (.var 1)))))))))
private theorem no_v1402308314102 : ¬ MinimalInterpreter v1402308314102 :=
  chain_cut false 2 (by decide)

private def v1402308271606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 4)))) (.var 1)))))))
private theorem no_v1402308271606 : ¬ MinimalInterpreter v1402308271606 :=
  chain_cut false 2 (by decide)

private def v1402308293110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 4)))) (.var 1)))))))
private theorem no_v1402308293110 : ¬ MinimalInterpreter v1402308293110 :=
  chain_cut false 2 (by decide)

private def v1402308243958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 4))) (.var 1)))))))
private theorem no_v1402308243958 : ¬ MinimalInterpreter v1402308243958 :=
  chain_cut false 2 (by decide)

private def v1402313229302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 4) (.var 1))))))))))
private theorem no_v1402313229302 : ¬ MinimalInterpreter v1402313229302 :=
  chain_cut false 2 (by decide)

private def v1402313490934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.var 1)))))))
private theorem no_v1402313490934 : ¬ MinimalInterpreter v1402313490934 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.lam (.var 4)))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.lam (.var 2)))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 4)))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (.var 0)) (by decide) (by decide)) (so_dead (by decide) (so_dead (by decide) (.var 2))) (by decide) (by decide)))))

private def v1402312618486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 4))))) (.var 1))))))
private theorem no_v1402312618486 : ¬ MinimalInterpreter v1402312618486 :=
  chain_cut false 2 (by decide)

private def v1402312704502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.lam (.var 4))))) (.var 1))))))
private theorem no_v1402312704502 : ¬ MinimalInterpreter v1402312704502 :=
  chain_cut false 2 (by decide)

private def v1402312507894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.lam (.var 4)))) (.var 1))))))
private theorem no_v1402312507894 : ¬ MinimalInterpreter v1402312507894 :=
  chain_cut false 2 (by decide)

private def v1402407601142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 4) (.var 1))))))))))
private theorem no_v1402407601142 : ¬ MinimalInterpreter v1402407601142 :=
  chain_cut false 4 (by decide)

theorem four188 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,1,4,1]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [0,1,4,1] = [v1402307245046,v1402307239414,v1402307195894,v1402307190262,v1402307177974,v1402308510710,v1402308489718,v1402308314102,v1402308271606,v1402308293110,v1402308243958,v1402313229302,v1402313490934,v1402312618486,v1402312704502,v1402312507894,v1402407601142] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307245046) (.cons (no_v1402307239414) (.cons (no_v1402307195894) (.cons (no_v1402307190262) (.cons (no_v1402307177974) (.cons (no_v1402308510710) (.cons (no_v1402308489718) (.cons (no_v1402308314102) (.cons (no_v1402308271606) (.cons (no_v1402308293110) (.cons (no_v1402308243958) (.cons (no_v1402313229302) (.cons (no_v1402313490934) (.cons (no_v1402312618486) (.cons (no_v1402312704502) (.cons (no_v1402312507894) (.cons (no_v1402407601142) .nil)))))))))))))))))

end Blc.SelfintSingleObject.Rows40
