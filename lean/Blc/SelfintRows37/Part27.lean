import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row162 : BadRow (row ⟨1,2,1,2,4,4⟩ [1,0] [2,1,1,0]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [1,0] [2,1,1,0] = [] := by decide
  rw [h]
  exact .nil

theorem row163 : BadRow (row ⟨1,2,1,2,4,4⟩ [1,0] [2,2,0,0]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [1,0] [2,2,0,0] = [] := by decide
  rw [h]
  exact .nil

private def v35349646574 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v35349646574 : ¬ MinimalInterpreter v35349646574 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v35349646190 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v35349646190 : ¬ MinimalInterpreter v35349646190 :=
  chain_cut false 2 (by decide)

private def v35349640430 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v35349640430 : ¬ MinimalInterpreter v35349640430 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v35349640046 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v35349640046 : ¬ MinimalInterpreter v35349640046 :=
  chain_cut false 2 (by decide)

private def v35349638510 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v35349638510 : ¬ MinimalInterpreter v35349638510 :=
  chain_cut false 2 (by decide)

private def v35349794030 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v35349794030 : ¬ MinimalInterpreter v35349794030 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v35349793646 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v35349793646 : ¬ MinimalInterpreter v35349793646 :=
  chain_cut false 2 (by decide)

private def v35350383854 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v35350383854 : ¬ MinimalInterpreter v35350383854 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v35350383470 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v35350383470 : ¬ MinimalInterpreter v35350383470 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem row164 : BadRow (row ⟨1,2,2,2,4,3⟩ [1,1] [0,0,1,2]) := by
  have h : row ⟨1,2,2,2,4,3⟩ [1,1] [0,0,1,2] = [v35349646574,v35349646190,v35349640430,v35349640046,v35349638510,v35349794030,v35349793646,v35350383854,v35350383470] := by decide
  rw [h]
  exact (.cons (no_v35349646574) (.cons (no_v35349646190) (.cons (no_v35349640430) (.cons (no_v35349640046) (.cons (no_v35349638510) (.cons (no_v35349794030) (.cons (no_v35349793646) (.cons (no_v35350383854) (.cons (no_v35350383470) .nil)))))))))

private def v35349646582 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v35349646582 : ¬ MinimalInterpreter v35349646582 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v35349646198 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v35349646198 : ¬ MinimalInterpreter v35349646198 :=
  chain_cut false 2 (by decide)

private def v35349640438 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v35349640438 : ¬ MinimalInterpreter v35349640438 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v35349640054 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v35349640054 : ¬ MinimalInterpreter v35349640054 :=
  chain_cut false 2 (by decide)

private def v35349638518 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v35349638518 : ¬ MinimalInterpreter v35349638518 :=
  chain_cut false 2 (by decide)

private def v35349794038 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v35349794038 : ¬ MinimalInterpreter v35349794038 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v35349793654 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v35349793654 : ¬ MinimalInterpreter v35349793654 :=
  chain_cut false 2 (by decide)

private def v35350383862 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v35350383862 : ¬ MinimalInterpreter v35350383862 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v35350383478 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v35350383478 : ¬ MinimalInterpreter v35350383478 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem row165 : BadRow (row ⟨1,2,2,2,4,3⟩ [1,1] [0,0,2,1]) := by
  have h : row ⟨1,2,2,2,4,3⟩ [1,1] [0,0,2,1] = [v35349646582,v35349646198,v35349640438,v35349640054,v35349638518,v35349794038,v35349793654,v35350383862,v35350383478] := by decide
  rw [h]
  exact (.cons (no_v35349646582) (.cons (no_v35349646198) (.cons (no_v35349640438) (.cons (no_v35349640054) (.cons (no_v35349638518) (.cons (no_v35349794038) (.cons (no_v35349793654) (.cons (no_v35350383862) (.cons (no_v35350383478) .nil)))))))))

private def v35349646958 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v35349646958 : ¬ MinimalInterpreter v35349646958 :=
  chain_cut false 2 (by decide)

private def v35349646254 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v35349646254 : ¬ MinimalInterpreter v35349646254 :=
  chain_cut false 2 (by decide)

private def v35349640814 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v35349640814 : ¬ MinimalInterpreter v35349640814 :=
  chain_cut false 2 (by decide)

private def v35349640110 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v35349640110 : ¬ MinimalInterpreter v35349640110 :=
  chain_cut false 2 (by decide)

private def v35349638574 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v35349638574 : ¬ MinimalInterpreter v35349638574 :=
  chain_cut false 2 (by decide)

private def v35349794414 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v35349794414 : ¬ MinimalInterpreter v35349794414 :=
  chain_cut false 2 (by decide)

private def v35349793710 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v35349793710 : ¬ MinimalInterpreter v35349793710 :=
  chain_cut false 2 (by decide)

private def v35350384238 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v35350384238 : ¬ MinimalInterpreter v35350384238 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v35350383534 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v35350383534 : ¬ MinimalInterpreter v35350383534 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

theorem row166 : BadRow (row ⟨1,2,2,2,4,3⟩ [1,1] [0,1,0,2]) := by
  have h : row ⟨1,2,2,2,4,3⟩ [1,1] [0,1,0,2] = [v35349646958,v35349646254,v35349640814,v35349640110,v35349638574,v35349794414,v35349793710,v35350384238,v35350383534] := by decide
  rw [h]
  exact (.cons (no_v35349646958) (.cons (no_v35349646254) (.cons (no_v35349640814) (.cons (no_v35349640110) (.cons (no_v35349638574) (.cons (no_v35349794414) (.cons (no_v35349793710) (.cons (no_v35350384238) (.cons (no_v35350383534) .nil)))))))))

theorem row167 : BadRow (row ⟨1,2,2,2,4,3⟩ [1,1] [0,1,1,1]) := by
  have h : row ⟨1,2,2,2,4,3⟩ [1,1] [0,1,1,1] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows37
