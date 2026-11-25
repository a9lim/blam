import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1382023220462 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1382023220462 : ¬ MinimalInterpreter v1382023220462 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382023220078 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1382023220078 : ¬ MinimalInterpreter v1382023220078 :=
  chain_cut false 2 (by decide)

private def v1382023214318 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1382023214318 : ¬ MinimalInterpreter v1382023214318 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382023213934 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1382023213934 : ¬ MinimalInterpreter v1382023213934 :=
  chain_cut false 2 (by decide)

private def v1382023212398 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1382023212398 : ¬ MinimalInterpreter v1382023212398 :=
  chain_cut false 2 (by decide)

private def v1382023367918 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1382023367918 : ¬ MinimalInterpreter v1382023367918 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1382023367534 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1382023367534 : ¬ MinimalInterpreter v1382023367534 :=
  chain_cut false 2 (by decide)

private def v1382023957742 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1382023957742 : ¬ MinimalInterpreter v1382023957742 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1382023957358 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1382023957358 : ¬ MinimalInterpreter v1382023957358 :=
  cost_cut false 3 (by decide)

theorem four805 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [1,2] [0,0,1,2]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [1,2] [0,0,1,2] = [v1382023220462,v1382023220078,v1382023214318,v1382023213934,v1382023212398,v1382023367918,v1382023367534,v1382023957742,v1382023957358] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382023220462) (.cons (no_v1382023220078) (.cons (no_v1382023214318) (.cons (no_v1382023213934) (.cons (no_v1382023212398) (.cons (no_v1382023367918) (.cons (no_v1382023367534) (.cons (no_v1382023957742) (.cons (no_v1382023957358) .nil)))))))))

private def v1382023220470 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1382023220470 : ¬ MinimalInterpreter v1382023220470 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382023220086 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1382023220086 : ¬ MinimalInterpreter v1382023220086 :=
  chain_cut false 2 (by decide)

private def v1382023214326 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v1382023214326 : ¬ MinimalInterpreter v1382023214326 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382023213942 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v1382023213942 : ¬ MinimalInterpreter v1382023213942 :=
  chain_cut false 2 (by decide)

private def v1382023212406 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v1382023212406 : ¬ MinimalInterpreter v1382023212406 :=
  chain_cut false 2 (by decide)

private def v1382023367926 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1382023367926 : ¬ MinimalInterpreter v1382023367926 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1382023367542 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1382023367542 : ¬ MinimalInterpreter v1382023367542 :=
  chain_cut false 2 (by decide)

private def v1382023957750 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v1382023957750 : ¬ MinimalInterpreter v1382023957750 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1382023957366 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v1382023957366 : ¬ MinimalInterpreter v1382023957366 :=
  cost_cut false 3 (by decide)

theorem four806 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [1,2] [0,0,2,1]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [1,2] [0,0,2,1] = [v1382023220470,v1382023220086,v1382023214326,v1382023213942,v1382023212406,v1382023367926,v1382023367542,v1382023957750,v1382023957366] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382023220470) (.cons (no_v1382023220086) (.cons (no_v1382023214326) (.cons (no_v1382023213942) (.cons (no_v1382023212406) (.cons (no_v1382023367926) (.cons (no_v1382023367542) (.cons (no_v1382023957750) (.cons (no_v1382023957366) .nil)))))))))

private def v1382023220846 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1382023220846 : ¬ MinimalInterpreter v1382023220846 :=
  chain_cut false 2 (by decide)

private def v1382023220142 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1382023220142 : ¬ MinimalInterpreter v1382023220142 :=
  chain_cut false 2 (by decide)

private def v1382023214702 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v1382023214702 : ¬ MinimalInterpreter v1382023214702 :=
  chain_cut false 2 (by decide)

private def v1382023213998 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v1382023213998 : ¬ MinimalInterpreter v1382023213998 :=
  chain_cut false 2 (by decide)

private def v1382023212462 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v1382023212462 : ¬ MinimalInterpreter v1382023212462 :=
  chain_cut false 2 (by decide)

private def v1382023368302 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1382023368302 : ¬ MinimalInterpreter v1382023368302 :=
  chain_cut false 2 (by decide)

private def v1382023367598 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1382023367598 : ¬ MinimalInterpreter v1382023367598 :=
  chain_cut false 2 (by decide)

private def v1382023958126 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v1382023958126 : ¬ MinimalInterpreter v1382023958126 :=
  cost_cut false 3 (by decide)

private def v1382023957422 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v1382023957422 : ¬ MinimalInterpreter v1382023957422 :=
  cost_cut false 3 (by decide)

theorem four807 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [1,2] [0,1,0,2]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [1,2] [0,1,0,2] = [v1382023220846,v1382023220142,v1382023214702,v1382023213998,v1382023212462,v1382023368302,v1382023367598,v1382023958126,v1382023957422] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382023220846) (.cons (no_v1382023220142) (.cons (no_v1382023214702) (.cons (no_v1382023213998) (.cons (no_v1382023212462) (.cons (no_v1382023368302) (.cons (no_v1382023367598) (.cons (no_v1382023958126) (.cons (no_v1382023957422) .nil)))))))))

theorem four808 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [1,2] [0,1,1,1]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [1,2] [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1382023220858 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1382023220858 : ¬ MinimalInterpreter v1382023220858 :=
  chain_cut false 2 (by decide)

private def v1382023220154 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1382023220154 : ¬ MinimalInterpreter v1382023220154 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382023214714 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v1382023214714 : ¬ MinimalInterpreter v1382023214714 :=
  chain_cut false 2 (by decide)

private def v1382023214010 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v1382023214010 : ¬ MinimalInterpreter v1382023214010 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382023212474 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v1382023212474 : ¬ MinimalInterpreter v1382023212474 :=
  chain_cut false 2 (by decide)

private def v1382023368314 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1382023368314 : ¬ MinimalInterpreter v1382023368314 :=
  chain_cut false 2 (by decide)

private def v1382023367610 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1382023367610 : ¬ MinimalInterpreter v1382023367610 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1382023958138 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v1382023958138 : ¬ MinimalInterpreter v1382023958138 :=
  cost_cut false 3 (by decide)

private def v1382023957434 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v1382023957434 : ¬ MinimalInterpreter v1382023957434 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four809 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [1,2] [0,1,2,0]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [1,2] [0,1,2,0] = [v1382023220858,v1382023220154,v1382023214714,v1382023214010,v1382023212474,v1382023368314,v1382023367610,v1382023958138,v1382023957434] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382023220858) (.cons (no_v1382023220154) (.cons (no_v1382023214714) (.cons (no_v1382023214010) (.cons (no_v1382023212474) (.cons (no_v1382023368314) (.cons (no_v1382023367610) (.cons (no_v1382023958138) (.cons (no_v1382023957434) .nil)))))))))

private def v1382023221046 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1382023221046 : ¬ MinimalInterpreter v1382023221046 :=
  chain_cut false 2 (by decide)

private def v1382023220182 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1382023220182 : ¬ MinimalInterpreter v1382023220182 :=
  chain_cut false 2 (by decide)

private def v1382023214902 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1382023214902 : ¬ MinimalInterpreter v1382023214902 :=
  chain_cut false 2 (by decide)

private def v1382023214038 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1382023214038 : ¬ MinimalInterpreter v1382023214038 :=
  chain_cut false 2 (by decide)

private def v1382023212502 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1382023212502 : ¬ MinimalInterpreter v1382023212502 :=
  chain_cut false 2 (by decide)

private def v1382023368502 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1382023368502 : ¬ MinimalInterpreter v1382023368502 :=
  chain_cut false 2 (by decide)

private def v1382023367638 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1382023367638 : ¬ MinimalInterpreter v1382023367638 :=
  chain_cut false 2 (by decide)

private def v1382023958326 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1382023958326 : ¬ MinimalInterpreter v1382023958326 :=
  cost_cut false 3 (by decide)

private def v1382023957462 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1382023957462 : ¬ MinimalInterpreter v1382023957462 :=
  cost_cut false 3 (by decide)

theorem four810 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [1,2] [0,2,0,1]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [1,2] [0,2,0,1] = [v1382023221046,v1382023220182,v1382023214902,v1382023214038,v1382023212502,v1382023368502,v1382023367638,v1382023958326,v1382023957462] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382023221046) (.cons (no_v1382023220182) (.cons (no_v1382023214902) (.cons (no_v1382023214038) (.cons (no_v1382023212502) (.cons (no_v1382023368502) (.cons (no_v1382023367638) (.cons (no_v1382023958326) (.cons (no_v1382023957462) .nil)))))))))

private def v1382023221050 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1382023221050 : ¬ MinimalInterpreter v1382023221050 :=
  chain_cut false 2 (by decide)

private def v1382023220186 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1382023220186 : ¬ MinimalInterpreter v1382023220186 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382023214906 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1382023214906 : ¬ MinimalInterpreter v1382023214906 :=
  chain_cut false 2 (by decide)

private def v1382023214042 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1382023214042 : ¬ MinimalInterpreter v1382023214042 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382023212506 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1382023212506 : ¬ MinimalInterpreter v1382023212506 :=
  chain_cut false 2 (by decide)

private def v1382023368506 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1382023368506 : ¬ MinimalInterpreter v1382023368506 :=
  chain_cut false 2 (by decide)

private def v1382023367642 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1382023367642 : ¬ MinimalInterpreter v1382023367642 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1382023958330 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1382023958330 : ¬ MinimalInterpreter v1382023958330 :=
  cost_cut false 3 (by decide)

private def v1382023957466 : Term := (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1382023957466 : ¬ MinimalInterpreter v1382023957466 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.lam (.var 2))))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (so_dead (by decide) (.var 2))))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

theorem four811 : BadRow (markedRow ⟨2,2,3,2,4,3⟩ [1,2] [0,2,1,0]) := by
  have h : markedRow ⟨2,2,3,2,4,3⟩ [1,2] [0,2,1,0] = [v1382023221050,v1382023220186,v1382023214906,v1382023214042,v1382023212506,v1382023368506,v1382023367642,v1382023958330,v1382023957466] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382023221050) (.cons (no_v1382023220186) (.cons (no_v1382023214906) (.cons (no_v1382023214042) (.cons (no_v1382023212506) (.cons (no_v1382023368506) (.cons (no_v1382023367642) (.cons (no_v1382023958330) (.cons (no_v1382023957466) .nil)))))))))

end Blc.SelfintSingleObject.Rows40
