import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701154434670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.app (.var 0) (.var 2)))))))))
private theorem no_v701154434670 : ¬ MinimalInterpreter v701154434670 :=
  chain_cut false 2 (by decide)
private def v701154432942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 2) (.var 0)) (.var 2))))))))
private theorem no_v701154432942 : ¬ MinimalInterpreter v701154432942 :=
  chain_cut false 2 (by decide)
private def v701154193006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 2))))))))
private theorem no_v701154193006 : ¬ MinimalInterpreter v701154193006 :=
  chain_cut false 2 (by decide)
private def v701154191278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 0))) (.var 2)))))))
private theorem no_v701154191278 : ¬ MinimalInterpreter v701154191278 :=
  chain_cut false 2 (by decide)
private def v701154130862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 2)))))))
private theorem no_v701154130862 : ¬ MinimalInterpreter v701154130862 :=
  chain_cut false 2 (by decide)
theorem row102 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [3,2,0,2]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [3,2,0,2] = [v701154434670,v701154432942,v701154193006,v701154191278,v701154130862] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154434670) (.cons (no_v701154432942) (.cons (no_v701154193006) (.cons (no_v701154191278) (.cons (no_v701154130862) .nil)))))

private def v701154434678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.app (.var 1) (.var 1)))))))))
private theorem no_v701154434678 : ¬ MinimalInterpreter v701154434678 :=
  chain_cut false 2 (by decide)
private def v701154432950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 2) (.var 1)) (.var 1))))))))
private theorem no_v701154432950 : ¬ MinimalInterpreter v701154432950 :=
  chain_cut false 2 (by decide)
private def v701154193014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 1) (.var 1))))))))
private theorem no_v701154193014 : ¬ MinimalInterpreter v701154193014 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.var 2) (.app (.var 1) (.var 1))))) (so_dead (by decide) (.app (.app (.var 3) (.var 2)) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701154191286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 1))) (.var 1)))))))
private theorem no_v701154191286 : ¬ MinimalInterpreter v701154191286 :=
  chain_cut false 2 (by decide)
private def v701154130870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 1)) (.var 1)))))))
private theorem no_v701154130870 : ¬ MinimalInterpreter v701154130870 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 1)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 1)) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 1)))) (so_dead (by decide) (.app (.app (.app (.var 3) (.var 2)) (.var 1)) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem row103 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [3,2,1,1]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [3,2,1,1] = [v701154434678,v701154432950,v701154193014,v701154191286,v701154130870] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154434678) (.cons (no_v701154432950) (.cons (no_v701154193014) (.cons (no_v701154191286) (.cons (no_v701154130870) .nil)))))

private def v701154434682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.app (.var 2) (.var 0)))))))))
private theorem no_v701154434682 : ¬ MinimalInterpreter v701154434682 :=
  chain_cut false 2 (by decide)
private def v701154432954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 2) (.var 2)) (.var 0))))))))
private theorem no_v701154432954 : ¬ MinimalInterpreter v701154432954 :=
  chain_cut false 2 (by decide)
private def v701154193018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 2) (.var 0))))))))
private theorem no_v701154193018 : ¬ MinimalInterpreter v701154193018 :=
  chain_cut false 2 (by decide)
private def v701154191290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 2))) (.var 0)))))))
private theorem no_v701154191290 : ¬ MinimalInterpreter v701154191290 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 2))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.app (.var 1) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.app (.var 2) (.var 2))) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
private def v701154130874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 2)) (.var 0)))))))
private theorem no_v701154130874 : ¬ MinimalInterpreter v701154130874 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 2)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.app (.var 2) (.var 1)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 3) (.var 2)) (.var 2)) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem row104 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [3,2,2,0]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [3,2,2,0] = [v701154434682,v701154432954,v701154193018,v701154191290,v701154130874] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154434682) (.cons (no_v701154432954) (.cons (no_v701154193018) (.cons (no_v701154191290) (.cons (no_v701154130874) .nil)))))

private def v701154434870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 3) (.app (.var 0) (.var 1)))))))))
private theorem no_v701154434870 : ¬ MinimalInterpreter v701154434870 :=
  chain_cut false 4 (by decide)
private def v701154432982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 3) (.var 0)) (.var 1))))))))
private theorem no_v701154432982 : ¬ MinimalInterpreter v701154432982 :=
  chain_cut false 4 (by decide)
private def v701154193206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 3)) (.app (.var 0) (.var 1))))))))
private theorem no_v701154193206 : ¬ MinimalInterpreter v701154193206 :=
  w_cut false 0 (by decide)
private def v701154191318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 3) (.var 0))) (.var 1)))))))
private theorem no_v701154191318 : ¬ MinimalInterpreter v701154191318 :=
  chain_cut false 5 (by decide)
private def v701154130902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 3)) (.var 0)) (.var 1)))))))
private theorem no_v701154130902 : ¬ MinimalInterpreter v701154130902 :=
  w_cut false 0 (by decide)
theorem row105 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [3,3,0,1]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [3,3,0,1] = [v701154434870,v701154432982,v701154193206,v701154191318,v701154130902] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154434870) (.cons (no_v701154432982) (.cons (no_v701154193206) (.cons (no_v701154191318) (.cons (no_v701154130902) .nil)))))

private def v701154434874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 3) (.app (.var 1) (.var 0)))))))))
private theorem no_v701154434874 : ¬ MinimalInterpreter v701154434874 :=
  chain_cut false 4 (by decide)
private def v701154432986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 3) (.var 1)) (.var 0))))))))
private theorem no_v701154432986 : ¬ MinimalInterpreter v701154432986 :=
  chain_cut false 4 (by decide)
private def v701154193210 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 3)) (.app (.var 1) (.var 0))))))))
private theorem no_v701154193210 : ¬ MinimalInterpreter v701154193210 :=
  w_cut false 0 (by decide)
private def v701154191322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 3) (.var 1))) (.var 0)))))))
private theorem no_v701154191322 : ¬ MinimalInterpreter v701154191322 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 3) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 2) (.app (.var 2) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.app (.var 3) (.var 1))) (.var 0)) (.app (.var 2) (.app (.var 2) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))
private def v701154130906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 3)) (.var 1)) (.var 0)))))))
private theorem no_v701154130906 : ¬ MinimalInterpreter v701154130906 :=
  w_cut false 0 (by decide)
theorem row106 : BadRow (row ⟨0,2,0,3,4,7⟩ [0,0] [3,3,1,0]) := by
  have h : row ⟨0,2,0,3,4,7⟩ [0,0] [3,3,1,0] = [v701154434874,v701154432986,v701154193210,v701154191322,v701154130906] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154434874) (.cons (no_v701154432986) (.cons (no_v701154193210) (.cons (no_v701154191322) (.cons (no_v701154130906) .nil)))))

theorem row107 : BadRow (row ⟨0,2,0,3,5,3⟩ [0,0] [0,0,0,0,3]) := by
  have h : row ⟨0,2,0,3,5,3⟩ [0,0] [0,0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
