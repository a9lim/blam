import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1402308796214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 3) (.app (.var 0) (.var 1))))))))))
private theorem no_v1402308796214 : ¬ MinimalInterpreter v1402308796214 :=
  cost_cut false 2 (by decide)

private def v1402308794326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 3) (.var 0)) (.var 1)))))))))
private theorem no_v1402308794326 : ¬ MinimalInterpreter v1402308794326 :=
  cost_cut false 2 (by decide)

private def v1402308820166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 3) (.app (.var 0) (.lam (.var 1))))))))))
private theorem no_v1402308820166 : ¬ MinimalInterpreter v1402308820166 :=
  chain_cut false 2 (by decide)

private def v1402308812614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 3) (.var 0)) (.lam (.var 1)))))))))
private theorem no_v1402308812614 : ¬ MinimalInterpreter v1402308812614 :=
  chain_cut false 2 (by decide)

private def v1402308377798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1402308377798 : ¬ MinimalInterpreter v1402308377798 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.lam (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.lam (.var 1))))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 2) (.var 3)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308366134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 0) (.var 1))))))))
private theorem no_v1402308366134 : ¬ MinimalInterpreter v1402308366134 :=
  cost_cut false 2 (by decide)

private def v1402308370246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 3) (.var 0))) (.lam (.var 1))))))))
private theorem no_v1402308370246 : ¬ MinimalInterpreter v1402308370246 :=
  chain_cut false 2 (by decide)

private def v1402308259654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1402308259654 : ¬ MinimalInterpreter v1402308259654 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.lam (.var 1)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308256726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 3))) (.var 0)) (.var 1)))))))
private theorem no_v1402308256726 : ¬ MinimalInterpreter v1402308256726 :=
  cost_cut false 2 (by decide)

private def v1402312986422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.app (.var 0) (.var 1)))))))
private theorem no_v1402312986422 : ¬ MinimalInterpreter v1402312986422 :=
  chain_cut false 2 (by decide)

private def v1402312557526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 0)) (.var 1))))))
private theorem no_v1402312557526 : ¬ MinimalInterpreter v1402312557526 :=
  chain_cut false 2 (by decide)

theorem four231 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,3,0,1]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,3,0,1] = [v1402308796214,v1402308794326,v1402308820166,v1402308812614,v1402308377798,v1402308366134,v1402308370246,v1402308259654,v1402308256726,v1402312986422,v1402312557526] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308796214) (.cons (no_v1402308794326) (.cons (no_v1402308820166) (.cons (no_v1402308812614) (.cons (no_v1402308377798) (.cons (no_v1402308366134) (.cons (no_v1402308370246) (.cons (no_v1402308259654) (.cons (no_v1402308256726) (.cons (no_v1402312986422) (.cons (no_v1402312557526) .nil)))))))))))

private def v1402308796218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.var 3) (.app (.var 1) (.var 0))))))))))
private theorem no_v1402308796218 : ¬ MinimalInterpreter v1402308796218 :=
  cost_cut false 2 (by decide)

private def v1402308794330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 3) (.var 1)) (.var 0)))))))))
private theorem no_v1402308794330 : ¬ MinimalInterpreter v1402308794330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.lam (.app (.app (.var 3) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 2) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide)))))))

private def v1402308812570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 3) (.lam (.var 1))) (.var 0))))))))
private theorem no_v1402308812570 : ¬ MinimalInterpreter v1402308812570 :=
  chain_cut false 2 (by decide)

private def v1402308366138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 3))) (.app (.var 1) (.var 0))))))))
private theorem no_v1402308366138 : ¬ MinimalInterpreter v1402308366138 :=
  cost_cut false 2 (by decide)

private def v1402308370202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 3) (.lam (.var 1)))) (.var 0)))))))
private theorem no_v1402308370202 : ¬ MinimalInterpreter v1402308370202 :=
  chain_cut false 2 (by decide)

private def v1402308259610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1402308259610 : ¬ MinimalInterpreter v1402308259610 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.lam (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.lam (.var 1))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 2) (.var 3)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308256730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 3))) (.var 1)) (.var 0)))))))
private theorem no_v1402308256730 : ¬ MinimalInterpreter v1402308256730 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 3))) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 1)))) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.lam (.var 2))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 3))) (.var 1)) (.var 0)) (.app (.app (.var 1) (so_dead (by decide) (.var 2))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_dead (by decide) (.var 1))) (by decide) (by decide))))))

private def v1402312986426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.app (.var 1) (.var 0)))))))
private theorem no_v1402312986426 : ¬ MinimalInterpreter v1402312986426 :=
  chain_cut false 2 (by decide)

private def v1402312557530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 1)) (.var 0))))))
private theorem no_v1402312557530 : ¬ MinimalInterpreter v1402312557530 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.lam (.var 3)))) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (so_dead (by decide) (.var 3)))) (.var 1)) (.var 0)) (.app (.app (.var 1) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four232 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,3,1,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,3,1,0] = [v1402308796218,v1402308794330,v1402308812570,v1402308366138,v1402308370202,v1402308259610,v1402308256730,v1402312986426,v1402312557530] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308796218) (.cons (no_v1402308794330) (.cons (no_v1402308812570) (.cons (no_v1402308366138) (.cons (no_v1402308370202) (.cons (no_v1402308259610) (.cons (no_v1402308256730) (.cons (no_v1402312986426) (.cons (no_v1402312557530) .nil)))))))))

private def v1402307321754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 4) (.app (.var 0) (.var 0))))))))))
private theorem no_v1402307321754 : ¬ MinimalInterpreter v1402307321754 :=
  chain_cut false 2 (by decide)

private def v1402307319786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 4) (.var 0)) (.var 0)))))))))
private theorem no_v1402307319786 : ¬ MinimalInterpreter v1402307319786 :=
  chain_cut false 2 (by decide)

private def v1402307211162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 4)) (.app (.var 0) (.var 0)))))))))
private theorem no_v1402307211162 : ¬ MinimalInterpreter v1402307211162 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 4)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 3))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 4)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 3)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402307209194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 4) (.var 0))) (.var 0))))))))
private theorem no_v1402307209194 : ¬ MinimalInterpreter v1402307209194 :=
  chain_cut false 2 (by decide)

private def v1402307181546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 4)) (.var 0)) (.var 0))))))))
private theorem no_v1402307181546 : ¬ MinimalInterpreter v1402307181546 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 4)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 3))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 4)) (.var 0)) (.var 0)) (.app (.var 1) (.var 3)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402308366234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 4))) (.app (.var 0) (.var 0))))))))
private theorem no_v1402308366234 : ¬ MinimalInterpreter v1402308366234 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 4))) (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.lam (.app (.app (.var 2) (.var 3)) (.app (.var 0) (.var 0)))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.lam (.var 3)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (so_dead (by decide) (.var 4))) (.app (.var 0) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 3))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402308256746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 4))) (.var 0)) (.var 0)))))))
private theorem no_v1402308256746 : ¬ MinimalInterpreter v1402308256746 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 4))) (.var 0)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.lam (.app (.app (.app (.var 2) (.var 3)) (.var 0)) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 1) (.lam (.var 3)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 4))) (.var 0)) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 3))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

theorem four233 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,4,0,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [2,4,0,0] = [v1402307321754,v1402307319786,v1402307211162,v1402307209194,v1402307181546,v1402308366234,v1402308256746] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402307321754) (.cons (no_v1402307319786) (.cons (no_v1402307211162) (.cons (no_v1402307209194) (.cons (no_v1402307181546) (.cons (no_v1402308366234) (.cons (no_v1402308256746) .nil)))))))

private def v1402308866846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1402308866846 : ¬ MinimalInterpreter v1402308866846 :=
  chain_cut false 2 (by decide)

private def v1402308865310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1402308865310 : ¬ MinimalInterpreter v1402308865310 :=
  chain_cut false 2 (by decide)

private def v1402308383518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1402308383518 : ¬ MinimalInterpreter v1402308383518 :=
  chain_cut false 2 (by decide)

private def v1402308381982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.lam (.var 3))))))))
private theorem no_v1402308381982 : ¬ MinimalInterpreter v1402308381982 :=
  chain_cut false 2 (by decide)

private def v1402308261150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1402308261150 : ¬ MinimalInterpreter v1402308261150 :=
  chain_cut false 2 (by decide)

theorem four234 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,0,0,3]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,0,0,3] = [v1402308866846,v1402308865310,v1402308383518,v1402308381982,v1402308261150] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308866846) (.cons (no_v1402308865310) (.cons (no_v1402308383518) (.cons (no_v1402308381982) (.cons (no_v1402308261150) .nil)))))

private def v1402308866286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.lam (.app (.var 1) (.var 2))))))))))
private theorem no_v1402308866286 : ¬ MinimalInterpreter v1402308866286 :=
  chain_cut false 2 (by decide)

private def v1402308866958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.lam (.var 2))))))))))
private theorem no_v1402308866958 : ¬ MinimalInterpreter v1402308866958 :=
  chain_cut false 2 (by decide)

private def v1402308865422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))))))))
private theorem no_v1402308865422 : ¬ MinimalInterpreter v1402308865422 :=
  chain_cut false 2 (by decide)

private def v1402308865134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1402308865134 : ¬ MinimalInterpreter v1402308865134 :=
  chain_cut false 2 (by decide)

private def v1402308382958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v1402308382958 : ¬ MinimalInterpreter v1402308382958 :=
  chain_cut false 2 (by decide)

private def v1402308383630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.lam (.var 2)))))))))
private theorem no_v1402308383630 : ¬ MinimalInterpreter v1402308383630 :=
  chain_cut false 2 (by decide)

private def v1402308382094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.lam (.var 2))))))))
private theorem no_v1402308382094 : ¬ MinimalInterpreter v1402308382094 :=
  chain_cut false 2 (by decide)

private def v1402308261262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.lam (.var 2))))))))
private theorem no_v1402308261262 : ¬ MinimalInterpreter v1402308261262 :=
  chain_cut false 2 (by decide)

private def v1402308381806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.lam (.var 1)))) (.var 2)))))))
private theorem no_v1402308381806 : ¬ MinimalInterpreter v1402308381806 :=
  chain_cut false 2 (by decide)

private def v1402308260974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1402308260974 : ¬ MinimalInterpreter v1402308260974 :=
  chain_cut false 2 (by decide)

theorem four235 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,0,1,2]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,0,1,2] = [v1402308866286,v1402308866958,v1402308865422,v1402308865134,v1402308382958,v1402308383630,v1402308382094,v1402308261262,v1402308381806,v1402308260974] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308866286) (.cons (no_v1402308866958) (.cons (no_v1402308865422) (.cons (no_v1402308865134) (.cons (no_v1402308382958) (.cons (no_v1402308383630) (.cons (no_v1402308382094) (.cons (no_v1402308261262) (.cons (no_v1402308381806) (.cons (no_v1402308260974) .nil))))))))))

private def v1402308866294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.lam (.app (.var 2) (.var 1))))))))))
private theorem no_v1402308866294 : ¬ MinimalInterpreter v1402308866294 :=
  chain_cut false 2 (by decide)

private def v1402308867014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 2) (.lam (.var 1))))))))))
private theorem no_v1402308867014 : ¬ MinimalInterpreter v1402308867014 :=
  chain_cut false 2 (by decide)

private def v1402308865478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 2)) (.lam (.var 1)))))))))
private theorem no_v1402308865478 : ¬ MinimalInterpreter v1402308865478 :=
  chain_cut false 2 (by decide)

private def v1402308865142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.lam (.var 2))) (.var 1))))))))
private theorem no_v1402308865142 : ¬ MinimalInterpreter v1402308865142 :=
  chain_cut false 2 (by decide)

private def v1402308382966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v1402308382966 : ¬ MinimalInterpreter v1402308382966 :=
  chain_cut false 2 (by decide)

private def v1402308383686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1402308383686 : ¬ MinimalInterpreter v1402308383686 :=
  chain_cut false 2 (by decide)

private def v1402308382150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 2))) (.lam (.var 1))))))))
private theorem no_v1402308382150 : ¬ MinimalInterpreter v1402308382150 :=
  chain_cut false 2 (by decide)

private def v1402308261318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1402308261318 : ¬ MinimalInterpreter v1402308261318 :=
  chain_cut false 2 (by decide)

private def v1402308381814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.lam (.var 2)))) (.var 1)))))))
private theorem no_v1402308381814 : ¬ MinimalInterpreter v1402308381814 :=
  chain_cut false 2 (by decide)

private def v1402308260982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.lam (.var 2))) (.var 1)))))))
private theorem no_v1402308260982 : ¬ MinimalInterpreter v1402308260982 :=
  chain_cut false 2 (by decide)

theorem four236 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,0,2,1]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,0,2,1] = [v1402308866294,v1402308867014,v1402308865478,v1402308865142,v1402308382966,v1402308383686,v1402308382150,v1402308261318,v1402308381814,v1402308260982] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308866294) (.cons (no_v1402308867014) (.cons (no_v1402308865478) (.cons (no_v1402308865142) (.cons (no_v1402308382966) (.cons (no_v1402308383686) (.cons (no_v1402308382150) (.cons (no_v1402308261318) (.cons (no_v1402308381814) (.cons (no_v1402308260982) .nil))))))))))

private def v1402308865146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.lam (.var 3))) (.var 0))))))))
private theorem no_v1402308865146 : ¬ MinimalInterpreter v1402308865146 :=
  chain_cut false 2 (by decide)

private def v1402308381818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.lam (.var 3)))) (.var 0)))))))
private theorem no_v1402308381818 : ¬ MinimalInterpreter v1402308381818 :=
  chain_cut false 2 (by decide)

private def v1402308260986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1402308260986 : ¬ MinimalInterpreter v1402308260986 :=
  chain_cut false 2 (by decide)

theorem four237 : BadRow (markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,0,3,0]) := by
  have h : markedRow ⟨0,2,0,4,4,6⟩ [0,0] [3,0,3,0] = [v1402308865146,v1402308381818,v1402308260986] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308865146) (.cons (no_v1402308381818) (.cons (no_v1402308260986) .nil)))

end Blc.SelfintSingleObject.Rows40
