import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v700197169050 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v700197169050 : ¬ MinimalInterpreter v700197169050 :=
  chain_cut false 2 (by decide)
private def v700197168618 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v700197168618 : ¬ MinimalInterpreter v700197168618 :=
  chain_cut false 2 (by decide)
private def v700197157786 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v700197157786 : ¬ MinimalInterpreter v700197157786 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700197157354 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v700197157354 : ¬ MinimalInterpreter v700197157354 :=
  chain_cut false 2 (by decide)
private def v700197154538 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v700197154538 : ¬ MinimalInterpreter v700197154538 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row528 : BadRow (row ⟨2,2,2,2,4,3⟩ [0,2] [1,2,0,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [0,2] [1,2,0,0] = [v700197169050,v700197168618,v700197157786,v700197157354,v700197154538] := by decide +kernel
  rw [h]
  exact (.cons (no_v700197169050) (.cons (no_v700197168618) (.cons (no_v700197157786) (.cons (no_v700197157354) (.cons (no_v700197154538) .nil)))))

private def v700197172022 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v700197172022 : ¬ MinimalInterpreter v700197172022 :=
  chain_cut false 2 (by decide)
private def v700197171926 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v700197171926 : ¬ MinimalInterpreter v700197171926 :=
  chain_cut false 2 (by decide)
private def v700197158198 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v700197158198 : ¬ MinimalInterpreter v700197158198 :=
  chain_cut false 2 (by decide)
private def v700197158102 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v700197158102 : ¬ MinimalInterpreter v700197158102 :=
  chain_cut false 2 (by decide)
private def v700197154646 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v700197154646 : ¬ MinimalInterpreter v700197154646 :=
  chain_cut false 2 (by decide)
theorem row529 : BadRow (row ⟨2,2,2,2,4,3⟩ [0,2] [2,0,0,1]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [0,2] [2,0,0,1] = [v700197172022,v700197171926,v700197158198,v700197158102,v700197154646] := by decide +kernel
  rw [h]
  exact (.cons (no_v700197172022) (.cons (no_v700197171926) (.cons (no_v700197158198) (.cons (no_v700197158102) (.cons (no_v700197154646) .nil)))))

private def v700197172026 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v700197172026 : ¬ MinimalInterpreter v700197172026 :=
  chain_cut false 2 (by decide)
private def v700197171930 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v700197171930 : ¬ MinimalInterpreter v700197171930 :=
  chain_cut false 2 (by decide)
private def v700197158202 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v700197158202 : ¬ MinimalInterpreter v700197158202 :=
  chain_cut false 2 (by decide)
private def v700197158106 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v700197158106 : ¬ MinimalInterpreter v700197158106 :=
  chain_cut false 2 (by decide)
private def v700197154650 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v700197154650 : ¬ MinimalInterpreter v700197154650 :=
  chain_cut false 2 (by decide)
theorem row530 : BadRow (row ⟨2,2,2,2,4,3⟩ [0,2] [2,0,1,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [0,2] [2,0,1,0] = [v700197172026,v700197171930,v700197158202,v700197158106,v700197154650] := by decide +kernel
  rw [h]
  exact (.cons (no_v700197172026) (.cons (no_v700197171930) (.cons (no_v700197158202) (.cons (no_v700197158106) (.cons (no_v700197154650) .nil)))))

private def v700197172122 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v700197172122 : ¬ MinimalInterpreter v700197172122 :=
  chain_cut false 2 (by decide)
private def v700197171946 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v700197171946 : ¬ MinimalInterpreter v700197171946 :=
  chain_cut false 2 (by decide)
private def v700197158298 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v700197158298 : ¬ MinimalInterpreter v700197158298 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v700197158122 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v700197158122 : ¬ MinimalInterpreter v700197158122 :=
  chain_cut false 2 (by decide)
private def v700197154666 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v700197154666 : ¬ MinimalInterpreter v700197154666 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row531 : BadRow (row ⟨2,2,2,2,4,3⟩ [0,2] [2,1,0,0]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [0,2] [2,1,0,0] = [v700197172122,v700197171946,v700197158298,v700197158122,v700197154666] := by decide +kernel
  rw [h]
  exact (.cons (no_v700197172122) (.cons (no_v700197171946) (.cons (no_v700197158298) (.cons (no_v700197158122) (.cons (no_v700197154666) .nil)))))

private def v688184675566 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v688184675566 : ¬ MinimalInterpreter v688184675566 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v688184675182 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v688184675182 : ¬ MinimalInterpreter v688184675182 :=
  cost_cut false 1 (by decide)
private def v688184669422 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v688184669422 : ¬ MinimalInterpreter v688184669422 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v688184669038 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v688184669038 : ¬ MinimalInterpreter v688184669038 :=
  cost_cut false 1 (by decide)
private def v688184667502 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v688184667502 : ¬ MinimalInterpreter v688184667502 :=
  cost_cut false 1 (by decide)
private def v688184823022 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v688184823022 : ¬ MinimalInterpreter v688184823022 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v688184822638 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v688184822638 : ¬ MinimalInterpreter v688184822638 :=
  cost_cut false 1 (by decide)
private def v688185412846 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v688185412846 : ¬ MinimalInterpreter v688185412846 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v688185412462 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v688185412462 : ¬ MinimalInterpreter v688185412462 :=
  cost_cut false 1 (by decide)
theorem row532 : BadRow (row ⟨2,2,2,2,4,3⟩ [1,1] [0,0,1,2]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [1,1] [0,0,1,2] = [v688184675566,v688184675182,v688184669422,v688184669038,v688184667502,v688184823022,v688184822638,v688185412846,v688185412462] := by decide +kernel
  rw [h]
  exact (.cons (no_v688184675566) (.cons (no_v688184675182) (.cons (no_v688184669422) (.cons (no_v688184669038) (.cons (no_v688184667502) (.cons (no_v688184823022) (.cons (no_v688184822638) (.cons (no_v688185412846) (.cons (no_v688185412462) .nil)))))))))

private def v688184675574 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v688184675574 : ¬ MinimalInterpreter v688184675574 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v688184675190 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v688184675190 : ¬ MinimalInterpreter v688184675190 :=
  cost_cut false 1 (by decide)
private def v688184669430 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v688184669430 : ¬ MinimalInterpreter v688184669430 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v688184669046 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v688184669046 : ¬ MinimalInterpreter v688184669046 :=
  cost_cut false 1 (by decide)
private def v688184667510 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v688184667510 : ¬ MinimalInterpreter v688184667510 :=
  cost_cut false 1 (by decide)
private def v688184823030 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v688184823030 : ¬ MinimalInterpreter v688184823030 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v688184822646 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v688184822646 : ¬ MinimalInterpreter v688184822646 :=
  cost_cut false 1 (by decide)
private def v688185412854 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v688185412854 : ¬ MinimalInterpreter v688185412854 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v688185412470 : Term := (.app (.lam (.lam (.lam (.app (.var 1) (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v688185412470 : ¬ MinimalInterpreter v688185412470 :=
  cost_cut false 1 (by decide)
theorem row533 : BadRow (row ⟨2,2,2,2,4,3⟩ [1,1] [0,0,2,1]) := by
  have h : row ⟨2,2,2,2,4,3⟩ [1,1] [0,0,2,1] = [v688184675574,v688184675190,v688184669430,v688184669046,v688184667510,v688184823030,v688184822646,v688185412854,v688185412470] := by decide +kernel
  rw [h]
  exact (.cons (no_v688184675574) (.cons (no_v688184675190) (.cons (no_v688184669430) (.cons (no_v688184669046) (.cons (no_v688184667510) (.cons (no_v688184823030) (.cons (no_v688184822646) (.cons (no_v688185412854) (.cons (no_v688185412470) .nil)))))))))

end Blc.SelfintSingleObject.Rows39
