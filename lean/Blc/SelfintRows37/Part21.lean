import Blc.SelfintTwoPending

namespace Blc.SelfintSingleObject.Rows37
open Term SelfintWireCost SourceRefutations OperandGrammar
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 12000000
theorem row126 : BadRow (row ⟨1,2,1,2,4,4⟩ [0,1] [0,0,2,2]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [0,1] [0,0,2,2] = [] := by decide
  rw [h]
  exact .nil

private def v37681732846 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v37681732846 : ¬ MinimalInterpreter v37681732846 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37681731438 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v37681731438 : ¬ MinimalInterpreter v37681731438 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37681720558 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v37681720558 : ¬ MinimalInterpreter v37681720558 :=
  chain_cut false 2 (by decide)

private def v37681719150 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v37681719150 : ¬ MinimalInterpreter v37681719150 :=
  chain_cut false 2 (by decide)

private def v37681716078 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v37681716078 : ¬ MinimalInterpreter v37681716078 :=
  chain_cut false 2 (by decide)

theorem row127 : BadRow (row ⟨1,2,1,2,4,4⟩ [0,1] [0,1,1,2]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [0,1] [0,1,1,2] = [v37681732846,v37681731438,v37681720558,v37681719150,v37681716078] := by decide
  rw [h]
  exact (.cons (no_v37681732846) (.cons (no_v37681731438) (.cons (no_v37681720558) (.cons (no_v37681719150) (.cons (no_v37681716078) .nil)))))

private def v37681732854 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))
private theorem no_v37681732854 : ¬ MinimalInterpreter v37681732854 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37681731446 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))
private theorem no_v37681731446 : ¬ MinimalInterpreter v37681731446 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37681720566 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1)))))))
private theorem no_v37681720566 : ¬ MinimalInterpreter v37681720566 :=
  chain_cut false 2 (by decide)

private def v37681719158 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1))))))
private theorem no_v37681719158 : ¬ MinimalInterpreter v37681719158 :=
  chain_cut false 2 (by decide)

private def v37681716086 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1))))))
private theorem no_v37681716086 : ¬ MinimalInterpreter v37681716086 :=
  chain_cut false 2 (by decide)

theorem row128 : BadRow (row ⟨1,2,1,2,4,4⟩ [0,1] [0,1,2,1]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [0,1] [0,1,2,1] = [v37681732854,v37681731446,v37681720566,v37681719158,v37681716086] := by decide
  rw [h]
  exact (.cons (no_v37681732854) (.cons (no_v37681731446) (.cons (no_v37681720566) (.cons (no_v37681719158) (.cons (no_v37681716086) .nil)))))

theorem row129 : BadRow (row ⟨1,2,1,2,4,4⟩ [0,1] [0,2,0,2]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [0,1] [0,2,0,2] = [] := by decide
  rw [h]
  exact .nil

private def v37681733238 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))
private theorem no_v37681733238 : ¬ MinimalInterpreter v37681733238 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37681731510 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))
private theorem no_v37681731510 : ¬ MinimalInterpreter v37681731510 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v37681720950 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1)))))))
private theorem no_v37681720950 : ¬ MinimalInterpreter v37681720950 :=
  chain_cut false 2 (by decide)

private def v37681719222 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1))))))
private theorem no_v37681719222 : ¬ MinimalInterpreter v37681719222 :=
  chain_cut false 2 (by decide)

private def v37681716150 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1))))))
private theorem no_v37681716150 : ¬ MinimalInterpreter v37681716150 :=
  chain_cut false 2 (by decide)

theorem row130 : BadRow (row ⟨1,2,1,2,4,4⟩ [0,1] [0,2,1,1]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [0,1] [0,2,1,1] = [v37681733238,v37681731510,v37681720950,v37681719222,v37681716150] := by decide
  rw [h]
  exact (.cons (no_v37681733238) (.cons (no_v37681731510) (.cons (no_v37681720950) (.cons (no_v37681719222) (.cons (no_v37681716150) .nil)))))

theorem row131 : BadRow (row ⟨1,2,1,2,4,4⟩ [0,1] [0,2,2,0]) := by
  have h : row ⟨1,2,1,2,4,4⟩ [0,1] [0,2,2,0] = [] := by decide
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows37
