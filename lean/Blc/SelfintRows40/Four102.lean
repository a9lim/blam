import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four714 : BadRow (markedRow ⟨2,2,0,2,4,6⟩ [0,0] [2,2,1,1]) := by
  have h : markedRow ⟨2,2,0,2,4,6⟩ [0,0] [2,2,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four715 : BadRow (markedRow ⟨2,2,0,2,4,6⟩ [0,0] [2,2,2,0]) := by
  have h : markedRow ⟨2,2,0,2,4,6⟩ [0,0] [2,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381033523694 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2))))))))
private theorem no_v1381033523694 : ¬ MinimalInterpreter v1381033523694 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 2)))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1381033520878 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2)))))))
private theorem no_v1381033520878 : ¬ MinimalInterpreter v1381033520878 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 2))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381033499118 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 2)))))))
private theorem no_v1381033499118 : ¬ MinimalInterpreter v1381033499118 :=
  cost_cut false 1 (by decide)

private def v1381033496302 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 2))))))
private theorem no_v1381033496302 : ¬ MinimalInterpreter v1381033496302 :=
  cost_cut false 1 (by decide)

private def v1381033490158 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 2))))))
private theorem no_v1381033490158 : ¬ MinimalInterpreter v1381033490158 :=
  cost_cut false 1 (by decide)

theorem four716 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [0,1] [0,1,2,2]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [0,1] [0,1,2,2] = [v1381033523694,v1381033520878,v1381033499118,v1381033496302,v1381033490158] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033523694) (.cons (no_v1381033520878) (.cons (no_v1381033499118) (.cons (no_v1381033496302) (.cons (no_v1381033490158) .nil)))))

private def v1381033524462 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2))))))))
private theorem no_v1381033524462 : ¬ MinimalInterpreter v1381033524462 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 2)))) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381033521006 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2)))))))
private theorem no_v1381033521006 : ¬ MinimalInterpreter v1381033521006 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 2))) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381033499886 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 2)))))))
private theorem no_v1381033499886 : ¬ MinimalInterpreter v1381033499886 :=
  cost_cut false 1 (by decide)

private def v1381033496430 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 2))))))
private theorem no_v1381033496430 : ¬ MinimalInterpreter v1381033496430 :=
  cost_cut false 1 (by decide)

private def v1381033490286 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 2))))))
private theorem no_v1381033490286 : ¬ MinimalInterpreter v1381033490286 :=
  cost_cut false 1 (by decide)

theorem four717 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [0,1] [0,2,1,2]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [0,1] [0,2,1,2] = [v1381033524462,v1381033521006,v1381033499886,v1381033496430,v1381033490286] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033524462) (.cons (no_v1381033521006) (.cons (no_v1381033499886) (.cons (no_v1381033496430) (.cons (no_v1381033490286) .nil)))))

private def v1381033524470 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1))))))))
private theorem no_v1381033524470 : ¬ MinimalInterpreter v1381033524470 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 2) (.var 1)))) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381033521014 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1)))))))
private theorem no_v1381033521014 : ¬ MinimalInterpreter v1381033521014 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 2)) (.var 1))) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1381033499894 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 2) (.var 1)))))))
private theorem no_v1381033499894 : ¬ MinimalInterpreter v1381033499894 :=
  cost_cut false 1 (by decide)

private def v1381033496438 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 2))) (.var 1))))))
private theorem no_v1381033496438 : ¬ MinimalInterpreter v1381033496438 :=
  cost_cut false 1 (by decide)

private def v1381033490294 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 2)) (.var 1))))))
private theorem no_v1381033490294 : ¬ MinimalInterpreter v1381033490294 :=
  cost_cut false 1 (by decide)

theorem four718 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [0,1] [0,2,2,1]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [0,1] [0,2,2,1] = [v1381033524470,v1381033521014,v1381033499894,v1381033496438,v1381033490294] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033524470) (.cons (no_v1381033521014) (.cons (no_v1381033499894) (.cons (no_v1381033496438) (.cons (no_v1381033490294) .nil)))))

private def v1381033548270 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 2))))))))
private theorem no_v1381033548270 : ¬ MinimalInterpreter v1381033548270 :=
  cost_cut false 1 (by decide)

private def v1381033547502 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 2)))))))
private theorem no_v1381033547502 : ¬ MinimalInterpreter v1381033547502 :=
  cost_cut false 1 (by decide)

private def v1381033503214 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 2)))))))
private theorem no_v1381033503214 : ¬ MinimalInterpreter v1381033503214 :=
  cost_cut false 1 (by decide)

private def v1381033502446 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 2))))))
private theorem no_v1381033502446 : ¬ MinimalInterpreter v1381033502446 :=
  cost_cut false 1 (by decide)

private def v1381033491182 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 2))))))
private theorem no_v1381033491182 : ¬ MinimalInterpreter v1381033491182 :=
  cost_cut false 1 (by decide)

theorem four719 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [0,1] [1,0,2,2]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [0,1] [1,0,2,2] = [v1381033548270,v1381033547502,v1381033503214,v1381033502446,v1381033491182] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381033548270) (.cons (no_v1381033547502) (.cons (no_v1381033503214) (.cons (no_v1381033502446) (.cons (no_v1381033491182) .nil)))))

theorem four720 : BadRow (markedRow ⟨2,2,1,2,4,5⟩ [0,1] [1,1,1,2]) := by
  have h : markedRow ⟨2,2,1,2,4,5⟩ [0,1] [1,1,1,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
