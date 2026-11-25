import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v37850340462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v37850340462 : ¬ MinimalInterpreter v37850340462 :=
  chain_cut false 2 (by decide)

private def v37850156270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 1) (.var 2)))))))
private theorem no_v37850156270 : ¬ MinimalInterpreter v37850156270 :=
  chain_cut false 2 (by decide)

private def v37850154862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 1)))) (.var 2))))))
private theorem no_v37850154862 : ¬ MinimalInterpreter v37850154862 :=
  chain_cut false 2 (by decide)

private def v37850160238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 1)))) (.var 2))))))
private theorem no_v37850160238 : ¬ MinimalInterpreter v37850160238 :=
  chain_cut false 2 (by decide)

private def v37850115182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 1))) (.var 2))))))
private theorem no_v37850115182 : ¬ MinimalInterpreter v37850115182 :=
  chain_cut false 2 (by decide)

private def v37850112878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 1)) (.var 2))))))
private theorem no_v37850112878 : ¬ MinimalInterpreter v37850112878 :=
  chain_cut false 2 (by decide)

private def v37853092974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v37853092974 : ¬ MinimalInterpreter v37853092974 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

theorem row66 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [1,1,1,2]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [1,1,1,2] = [v37850340462,v37850156270,v37850154862,v37850160238,v37850115182,v37850112878,v37853092974] := by decide
  rw [h]
  exact (.cons (no_v37850340462) (.cons (no_v37850156270) (.cons (no_v37850154862) (.cons (no_v37850160238) (.cons (no_v37850115182) (.cons (no_v37850112878) (.cons (no_v37853092974) .nil)))))))

private def v37850346438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v37850346438 : ¬ MinimalInterpreter v37850346438 :=
  chain_cut false 2 (by decide)

private def v37850340806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))
private theorem no_v37850340806 : ¬ MinimalInterpreter v37850340806 :=
  chain_cut false 2 (by decide)

private def v37850166214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v37850166214 : ¬ MinimalInterpreter v37850166214 :=
  chain_cut false 2 (by decide)

private def v37850156278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.app (.var 2) (.var 1)))))))
private theorem no_v37850156278 : ¬ MinimalInterpreter v37850156278 :=
  chain_cut false 2 (by decide)

private def v37850160582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 1)))))))
private theorem no_v37850160582 : ¬ MinimalInterpreter v37850160582 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850115526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1)))))))
private theorem no_v37850115526 : ¬ MinimalInterpreter v37850115526 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850112886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 1))) (.var 2)) (.var 1))))))
private theorem no_v37850112886 : ¬ MinimalInterpreter v37850112886 :=
  chain_cut false 2 (by decide)

private def v37853098950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v37853098950 : ¬ MinimalInterpreter v37853098950 :=
  chain_cut true 6 (by decide)

private def v37853093318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))))))
private theorem no_v37853093318 : ¬ MinimalInterpreter v37853093318 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem row67 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [1,1,2,1]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [1,1,2,1] = [v37850346438,v37850340806,v37850166214,v37850156278,v37850160582,v37850115526,v37850112886,v37853098950,v37853093318] := by decide
  rw [h]
  exact (.cons (no_v37850346438) (.cons (no_v37850340806) (.cons (no_v37850166214) (.cons (no_v37850156278) (.cons (no_v37850160582) (.cons (no_v37850115526) (.cons (no_v37850112886) (.cons (no_v37853098950) (.cons (no_v37853093318) .nil)))))))))

private def v37849636090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v37849636090 : ¬ MinimalInterpreter v37849636090 :=
  chain_cut false 2 (by decide)

private def v37849634682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v37849634682 : ¬ MinimalInterpreter v37849634682 :=
  chain_cut false 2 (by decide)

private def v37849591034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 3) (.var 0))))))))
private theorem no_v37849591034 : ¬ MinimalInterpreter v37849591034 :=
  chain_cut false 2 (by decide)

private def v37849589626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 3))) (.var 0)))))))
private theorem no_v37849589626 : ¬ MinimalInterpreter v37849589626 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 3))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v37849578362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)))))))
private theorem no_v37849578362 : ¬ MinimalInterpreter v37849578362 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 3)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v37850340474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v37850340474 : ¬ MinimalInterpreter v37850340474 :=
  chain_cut false 2 (by decide)

private def v37850154874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 3)))) (.var 0))))))
private theorem no_v37850154874 : ¬ MinimalInterpreter v37850154874 :=
  chain_cut false 2 (by decide)

private def v37850160250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 3)))) (.var 0))))))
private theorem no_v37850160250 : ¬ MinimalInterpreter v37850160250 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.lam (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v37850115194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 3))) (.var 0))))))
private theorem no_v37850115194 : ¬ MinimalInterpreter v37850115194 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.lam (.var 3))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v37853076730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 3) (.var 0)))))))))
private theorem no_v37853076730 : ¬ MinimalInterpreter v37853076730 :=
  chain_cut false 6 (by decide)

private def v37853075322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 1) (.var 3)) (.var 0))))))))
private theorem no_v37853075322 : ¬ MinimalInterpreter v37853075322 :=
  w_cut false 0 (by decide)

private def v37853092986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0)))))))
private theorem no_v37853092986 : ¬ MinimalInterpreter v37853092986 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.lam (.var 3))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem row68 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [1,1,3,0]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [1,1,3,0] = [v37849636090,v37849634682,v37849591034,v37849589626,v37849578362,v37850340474,v37850154874,v37850160250,v37850115194,v37853076730,v37853075322,v37853092986] := by decide
  rw [h]
  exact (.cons (no_v37849636090) (.cons (no_v37849634682) (.cons (no_v37849591034) (.cons (no_v37849589626) (.cons (no_v37849578362) (.cons (no_v37850340474) (.cons (no_v37850154874) (.cons (no_v37850160250) (.cons (no_v37850115194) (.cons (no_v37853076730) (.cons (no_v37853075322) (.cons (no_v37853092986) .nil))))))))))))

private def v37849636462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 2)))))))))
private theorem no_v37849636462 : ¬ MinimalInterpreter v37849636462 :=
  cost_cut false 2 (by decide)

private def v37849634734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 2))))))))
private theorem no_v37849634734 : ¬ MinimalInterpreter v37849634734 :=
  cost_cut false 2 (by decide)

private def v37849591406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 2))))))))
private theorem no_v37849591406 : ¬ MinimalInterpreter v37849591406 :=
  cost_cut false 2 (by decide)

private def v37849589678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 2)))))))
private theorem no_v37849589678 : ¬ MinimalInterpreter v37849589678 :=
  cost_cut false 2 (by decide)

private def v37849578414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 2)))))))
private theorem no_v37849578414 : ¬ MinimalInterpreter v37849578414 :=
  cost_cut false 2 (by decide)

private def v37850347918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v37850347918 : ¬ MinimalInterpreter v37850347918 :=
  chain_cut false 2 (by decide)

private def v37850341006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v37850341006 : ¬ MinimalInterpreter v37850341006 :=
  chain_cut false 2 (by decide)

private def v37850167694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v37850167694 : ¬ MinimalInterpreter v37850167694 :=
  chain_cut false 2 (by decide)

private def v37850156654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 0) (.var 2)))))))
private theorem no_v37850156654 : ¬ MinimalInterpreter v37850156654 :=
  chain_cut false 2 (by decide)

private def v37850160782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 2)))))))
private theorem no_v37850160782 : ¬ MinimalInterpreter v37850160782 :=
  chain_cut false 2 (by decide)

private def v37850115726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 2)))))))
private theorem no_v37850115726 : ¬ MinimalInterpreter v37850115726 :=
  chain_cut false 2 (by decide)

private def v37850112942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 0)) (.var 2))))))
private theorem no_v37850112942 : ¬ MinimalInterpreter v37850112942 :=
  chain_cut false 2 (by decide)

private def v37853100430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v37853100430 : ¬ MinimalInterpreter v37853100430 :=
  chain_cut false 8 (by decide)

private def v37853093518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2))))))))
private theorem no_v37853093518 : ¬ MinimalInterpreter v37853093518 :=
  w_cut false 0 (by decide)

theorem row69 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [1,2,0,2]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [1,2,0,2] = [v37849636462,v37849634734,v37849591406,v37849589678,v37849578414,v37850347918,v37850341006,v37850167694,v37850156654,v37850160782,v37850115726,v37850112942,v37853100430,v37853093518] := by decide
  rw [h]
  exact (.cons (no_v37849636462) (.cons (no_v37849634734) (.cons (no_v37849591406) (.cons (no_v37849589678) (.cons (no_v37849578414) (.cons (no_v37850347918) (.cons (no_v37850341006) (.cons (no_v37850167694) (.cons (no_v37850156654) (.cons (no_v37850160782) (.cons (no_v37850115726) (.cons (no_v37850112942) (.cons (no_v37853100430) (.cons (no_v37853093518) .nil))))))))))))))

private def v37850347638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 1) (.var 1)))))))))
private theorem no_v37850347638 : ¬ MinimalInterpreter v37850347638 :=
  chain_cut false 2 (by decide)

private def v37850347974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v37850347974 : ¬ MinimalInterpreter v37850347974 :=
  chain_cut false 2 (by decide)

private def v37850341062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v37850341062 : ¬ MinimalInterpreter v37850341062 :=
  chain_cut false 2 (by decide)

private def v37850340918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v37850340918 : ¬ MinimalInterpreter v37850340918 :=
  chain_cut false 2 (by decide)

private def v37850167414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 1))))))))
private theorem no_v37850167414 : ¬ MinimalInterpreter v37850167414 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.app (.var 1) (.var 1)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850167750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v37850167750 : ¬ MinimalInterpreter v37850167750 :=
  chain_cut false 2 (by decide)

private def v37850160838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 1)))))))
private theorem no_v37850160838 : ¬ MinimalInterpreter v37850160838 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850115782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v37850115782 : ¬ MinimalInterpreter v37850115782 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850160694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 1))))))
private theorem no_v37850160694 : ¬ MinimalInterpreter v37850160694 :=
  chain_cut false 2 (by decide)

private def v37850115638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 1))))))
private theorem no_v37850115638 : ¬ MinimalInterpreter v37850115638 :=
  chain_cut false 2 (by decide)

private def v37853100486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v37853100486 : ¬ MinimalInterpreter v37853100486 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v37853093574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1))))))))
private theorem no_v37853093574 : ¬ MinimalInterpreter v37853093574 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.lam (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37853093430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1)))))))
private theorem no_v37853093430 : ¬ MinimalInterpreter v37853093430 :=
  chain_cut false 7 (by decide)

theorem row70 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [1,2,1,1]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [1,2,1,1] = [v37850347638,v37850347974,v37850341062,v37850340918,v37850167414,v37850167750,v37850160838,v37850115782,v37850160694,v37850115638,v37853100486,v37853093574,v37853093430] := by decide
  rw [h]
  exact (.cons (no_v37850347638) (.cons (no_v37850347974) (.cons (no_v37850341062) (.cons (no_v37850340918) (.cons (no_v37850167414) (.cons (no_v37850167750) (.cons (no_v37850160838) (.cons (no_v37850115782) (.cons (no_v37850160694) (.cons (no_v37850115638) (.cons (no_v37853100486) (.cons (no_v37853093574) (.cons (no_v37853093430) .nil)))))))))))))

private def v37849636474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.var 0)))))))))
private theorem no_v37849636474 : ¬ MinimalInterpreter v37849636474 :=
  cost_cut false 2 (by decide)

private def v37849634746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.var 0))))))))
private theorem no_v37849634746 : ¬ MinimalInterpreter v37849634746 :=
  cost_cut false 2 (by decide)

private def v37849591418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.var 0))))))))
private theorem no_v37849591418 : ¬ MinimalInterpreter v37849591418 :=
  cost_cut false 2 (by decide)

private def v37849589690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)))))))
private theorem no_v37849589690 : ¬ MinimalInterpreter v37849589690 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide))))))

private def v37849578426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))))))
private theorem no_v37849578426 : ¬ MinimalInterpreter v37849578426 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v37850340922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v37850340922 : ¬ MinimalInterpreter v37850340922 :=
  chain_cut false 2 (by decide)

private def v37850156666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 2))) (.app (.var 2) (.var 0)))))))
private theorem no_v37850156666 : ¬ MinimalInterpreter v37850156666 :=
  chain_cut false 2 (by decide)

private def v37850160698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 2)))) (.var 0))))))
private theorem no_v37850160698 : ¬ MinimalInterpreter v37850160698 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850115642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 2))) (.var 0))))))
private theorem no_v37850115642 : ¬ MinimalInterpreter v37850115642 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.app (.var 0) (.var 1)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37850112954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 2)) (.var 0))))))
private theorem no_v37850112954 : ¬ MinimalInterpreter v37850112954 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.lam (.var 2))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (.var 2)) (.var 0)) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37853093434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0)))))))
private theorem no_v37853093434 : ¬ MinimalInterpreter v37853093434 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.lam (.var 2))) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem row71 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [1,2,2,0]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [1,2,2,0] = [v37849636474,v37849634746,v37849591418,v37849589690,v37849578426,v37850340922,v37850156666,v37850160698,v37850115642,v37850112954,v37853093434] := by decide
  rw [h]
  exact (.cons (no_v37849636474) (.cons (no_v37849634746) (.cons (no_v37849591418) (.cons (no_v37849589690) (.cons (no_v37849578426) (.cons (no_v37850340922) (.cons (no_v37850156666) (.cons (no_v37850160698) (.cons (no_v37850115642) (.cons (no_v37850112954) (.cons (no_v37853093434) .nil)))))))))))

end Blc.SelfintSingleObject.Rows37
