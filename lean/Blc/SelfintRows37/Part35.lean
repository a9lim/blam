import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row210 : BadRow (row ⟨2,2,0,2,4,3⟩ [0,0] [1,1,0,1]) := by
  have h : row ⟨2,2,0,2,4,3⟩ [0,0] [1,1,0,1] = [] := by decide
  rw [h]
  exact .nil

theorem row211 : BadRow (row ⟨2,2,0,2,4,3⟩ [0,0] [1,1,1,0]) := by
  have h : row ⟨2,2,0,2,4,3⟩ [0,0] [1,1,1,0] = [] := by decide
  rw [h]
  exact .nil

private def v34577901466 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v34577901466 : ¬ MinimalInterpreter v34577901466 :=
  cost_cut false 1 (by decide)

private def v34577901034 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v34577901034 : ¬ MinimalInterpreter v34577901034 :=
  cost_cut false 1 (by decide)

private def v34577890202 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v34577890202 : ¬ MinimalInterpreter v34577890202 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v34577889770 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v34577889770 : ¬ MinimalInterpreter v34577889770 :=
  cost_cut false 1 (by decide)

private def v34577886954 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v34577886954 : ¬ MinimalInterpreter v34577886954 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row212 : BadRow (row ⟨2,2,0,2,4,3⟩ [0,0] [1,2,0,0]) := by
  have h : row ⟨2,2,0,2,4,3⟩ [0,0] [1,2,0,0] = [v34577901466,v34577901034,v34577890202,v34577889770,v34577886954] := by decide
  rw [h]
  exact (.cons (no_v34577901466) (.cons (no_v34577901034) (.cons (no_v34577890202) (.cons (no_v34577889770) (.cons (no_v34577886954) .nil)))))

private def v34577904438 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v34577904438 : ¬ MinimalInterpreter v34577904438 :=
  cost_cut false 1 (by decide)

private def v34577904342 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v34577904342 : ¬ MinimalInterpreter v34577904342 :=
  cost_cut false 1 (by decide)

private def v34577890614 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v34577890614 : ¬ MinimalInterpreter v34577890614 :=
  cost_cut false 1 (by decide)

private def v34577890518 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v34577890518 : ¬ MinimalInterpreter v34577890518 :=
  cost_cut false 1 (by decide)

private def v34577887062 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v34577887062 : ¬ MinimalInterpreter v34577887062 :=
  cost_cut false 1 (by decide)

theorem row213 : BadRow (row ⟨2,2,0,2,4,3⟩ [0,0] [2,0,0,1]) := by
  have h : row ⟨2,2,0,2,4,3⟩ [0,0] [2,0,0,1] = [v34577904438,v34577904342,v34577890614,v34577890518,v34577887062] := by decide
  rw [h]
  exact (.cons (no_v34577904438) (.cons (no_v34577904342) (.cons (no_v34577890614) (.cons (no_v34577890518) (.cons (no_v34577887062) .nil)))))

private def v34577904442 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v34577904442 : ¬ MinimalInterpreter v34577904442 :=
  cost_cut false 1 (by decide)

private def v34577904346 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v34577904346 : ¬ MinimalInterpreter v34577904346 :=
  cost_cut false 1 (by decide)

private def v34577890618 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v34577890618 : ¬ MinimalInterpreter v34577890618 :=
  cost_cut false 1 (by decide)

private def v34577890522 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v34577890522 : ¬ MinimalInterpreter v34577890522 :=
  cost_cut false 1 (by decide)

private def v34577887066 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v34577887066 : ¬ MinimalInterpreter v34577887066 :=
  cost_cut false 1 (by decide)

theorem row214 : BadRow (row ⟨2,2,0,2,4,3⟩ [0,0] [2,0,1,0]) := by
  have h : row ⟨2,2,0,2,4,3⟩ [0,0] [2,0,1,0] = [v34577904442,v34577904346,v34577890618,v34577890522,v34577887066] := by decide
  rw [h]
  exact (.cons (no_v34577904442) (.cons (no_v34577904346) (.cons (no_v34577890618) (.cons (no_v34577890522) (.cons (no_v34577887066) .nil)))))

private def v34577904538 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v34577904538 : ¬ MinimalInterpreter v34577904538 :=
  cost_cut false 1 (by decide)

private def v34577904362 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v34577904362 : ¬ MinimalInterpreter v34577904362 :=
  cost_cut false 1 (by decide)

private def v34577890714 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v34577890714 : ¬ MinimalInterpreter v34577890714 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v34577890538 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v34577890538 : ¬ MinimalInterpreter v34577890538 :=
  cost_cut false 1 (by decide)

private def v34577887082 : Term := (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v34577887082 : ¬ MinimalInterpreter v34577887082 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.lam (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row215 : BadRow (row ⟨2,2,0,2,4,3⟩ [0,0] [2,1,0,0]) := by
  have h : row ⟨2,2,0,2,4,3⟩ [0,0] [2,1,0,0] = [v34577904538,v34577904362,v34577890714,v34577890538,v34577887082] := by decide
  rw [h]
  exact (.cons (no_v34577904538) (.cons (no_v34577904362) (.cons (no_v34577890714) (.cons (no_v34577890538) (.cons (no_v34577887082) .nil)))))

end Blc.SelfintSingleObject.Rows37
