import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1400394325230 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v1400394325230 : ¬ MinimalInterpreter v1400394325230 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400394323822 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v1400394323822 : ¬ MinimalInterpreter v1400394323822 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400394312942 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v1400394312942 : ¬ MinimalInterpreter v1400394312942 :=
  chain_cut false 2 (by decide)

private def v1400394311534 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v1400394311534 : ¬ MinimalInterpreter v1400394311534 :=
  chain_cut false 2 (by decide)

private def v1400394308462 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v1400394308462 : ¬ MinimalInterpreter v1400394308462 :=
  chain_cut false 2 (by decide)

theorem four749 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [0,1,1,2]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [0,1,1,2] = [v1400394325230,v1400394323822,v1400394312942,v1400394311534,v1400394308462] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400394325230) (.cons (no_v1400394323822) (.cons (no_v1400394312942) (.cons (no_v1400394311534) (.cons (no_v1400394308462) .nil)))))

private def v1400394325238 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))
private theorem no_v1400394325238 : ¬ MinimalInterpreter v1400394325238 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400394323830 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))
private theorem no_v1400394323830 : ¬ MinimalInterpreter v1400394323830 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400394312950 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1)))))))
private theorem no_v1400394312950 : ¬ MinimalInterpreter v1400394312950 :=
  chain_cut false 2 (by decide)

private def v1400394311542 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1))))))
private theorem no_v1400394311542 : ¬ MinimalInterpreter v1400394311542 :=
  chain_cut false 2 (by decide)

private def v1400394308470 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1))))))
private theorem no_v1400394308470 : ¬ MinimalInterpreter v1400394308470 :=
  chain_cut false 2 (by decide)

theorem four750 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [0,1,2,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [0,1,2,1] = [v1400394325238,v1400394323830,v1400394312950,v1400394311542,v1400394308470] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400394325238) (.cons (no_v1400394323830) (.cons (no_v1400394312950) (.cons (no_v1400394311542) (.cons (no_v1400394308470) .nil)))))

theorem four751 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [0,2,0,2]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [0,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400394325622 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1))))))))
private theorem no_v1400394325622 : ¬ MinimalInterpreter v1400394325622 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 1)))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400394323894 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1)))))))
private theorem no_v1400394323894 : ¬ MinimalInterpreter v1400394323894 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400394313334 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 1)))))))
private theorem no_v1400394313334 : ¬ MinimalInterpreter v1400394313334 :=
  chain_cut false 2 (by decide)

private def v1400394311606 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 1))))))
private theorem no_v1400394311606 : ¬ MinimalInterpreter v1400394311606 :=
  chain_cut false 2 (by decide)

private def v1400394308534 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 1))))))
private theorem no_v1400394308534 : ¬ MinimalInterpreter v1400394308534 :=
  chain_cut false 2 (by decide)

theorem four752 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [0,2,1,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [0,2,1,1] = [v1400394325622,v1400394323894,v1400394313334,v1400394311606,v1400394308534] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400394325622) (.cons (no_v1400394323894) (.cons (no_v1400394313334) (.cons (no_v1400394311606) (.cons (no_v1400394308534) .nil)))))

theorem four753 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [0,2,2,0]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [0,2,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400394337518 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1400394337518 : ¬ MinimalInterpreter v1400394337518 :=
  chain_cut false 2 (by decide)

private def v1400394337134 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1400394337134 : ¬ MinimalInterpreter v1400394337134 :=
  chain_cut false 2 (by decide)

private def v1400394314990 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1400394314990 : ¬ MinimalInterpreter v1400394314990 :=
  chain_cut false 2 (by decide)

private def v1400394314606 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1400394314606 : ¬ MinimalInterpreter v1400394314606 :=
  chain_cut false 2 (by decide)

private def v1400394308974 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1400394308974 : ¬ MinimalInterpreter v1400394308974 :=
  chain_cut false 2 (by decide)

private def v1400394681582 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1400394681582 : ¬ MinimalInterpreter v1400394681582 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 1) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400394681198 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1400394681198 : ¬ MinimalInterpreter v1400394681198 :=
  cost_cut false 3 (by decide)

theorem four754 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [1,0,1,2]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [1,0,1,2] = [v1400394337518,v1400394337134,v1400394314990,v1400394314606,v1400394308974,v1400394681582,v1400394681198] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400394337518) (.cons (no_v1400394337134) (.cons (no_v1400394314990) (.cons (no_v1400394314606) (.cons (no_v1400394308974) (.cons (no_v1400394681582) (.cons (no_v1400394681198) .nil)))))))

private def v1400394337526 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1400394337526 : ¬ MinimalInterpreter v1400394337526 :=
  chain_cut false 2 (by decide)

private def v1400394337142 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1400394337142 : ¬ MinimalInterpreter v1400394337142 :=
  chain_cut false 2 (by decide)

private def v1400394314998 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1400394314998 : ¬ MinimalInterpreter v1400394314998 :=
  chain_cut false 2 (by decide)

private def v1400394314614 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1400394314614 : ¬ MinimalInterpreter v1400394314614 :=
  chain_cut false 2 (by decide)

private def v1400394308982 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1400394308982 : ¬ MinimalInterpreter v1400394308982 :=
  chain_cut false 2 (by decide)

private def v1400394681590 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1400394681590 : ¬ MinimalInterpreter v1400394681590 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400394681206 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.var 2))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1400394681206 : ¬ MinimalInterpreter v1400394681206 :=
  cost_cut false 3 (by decide)

theorem four755 : BadRow (markedRow ⟨2,2,2,2,4,4⟩ [0,2] [1,0,2,1]) := by
  have h : markedRow ⟨2,2,2,2,4,4⟩ [0,2] [1,0,2,1] = [v1400394337526,v1400394337142,v1400394314998,v1400394314614,v1400394308982,v1400394681590,v1400394681206] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400394337526) (.cons (no_v1400394337142) (.cons (no_v1400394314998) (.cons (no_v1400394314614) (.cons (no_v1400394308982) (.cons (no_v1400394681590) (.cons (no_v1400394681206) .nil)))))))

end Blc.SelfintSingleObject.Rows40
