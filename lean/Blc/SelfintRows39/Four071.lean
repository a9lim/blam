import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v691154243182 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v691154243182 : ¬ MinimalInterpreter v691154243182 :=
  cost_cut false 2 (by decide)
private def v691154242478 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v691154242478 : ¬ MinimalInterpreter v691154242478 :=
  cost_cut false 2 (by decide)
private def v691154237038 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))))
private theorem no_v691154237038 : ¬ MinimalInterpreter v691154237038 :=
  cost_cut false 2 (by decide)
private def v691154236334 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))))
private theorem no_v691154236334 : ¬ MinimalInterpreter v691154236334 :=
  cost_cut false 2 (by decide)
private def v691154234798 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))))
private theorem no_v691154234798 : ¬ MinimalInterpreter v691154234798 :=
  cost_cut false 2 (by decide)
private def v691154390638 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v691154390638 : ¬ MinimalInterpreter v691154390638 :=
  cost_cut false 2 (by decide)
private def v691154389934 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v691154389934 : ¬ MinimalInterpreter v691154389934 :=
  cost_cut false 2 (by decide)
private def v691154980462 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v691154980462 : ¬ MinimalInterpreter v691154980462 :=
  cost_cut false 2 (by decide)
private def v691154979758 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v691154979758 : ¬ MinimalInterpreter v691154979758 :=
  cost_cut false 2 (by decide)
theorem row426 : BadRow (row ⟨1,2,2,3,4,3⟩ [1,1] [0,1,0,2]) := by
  have h : row ⟨1,2,2,3,4,3⟩ [1,1] [0,1,0,2] = [v691154243182,v691154242478,v691154237038,v691154236334,v691154234798,v691154390638,v691154389934,v691154980462,v691154979758] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154243182) (.cons (no_v691154242478) (.cons (no_v691154237038) (.cons (no_v691154236334) (.cons (no_v691154234798) (.cons (no_v691154390638) (.cons (no_v691154389934) (.cons (no_v691154980462) (.cons (no_v691154979758) .nil)))))))))

theorem row427 : BadRow (row ⟨1,2,2,3,4,3⟩ [1,1] [0,1,1,1]) := by
  have h : row ⟨1,2,2,3,4,3⟩ [1,1] [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v691154243194 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v691154243194 : ¬ MinimalInterpreter v691154243194 :=
  cost_cut false 2 (by decide)
private def v691154242490 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v691154242490 : ¬ MinimalInterpreter v691154242490 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v691154237050 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))))
private theorem no_v691154237050 : ¬ MinimalInterpreter v691154237050 :=
  cost_cut false 2 (by decide)
private def v691154236346 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))
private theorem no_v691154236346 : ¬ MinimalInterpreter v691154236346 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v691154234810 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))))
private theorem no_v691154234810 : ¬ MinimalInterpreter v691154234810 :=
  cost_cut false 2 (by decide)
private def v691154390650 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v691154390650 : ¬ MinimalInterpreter v691154390650 :=
  cost_cut false 2 (by decide)
private def v691154389946 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v691154389946 : ¬ MinimalInterpreter v691154389946 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v691154980474 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v691154980474 : ¬ MinimalInterpreter v691154980474 :=
  cost_cut false 2 (by decide)
private def v691154979770 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v691154979770 : ¬ MinimalInterpreter v691154979770 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem row428 : BadRow (row ⟨1,2,2,3,4,3⟩ [1,1] [0,1,2,0]) := by
  have h : row ⟨1,2,2,3,4,3⟩ [1,1] [0,1,2,0] = [v691154243194,v691154242490,v691154237050,v691154236346,v691154234810,v691154390650,v691154389946,v691154980474,v691154979770] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154243194) (.cons (no_v691154242490) (.cons (no_v691154237050) (.cons (no_v691154236346) (.cons (no_v691154234810) (.cons (no_v691154390650) (.cons (no_v691154389946) (.cons (no_v691154980474) (.cons (no_v691154979770) .nil)))))))))

private def v691154243382 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v691154243382 : ¬ MinimalInterpreter v691154243382 :=
  cost_cut false 2 (by decide)
private def v691154242518 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v691154242518 : ¬ MinimalInterpreter v691154242518 :=
  cost_cut false 2 (by decide)
private def v691154237238 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))))
private theorem no_v691154237238 : ¬ MinimalInterpreter v691154237238 :=
  cost_cut false 2 (by decide)
private def v691154236374 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))))
private theorem no_v691154236374 : ¬ MinimalInterpreter v691154236374 :=
  cost_cut false 2 (by decide)
private def v691154234838 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))))
private theorem no_v691154234838 : ¬ MinimalInterpreter v691154234838 :=
  cost_cut false 2 (by decide)
private def v691154390838 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v691154390838 : ¬ MinimalInterpreter v691154390838 :=
  cost_cut false 2 (by decide)
private def v691154389974 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v691154389974 : ¬ MinimalInterpreter v691154389974 :=
  cost_cut false 2 (by decide)
private def v691154980662 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v691154980662 : ¬ MinimalInterpreter v691154980662 :=
  cost_cut false 2 (by decide)
private def v691154979798 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v691154979798 : ¬ MinimalInterpreter v691154979798 :=
  cost_cut false 2 (by decide)
theorem row429 : BadRow (row ⟨1,2,2,3,4,3⟩ [1,1] [0,2,0,1]) := by
  have h : row ⟨1,2,2,3,4,3⟩ [1,1] [0,2,0,1] = [v691154243382,v691154242518,v691154237238,v691154236374,v691154234838,v691154390838,v691154389974,v691154980662,v691154979798] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154243382) (.cons (no_v691154242518) (.cons (no_v691154237238) (.cons (no_v691154236374) (.cons (no_v691154234838) (.cons (no_v691154390838) (.cons (no_v691154389974) (.cons (no_v691154980662) (.cons (no_v691154979798) .nil)))))))))

private def v691154243386 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v691154243386 : ¬ MinimalInterpreter v691154243386 :=
  cost_cut false 2 (by decide)
private def v691154242522 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v691154242522 : ¬ MinimalInterpreter v691154242522 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v691154237242 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))))
private theorem no_v691154237242 : ¬ MinimalInterpreter v691154237242 :=
  cost_cut false 2 (by decide)
private def v691154236378 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))
private theorem no_v691154236378 : ¬ MinimalInterpreter v691154236378 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v691154234842 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))))
private theorem no_v691154234842 : ¬ MinimalInterpreter v691154234842 :=
  cost_cut false 2 (by decide)
private def v691154390842 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v691154390842 : ¬ MinimalInterpreter v691154390842 :=
  cost_cut false 2 (by decide)
private def v691154389978 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v691154389978 : ¬ MinimalInterpreter v691154389978 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))
private def v691154980666 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v691154980666 : ¬ MinimalInterpreter v691154980666 :=
  cost_cut false 2 (by decide)
private def v691154979802 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v691154979802 : ¬ MinimalInterpreter v691154979802 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem row430 : BadRow (row ⟨1,2,2,3,4,3⟩ [1,1] [0,2,1,0]) := by
  have h : row ⟨1,2,2,3,4,3⟩ [1,1] [0,2,1,0] = [v691154243386,v691154242522,v691154237242,v691154236378,v691154234842,v691154390842,v691154389978,v691154980666,v691154979802] := by decide +kernel
  rw [h]
  exact (.cons (no_v691154243386) (.cons (no_v691154242522) (.cons (no_v691154237242) (.cons (no_v691154236378) (.cons (no_v691154234842) (.cons (no_v691154390842) (.cons (no_v691154389978) (.cons (no_v691154980666) (.cons (no_v691154979802) .nil)))))))))

theorem row431 : BadRow (row ⟨1,2,2,3,4,3⟩ [1,1] [0,3,0,0]) := by
  have h : row ⟨1,2,2,3,4,3⟩ [1,1] [0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
