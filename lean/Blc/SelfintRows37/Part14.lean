import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v37849654894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 2)))))))))
private theorem no_v37849654894 : ¬ MinimalInterpreter v37849654894 :=
  chain_cut false 2 (by decide)

private def v37849654702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 2))))))))
private theorem no_v37849654702 : ¬ MinimalInterpreter v37849654702 :=
  chain_cut false 2 (by decide)

private def v37849594478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 2))))))))
private theorem no_v37849594478 : ¬ MinimalInterpreter v37849594478 :=
  chain_cut false 2 (by decide)

private def v37849594286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 2)))))))
private theorem no_v37849594286 : ¬ MinimalInterpreter v37849594286 :=
  chain_cut false 2 (by decide)

private def v37849579182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 2)))))))
private theorem no_v37849579182 : ¬ MinimalInterpreter v37849579182 :=
  chain_cut false 2 (by decide)

theorem row84 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [3,0,0,2]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [3,0,0,2] = [v37849654894,v37849654702,v37849594478,v37849594286,v37849579182] := by decide
  rw [h]
  exact (.cons (no_v37849654894) (.cons (no_v37849654702) (.cons (no_v37849594478) (.cons (no_v37849594286) (.cons (no_v37849579182) .nil)))))

private def v37849654902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 1)))))))))
private theorem no_v37849654902 : ¬ MinimalInterpreter v37849654902 :=
  chain_cut false 2 (by decide)

private def v37849654710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.var 1))))))))
private theorem no_v37849654710 : ¬ MinimalInterpreter v37849654710 :=
  chain_cut false 2 (by decide)

private def v37849594486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 1))))))))
private theorem no_v37849594486 : ¬ MinimalInterpreter v37849594486 :=
  chain_cut false 2 (by decide)

private def v37849594294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.var 1)))))))
private theorem no_v37849594294 : ¬ MinimalInterpreter v37849594294 :=
  chain_cut false 2 (by decide)

private def v37849579190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.var 1)))))))
private theorem no_v37849579190 : ¬ MinimalInterpreter v37849579190 :=
  chain_cut false 2 (by decide)

theorem row85 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [3,0,1,1]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [3,0,1,1] = [v37849654902,v37849654710,v37849594486,v37849594294,v37849579190] := by decide
  rw [h]
  exact (.cons (no_v37849654902) (.cons (no_v37849654710) (.cons (no_v37849594486) (.cons (no_v37849594294) (.cons (no_v37849579190) .nil)))))

private def v37849654906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 2) (.var 0)))))))))
private theorem no_v37849654906 : ¬ MinimalInterpreter v37849654906 :=
  chain_cut false 2 (by decide)

private def v37849654714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 2)) (.var 0))))))))
private theorem no_v37849654714 : ¬ MinimalInterpreter v37849654714 :=
  chain_cut false 2 (by decide)

private def v37849594490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 2) (.var 0))))))))
private theorem no_v37849594490 : ¬ MinimalInterpreter v37849594490 :=
  chain_cut false 2 (by decide)

private def v37849594298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 2))) (.var 0)))))))
private theorem no_v37849594298 : ¬ MinimalInterpreter v37849594298 :=
  chain_cut false 2 (by decide)

private def v37849579194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 2)) (.var 0)))))))
private theorem no_v37849579194 : ¬ MinimalInterpreter v37849579194 :=
  chain_cut false 2 (by decide)

theorem row86 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [3,0,2,0]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [3,0,2,0] = [v37849654906,v37849654714,v37849594490,v37849594298,v37849579194] := by decide
  rw [h]
  exact (.cons (no_v37849654906) (.cons (no_v37849654714) (.cons (no_v37849594490) (.cons (no_v37849594298) (.cons (no_v37849579194) .nil)))))

private def v37849655094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 0) (.var 1)))))))))
private theorem no_v37849655094 : ¬ MinimalInterpreter v37849655094 :=
  chain_cut false 2 (by decide)

private def v37849654742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 0)) (.var 1))))))))
private theorem no_v37849654742 : ¬ MinimalInterpreter v37849654742 :=
  chain_cut false 2 (by decide)

private def v37849594678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 0) (.var 1))))))))
private theorem no_v37849594678 : ¬ MinimalInterpreter v37849594678 :=
  chain_cut false 2 (by decide)

private def v37849594326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 0))) (.var 1)))))))
private theorem no_v37849594326 : ¬ MinimalInterpreter v37849594326 :=
  chain_cut false 2 (by decide)

private def v37849579222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 0)) (.var 1)))))))
private theorem no_v37849579222 : ¬ MinimalInterpreter v37849579222 :=
  chain_cut false 2 (by decide)

theorem row87 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [3,1,0,1]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [3,1,0,1] = [v37849655094,v37849654742,v37849594678,v37849594326,v37849579222] := by decide
  rw [h]
  exact (.cons (no_v37849655094) (.cons (no_v37849654742) (.cons (no_v37849594678) (.cons (no_v37849594326) (.cons (no_v37849579222) .nil)))))

private def v37849655098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v37849655098 : ¬ MinimalInterpreter v37849655098 :=
  chain_cut false 2 (by decide)

private def v37849654746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v37849654746 : ¬ MinimalInterpreter v37849654746 :=
  chain_cut false 2 (by decide)

private def v37849594682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v37849594682 : ¬ MinimalInterpreter v37849594682 :=
  chain_cut false 2 (by decide)

private def v37849594330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v37849594330 : ¬ MinimalInterpreter v37849594330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 1) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 2) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v37849579226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v37849579226 : ¬ MinimalInterpreter v37849579226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 1)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 2) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 3) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

theorem row88 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [3,1,1,0]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [3,1,1,0] = [v37849655098,v37849654746,v37849594682,v37849594330,v37849579226] := by decide
  rw [h]
  exact (.cons (no_v37849655098) (.cons (no_v37849654746) (.cons (no_v37849594682) (.cons (no_v37849594330) (.cons (no_v37849579226) .nil)))))

private def v37849655194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 2) (.app (.var 0) (.var 0)))))))))
private theorem no_v37849655194 : ¬ MinimalInterpreter v37849655194 :=
  chain_cut false 2 (by decide)

private def v37849654762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 2) (.var 0)) (.var 0))))))))
private theorem no_v37849654762 : ¬ MinimalInterpreter v37849654762 :=
  chain_cut false 2 (by decide)

private def v37849594778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0))))))))
private theorem no_v37849594778 : ¬ MinimalInterpreter v37849594778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 3) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v37849594346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 2) (.var 0))) (.var 0)))))))
private theorem no_v37849594346 : ¬ MinimalInterpreter v37849594346 :=
  chain_cut false 2 (by decide)

private def v37849579242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0)))))))
private theorem no_v37849579242 : ¬ MinimalInterpreter v37849579242 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 3) (.var 2)) (.var 0)) (.var 0)) (.app (.var 2) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem row89 : BadRow (row ⟨0,2,0,3,4,5⟩ [0,0] [3,2,0,0]) := by
  have h : row ⟨0,2,0,3,4,5⟩ [0,0] [3,2,0,0] = [v37849655194,v37849654762,v37849594778,v37849594346,v37849579242] := by decide
  rw [h]
  exact (.cons (no_v37849655194) (.cons (no_v37849654762) (.cons (no_v37849594778) (.cons (no_v37849594346) (.cons (no_v37849579242) .nil)))))

end Blc.SelfintSingleObject.Rows37
