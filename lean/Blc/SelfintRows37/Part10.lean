import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v37849611894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 1)))))))))
private theorem no_v37849611894 : ¬ MinimalInterpreter v37849611894 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 2) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.app (.var 1) (.var 1)))) (.app (.var 2) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v37849608118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 1))))))))
private theorem no_v37849608118 : ¬ MinimalInterpreter v37849608118 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 2) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 3) (.var 1)) (.var 1))) (.app (.app (.var 2) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v37849587318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 1) (.var 1))))))))
private theorem no_v37849587318 : ¬ MinimalInterpreter v37849587318 :=
  chain_cut false 2 (by decide)

private def v37849583542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 1)))))))
private theorem no_v37849583542 : ¬ MinimalInterpreter v37849583542 :=
  chain_cut false 2 (by decide)

private def v37849577398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 1)) (.var 1)))))))
private theorem no_v37849577398 : ¬ MinimalInterpreter v37849577398 :=
  chain_cut false 2 (by decide)

private def v37850127990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 1) (.var 1)))))))
private theorem no_v37850127990 : ¬ MinimalInterpreter v37850127990 :=
  chain_cut false 2 (by decide)

private def v37850124214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 1)))) (.var 1))))))
private theorem no_v37850124214 : ¬ MinimalInterpreter v37850124214 :=
  chain_cut false 2 (by decide)

private def v37850105782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 3))) (.var 1)) (.var 1))))))
private theorem no_v37850105782 : ¬ MinimalInterpreter v37850105782 :=
  chain_cut false 2 (by decide)

theorem row60 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [0,3,1,1]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [0,3,1,1] = [v37849611894,v37849608118,v37849587318,v37849583542,v37849577398,v37850127990,v37850124214,v37850105782] := by decide
  rw [h]
  exact (.cons (no_v37849611894) (.cons (no_v37849608118) (.cons (no_v37849587318) (.cons (no_v37849583542) (.cons (no_v37849577398) (.cons (no_v37850127990) (.cons (no_v37850124214) (.cons (no_v37850105782) .nil))))))))

private def v37849611898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.app (.var 2) (.var 0)))))))))
private theorem no_v37849611898 : ¬ MinimalInterpreter v37849611898 :=
  chain_cut false 2 (by decide)

private def v37849608122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0))))))))
private theorem no_v37849608122 : ¬ MinimalInterpreter v37849608122 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 3) (.var 2)) (.var 0))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37849587322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.app (.var 2) (.var 0))))))))
private theorem no_v37849587322 : ¬ MinimalInterpreter v37849587322 :=
  chain_cut false 2 (by decide)

private def v37849583546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0)))))))
private theorem no_v37849583546 : ¬ MinimalInterpreter v37849583546 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 3) (.var 2))) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37849577402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 3)) (.var 2)) (.var 0)))))))
private theorem no_v37849577402 : ¬ MinimalInterpreter v37849577402 :=
  chain_cut false 2 (by decide)

private def v37850124218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0))))))
private theorem no_v37850124218 : ¬ MinimalInterpreter v37850124218 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0)))) (.lam (r := (.lam (.app (.var 2) (.var 1)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (so_dead (by decide) (.app (.var 3) (.var 2)))) (.var 0)) (so_dead (by decide) (.app (.var 2) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37852561018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 0)))))))))
private theorem no_v37852561018 : ¬ MinimalInterpreter v37852561018 :=
  chain_cut false 2 (by decide)

private def v37852557242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))))))
private theorem no_v37852557242 : ¬ MinimalInterpreter v37852557242 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0)))))) (.app (.var 0) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 2)) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v37861998202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.var 0)))))))))
private theorem no_v37861998202 : ¬ MinimalInterpreter v37861998202 :=
  chain_cut false 7 (by decide)

private def v37861994426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.var 0))))))))
private theorem no_v37861994426 : ¬ MinimalInterpreter v37861994426 :=
  w_cut false 0 (by decide)

theorem row61 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [0,3,2,0]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [0,3,2,0] = [v37849611898,v37849608122,v37849587322,v37849583546,v37849577402,v37850124218,v37852561018,v37852557242,v37861998202,v37861994426] := by decide
  rw [h]
  exact (.cons (no_v37849611898) (.cons (no_v37849608122) (.cons (no_v37849587322) (.cons (no_v37849583546) (.cons (no_v37849577402) (.cons (no_v37850124218) (.cons (no_v37852561018) (.cons (no_v37852557242) (.cons (no_v37861998202) (.cons (no_v37861994426) .nil))))))))))

private def v37849635294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v37849635294 : ¬ MinimalInterpreter v37849635294 :=
  chain_cut false 2 (by decide)

private def v37849634526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v37849634526 : ¬ MinimalInterpreter v37849634526 :=
  chain_cut false 2 (by decide)

private def v37849590238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 3))))))))
private theorem no_v37849590238 : ¬ MinimalInterpreter v37849590238 :=
  chain_cut false 2 (by decide)

private def v37849589470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 3)))))))
private theorem no_v37849589470 : ¬ MinimalInterpreter v37849589470 :=
  chain_cut false 2 (by decide)

private def v37849578206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 3)))))))
private theorem no_v37849578206 : ¬ MinimalInterpreter v37849578206 :=
  chain_cut false 2 (by decide)

private def v37850341854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 1) (.var 3)))))))))
private theorem no_v37850341854 : ¬ MinimalInterpreter v37850341854 :=
  chain_cut false 2 (by decide)

private def v37850343198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v37850343198 : ¬ MinimalInterpreter v37850343198 :=
  chain_cut false 2 (by decide)

private def v37850340126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v37850340126 : ¬ MinimalInterpreter v37850340126 :=
  chain_cut false 2 (by decide)

private def v37850161630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.var 3))))))))
private theorem no_v37850161630 : ¬ MinimalInterpreter v37850161630 :=
  chain_cut false 2 (by decide)

private def v37850162974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v37850162974 : ¬ MinimalInterpreter v37850162974 :=
  chain_cut false 2 (by decide)

private def v37850159902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.lam (.var 3)))))))
private theorem no_v37850159902 : ¬ MinimalInterpreter v37850159902 :=
  chain_cut false 2 (by decide)

private def v37850114846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.lam (.var 3)))))))
private theorem no_v37850114846 : ¬ MinimalInterpreter v37850114846 :=
  chain_cut false 2 (by decide)

private def v37853075934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v37853075934 : ¬ MinimalInterpreter v37853075934 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v37853075166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v37853075166 : ¬ MinimalInterpreter v37853075166 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37853095710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v37853095710 : ¬ MinimalInterpreter v37853095710 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37853092638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v37853092638 : ¬ MinimalInterpreter v37853092638 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem row62 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [1,0,1,3]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [1,0,1,3] = [v37849635294,v37849634526,v37849590238,v37849589470,v37849578206,v37850341854,v37850343198,v37850340126,v37850161630,v37850162974,v37850159902,v37850114846,v37853075934,v37853075166,v37853095710,v37853092638] := by decide
  rw [h]
  exact (.cons (no_v37849635294) (.cons (no_v37849634526) (.cons (no_v37849590238) (.cons (no_v37849589470) (.cons (no_v37849578206) (.cons (no_v37850341854) (.cons (no_v37850343198) (.cons (no_v37850340126) (.cons (no_v37850161630) (.cons (no_v37850162974) (.cons (no_v37850159902) (.cons (no_v37850114846) (.cons (no_v37853075934) (.cons (no_v37853075166) (.cons (no_v37853095710) (.cons (no_v37853092638) .nil))))))))))))))))

private def v37849635310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 2)))))))))
private theorem no_v37849635310 : ¬ MinimalInterpreter v37849635310 :=
  cost_cut false 2 (by decide)

private def v37849634542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 2))))))))
private theorem no_v37849634542 : ¬ MinimalInterpreter v37849634542 :=
  cost_cut false 2 (by decide)

private def v37849590254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 2))))))))
private theorem no_v37849590254 : ¬ MinimalInterpreter v37849590254 :=
  cost_cut false 2 (by decide)

private def v37849589486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 2)))))))
private theorem no_v37849589486 : ¬ MinimalInterpreter v37849589486 :=
  cost_cut false 2 (by decide)

private def v37849578222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 2)))))))
private theorem no_v37849578222 : ¬ MinimalInterpreter v37849578222 :=
  cost_cut false 2 (by decide)

private def v37850343310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v37850343310 : ¬ MinimalInterpreter v37850343310 :=
  chain_cut false 2 (by decide)

private def v37850340238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v37850340238 : ¬ MinimalInterpreter v37850340238 :=
  chain_cut false 2 (by decide)

private def v37850339566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v37850339566 : ¬ MinimalInterpreter v37850339566 :=
  chain_cut false 2 (by decide)

private def v37850163086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v37850163086 : ¬ MinimalInterpreter v37850163086 :=
  chain_cut false 2 (by decide)

private def v37850160014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 2)))))))
private theorem no_v37850160014 : ¬ MinimalInterpreter v37850160014 :=
  chain_cut false 2 (by decide)

private def v37850114958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 2)))))))
private theorem no_v37850114958 : ¬ MinimalInterpreter v37850114958 :=
  chain_cut false 2 (by decide)

private def v37850159342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 2)))) (.var 2))))))
private theorem no_v37850159342 : ¬ MinimalInterpreter v37850159342 :=
  chain_cut false 2 (by decide)

private def v37850114286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 2))) (.var 2))))))
private theorem no_v37850114286 : ¬ MinimalInterpreter v37850114286 :=
  chain_cut false 2 (by decide)

private def v37853095822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v37853095822 : ¬ MinimalInterpreter v37853095822 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37853092750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v37853092750 : ¬ MinimalInterpreter v37853092750 :=
  w_cut false 0 (by decide)

private def v37853092078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v37853092078 : ¬ MinimalInterpreter v37853092078 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem row63 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [1,0,2,2]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [1,0,2,2] = [v37849635310,v37849634542,v37849590254,v37849589486,v37849578222,v37850343310,v37850340238,v37850339566,v37850163086,v37850160014,v37850114958,v37850159342,v37850114286,v37853095822,v37853092750,v37853092078] := by decide
  rw [h]
  exact (.cons (no_v37849635310) (.cons (no_v37849634542) (.cons (no_v37849590254) (.cons (no_v37849589486) (.cons (no_v37849578222) (.cons (no_v37850343310) (.cons (no_v37850340238) (.cons (no_v37850339566) (.cons (no_v37850163086) (.cons (no_v37850160014) (.cons (no_v37850114958) (.cons (no_v37850159342) (.cons (no_v37850114286) (.cons (no_v37853095822) (.cons (no_v37853092750) (.cons (no_v37853092078) .nil))))))))))))))))

private def v37849635318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v37849635318 : ¬ MinimalInterpreter v37849635318 :=
  chain_cut false 2 (by decide)

private def v37849634550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v37849634550 : ¬ MinimalInterpreter v37849634550 :=
  chain_cut false 2 (by decide)

private def v37849590262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 3) (.var 1))))))))
private theorem no_v37849590262 : ¬ MinimalInterpreter v37849590262 :=
  chain_cut false 2 (by decide)

private def v37849589494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 3))) (.var 1)))))))
private theorem no_v37849589494 : ¬ MinimalInterpreter v37849589494 :=
  chain_cut false 2 (by decide)

private def v37849578230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 3)) (.var 1)))))))
private theorem no_v37849578230 : ¬ MinimalInterpreter v37849578230 :=
  chain_cut false 2 (by decide)

private def v37850341878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v37850341878 : ¬ MinimalInterpreter v37850341878 :=
  chain_cut false 2 (by decide)

private def v37850339574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v37850339574 : ¬ MinimalInterpreter v37850339574 :=
  chain_cut false 2 (by decide)

private def v37850161654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 3) (.var 1))))))))
private theorem no_v37850161654 : ¬ MinimalInterpreter v37850161654 :=
  chain_cut false 2 (by decide)

private def v37850159350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 3)))) (.var 1))))))
private theorem no_v37850159350 : ¬ MinimalInterpreter v37850159350 :=
  chain_cut false 2 (by decide)

private def v37850114294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 3))) (.var 1))))))
private theorem no_v37850114294 : ¬ MinimalInterpreter v37850114294 :=
  chain_cut false 2 (by decide)

private def v37853075958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v37853075958 : ¬ MinimalInterpreter v37853075958 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v37853075190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v37853075190 : ¬ MinimalInterpreter v37853075190 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37853092086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v37853092086 : ¬ MinimalInterpreter v37853092086 :=
  chain_cut false 6 (by decide)

theorem row64 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [1,0,3,1]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [1,0,3,1] = [v37849635318,v37849634550,v37849590262,v37849589494,v37849578230,v37850341878,v37850339574,v37850161654,v37850159350,v37850114294,v37853075958,v37853075190,v37853092086] := by decide
  rw [h]
  exact (.cons (no_v37849635318) (.cons (no_v37849634550) (.cons (no_v37849590262) (.cons (no_v37849589494) (.cons (no_v37849578230) (.cons (no_v37850341878) (.cons (no_v37850339574) (.cons (no_v37850161654) (.cons (no_v37850159350) (.cons (no_v37850114294) (.cons (no_v37853075958) (.cons (no_v37853075190) (.cons (no_v37853092086) .nil)))))))))))))

private def v37849636062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v37849636062 : ¬ MinimalInterpreter v37849636062 :=
  chain_cut false 2 (by decide)

private def v37849634654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v37849634654 : ¬ MinimalInterpreter v37849634654 :=
  chain_cut false 2 (by decide)

private def v37849591006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 3))))))))
private theorem no_v37849591006 : ¬ MinimalInterpreter v37849591006 :=
  chain_cut false 2 (by decide)

private def v37849589598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 3)))))))
private theorem no_v37849589598 : ¬ MinimalInterpreter v37849589598 :=
  chain_cut false 2 (by decide)

private def v37849578334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 3)))))))
private theorem no_v37849578334 : ¬ MinimalInterpreter v37849578334 :=
  chain_cut false 2 (by decide)

private def v37850346270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v37850346270 : ¬ MinimalInterpreter v37850346270 :=
  chain_cut false 2 (by decide)

private def v37850340638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v37850340638 : ¬ MinimalInterpreter v37850340638 :=
  chain_cut false 2 (by decide)

private def v37850166046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v37850166046 : ¬ MinimalInterpreter v37850166046 :=
  chain_cut false 2 (by decide)

private def v37850160414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.lam (.var 3)))))))
private theorem no_v37850160414 : ¬ MinimalInterpreter v37850160414 :=
  chain_cut false 2 (by decide)

private def v37850115358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.lam (.var 3)))))))
private theorem no_v37850115358 : ¬ MinimalInterpreter v37850115358 :=
  chain_cut false 2 (by decide)

private def v37853076702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v37853076702 : ¬ MinimalInterpreter v37853076702 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37853075294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v37853075294 : ¬ MinimalInterpreter v37853075294 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37853098782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v37853098782 : ¬ MinimalInterpreter v37853098782 :=
  chain_cut true 6 (by decide)

private def v37853093150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v37853093150 : ¬ MinimalInterpreter v37853093150 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row65 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [1,1,0,3]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [1,1,0,3] = [v37849636062,v37849634654,v37849591006,v37849589598,v37849578334,v37850346270,v37850340638,v37850166046,v37850160414,v37850115358,v37853076702,v37853075294,v37853098782,v37853093150] := by decide
  rw [h]
  exact (.cons (no_v37849636062) (.cons (no_v37849634654) (.cons (no_v37849591006) (.cons (no_v37849589598) (.cons (no_v37849578334) (.cons (no_v37850346270) (.cons (no_v37850340638) (.cons (no_v37850166046) (.cons (no_v37850160414) (.cons (no_v37850115358) (.cons (no_v37853076702) (.cons (no_v37853075294) (.cons (no_v37853098782) (.cons (no_v37853093150) .nil))))))))))))))

end Blc.SelfintSingleObject.Rows37
