import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1400394337902 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1400394337902 : ¬ MinimalInterpreter v1400394337902 :=
  chain_cut false 2 (by decide)

private def v1400394337198 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1400394337198 : ¬ MinimalInterpreter v1400394337198 :=
  chain_cut false 2 (by decide)

private def v1400394315374 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1400394315374 : ¬ MinimalInterpreter v1400394315374 :=
  chain_cut false 2 (by decide)

private def v1400394314670 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1400394314670 : ¬ MinimalInterpreter v1400394314670 :=
  chain_cut false 2 (by decide)

private def v1400394309038 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1400394309038 : ¬ MinimalInterpreter v1400394309038 :=
  chain_cut false 2 (by decide)

private def v1400394681966 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1400394681966 : ¬ MinimalInterpreter v1400394681966 :=
  cost_cut false 3 (by decide)

private def v1400394681262 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1400394681262 : ¬ MinimalInterpreter v1400394681262 :=
  cost_cut false 3 (by decide)

theorem four756 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [1,1,0,2]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [1,1,0,2] = [v1400394337902,v1400394337198,v1400394315374,v1400394314670,v1400394309038,v1400394681966,v1400394681262] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400394337902) (.cons (no_v1400394337198) (.cons (no_v1400394315374) (.cons (no_v1400394314670) (.cons (no_v1400394309038) (.cons (no_v1400394681966) (.cons (no_v1400394681262) .nil)))))))

theorem four757 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [1,1,1,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400394337914 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1400394337914 : ¬ MinimalInterpreter v1400394337914 :=
  chain_cut false 2 (by decide)

private def v1400394337210 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1400394337210 : ¬ MinimalInterpreter v1400394337210 :=
  chain_cut false 2 (by decide)

private def v1400394315386 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1400394315386 : ¬ MinimalInterpreter v1400394315386 :=
  chain_cut false 2 (by decide)

private def v1400394314682 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1400394314682 : ¬ MinimalInterpreter v1400394314682 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400394309050 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1400394309050 : ¬ MinimalInterpreter v1400394309050 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400394681978 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1400394681978 : ¬ MinimalInterpreter v1400394681978 :=
  cost_cut false 3 (by decide)

private def v1400394681274 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1400394681274 : ¬ MinimalInterpreter v1400394681274 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four758 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [1,1,2,0]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [1,1,2,0] = [v1400394337914,v1400394337210,v1400394315386,v1400394314682,v1400394309050,v1400394681978,v1400394681274] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400394337914) (.cons (no_v1400394337210) (.cons (no_v1400394315386) (.cons (no_v1400394314682) (.cons (no_v1400394309050) (.cons (no_v1400394681978) (.cons (no_v1400394681274) .nil)))))))

private def v1400394338102 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1400394338102 : ¬ MinimalInterpreter v1400394338102 :=
  chain_cut false 2 (by decide)

private def v1400394337238 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1400394337238 : ¬ MinimalInterpreter v1400394337238 :=
  chain_cut false 2 (by decide)

private def v1400394315574 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1400394315574 : ¬ MinimalInterpreter v1400394315574 :=
  chain_cut false 2 (by decide)

private def v1400394314710 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1400394314710 : ¬ MinimalInterpreter v1400394314710 :=
  chain_cut false 2 (by decide)

private def v1400394309078 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1400394309078 : ¬ MinimalInterpreter v1400394309078 :=
  chain_cut false 2 (by decide)

private def v1400394682166 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1400394682166 : ¬ MinimalInterpreter v1400394682166 :=
  cost_cut false 3 (by decide)

private def v1400394681302 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1400394681302 : ¬ MinimalInterpreter v1400394681302 :=
  cost_cut false 3 (by decide)

theorem four759 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [1,2,0,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [1,2,0,1] = [v1400394338102,v1400394337238,v1400394315574,v1400394314710,v1400394309078,v1400394682166,v1400394681302] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400394338102) (.cons (no_v1400394337238) (.cons (no_v1400394315574) (.cons (no_v1400394314710) (.cons (no_v1400394309078) (.cons (no_v1400394682166) (.cons (no_v1400394681302) .nil)))))))

private def v1400394338106 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1400394338106 : ¬ MinimalInterpreter v1400394338106 :=
  chain_cut false 2 (by decide)

private def v1400394337242 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1400394337242 : ¬ MinimalInterpreter v1400394337242 :=
  chain_cut false 2 (by decide)

private def v1400394315578 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1400394315578 : ¬ MinimalInterpreter v1400394315578 :=
  chain_cut false 2 (by decide)

private def v1400394314714 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1400394314714 : ¬ MinimalInterpreter v1400394314714 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400394309082 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1400394309082 : ¬ MinimalInterpreter v1400394309082 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400394682170 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1400394682170 : ¬ MinimalInterpreter v1400394682170 :=
  cost_cut false 3 (by decide)

private def v1400394681306 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1400394681306 : ¬ MinimalInterpreter v1400394681306 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four760 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [1,2,1,0]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [1,2,1,0] = [v1400394338106,v1400394337242,v1400394315578,v1400394314714,v1400394309082,v1400394682170,v1400394681306] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400394338106) (.cons (no_v1400394337242) (.cons (no_v1400394315578) (.cons (no_v1400394314714) (.cons (no_v1400394309082) (.cons (no_v1400394682170) (.cons (no_v1400394681306) .nil)))))))

theorem four761 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [2,0,0,2]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [2,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400394344054 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v1400394344054 : ¬ MinimalInterpreter v1400394344054 :=
  chain_cut false 2 (by decide)

private def v1400394343862 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v1400394343862 : ¬ MinimalInterpreter v1400394343862 :=
  chain_cut false 2 (by decide)

private def v1400394316406 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v1400394316406 : ¬ MinimalInterpreter v1400394316406 :=
  chain_cut false 2 (by decide)

private def v1400394316214 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v1400394316214 : ¬ MinimalInterpreter v1400394316214 :=
  chain_cut false 2 (by decide)

private def v1400394309302 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v1400394309302 : ¬ MinimalInterpreter v1400394309302 :=
  chain_cut false 2 (by decide)

theorem four762 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [2,0,1,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [2,0,1,1] = [v1400394344054,v1400394343862,v1400394316406,v1400394316214,v1400394309302] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400394344054) (.cons (no_v1400394343862) (.cons (no_v1400394316406) (.cons (no_v1400394316214) (.cons (no_v1400394309302) .nil)))))

end Blc.SelfintSingleObject.Rows40
