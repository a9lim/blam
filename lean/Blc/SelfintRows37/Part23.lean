import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
private def v37681745722 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v37681745722 : ¬ MinimalInterpreter v37681745722 :=
  chain_cut false 2 (by decide)

private def v37681744858 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v37681744858 : ¬ MinimalInterpreter v37681744858 :=
  chain_cut false 2 (by decide)

private def v37681723194 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v37681723194 : ¬ MinimalInterpreter v37681723194 :=
  chain_cut false 2 (by decide)

private def v37681722330 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v37681722330 : ¬ MinimalInterpreter v37681722330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37681716698 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v37681716698 : ¬ MinimalInterpreter v37681716698 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37682089786 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v37682089786 : ¬ MinimalInterpreter v37682089786 :=
  cost_cut false 3 (by decide)

private def v37682088922 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v37682088922 : ¬ MinimalInterpreter v37682088922 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem row138 : BadRow (row ⟨1,2,1,2,4,4⟩ [0,1] [1,2,1,0]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [0,1] [1,2,1,0] = [v37681745722,v37681744858,v37681723194,v37681722330,v37681716698,v37682089786,v37682088922] := by decide
  rw [h]
  exact (.cons (no_v37681745722) (.cons (no_v37681744858) (.cons (no_v37681723194) (.cons (no_v37681722330) (.cons (no_v37681716698) (.cons (no_v37682089786) (.cons (no_v37682088922) .nil)))))))

theorem row139 : BadRow (row ⟨1,2,1,2,4,4⟩ [0,1] [2,0,0,2]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [0,1] [2,0,0,2] = [] := by decide
  rw [h]
  exact .nil

private def v37681751670 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v37681751670 : ¬ MinimalInterpreter v37681751670 :=
  chain_cut false 2 (by decide)

private def v37681751478 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v37681751478 : ¬ MinimalInterpreter v37681751478 :=
  chain_cut false 2 (by decide)

private def v37681724022 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v37681724022 : ¬ MinimalInterpreter v37681724022 :=
  chain_cut false 2 (by decide)

private def v37681723830 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v37681723830 : ¬ MinimalInterpreter v37681723830 :=
  chain_cut false 2 (by decide)

private def v37681716918 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v37681716918 : ¬ MinimalInterpreter v37681716918 :=
  chain_cut false 2 (by decide)

theorem row140 : BadRow (row ⟨1,2,1,2,4,4⟩ [0,1] [2,0,1,1]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [0,1] [2,0,1,1] = [v37681751670,v37681751478,v37681724022,v37681723830,v37681716918] := by decide
  rw [h]
  exact (.cons (no_v37681751670) (.cons (no_v37681751478) (.cons (no_v37681724022) (.cons (no_v37681723830) (.cons (no_v37681716918) .nil)))))

theorem row141 : BadRow (row ⟨1,2,1,2,4,4⟩ [0,1] [2,0,2,0]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [0,1] [2,0,2,0] = [] := by decide
  rw [h]
  exact .nil

private def v37681751862 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1))))))))
private theorem no_v37681751862 : ¬ MinimalInterpreter v37681751862 :=
  chain_cut false 2 (by decide)

private def v37681751510 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1)))))))
private theorem no_v37681751510 : ¬ MinimalInterpreter v37681751510 :=
  chain_cut false 2 (by decide)

private def v37681724214 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1)))))))
private theorem no_v37681724214 : ¬ MinimalInterpreter v37681724214 :=
  chain_cut false 2 (by decide)

private def v37681723862 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1))))))
private theorem no_v37681723862 : ¬ MinimalInterpreter v37681723862 :=
  chain_cut false 2 (by decide)

private def v37681716950 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1))))))
private theorem no_v37681716950 : ¬ MinimalInterpreter v37681716950 :=
  chain_cut false 2 (by decide)

theorem row142 : BadRow (row ⟨1,2,1,2,4,4⟩ [0,1] [2,1,0,1]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [0,1] [2,1,0,1] = [v37681751862,v37681751510,v37681724214,v37681723862,v37681716950] := by decide
  rw [h]
  exact (.cons (no_v37681751862) (.cons (no_v37681751510) (.cons (no_v37681724214) (.cons (no_v37681723862) (.cons (no_v37681716950) .nil)))))

private def v37681751866 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0))))))))
private theorem no_v37681751866 : ¬ MinimalInterpreter v37681751866 :=
  chain_cut false 2 (by decide)

private def v37681751514 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
private theorem no_v37681751514 : ¬ MinimalInterpreter v37681751514 :=
  chain_cut false 2 (by decide)

private def v37681724218 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0)))))))
private theorem no_v37681724218 : ¬ MinimalInterpreter v37681724218 :=
  chain_cut false 2 (by decide)

private def v37681723866 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))
private theorem no_v37681723866 : ¬ MinimalInterpreter v37681723866 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37681716954 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))
private theorem no_v37681716954 : ¬ MinimalInterpreter v37681716954 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row143 : BadRow (row ⟨1,2,1,2,4,4⟩ [0,1] [2,1,1,0]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [0,1] [2,1,1,0] = [v37681751866,v37681751514,v37681724218,v37681723866,v37681716954] := by decide
  rw [h]
  exact (.cons (no_v37681751866) (.cons (no_v37681751514) (.cons (no_v37681724218) (.cons (no_v37681723866) (.cons (no_v37681716954) .nil)))))

end Blc.SelfintSingleObject.Rows37
