import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row174 : BadRow (row ⟨1,2,2,2,4,3⟩ [1,1] [1,1,0,1]) := by
  have h : row ⟨1,2,2,2,4,3⟩ [1,1] [1,1,0,1] = [] := by decide
  rw [h]
  exact .nil

theorem row175 : BadRow (row ⟨1,2,2,2,4,3⟩ [1,1] [1,1,1,0]) := by
  have h : row ⟨1,2,2,2,4,3⟩ [1,1] [1,1,1,0] = [] := by decide
  rw [h]
  exact .nil

private def v35349653402 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private theorem no_v35349653402 : ¬ MinimalInterpreter v35349653402 :=
  chain_cut false 2 (by decide)

private def v35349652970 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private theorem no_v35349652970 : ¬ MinimalInterpreter v35349652970 :=
  chain_cut false 2 (by decide)

private def v35349642138 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private theorem no_v35349642138 : ¬ MinimalInterpreter v35349642138 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v35349641706 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private theorem no_v35349641706 : ¬ MinimalInterpreter v35349641706 :=
  chain_cut false 2 (by decide)

private def v35349638890 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private theorem no_v35349638890 : ¬ MinimalInterpreter v35349638890 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row176 : BadRow (row ⟨1,2,2,2,4,3⟩ [1,1] [1,2,0,0]) := by
  have h : row ⟨1,2,2,2,4,3⟩ [1,1] [1,2,0,0] = [v35349653402,v35349652970,v35349642138,v35349641706,v35349638890] := by decide
  rw [h]
  exact (.cons (no_v35349653402) (.cons (no_v35349652970) (.cons (no_v35349642138) (.cons (no_v35349641706) (.cons (no_v35349638890) .nil)))))

private def v35349656374 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v35349656374 : ¬ MinimalInterpreter v35349656374 :=
  chain_cut false 2 (by decide)

private def v35349656278 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v35349656278 : ¬ MinimalInterpreter v35349656278 :=
  chain_cut false 2 (by decide)

private def v35349642550 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v35349642550 : ¬ MinimalInterpreter v35349642550 :=
  chain_cut false 2 (by decide)

private def v35349642454 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v35349642454 : ¬ MinimalInterpreter v35349642454 :=
  chain_cut false 2 (by decide)

private def v35349638998 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v35349638998 : ¬ MinimalInterpreter v35349638998 :=
  chain_cut false 2 (by decide)

theorem row177 : BadRow (row ⟨1,2,2,2,4,3⟩ [1,1] [2,0,0,1]) := by
  have h : row ⟨1,2,2,2,4,3⟩ [1,1] [2,0,0,1] = [v35349656374,v35349656278,v35349642550,v35349642454,v35349638998] := by decide
  rw [h]
  exact (.cons (no_v35349656374) (.cons (no_v35349656278) (.cons (no_v35349642550) (.cons (no_v35349642454) (.cons (no_v35349638998) .nil)))))

private def v35349656378 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v35349656378 : ¬ MinimalInterpreter v35349656378 :=
  chain_cut false 2 (by decide)

private def v35349656282 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v35349656282 : ¬ MinimalInterpreter v35349656282 :=
  chain_cut false 2 (by decide)

private def v35349642554 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v35349642554 : ¬ MinimalInterpreter v35349642554 :=
  chain_cut false 2 (by decide)

private def v35349642458 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v35349642458 : ¬ MinimalInterpreter v35349642458 :=
  chain_cut false 2 (by decide)

private def v35349639002 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v35349639002 : ¬ MinimalInterpreter v35349639002 :=
  chain_cut false 2 (by decide)

theorem row178 : BadRow (row ⟨1,2,2,2,4,3⟩ [1,1] [2,0,1,0]) := by
  have h : row ⟨1,2,2,2,4,3⟩ [1,1] [2,0,1,0] = [v35349656378,v35349656282,v35349642554,v35349642458,v35349639002] := by decide
  rw [h]
  exact (.cons (no_v35349656378) (.cons (no_v35349656282) (.cons (no_v35349642554) (.cons (no_v35349642458) (.cons (no_v35349639002) .nil)))))

private def v35349656474 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v35349656474 : ¬ MinimalInterpreter v35349656474 :=
  chain_cut false 2 (by decide)

private def v35349656298 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v35349656298 : ¬ MinimalInterpreter v35349656298 :=
  chain_cut false 2 (by decide)

private def v35349642650 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v35349642650 : ¬ MinimalInterpreter v35349642650 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v35349642474 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v35349642474 : ¬ MinimalInterpreter v35349642474 :=
  chain_cut false 2 (by decide)

private def v35349639018 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v35349639018 : ¬ MinimalInterpreter v35349639018 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem row179 : BadRow (row ⟨1,2,2,2,4,3⟩ [1,1] [2,1,0,0]) := by
  have h : row ⟨1,2,2,2,4,3⟩ [1,1] [2,1,0,0] = [v35349656474,v35349656298,v35349642650,v35349642474,v35349639018] := by decide
  rw [h]
  exact (.cons (no_v35349656474) (.cons (no_v35349656298) (.cons (no_v35349642650) (.cons (no_v35349642474) (.cons (no_v35349639018) .nil)))))

end Blc.SelfintSingleObject.Rows37
