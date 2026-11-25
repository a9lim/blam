import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v37849610742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 1)))))))))
private theorem no_v37849610742 : ¬ MinimalInterpreter v37849610742 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 2) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 3) (.var 1)))) (.app (.var 0) (.app (.var 2) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v37849607926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 1))))))))
private theorem no_v37849607926 : ¬ MinimalInterpreter v37849607926 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 2)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 3)) (.var 1))) (.app (.app (.var 0) (.var 2)) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v37849586166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 3) (.var 1))))))))
private theorem no_v37849586166 : ¬ MinimalInterpreter v37849586166 :=
  chain_cut false 2 (by decide)

private def v37849583350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 1)))))))
private theorem no_v37849583350 : ¬ MinimalInterpreter v37849583350 :=
  chain_cut false 2 (by decide)

private def v37849577206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 3)) (.var 1)))))))
private theorem no_v37849577206 : ¬ MinimalInterpreter v37849577206 :=
  chain_cut false 2 (by decide)

private def v37850243574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v37850243574 : ¬ MinimalInterpreter v37850243574 :=
  chain_cut false 2 (by decide)

private def v37850233078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 1)))))))
private theorem no_v37850233078 : ¬ MinimalInterpreter v37850233078 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 3))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 2))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 2))) (.var 0)) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v37850145270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 3) (.var 1))))))))
private theorem no_v37850145270 : ¬ MinimalInterpreter v37850145270 :=
  chain_cut false 2 (by decide)

private def v37850124022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 3)))) (.var 1))))))
private theorem no_v37850124022 : ¬ MinimalInterpreter v37850124022 :=
  chain_cut false 2 (by decide)

private def v37850134774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 1))))))
private theorem no_v37850134774 : ¬ MinimalInterpreter v37850134774 :=
  chain_cut false 2 (by decide)

private def v37850110198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 3))) (.var 1))))))
private theorem no_v37850110198 : ¬ MinimalInterpreter v37850110198 :=
  chain_cut false 2 (by decide)

private def v37852602870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v37852602870 : ¬ MinimalInterpreter v37852602870 :=
  chain_cut false 2 (by decide)

private def v37862040054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v37862040054 : ¬ MinimalInterpreter v37862040054 :=
  cost_cut false 6 (by decide)

theorem row54 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [0,1,3,1]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [0,1,3,1] = [v37849610742,v37849607926,v37849586166,v37849583350,v37849577206,v37850243574,v37850233078,v37850145270,v37850124022,v37850134774,v37850110198,v37852602870,v37862040054] := by decide
  rw [h]
  exact (.cons (no_v37849610742) (.cons (no_v37849607926) (.cons (no_v37849586166) (.cons (no_v37849583350) (.cons (no_v37849577206) (.cons (no_v37850243574) (.cons (no_v37850233078) (.cons (no_v37850145270) (.cons (no_v37850124022) (.cons (no_v37850134774) (.cons (no_v37850110198) (.cons (no_v37852602870) (.cons (no_v37862040054) .nil)))))))))))))

private def v37849611486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 3)))))))))
private theorem no_v37849611486 : ¬ MinimalInterpreter v37849611486 :=
  chain_cut false 2 (by decide)

private def v37849608030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 3))))))))
private theorem no_v37849608030 : ¬ MinimalInterpreter v37849608030 :=
  chain_cut false 2 (by decide)

private def v37849586910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 3))))))))
private theorem no_v37849586910 : ¬ MinimalInterpreter v37849586910 :=
  chain_cut false 2 (by decide)

private def v37849583454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 3)))))))
private theorem no_v37849583454 : ¬ MinimalInterpreter v37849583454 :=
  chain_cut false 2 (by decide)

private def v37849577310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 3)))))))
private theorem no_v37849577310 : ¬ MinimalInterpreter v37849577310 :=
  chain_cut false 2 (by decide)

private def v37852560606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 3)))))))))
private theorem no_v37852560606 : ¬ MinimalInterpreter v37852560606 :=
  chain_cut false 2 (by decide)

private def v37852557150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))))))
private theorem no_v37852557150 : ¬ MinimalInterpreter v37852557150 :=
  chain_cut false 2 (by decide)

private def v37861997790 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 3)))))))))
private theorem no_v37861997790 : ¬ MinimalInterpreter v37861997790 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37861994334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))))))
private theorem no_v37861994334 : ¬ MinimalInterpreter v37861994334 :=
  chain_cut false 6 (by decide)

theorem row55 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [0,2,0,3]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [0,2,0,3] = [v37849611486,v37849608030,v37849586910,v37849583454,v37849577310,v37852560606,v37852557150,v37861997790,v37861994334] := by decide
  rw [h]
  exact (.cons (no_v37849611486) (.cons (no_v37849608030) (.cons (no_v37849586910) (.cons (no_v37849583454) (.cons (no_v37849577310) (.cons (no_v37852560606) (.cons (no_v37852557150) (.cons (no_v37861997790) (.cons (no_v37861994334) .nil)))))))))

private def v37849611502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))))))
private theorem no_v37849611502 : ¬ MinimalInterpreter v37849611502 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v37849608046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))))))
private theorem no_v37849608046 : ¬ MinimalInterpreter v37849608046 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v37849586926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 2))))))))
private theorem no_v37849586926 : ¬ MinimalInterpreter v37849586926 :=
  cost_cut false 2 (by decide)

private def v37849583470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 2)))))))
private theorem no_v37849583470 : ¬ MinimalInterpreter v37849583470 :=
  cost_cut false 2 (by decide)

private def v37849577326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 2)))))))
private theorem no_v37849577326 : ¬ MinimalInterpreter v37849577326 :=
  cost_cut false 2 (by decide)

private def v37850247406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v37850247406 : ¬ MinimalInterpreter v37850247406 :=
  chain_cut false 2 (by decide)

private def v37850248078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 2)))))))))
private theorem no_v37850248078 : ¬ MinimalInterpreter v37850248078 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (so_dead (by decide) (.var 2))))) (.app (.var 1) (.app (.var 0) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850234254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 2))))))))
private theorem no_v37850234254 : ¬ MinimalInterpreter v37850234254 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 2)))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 2)))) (.app (.app (.var 1) (.var 0)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850149102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 1) (.var 2))))))))
private theorem no_v37850149102 : ¬ MinimalInterpreter v37850149102 :=
  chain_cut false 2 (by decide)

private def v37850149774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 2))))))))
private theorem no_v37850149774 : ¬ MinimalInterpreter v37850149774 :=
  chain_cut false 2 (by decide)

private def v37850127598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 1) (.var 2)))))))
private theorem no_v37850127598 : ¬ MinimalInterpreter v37850127598 :=
  chain_cut false 2 (by decide)

private def v37850135950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 2)))))))
private theorem no_v37850135950 : ¬ MinimalInterpreter v37850135950 :=
  chain_cut false 2 (by decide)

private def v37850111374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 2)))))))
private theorem no_v37850111374 : ¬ MinimalInterpreter v37850111374 :=
  chain_cut false 2 (by decide)

private def v37850124142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 1)))) (.var 2))))))
private theorem no_v37850124142 : ¬ MinimalInterpreter v37850124142 :=
  chain_cut false 2 (by decide)

private def v37850105710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 1)) (.var 2))))))
private theorem no_v37850105710 : ¬ MinimalInterpreter v37850105710 :=
  chain_cut false 2 (by decide)

private def v37852606702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v37852606702 : ¬ MinimalInterpreter v37852606702 :=
  chain_cut false 2 (by decide)

private def v37862043886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v37862043886 : ¬ MinimalInterpreter v37862043886 :=
  chain_cut false 6 (by decide)

theorem row56 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [0,2,1,2]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [0,2,1,2] = [v37849611502,v37849608046,v37849586926,v37849583470,v37849577326,v37850247406,v37850248078,v37850234254,v37850149102,v37850149774,v37850127598,v37850135950,v37850111374,v37850124142,v37850105710,v37852606702,v37862043886] := by decide
  rw [h]
  exact (.cons (no_v37849611502) (.cons (no_v37849608046) (.cons (no_v37849586926) (.cons (no_v37849583470) (.cons (no_v37849577326) (.cons (no_v37850247406) (.cons (no_v37850248078) (.cons (no_v37850234254) (.cons (no_v37850149102) (.cons (no_v37850149774) (.cons (no_v37850127598) (.cons (no_v37850135950) (.cons (no_v37850111374) (.cons (no_v37850124142) (.cons (no_v37850105710) (.cons (no_v37852606702) (.cons (no_v37862043886) .nil)))))))))))))))))

private def v37849611510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))))))
private theorem no_v37849611510 : ¬ MinimalInterpreter v37849611510 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v37849608054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))))))))
private theorem no_v37849608054 : ¬ MinimalInterpreter v37849608054 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide))))))

private def v37849586934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 1))))))))
private theorem no_v37849586934 : ¬ MinimalInterpreter v37849586934 :=
  cost_cut false 2 (by decide)

private def v37849583478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 1)))))))
private theorem no_v37849583478 : ¬ MinimalInterpreter v37849583478 :=
  cost_cut false 2 (by decide)

private def v37849577334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 1)))))))
private theorem no_v37849577334 : ¬ MinimalInterpreter v37849577334 :=
  cost_cut false 2 (by decide)

private def v37850247414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v37850247414 : ¬ MinimalInterpreter v37850247414 :=
  chain_cut false 2 (by decide)

private def v37850233974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 1)))))))
private theorem no_v37850233974 : ¬ MinimalInterpreter v37850233974 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 2))) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 1))) (.app (.app (.var 1) (so_dead (by decide) (.var 1))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850149110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 2) (.var 1))))))))
private theorem no_v37850149110 : ¬ MinimalInterpreter v37850149110 :=
  chain_cut false 2 (by decide)

private def v37850127606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.app (.var 2) (.var 1)))))))
private theorem no_v37850127606 : ¬ MinimalInterpreter v37850127606 :=
  chain_cut false 2 (by decide)

private def v37850135670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 1))))))
private theorem no_v37850135670 : ¬ MinimalInterpreter v37850135670 :=
  chain_cut false 2 (by decide)

private def v37850111094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 2))) (.var 1))))))
private theorem no_v37850111094 : ¬ MinimalInterpreter v37850111094 :=
  chain_cut false 2 (by decide)

private def v37850105718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 2))) (.var 2)) (.var 1))))))
private theorem no_v37850105718 : ¬ MinimalInterpreter v37850105718 :=
  chain_cut false 2 (by decide)

private def v37852606710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v37852606710 : ¬ MinimalInterpreter v37852606710 :=
  chain_cut false 2 (by decide)

private def v37862043894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v37862043894 : ¬ MinimalInterpreter v37862043894 :=
  chain_cut false 6 (by decide)

theorem row57 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [0,2,2,1]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [0,2,2,1] = [v37849611510,v37849608054,v37849586934,v37849583478,v37849577334,v37850247414,v37850233974,v37850149110,v37850127606,v37850135670,v37850111094,v37850105718,v37852606710,v37862043894] := by decide
  rw [h]
  exact (.cons (no_v37849611510) (.cons (no_v37849608054) (.cons (no_v37849586934) (.cons (no_v37849583478) (.cons (no_v37849577334) (.cons (no_v37850247414) (.cons (no_v37850233974) (.cons (no_v37850149110) (.cons (no_v37850127606) (.cons (no_v37850135670) (.cons (no_v37850111094) (.cons (no_v37850105718) (.cons (no_v37852606710) (.cons (no_v37862043894) .nil))))))))))))))

private def v37849611514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 3) (.var 0)))))))))
private theorem no_v37849611514 : ¬ MinimalInterpreter v37849611514 :=
  chain_cut false 2 (by decide)

private def v37849608058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0))))))))
private theorem no_v37849608058 : ¬ MinimalInterpreter v37849608058 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 3)) (.var 0))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37849586938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 3) (.var 0))))))))
private theorem no_v37849586938 : ¬ MinimalInterpreter v37849586938 :=
  chain_cut false 2 (by decide)

private def v37849583482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0)))))))
private theorem no_v37849583482 : ¬ MinimalInterpreter v37849583482 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 3))) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37849577338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 3)) (.var 0)))))))
private theorem no_v37849577338 : ¬ MinimalInterpreter v37849577338 :=
  chain_cut false 2 (by decide)

private def v37850124154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0))))))
private theorem no_v37850124154 : ¬ MinimalInterpreter v37850124154 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0)))) (.lam (r := (.lam (.app (.var 1) (.var 2)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (so_dead (by decide) (.app (.var 2) (.var 3)))) (.var 0)) (so_dead (by decide) (.app (.var 1) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37852560634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0)))))))))
private theorem no_v37852560634 : ¬ MinimalInterpreter v37852560634 :=
  chain_cut false 2 (by decide)

private def v37852557178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))))))
private theorem no_v37852557178 : ¬ MinimalInterpreter v37852557178 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 3)) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v37861997818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0)))))))))
private theorem no_v37861997818 : ¬ MinimalInterpreter v37861997818 :=
  chain_cut false 6 (by decide)

private def v37861994362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))))))
private theorem no_v37861994362 : ¬ MinimalInterpreter v37861994362 :=
  w_cut false 0 (by decide)

theorem row58 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [0,2,3,0]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [0,2,3,0] = [v37849611514,v37849608058,v37849586938,v37849583482,v37849577338,v37850124154,v37852560634,v37852557178,v37861997818,v37861994362] := by decide
  rw [h]
  exact (.cons (no_v37849611514) (.cons (no_v37849608058) (.cons (no_v37849586938) (.cons (no_v37849583482) (.cons (no_v37849577338) (.cons (no_v37850124154) (.cons (no_v37852560634) (.cons (no_v37852557178) (.cons (no_v37861997818) (.cons (no_v37861994362) .nil))))))))))

private def v37849611886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 0) (.var 2)))))))))
private theorem no_v37849611886 : ¬ MinimalInterpreter v37849611886 :=
  chain_cut false 2 (by decide)

private def v37849608110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 0)) (.var 2))))))))
private theorem no_v37849608110 : ¬ MinimalInterpreter v37849608110 :=
  chain_cut false 2 (by decide)

private def v37849587310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 0) (.var 2))))))))
private theorem no_v37849587310 : ¬ MinimalInterpreter v37849587310 :=
  chain_cut false 2 (by decide)

private def v37849583534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 0))) (.var 2)))))))
private theorem no_v37849583534 : ¬ MinimalInterpreter v37849583534 :=
  chain_cut false 2 (by decide)

private def v37849577390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 0)) (.var 2)))))))
private theorem no_v37849577390 : ¬ MinimalInterpreter v37849577390 :=
  chain_cut false 2 (by decide)

private def v37852561006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 2)))))))))
private theorem no_v37852561006 : ¬ MinimalInterpreter v37852561006 :=
  chain_cut false 2 (by decide)

private def v37852557230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 2))))))))
private theorem no_v37852557230 : ¬ MinimalInterpreter v37852557230 :=
  chain_cut false 2 (by decide)

private def v37861998190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 2)))))))))
private theorem no_v37861998190 : ¬ MinimalInterpreter v37861998190 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v37861994414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 2))))))))
private theorem no_v37861994414 : ¬ MinimalInterpreter v37861994414 :=
  chain_cut false 5 (by decide)

theorem row59 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [0,3,0,2]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [0,3,0,2] = [v37849611886,v37849608110,v37849587310,v37849583534,v37849577390,v37852561006,v37852557230,v37861998190,v37861994414] := by decide
  rw [h]
  exact (.cons (no_v37849611886) (.cons (no_v37849608110) (.cons (no_v37849587310) (.cons (no_v37849583534) (.cons (no_v37849577390) (.cons (no_v37852561006) (.cons (no_v37852557230) (.cons (no_v37861998190) (.cons (no_v37861994414) .nil)))))))))

end Blc.SelfintSingleObject.Rows37
