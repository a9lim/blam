import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v690516774510 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v690516774510 : ¬ MinimalInterpreter v690516774510 :=
  cost_cut false 1 (by decide)
private def v690516773806 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v690516773806 : ¬ MinimalInterpreter v690516773806 :=
  cost_cut false 1 (by decide)
private def v690516751982 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v690516751982 : ¬ MinimalInterpreter v690516751982 :=
  cost_cut false 1 (by decide)
private def v690516751278 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v690516751278 : ¬ MinimalInterpreter v690516751278 :=
  cost_cut false 1 (by decide)
private def v690516745646 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v690516745646 : ¬ MinimalInterpreter v690516745646 :=
  cost_cut false 1 (by decide)
private def v690517118574 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v690517118574 : ¬ MinimalInterpreter v690517118574 :=
  cost_cut false 1 (by decide)
private def v690517117870 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v690517117870 : ¬ MinimalInterpreter v690517117870 :=
  cost_cut false 1 (by decide)
theorem row486 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [1,1,0,2]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [1,1,0,2] = [v690516774510,v690516773806,v690516751982,v690516751278,v690516745646,v690517118574,v690517117870] := by decide +kernel
  rw [h]
  exact (.cons (no_v690516774510) (.cons (no_v690516773806) (.cons (no_v690516751982) (.cons (no_v690516751278) (.cons (no_v690516745646) (.cons (no_v690517118574) (.cons (no_v690517117870) .nil)))))))

theorem row487 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [1,1,1,1]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [1,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v690516774522 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v690516774522 : ¬ MinimalInterpreter v690516774522 :=
  cost_cut false 1 (by decide)
private def v690516773818 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v690516773818 : ¬ MinimalInterpreter v690516773818 :=
  cost_cut false 1 (by decide)
private def v690516751994 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v690516751994 : ¬ MinimalInterpreter v690516751994 :=
  cost_cut false 1 (by decide)
private def v690516751290 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v690516751290 : ¬ MinimalInterpreter v690516751290 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690516745658 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v690516745658 : ¬ MinimalInterpreter v690516745658 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690517118586 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v690517118586 : ¬ MinimalInterpreter v690517118586 :=
  cost_cut false 1 (by decide)
private def v690517117882 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v690517117882 : ¬ MinimalInterpreter v690517117882 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem row488 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [1,1,2,0]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [1,1,2,0] = [v690516774522,v690516773818,v690516751994,v690516751290,v690516745658,v690517118586,v690517117882] := by decide +kernel
  rw [h]
  exact (.cons (no_v690516774522) (.cons (no_v690516773818) (.cons (no_v690516751994) (.cons (no_v690516751290) (.cons (no_v690516745658) (.cons (no_v690517118586) (.cons (no_v690517117882) .nil)))))))

private def v690516774710 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v690516774710 : ¬ MinimalInterpreter v690516774710 :=
  cost_cut false 1 (by decide)
private def v690516773846 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v690516773846 : ¬ MinimalInterpreter v690516773846 :=
  cost_cut false 1 (by decide)
private def v690516752182 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v690516752182 : ¬ MinimalInterpreter v690516752182 :=
  cost_cut false 1 (by decide)
private def v690516751318 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v690516751318 : ¬ MinimalInterpreter v690516751318 :=
  cost_cut false 1 (by decide)
private def v690516745686 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v690516745686 : ¬ MinimalInterpreter v690516745686 :=
  cost_cut false 1 (by decide)
private def v690517118774 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v690517118774 : ¬ MinimalInterpreter v690517118774 :=
  cost_cut false 1 (by decide)
private def v690517117910 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v690517117910 : ¬ MinimalInterpreter v690517117910 :=
  cost_cut false 1 (by decide)
theorem row489 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [1,2,0,1]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [1,2,0,1] = [v690516774710,v690516773846,v690516752182,v690516751318,v690516745686,v690517118774,v690517117910] := by decide +kernel
  rw [h]
  exact (.cons (no_v690516774710) (.cons (no_v690516773846) (.cons (no_v690516752182) (.cons (no_v690516751318) (.cons (no_v690516745686) (.cons (no_v690517118774) (.cons (no_v690517117910) .nil)))))))

private def v690516774714 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v690516774714 : ¬ MinimalInterpreter v690516774714 :=
  cost_cut false 1 (by decide)
private def v690516773850 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v690516773850 : ¬ MinimalInterpreter v690516773850 :=
  cost_cut false 1 (by decide)
private def v690516752186 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v690516752186 : ¬ MinimalInterpreter v690516752186 :=
  cost_cut false 1 (by decide)
private def v690516751322 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v690516751322 : ¬ MinimalInterpreter v690516751322 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690516745690 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v690516745690 : ¬ MinimalInterpreter v690516745690 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v690517118778 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v690517118778 : ¬ MinimalInterpreter v690517118778 :=
  cost_cut false 1 (by decide)
private def v690517117914 : Term := (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v690517117914 : ¬ MinimalInterpreter v690517117914 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem row490 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [1,2,1,0]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [1,2,1,0] = [v690516774714,v690516773850,v690516752186,v690516751322,v690516745690,v690517118778,v690517117914] := by decide +kernel
  rw [h]
  exact (.cons (no_v690516774714) (.cons (no_v690516773850) (.cons (no_v690516752186) (.cons (no_v690516751322) (.cons (no_v690516745690) (.cons (no_v690517118778) (.cons (no_v690517117914) .nil)))))))

theorem row491 : BadRow (row ⟨2,2,1,2,4,4⟩ [0,1] [2,0,0,2]) := by
  have h : row ⟨2,2,1,2,4,4⟩ [0,1] [2,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows39
