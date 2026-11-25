import Blc.Selfint40Evidence.R302902178590
import Blc.Selfint40Evidence.WeightedRows
import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four84 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,3,1,1]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,3,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1402308869754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 3) (.app (.var 2) (.var 0)))))))))
private theorem no_v1402308869754 : ¬ MinimalInterpreter v1402308869754 :=
  chain_cut false 4 (by decide)

private def v1402308865978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 3) (.var 2)) (.var 0))))))))
private theorem no_v1402308865978 : ¬ MinimalInterpreter v1402308865978 :=
  chain_cut false 4 (by decide)

private def v1402308386426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 3)) (.app (.var 2) (.var 0))))))))
private theorem no_v1402308386426 : ¬ MinimalInterpreter v1402308386426 :=
  w_cut false 0 (by decide)

private def v1402308382650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 3) (.var 2))) (.var 0)))))))
private theorem no_v1402308382650 : ¬ MinimalInterpreter v1402308382650 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 3) (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.lam (.app (.app (.var 3) (.app (.var 3) (.var 2))) (.var 0))))) (so_dead (by decide) (.lam (r := (.app (.var 2) (.app (.var 2) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 3) (.app (.var 3) (.var 2))) (.var 0)) (.app (.var 2) (.app (.var 2) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402308261818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 3)) (.var 2)) (.var 0)))))))
private theorem no_v1402308261818 : ¬ MinimalInterpreter v1402308261818 :=
  w_cut false 0 (by decide)

theorem four85 : BadRow (markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,3,2,0]) := by
  have h : markedRow ⟨0,2,0,3,4,8⟩ [0,0] [3,3,2,0] = [v1402308869754,v1402308865978,v1402308386426,v1402308382650,v1402308261818] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308869754) (.cons (no_v1402308865978) (.cons (no_v1402308386426) (.cons (no_v1402308382650) (.cons (no_v1402308261818) .nil)))))

private def v1402308499934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3))))))))))
private theorem no_v1402308499934 : ¬ MinimalInterpreter v1402308499934 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3))))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308499166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 3)))))))))
private theorem no_v1402308499166 : ¬ MinimalInterpreter v1402308499166 :=
  chain_cut false 2 (by decide)

private def v1402308487646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3)))))))))
private theorem no_v1402308487646 : ¬ MinimalInterpreter v1402308487646 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3)))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308486878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 3))))))))
private theorem no_v1402308486878 : ¬ MinimalInterpreter v1402308486878 :=
  chain_cut false 2 (by decide)

private def v1402308483806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 3))))))))
private theorem no_v1402308483806 : ¬ MinimalInterpreter v1402308483806 :=
  chain_cut false 2 (by decide)

private def v1402308303326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1402308303326 : ¬ MinimalInterpreter v1402308303326 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 3)))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308302558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1402308302558 : ¬ MinimalInterpreter v1402308302558 :=
  chain_cut false 2 (by decide)

private def v1402308291038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 3))))))))
private theorem no_v1402308291038 : ¬ MinimalInterpreter v1402308291038 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308241886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 3))))))))
private theorem no_v1402308241886 : ¬ MinimalInterpreter v1402308241886 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308290270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 3)))))))
private theorem no_v1402308290270 : ¬ MinimalInterpreter v1402308290270 :=
  chain_cut false 2 (by decide)

private def v1402308287198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 3)))))))
private theorem no_v1402308287198 : ¬ MinimalInterpreter v1402308287198 :=
  chain_cut false 2 (by decide)

private def v1402308241118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 3)))))))
private theorem no_v1402308241118 : ¬ MinimalInterpreter v1402308241118 :=
  chain_cut false 2 (by decide)

private def v1402308238046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 3)))))))
private theorem no_v1402308238046 : ¬ MinimalInterpreter v1402308238046 :=
  chain_cut false 2 (by decide)

private def v1402308225758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 3)))))))
private theorem no_v1402308225758 : ¬ MinimalInterpreter v1402308225758 :=
  chain_cut false 2 (by decide)

private def v1402313218526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3))))))))))
private theorem no_v1402313218526 : ¬ MinimalInterpreter v1402313218526 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402313217758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 3)))))))))
private theorem no_v1402313217758 : ¬ MinimalInterpreter v1402313217758 :=
  chain_cut false 2 (by decide)

private def v1402313206238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3)))))))))
private theorem no_v1402313206238 : ¬ MinimalInterpreter v1402313206238 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402313205470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 3))))))))
private theorem no_v1402313205470 : ¬ MinimalInterpreter v1402313205470 :=
  chain_cut false 2 (by decide)

private def v1402313202398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 3))))))))
private theorem no_v1402313202398 : ¬ MinimalInterpreter v1402313202398 :=
  chain_cut false 2 (by decide)

private def v1402313513438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))))
private theorem no_v1402313513438 : ¬ MinimalInterpreter v1402313513438 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 0) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)))) (.var 1) (by decide) (by decide))))))

private def v1402313512670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))))))
private theorem no_v1402313512670 : ¬ MinimalInterpreter v1402313512670 :=
  chain_cut false 2 (by decide)

private def v1402312727006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1402312727006 : ¬ MinimalInterpreter v1402312727006 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402312726238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1402312726238 : ¬ MinimalInterpreter v1402312726238 :=
  chain_cut false 2 (by decide)

private def v1402313533214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v1402313533214 : ¬ MinimalInterpreter v1402313533214 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402313530142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))))))
private theorem no_v1402313530142 : ¬ MinimalInterpreter v1402313530142 :=
  chain_cut false 2 (by decide)

private def v1402313484062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1402313484062 : ¬ MinimalInterpreter v1402313484062 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402313480990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 3))))))))
private theorem no_v1402313480990 : ¬ MinimalInterpreter v1402313480990 :=
  chain_cut false 2 (by decide)

private def v1402313468702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1402313468702 : ¬ MinimalInterpreter v1402313468702 :=
  chain_cut false 2 (by decide)

private def v1402312746782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1402312746782 : ¬ MinimalInterpreter v1402312746782 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312743710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1402312743710 : ¬ MinimalInterpreter v1402312743710 :=
  chain_cut false 2 (by decide)

private def v1402312697630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v1402312697630 : ¬ MinimalInterpreter v1402312697630 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312501022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 3))))))))
private theorem no_v1402312501022 : ¬ MinimalInterpreter v1402312501022 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 3)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402312694558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.var 3)))))))
private theorem no_v1402312694558 : ¬ MinimalInterpreter v1402312694558 :=
  chain_cut false 2 (by decide)

private def v1402312682270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 3)))))))
private theorem no_v1402312682270 : ¬ MinimalInterpreter v1402312682270 :=
  chain_cut false 2 (by decide)

private def v1402312497950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.var 3)))))))
private theorem no_v1402312497950 : ¬ MinimalInterpreter v1402312497950 :=
  chain_cut false 2 (by decide)

private def v1402312485662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 3)))))))
private theorem no_v1402312485662 : ¬ MinimalInterpreter v1402312485662 :=
  chain_cut false 2 (by decide)

private def v1402312436510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.lam (.var 3)))))))
private theorem no_v1402312436510 : ¬ MinimalInterpreter v1402312436510 :=
  chain_cut false 2 (by decide)

private def v1402332407582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v1402332407582 : ¬ MinimalInterpreter v1402332407582 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402332404510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))))))
private theorem no_v1402332404510 : ¬ MinimalInterpreter v1402332404510 :=
  chain_cut false 2 (by decide)

private def v1402332358430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1402332358430 : ¬ MinimalInterpreter v1402332358430 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402332355358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 3))))))))
private theorem no_v1402332355358 : ¬ MinimalInterpreter v1402332355358 :=
  chain_cut false 2 (by decide)

private def v1402332343070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1402332343070 : ¬ MinimalInterpreter v1402332343070 :=
  chain_cut false 2 (by decide)

private def v1402333587230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v1402333587230 : ¬ MinimalInterpreter v1402333587230 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 0) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402333584158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))))))
private theorem no_v1402333584158 : ¬ MinimalInterpreter v1402333584158 :=
  chain_cut false 2 (by decide)

private def v1402330441502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1402330441502 : ¬ MinimalInterpreter v1402330441502 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.lam (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))

private def v1402330438430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1402330438430 : ¬ MinimalInterpreter v1402330438430 :=
  chain_cut false 2 (by decide)

private def v1402407590366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3))))))))))
private theorem no_v1402407590366 : ¬ MinimalInterpreter v1402407590366 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 3)))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1402407589598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 3)))))))))
private theorem no_v1402407589598 : ¬ MinimalInterpreter v1402407589598 :=
  chain_cut false 4 (by decide)

private def v1402407578078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3)))))))))
private theorem no_v1402407578078 : ¬ MinimalInterpreter v1402407578078 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1402407577310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 3))))))))
private theorem no_v1402407577310 : ¬ MinimalInterpreter v1402407577310 :=
  chain_cut false 4 (by decide)

private def v1402407574238 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 3))))))))
private theorem no_v1402407574238 : ¬ MinimalInterpreter v1402407574238 :=
  chain_cut false 4 (by decide)

private def v1402407885278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))))
private theorem no_v1402407885278 : ¬ MinimalInterpreter v1402407885278 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide))) (.var 1) (by decide) (by decide)))))))

private def v1402407884510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))))))
private theorem no_v1402407884510 : ¬ MinimalInterpreter v1402407884510 :=
  chain_cut false 4 (by decide)

private def v1402407905054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v1402407905054 : ¬ MinimalInterpreter v1402407905054 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3))))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1402407901982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))))))
private theorem no_v1402407901982 : ¬ MinimalInterpreter v1402407901982 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407855902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1402407855902 : ¬ MinimalInterpreter v1402407855902 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 3))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1402407852830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 3))))))))
private theorem no_v1402407852830 : ¬ MinimalInterpreter v1402407852830 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407840542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1402407840542 : ¬ MinimalInterpreter v1402407840542 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402409084702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v1402409084702 : ¬ MinimalInterpreter v1402409084702 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide))) (so_dead (by decide) (.var 1)) (by decide) (by decide))))))

private def v1402409081630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))))))
private theorem no_v1402409081630 : ¬ MinimalInterpreter v1402409081630 :=
  w_cut false 0 (by decide)

private def v1402413783518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3))))))))))
private theorem no_v1402413783518 : ¬ MinimalInterpreter v1402413783518 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 2))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 3))) (.app (.var 0) (.var 2)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

private def v1402413782750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))))))))
private theorem no_v1402413782750 : ¬ MinimalInterpreter v1402413782750 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402413803294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3))))))))))
private theorem no_v1402413803294 : ¬ MinimalInterpreter v1402413803294 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.lam (r := (.lam (.var 1))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.lam (.var 2)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 3)))) (.app (.var 0) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (so_dead (by decide) (.var 1)) (by decide) (by decide)))))))

private def v1402413800222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3)))))))))
private theorem no_v1402413800222 : ¬ MinimalInterpreter v1402413800222 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402401200606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 3)))))))))
private theorem no_v1402401200606 : ¬ MinimalInterpreter v1402401200606 :=
  w_cut false 0 (by decide)

private def v1402401199838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 3))))))))
private theorem no_v1402401199838 : ¬ MinimalInterpreter v1402401199838 :=
  w_cut false 0 (by decide)

private def v1402401220382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 3)))))))))
private theorem no_v1402401220382 : ¬ MinimalInterpreter v1402401220382 :=
  w_cut false 0 (by decide)

private def v1402401217310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.var 3))))))))
private theorem no_v1402401217310 : ¬ MinimalInterpreter v1402401217310 :=
  w_cut false 0 (by decide)

theorem four86 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,0,1,3]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,0,1,3] = [v1402308499934,v1402308499166,v1402308487646,v1402308486878,v1402308483806,v1402308303326,v1402308302558,v1402308291038,v1402308241886,v1402308290270,v1402308287198,v1402308241118,v1402308238046,v1402308225758,v1402313218526,v1402313217758,v1402313206238,v1402313205470,v1402313202398,v1402313513438,v1402313512670,v1402312727006,v1402312726238,v1402313533214,v1402313530142,v1402313484062,v1402313480990,v1402313468702,v1402312746782,v1402312743710,v1402312697630,v1402312501022,v1402312694558,v1402312682270,v1402312497950,v1402312485662,v1402312436510,v1402332407582,v1402332404510,v1402332358430,v1402332355358,v1402332343070,v1402333587230,v1402333584158,v1402330441502,v1402330438430,v1402407590366,v1402407589598,v1402407578078,v1402407577310,v1402407574238,v1402407885278,v1402407884510,v1402407905054,v1402407901982,v1402407855902,v1402407852830,v1402407840542,v1402409084702,v1402409081630,v1402413783518,v1402413782750,v1402413803294,v1402413800222,v1402401200606,v1402401199838,v1402401220382,v1402401217310] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308499934) (.cons (no_v1402308499166) (.cons (no_v1402308487646) (.cons (no_v1402308486878) (.cons (no_v1402308483806) (.cons (no_v1402308303326) (.cons (no_v1402308302558) (.cons (no_v1402308291038) (.cons (no_v1402308241886) (.cons (no_v1402308290270) (.cons (no_v1402308287198) (.cons (no_v1402308241118) (.cons (no_v1402308238046) (.cons (no_v1402308225758) (.cons (no_v1402313218526) (.cons (no_v1402313217758) (.cons (no_v1402313206238) (.cons (no_v1402313205470) (.cons (no_v1402313202398) (.cons (no_v1402313513438) (.cons (no_v1402313512670) (.cons (no_v1402312727006) (.cons (no_v1402312726238) (.cons (no_v1402313533214) (.cons (no_v1402313530142) (.cons (no_v1402313484062) (.cons (no_v1402313480990) (.cons (no_v1402313468702) (.cons (no_v1402312746782) (.cons (no_v1402312743710) (.cons (no_v1402312697630) (.cons (no_v1402312501022) (.cons (no_v1402312694558) (.cons (no_v1402312682270) (.cons (no_v1402312497950) (.cons (no_v1402312485662) (.cons (no_v1402312436510) (.cons (no_v1402332407582) (.cons (no_v1402332404510) (.cons (no_v1402332358430) (.cons (no_v1402332355358) (.cons (no_v1402332343070) (.cons (no_v1402333587230) (.cons (no_v1402333584158) (.cons (no_v1402330441502) (.cons (no_v1402330438430) (.cons (no_v1402407590366) (.cons (no_v1402407589598) (.cons (no_v1402407578078) (.cons (no_v1402407577310) (.cons (no_v1402407574238) (.cons (no_v1402407885278) (.cons (no_v1402407884510) (.cons (no_v1402407905054) (.cons (no_v1402407901982) (.cons (no_v1402407855902) (.cons (no_v1402407852830) (.cons (no_v1402407840542) (.cons (no_v1402409084702) (.cons (no_v1402409081630) (.cons (no_v1402413783518) (.cons (no_v1402413782750) (.cons (no_v1402413803294) (.cons (no_v1402413800222) (.cons (no_v1402401200606) (.cons (no_v1402401199838) (.cons (no_v1402401220382) (.cons (no_v1402401217310) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

private def v1402313533326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v1402313533326 : ¬ MinimalInterpreter v1402313533326 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313530254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))))))))
private theorem no_v1402313530254 : ¬ MinimalInterpreter v1402313530254 :=
  chain_cut false 2 (by decide)

private def v1402313529582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))))))
private theorem no_v1402313529582 : ¬ MinimalInterpreter v1402313529582 :=
  chain_cut false 2 (by decide)

private def v1402313484174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1402313484174 : ¬ MinimalInterpreter v1402313484174 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313481102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 2))))))))
private theorem no_v1402313481102 : ¬ MinimalInterpreter v1402313481102 :=
  chain_cut false 2 (by decide)

private def v1402313468814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1402313468814 : ¬ MinimalInterpreter v1402313468814 :=
  chain_cut false 2 (by decide)

private def v1402313480430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 2)))))))
private theorem no_v1402313480430 : ¬ MinimalInterpreter v1402313480430 :=
  chain_cut false 2 (by decide)

private def v1402313468142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1402313468142 : ¬ MinimalInterpreter v1402313468142 :=
  chain_cut false 2 (by decide)

private def v1402312746894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1402312746894 : ¬ MinimalInterpreter v1402312746894 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312743822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1402312743822 : ¬ MinimalInterpreter v1402312743822 :=
  chain_cut false 2 (by decide)

private def v1402312743150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1402312743150 : ¬ MinimalInterpreter v1402312743150 :=
  chain_cut false 2 (by decide)

private def v1402312697742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v1402312697742 : ¬ MinimalInterpreter v1402312697742 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312501134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.lam (.var 2))))))))
private theorem no_v1402312501134 : ¬ MinimalInterpreter v1402312501134 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312694670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 2)))) (.lam (.var 2)))))))
private theorem no_v1402312694670 : ¬ MinimalInterpreter v1402312694670 :=
  chain_cut false 2 (by decide)

private def v1402312682382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.lam (.var 2)))))))
private theorem no_v1402312682382 : ¬ MinimalInterpreter v1402312682382 :=
  chain_cut false 2 (by decide)

private def v1402312498062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.lam (.var 2)))))))
private theorem no_v1402312498062 : ¬ MinimalInterpreter v1402312498062 :=
  chain_cut false 2 (by decide)

private def v1402312485774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.lam (.var 2)))))))
private theorem no_v1402312485774 : ¬ MinimalInterpreter v1402312485774 :=
  chain_cut false 2 (by decide)

private def v1402312436622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.lam (.var 2)))))))
private theorem no_v1402312436622 : ¬ MinimalInterpreter v1402312436622 :=
  chain_cut false 2 (by decide)

private def v1402312693998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 2))))) (.var 2))))))
private theorem no_v1402312693998 : ¬ MinimalInterpreter v1402312693998 :=
  chain_cut false 2 (by decide)

private def v1402312681710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 2)))) (.var 2))))))
private theorem no_v1402312681710 : ¬ MinimalInterpreter v1402312681710 :=
  chain_cut false 2 (by decide)

private def v1402312497390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 2)))) (.var 2))))))
private theorem no_v1402312497390 : ¬ MinimalInterpreter v1402312497390 :=
  chain_cut false 2 (by decide)

private def v1402312485102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 2))) (.var 2))))))
private theorem no_v1402312485102 : ¬ MinimalInterpreter v1402312485102 :=
  chain_cut false 2 (by decide)

private def v1402312435950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 2))) (.var 2))))))
private theorem no_v1402312435950 : ¬ MinimalInterpreter v1402312435950 :=
  chain_cut false 2 (by decide)

private def v1402332407694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v1402332407694 : ¬ MinimalInterpreter v1402332407694 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402332404622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))))))))
private theorem no_v1402332404622 : ¬ MinimalInterpreter v1402332404622 :=
  chain_cut false 2 (by decide)

private def v1402332403950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))))))
private theorem no_v1402332403950 : ¬ MinimalInterpreter v1402332403950 :=
  chain_cut false 2 (by decide)

private def v1402332358542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1402332358542 : ¬ MinimalInterpreter v1402332358542 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402332355470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 2))))))))
private theorem no_v1402332355470 : ¬ MinimalInterpreter v1402332355470 :=
  chain_cut false 2 (by decide)

private def v1402332343182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1402332343182 : ¬ MinimalInterpreter v1402332343182 :=
  chain_cut false 2 (by decide)

private def v1402332354798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 2)))))))
private theorem no_v1402332354798 : ¬ MinimalInterpreter v1402332354798 :=
  chain_cut false 2 (by decide)

private def v1402332342510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1402332342510 : ¬ MinimalInterpreter v1402332342510 :=
  chain_cut false 2 (by decide)

private def v1402333587342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v1402333587342 : ¬ MinimalInterpreter v1402333587342 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))) (.app (.var 0) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1402333584270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))))))))
private theorem no_v1402333584270 : ¬ MinimalInterpreter v1402333584270 :=
  chain_cut false 2 (by decide)

private def v1402333583598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))))))
private theorem no_v1402333583598 : ¬ MinimalInterpreter v1402333583598 :=
  chain_cut false 2 (by decide)

private def v1402330441614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1402330441614 : ¬ MinimalInterpreter v1402330441614 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402330438542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1402330438542 : ¬ MinimalInterpreter v1402330438542 :=
  chain_cut false 2 (by decide)

private def v1402330437870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1402330437870 : ¬ MinimalInterpreter v1402330437870 :=
  chain_cut false 2 (by decide)

private def v1402407905166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v1402407905166 : ¬ MinimalInterpreter v1402407905166 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2))))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402407902094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))))))))
private theorem no_v1402407902094 : ¬ MinimalInterpreter v1402407902094 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407901422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))))))
private theorem no_v1402407901422 : ¬ MinimalInterpreter v1402407901422 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407856014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1402407856014 : ¬ MinimalInterpreter v1402407856014 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402407852942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 2))))))))
private theorem no_v1402407852942 : ¬ MinimalInterpreter v1402407852942 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407840654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1402407840654 : ¬ MinimalInterpreter v1402407840654 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407852270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 2)))) (.var 2)))))))
private theorem no_v1402407852270 : ¬ MinimalInterpreter v1402407852270 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407839982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1402407839982 : ¬ MinimalInterpreter v1402407839982 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402409084814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v1402409084814 : ¬ MinimalInterpreter v1402409084814 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402409081742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))))))))
private theorem no_v1402409081742 : ¬ MinimalInterpreter v1402409081742 :=
  w_cut false 0 (by decide)

private def v1402409081070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))))))
private theorem no_v1402409081070 : ¬ MinimalInterpreter v1402409081070 :=
  fun he => _root_.Blc.Floor40.WeightedRows.ex_e302897453294 he.1

private def v1402413803406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2))))))))))
private theorem no_v1402413803406 : ¬ MinimalInterpreter v1402413803406 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (so_dead (by decide) (.var 2)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402413800334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2)))))))))
private theorem no_v1402413800334 : ¬ MinimalInterpreter v1402413800334 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402413799662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2))))))))
private theorem no_v1402413799662 : ¬ MinimalInterpreter v1402413799662 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402401220494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.lam (.var 2)))))))))
private theorem no_v1402401220494 : ¬ MinimalInterpreter v1402401220494 :=
  w_cut false 0 (by decide)

private def v1402401217422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.lam (.var 2))))))))
private theorem no_v1402401217422 : ¬ MinimalInterpreter v1402401217422 :=
  w_cut false 0 (by decide)

private def v1402401216750 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 2)))))))
private theorem no_v1402401216750 : ¬ MinimalInterpreter v1402401216750 :=
  w_cut false 0 (by decide)

theorem four87 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,0,2,2]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,0,2,2] = [v1402313533326,v1402313530254,v1402313529582,v1402313484174,v1402313481102,v1402313468814,v1402313480430,v1402313468142,v1402312746894,v1402312743822,v1402312743150,v1402312697742,v1402312501134,v1402312694670,v1402312682382,v1402312498062,v1402312485774,v1402312436622,v1402312693998,v1402312681710,v1402312497390,v1402312485102,v1402312435950,v1402332407694,v1402332404622,v1402332403950,v1402332358542,v1402332355470,v1402332343182,v1402332354798,v1402332342510,v1402333587342,v1402333584270,v1402333583598,v1402330441614,v1402330438542,v1402330437870,v1402407905166,v1402407902094,v1402407901422,v1402407856014,v1402407852942,v1402407840654,v1402407852270,v1402407839982,v1402409084814,v1402409081742,v1402409081070,v1402413803406,v1402413800334,v1402413799662,v1402401220494,v1402401217422,v1402401216750] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402313533326) (.cons (no_v1402313530254) (.cons (no_v1402313529582) (.cons (no_v1402313484174) (.cons (no_v1402313481102) (.cons (no_v1402313468814) (.cons (no_v1402313480430) (.cons (no_v1402313468142) (.cons (no_v1402312746894) (.cons (no_v1402312743822) (.cons (no_v1402312743150) (.cons (no_v1402312697742) (.cons (no_v1402312501134) (.cons (no_v1402312694670) (.cons (no_v1402312682382) (.cons (no_v1402312498062) (.cons (no_v1402312485774) (.cons (no_v1402312436622) (.cons (no_v1402312693998) (.cons (no_v1402312681710) (.cons (no_v1402312497390) (.cons (no_v1402312485102) (.cons (no_v1402312435950) (.cons (no_v1402332407694) (.cons (no_v1402332404622) (.cons (no_v1402332403950) (.cons (no_v1402332358542) (.cons (no_v1402332355470) (.cons (no_v1402332343182) (.cons (no_v1402332354798) (.cons (no_v1402332342510) (.cons (no_v1402333587342) (.cons (no_v1402333584270) (.cons (no_v1402333583598) (.cons (no_v1402330441614) (.cons (no_v1402330438542) (.cons (no_v1402330437870) (.cons (no_v1402407905166) (.cons (no_v1402407902094) (.cons (no_v1402407901422) (.cons (no_v1402407856014) (.cons (no_v1402407852942) (.cons (no_v1402407840654) (.cons (no_v1402407852270) (.cons (no_v1402407839982) (.cons (no_v1402409084814) (.cons (no_v1402409081742) (.cons (no_v1402409081070) (.cons (no_v1402413803406) (.cons (no_v1402413800334) (.cons (no_v1402413799662) (.cons (no_v1402401220494) (.cons (no_v1402401217422) (.cons (no_v1402401216750) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))

private def v1402308499958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1))))))))))
private theorem no_v1402308499958 : ¬ MinimalInterpreter v1402308499958 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1))))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308499190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 1)))))))))
private theorem no_v1402308499190 : ¬ MinimalInterpreter v1402308499190 :=
  chain_cut false 2 (by decide)

private def v1402308487670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1)))))))))
private theorem no_v1402308487670 : ¬ MinimalInterpreter v1402308487670 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1)))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308486902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 1))))))))
private theorem no_v1402308486902 : ¬ MinimalInterpreter v1402308486902 :=
  chain_cut false 2 (by decide)

private def v1402308483830 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 1))))))))
private theorem no_v1402308483830 : ¬ MinimalInterpreter v1402308483830 :=
  chain_cut false 2 (by decide)

private def v1402308303350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1402308303350 : ¬ MinimalInterpreter v1402308303350 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 3) (.var 1)))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308302582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1402308302582 : ¬ MinimalInterpreter v1402308302582 :=
  chain_cut false 2 (by decide)

private def v1402308291062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 3) (.var 1))))))))
private theorem no_v1402308291062 : ¬ MinimalInterpreter v1402308291062 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 3) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308241910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 3) (.var 1))))))))
private theorem no_v1402308241910 : ¬ MinimalInterpreter v1402308241910 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 3) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))

private def v1402308290294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 3)))) (.var 1)))))))
private theorem no_v1402308290294 : ¬ MinimalInterpreter v1402308290294 :=
  chain_cut false 2 (by decide)

private def v1402308287222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 3))) (.var 1)))))))
private theorem no_v1402308287222 : ¬ MinimalInterpreter v1402308287222 :=
  chain_cut false 2 (by decide)

private def v1402308241142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 3))) (.var 1)))))))
private theorem no_v1402308241142 : ¬ MinimalInterpreter v1402308241142 :=
  chain_cut false 2 (by decide)

private def v1402308238070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 3)) (.var 1)))))))
private theorem no_v1402308238070 : ¬ MinimalInterpreter v1402308238070 :=
  chain_cut false 2 (by decide)

private def v1402308225782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 3)) (.var 1)))))))
private theorem no_v1402308225782 : ¬ MinimalInterpreter v1402308225782 :=
  chain_cut false 2 (by decide)

private def v1402313218550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1))))))))))
private theorem no_v1402313218550 : ¬ MinimalInterpreter v1402313218550 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402313217782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 1)))))))))
private theorem no_v1402313217782 : ¬ MinimalInterpreter v1402313217782 :=
  chain_cut false 2 (by decide)

private def v1402313206262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1)))))))))
private theorem no_v1402313206262 : ¬ MinimalInterpreter v1402313206262 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402313205494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 1))))))))
private theorem no_v1402313205494 : ¬ MinimalInterpreter v1402313205494 :=
  chain_cut false 2 (by decide)

private def v1402313202422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 1))))))))
private theorem no_v1402313202422 : ¬ MinimalInterpreter v1402313202422 :=
  chain_cut false 2 (by decide)

private def v1402313513462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))))
private theorem no_v1402313513462 : ¬ MinimalInterpreter v1402313513462 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.app (.var 0) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)))) (.var 1) (by decide) (by decide))))))

private def v1402313512694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 1)))))))))
private theorem no_v1402313512694 : ¬ MinimalInterpreter v1402313512694 :=
  chain_cut false 2 (by decide)

private def v1402312727030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1402312727030 : ¬ MinimalInterpreter v1402312727030 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide))))))

private def v1402312726262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1402312726262 : ¬ MinimalInterpreter v1402312726262 :=
  chain_cut false 2 (by decide)

private def v1402313529590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 3))) (.var 1))))))))
private theorem no_v1402313529590 : ¬ MinimalInterpreter v1402313529590 :=
  chain_cut false 2 (by decide)

private def v1402313480438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.var 1)))))))
private theorem no_v1402313480438 : ¬ MinimalInterpreter v1402313480438 :=
  chain_cut false 2 (by decide)

private def v1402313468150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1402313468150 : ¬ MinimalInterpreter v1402313468150 :=
  chain_cut false 2 (by decide)

private def v1402312743158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1402312743158 : ¬ MinimalInterpreter v1402312743158 :=
  chain_cut false 2 (by decide)

private def v1402312694006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.var 3))))) (.var 1))))))
private theorem no_v1402312694006 : ¬ MinimalInterpreter v1402312694006 :=
  chain_cut false 2 (by decide)

private def v1402312681718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.lam (.var 3)))) (.var 1))))))
private theorem no_v1402312681718 : ¬ MinimalInterpreter v1402312681718 :=
  chain_cut false 2 (by decide)

private def v1402312497398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 3)))) (.var 1))))))
private theorem no_v1402312497398 : ¬ MinimalInterpreter v1402312497398 :=
  chain_cut false 2 (by decide)

private def v1402312485110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 3))) (.var 1))))))
private theorem no_v1402312485110 : ¬ MinimalInterpreter v1402312485110 :=
  chain_cut false 2 (by decide)

private def v1402312435958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 3))) (.var 1))))))
private theorem no_v1402312435958 : ¬ MinimalInterpreter v1402312435958 :=
  chain_cut false 2 (by decide)

private def v1402332403958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 3))) (.var 1))))))))
private theorem no_v1402332403958 : ¬ MinimalInterpreter v1402332403958 :=
  chain_cut false 2 (by decide)

private def v1402332354806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.var 1)))))))
private theorem no_v1402332354806 : ¬ MinimalInterpreter v1402332354806 :=
  chain_cut false 2 (by decide)

private def v1402332342518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1402332342518 : ¬ MinimalInterpreter v1402332342518 :=
  chain_cut false 2 (by decide)

private def v1402333583606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1))))))))
private theorem no_v1402333583606 : ¬ MinimalInterpreter v1402333583606 :=
  chain_cut false 2 (by decide)

private def v1402330437878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1402330437878 : ¬ MinimalInterpreter v1402330437878 :=
  chain_cut false 2 (by decide)

private def v1402407590390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1))))))))))
private theorem no_v1402407590390 : ¬ MinimalInterpreter v1402407590390 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 3) (.var 1)))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1402407589622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 3)) (.var 1)))))))))
private theorem no_v1402407589622 : ¬ MinimalInterpreter v1402407589622 :=
  chain_cut false 4 (by decide)

private def v1402407578102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1)))))))))
private theorem no_v1402407578102 : ¬ MinimalInterpreter v1402407578102 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide)))))))

private def v1402407577334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 3))) (.var 1))))))))
private theorem no_v1402407577334 : ¬ MinimalInterpreter v1402407577334 :=
  chain_cut false 4 (by decide)

private def v1402407574262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 3)) (.var 1))))))))
private theorem no_v1402407574262 : ¬ MinimalInterpreter v1402407574262 :=
  chain_cut false 4 (by decide)

private def v1402407885302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))))
private theorem no_v1402407885302 : ¬ MinimalInterpreter v1402407885302 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide))) (.var 1) (by decide) (by decide)))))))

private def v1402407884534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 3)) (.var 1)))))))))
private theorem no_v1402407884534 : ¬ MinimalInterpreter v1402407884534 :=
  chain_cut false 4 (by decide)

private def v1402407901430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 3))) (.var 1))))))))
private theorem no_v1402407901430 : ¬ MinimalInterpreter v1402407901430 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407852278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 3)))) (.var 1)))))))
private theorem no_v1402407852278 : ¬ MinimalInterpreter v1402407852278 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407839990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1402407839990 : ¬ MinimalInterpreter v1402407839990 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402409081078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1))))))))
private theorem no_v1402409081078 : ¬ MinimalInterpreter v1402409081078 :=
  fun he => _root_.Blc.Floor40.WeightedRows.ex_e302897453302 he.1

private def v1402413783542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1))))))))))
private theorem no_v1402413783542 : ¬ MinimalInterpreter v1402413783542 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.lam (r := (.var 1)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 2) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 3) (.var 1))) (.app (.var 2) (.var 0)) (by decide) (by decide)) (.var 1) (by decide) (by decide))))))))

private def v1402413782774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 1)))))))))
private theorem no_v1402413782774 : ¬ MinimalInterpreter v1402413782774 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402413799670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1))))))))
private theorem no_v1402413799670 : ¬ MinimalInterpreter v1402413799670 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 100 (by decide) (by decide) (by decide) (by decide)

private def v1402401200630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.app (.var 3) (.var 1)))))))))
private theorem no_v1402401200630 : ¬ MinimalInterpreter v1402401200630 :=
  w_cut false 0 (by decide)

private def v1402401199862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 3)) (.var 1))))))))
private theorem no_v1402401199862 : ¬ MinimalInterpreter v1402401199862 :=
  w_cut false 0 (by decide)

private def v1402401216758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.var 3))) (.var 1)))))))
private theorem no_v1402401216758 : ¬ MinimalInterpreter v1402401216758 :=
  w_cut false 0 (by decide)

theorem four88 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,0,3,1]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,0,3,1] = [v1402308499958,v1402308499190,v1402308487670,v1402308486902,v1402308483830,v1402308303350,v1402308302582,v1402308291062,v1402308241910,v1402308290294,v1402308287222,v1402308241142,v1402308238070,v1402308225782,v1402313218550,v1402313217782,v1402313206262,v1402313205494,v1402313202422,v1402313513462,v1402313512694,v1402312727030,v1402312726262,v1402313529590,v1402313480438,v1402313468150,v1402312743158,v1402312694006,v1402312681718,v1402312497398,v1402312485110,v1402312435958,v1402332403958,v1402332354806,v1402332342518,v1402333583606,v1402330437878,v1402407590390,v1402407589622,v1402407578102,v1402407577334,v1402407574262,v1402407885302,v1402407884534,v1402407901430,v1402407852278,v1402407839990,v1402409081078,v1402413783542,v1402413782774,v1402413799670,v1402401200630,v1402401199862,v1402401216758] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308499958) (.cons (no_v1402308499190) (.cons (no_v1402308487670) (.cons (no_v1402308486902) (.cons (no_v1402308483830) (.cons (no_v1402308303350) (.cons (no_v1402308302582) (.cons (no_v1402308291062) (.cons (no_v1402308241910) (.cons (no_v1402308290294) (.cons (no_v1402308287222) (.cons (no_v1402308241142) (.cons (no_v1402308238070) (.cons (no_v1402308225782) (.cons (no_v1402313218550) (.cons (no_v1402313217782) (.cons (no_v1402313206262) (.cons (no_v1402313205494) (.cons (no_v1402313202422) (.cons (no_v1402313513462) (.cons (no_v1402313512694) (.cons (no_v1402312727030) (.cons (no_v1402312726262) (.cons (no_v1402313529590) (.cons (no_v1402313480438) (.cons (no_v1402313468150) (.cons (no_v1402312743158) (.cons (no_v1402312694006) (.cons (no_v1402312681718) (.cons (no_v1402312497398) (.cons (no_v1402312485110) (.cons (no_v1402312435958) (.cons (no_v1402332403958) (.cons (no_v1402332354806) (.cons (no_v1402332342518) (.cons (no_v1402333583606) (.cons (no_v1402330437878) (.cons (no_v1402407590390) (.cons (no_v1402407589622) (.cons (no_v1402407578102) (.cons (no_v1402407577334) (.cons (no_v1402407574262) (.cons (no_v1402407885302) (.cons (no_v1402407884534) (.cons (no_v1402407901430) (.cons (no_v1402407852278) (.cons (no_v1402407839990) (.cons (no_v1402409081078) (.cons (no_v1402413783542) (.cons (no_v1402413782774) (.cons (no_v1402413799670) (.cons (no_v1402401200630) (.cons (no_v1402401199862) (.cons (no_v1402401216758) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))

private def v1402308500702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402308500702 : ¬ MinimalInterpreter v1402308500702 :=
  chain_cut false 2 (by decide)

private def v1402308499294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 3)))))))))
private theorem no_v1402308499294 : ¬ MinimalInterpreter v1402308499294 :=
  chain_cut false 2 (by decide)

private def v1402308488414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 3)))))))))
private theorem no_v1402308488414 : ¬ MinimalInterpreter v1402308488414 :=
  chain_cut false 2 (by decide)

private def v1402308487006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 3))))))))
private theorem no_v1402308487006 : ¬ MinimalInterpreter v1402308487006 :=
  chain_cut false 2 (by decide)

private def v1402308483934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 3))))))))
private theorem no_v1402308483934 : ¬ MinimalInterpreter v1402308483934 :=
  chain_cut false 2 (by decide)

private def v1402308304094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v1402308304094 : ¬ MinimalInterpreter v1402308304094 :=
  chain_cut false 2 (by decide)

private def v1402308302686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v1402308302686 : ¬ MinimalInterpreter v1402308302686 :=
  chain_cut false 2 (by decide)

private def v1402308291806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 3))))))))
private theorem no_v1402308291806 : ¬ MinimalInterpreter v1402308291806 :=
  chain_cut false 2 (by decide)

private def v1402308242654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 3))))))))
private theorem no_v1402308242654 : ¬ MinimalInterpreter v1402308242654 :=
  chain_cut false 2 (by decide)

private def v1402308290398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 3)))))))
private theorem no_v1402308290398 : ¬ MinimalInterpreter v1402308290398 :=
  chain_cut false 2 (by decide)

private def v1402308287326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 3)))))))
private theorem no_v1402308287326 : ¬ MinimalInterpreter v1402308287326 :=
  chain_cut false 2 (by decide)

private def v1402308241246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 3)))))))
private theorem no_v1402308241246 : ¬ MinimalInterpreter v1402308241246 :=
  chain_cut false 2 (by decide)

private def v1402308238174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 3)))))))
private theorem no_v1402308238174 : ¬ MinimalInterpreter v1402308238174 :=
  chain_cut false 2 (by decide)

private def v1402308225886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 3)))))))
private theorem no_v1402308225886 : ¬ MinimalInterpreter v1402308225886 :=
  chain_cut false 2 (by decide)

private def v1402313219294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402313219294 : ¬ MinimalInterpreter v1402313219294 :=
  chain_cut false 2 (by decide)

private def v1402313217886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 3)))))))))
private theorem no_v1402313217886 : ¬ MinimalInterpreter v1402313217886 :=
  chain_cut false 2 (by decide)

private def v1402313207006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 3)))))))))
private theorem no_v1402313207006 : ¬ MinimalInterpreter v1402313207006 :=
  chain_cut false 2 (by decide)

private def v1402313205598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 3))))))))
private theorem no_v1402313205598 : ¬ MinimalInterpreter v1402313205598 :=
  chain_cut false 2 (by decide)

private def v1402313202526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 3))))))))
private theorem no_v1402313202526 : ¬ MinimalInterpreter v1402313202526 :=
  chain_cut false 2 (by decide)

private def v1402313514206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402313514206 : ¬ MinimalInterpreter v1402313514206 :=
  chain_cut false 2 (by decide)

private def v1402313512798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))))))
private theorem no_v1402313512798 : ¬ MinimalInterpreter v1402313512798 :=
  chain_cut false 2 (by decide)

private def v1402312727774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v1402312727774 : ¬ MinimalInterpreter v1402312727774 :=
  chain_cut false 2 (by decide)

private def v1402312726366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v1402312726366 : ¬ MinimalInterpreter v1402312726366 :=
  chain_cut false 2 (by decide)

private def v1402313536286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1402313536286 : ¬ MinimalInterpreter v1402313536286 :=
  chain_cut false 2 (by decide)

private def v1402313530654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1402313530654 : ¬ MinimalInterpreter v1402313530654 :=
  chain_cut false 2 (by decide)

private def v1402313487134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1402313487134 : ¬ MinimalInterpreter v1402313487134 :=
  chain_cut false 2 (by decide)

private def v1402313481502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 3))))))))
private theorem no_v1402313481502 : ¬ MinimalInterpreter v1402313481502 :=
  chain_cut false 2 (by decide)

private def v1402313469214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1402313469214 : ¬ MinimalInterpreter v1402313469214 :=
  chain_cut false 2 (by decide)

private def v1402312749854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1402312749854 : ¬ MinimalInterpreter v1402312749854 :=
  chain_cut false 2 (by decide)

private def v1402312744222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1402312744222 : ¬ MinimalInterpreter v1402312744222 :=
  chain_cut false 2 (by decide)

private def v1402312700702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v1402312700702 : ¬ MinimalInterpreter v1402312700702 :=
  chain_cut false 2 (by decide)

private def v1402312504094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v1402312504094 : ¬ MinimalInterpreter v1402312504094 :=
  chain_cut false 2 (by decide)

private def v1402312695070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.var 3)))))))
private theorem no_v1402312695070 : ¬ MinimalInterpreter v1402312695070 :=
  chain_cut false 2 (by decide)

private def v1402312682782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.var 3)))))))
private theorem no_v1402312682782 : ¬ MinimalInterpreter v1402312682782 :=
  chain_cut false 2 (by decide)

private def v1402312498462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.var 3)))))))
private theorem no_v1402312498462 : ¬ MinimalInterpreter v1402312498462 :=
  chain_cut false 2 (by decide)

private def v1402312486174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.lam (.var 3)))))))
private theorem no_v1402312486174 : ¬ MinimalInterpreter v1402312486174 :=
  chain_cut false 2 (by decide)

private def v1402312437022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.lam (.var 3)))))))
private theorem no_v1402312437022 : ¬ MinimalInterpreter v1402312437022 :=
  chain_cut false 2 (by decide)

private def v1402332410654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1402332410654 : ¬ MinimalInterpreter v1402332410654 :=
  chain_cut false 2 (by decide)

private def v1402332405022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1402332405022 : ¬ MinimalInterpreter v1402332405022 :=
  chain_cut false 2 (by decide)

private def v1402332361502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1402332361502 : ¬ MinimalInterpreter v1402332361502 :=
  chain_cut false 2 (by decide)

private def v1402332355870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 3))))))))
private theorem no_v1402332355870 : ¬ MinimalInterpreter v1402332355870 :=
  chain_cut false 2 (by decide)

private def v1402332343582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1402332343582 : ¬ MinimalInterpreter v1402332343582 :=
  chain_cut false 2 (by decide)

private def v1402333590302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1402333590302 : ¬ MinimalInterpreter v1402333590302 :=
  chain_cut false 2 (by decide)

private def v1402333584670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1402333584670 : ¬ MinimalInterpreter v1402333584670 :=
  chain_cut false 2 (by decide)

private def v1402330444574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1402330444574 : ¬ MinimalInterpreter v1402330444574 :=
  chain_cut false 2 (by decide)

private def v1402330438942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1402330438942 : ¬ MinimalInterpreter v1402330438942 :=
  chain_cut false 2 (by decide)

private def v1402407591134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402407591134 : ¬ MinimalInterpreter v1402407591134 :=
  chain_cut false 4 (by decide)

private def v1402407589726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 3)))))))))
private theorem no_v1402407589726 : ¬ MinimalInterpreter v1402407589726 :=
  chain_cut false 4 (by decide)

private def v1402407578846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 3)))))))))
private theorem no_v1402407578846 : ¬ MinimalInterpreter v1402407578846 :=
  chain_cut false 4 (by decide)

private def v1402407577438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 3))))))))
private theorem no_v1402407577438 : ¬ MinimalInterpreter v1402407577438 :=
  chain_cut false 4 (by decide)

private def v1402407574366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 3))))))))
private theorem no_v1402407574366 : ¬ MinimalInterpreter v1402407574366 :=
  chain_cut false 4 (by decide)

private def v1402407886046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402407886046 : ¬ MinimalInterpreter v1402407886046 :=
  chain_cut false 4 (by decide)

private def v1402407884638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))))))
private theorem no_v1402407884638 : ¬ MinimalInterpreter v1402407884638 :=
  chain_cut false 4 (by decide)

private def v1402407908126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1402407908126 : ¬ MinimalInterpreter v1402407908126 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407902494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1402407902494 : ¬ MinimalInterpreter v1402407902494 :=
  cost_cut true 7 (by decide)

private def v1402407858974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1402407858974 : ¬ MinimalInterpreter v1402407858974 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407853342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 3))))))))
private theorem no_v1402407853342 : ¬ MinimalInterpreter v1402407853342 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407841054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1402407841054 : ¬ MinimalInterpreter v1402407841054 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402409087774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1402409087774 : ¬ MinimalInterpreter v1402409087774 :=
  fun he => _root_.Blc.Floor40.WeightedRows.ex_e302897459998 he.1

private def v1402409082142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1402409082142 : ¬ MinimalInterpreter v1402409082142 :=
  w_cut false 0 (by decide)

private def v1402413784286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 3))))))))))
private theorem no_v1402413784286 : ¬ MinimalInterpreter v1402413784286 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)

private def v1402413782878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))))))
private theorem no_v1402413782878 : ¬ MinimalInterpreter v1402413782878 :=
  dead_cut (b := (.app (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))))))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))))))) 11 (by decide) (by decide)

private def v1402413806366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3))))))))))
private theorem no_v1402413806366 : ¬ MinimalInterpreter v1402413806366 :=
  fun he => _root_.Certgen.R302902178590.excluded he.1

private def v1402413800734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))))))
private theorem no_v1402413800734 : ¬ MinimalInterpreter v1402413800734 :=
  dead_cut (b := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3)))))))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))))) 41 (by decide) (by decide)

private def v1402401201374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 3)))))))))
private theorem no_v1402401201374 : ¬ MinimalInterpreter v1402401201374 :=
  w_cut false 0 (by decide)

private def v1402401199966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))))
private theorem no_v1402401199966 : ¬ MinimalInterpreter v1402401199966 :=
  w_cut false 0 (by decide)

private def v1402401223454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1402401223454 : ¬ MinimalInterpreter v1402401223454 :=
  w_cut false 0 (by decide)

private def v1402401217822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1402401217822 : ¬ MinimalInterpreter v1402401217822 :=
  w_cut false 0 (by decide)

theorem four89 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,1,0,3]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,1,0,3] = [v1402308500702,v1402308499294,v1402308488414,v1402308487006,v1402308483934,v1402308304094,v1402308302686,v1402308291806,v1402308242654,v1402308290398,v1402308287326,v1402308241246,v1402308238174,v1402308225886,v1402313219294,v1402313217886,v1402313207006,v1402313205598,v1402313202526,v1402313514206,v1402313512798,v1402312727774,v1402312726366,v1402313536286,v1402313530654,v1402313487134,v1402313481502,v1402313469214,v1402312749854,v1402312744222,v1402312700702,v1402312504094,v1402312695070,v1402312682782,v1402312498462,v1402312486174,v1402312437022,v1402332410654,v1402332405022,v1402332361502,v1402332355870,v1402332343582,v1402333590302,v1402333584670,v1402330444574,v1402330438942,v1402407591134,v1402407589726,v1402407578846,v1402407577438,v1402407574366,v1402407886046,v1402407884638,v1402407908126,v1402407902494,v1402407858974,v1402407853342,v1402407841054,v1402409087774,v1402409082142,v1402413784286,v1402413782878,v1402413806366,v1402413800734,v1402401201374,v1402401199966,v1402401223454,v1402401217822] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308500702) (.cons (no_v1402308499294) (.cons (no_v1402308488414) (.cons (no_v1402308487006) (.cons (no_v1402308483934) (.cons (no_v1402308304094) (.cons (no_v1402308302686) (.cons (no_v1402308291806) (.cons (no_v1402308242654) (.cons (no_v1402308290398) (.cons (no_v1402308287326) (.cons (no_v1402308241246) (.cons (no_v1402308238174) (.cons (no_v1402308225886) (.cons (no_v1402313219294) (.cons (no_v1402313217886) (.cons (no_v1402313207006) (.cons (no_v1402313205598) (.cons (no_v1402313202526) (.cons (no_v1402313514206) (.cons (no_v1402313512798) (.cons (no_v1402312727774) (.cons (no_v1402312726366) (.cons (no_v1402313536286) (.cons (no_v1402313530654) (.cons (no_v1402313487134) (.cons (no_v1402313481502) (.cons (no_v1402313469214) (.cons (no_v1402312749854) (.cons (no_v1402312744222) (.cons (no_v1402312700702) (.cons (no_v1402312504094) (.cons (no_v1402312695070) (.cons (no_v1402312682782) (.cons (no_v1402312498462) (.cons (no_v1402312486174) (.cons (no_v1402312437022) (.cons (no_v1402332410654) (.cons (no_v1402332405022) (.cons (no_v1402332361502) (.cons (no_v1402332355870) (.cons (no_v1402332343582) (.cons (no_v1402333590302) (.cons (no_v1402333584670) (.cons (no_v1402330444574) (.cons (no_v1402330438942) (.cons (no_v1402407591134) (.cons (no_v1402407589726) (.cons (no_v1402407578846) (.cons (no_v1402407577438) (.cons (no_v1402407574366) (.cons (no_v1402407886046) (.cons (no_v1402407884638) (.cons (no_v1402407908126) (.cons (no_v1402407902494) (.cons (no_v1402407858974) (.cons (no_v1402407853342) (.cons (no_v1402407841054) (.cons (no_v1402409087774) (.cons (no_v1402409082142) (.cons (no_v1402413784286) (.cons (no_v1402413782878) (.cons (no_v1402413806366) (.cons (no_v1402413800734) (.cons (no_v1402401201374) (.cons (no_v1402401199966) (.cons (no_v1402401223454) (.cons (no_v1402401217822) .nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))

private def v1402308500718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402308500718 : ¬ MinimalInterpreter v1402308500718 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308499310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))))
private theorem no_v1402308499310 : ¬ MinimalInterpreter v1402308499310 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308488430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402308488430 : ¬ MinimalInterpreter v1402308488430 :=
  cost_cut false 2 (by decide)

private def v1402308487022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))))
private theorem no_v1402308487022 : ¬ MinimalInterpreter v1402308487022 :=
  cost_cut false 2 (by decide)

private def v1402308483950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))))
private theorem no_v1402308483950 : ¬ MinimalInterpreter v1402308483950 :=
  cost_cut false 2 (by decide)

private def v1402308304110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402308304110 : ¬ MinimalInterpreter v1402308304110 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308302702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 2))))))))
private theorem no_v1402308302702 : ¬ MinimalInterpreter v1402308302702 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402308291822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 2))))))))
private theorem no_v1402308291822 : ¬ MinimalInterpreter v1402308291822 :=
  cost_cut false 2 (by decide)

private def v1402308242670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 1) (.var 2))))))))
private theorem no_v1402308242670 : ¬ MinimalInterpreter v1402308242670 :=
  cost_cut false 2 (by decide)

private def v1402308290414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 2)))))))
private theorem no_v1402308290414 : ¬ MinimalInterpreter v1402308290414 :=
  cost_cut false 2 (by decide)

private def v1402308287342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 2)))))))
private theorem no_v1402308287342 : ¬ MinimalInterpreter v1402308287342 :=
  cost_cut false 2 (by decide)

private def v1402308241262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))) (.var 2)))))))
private theorem no_v1402308241262 : ¬ MinimalInterpreter v1402308241262 :=
  cost_cut false 2 (by decide)

private def v1402308238190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 1)) (.var 2)))))))
private theorem no_v1402308238190 : ¬ MinimalInterpreter v1402308238190 :=
  cost_cut false 2 (by decide)

private def v1402308225902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)) (.var 2)))))))
private theorem no_v1402308225902 : ¬ MinimalInterpreter v1402308225902 :=
  cost_cut false 2 (by decide)

private def v1402313219310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402313219310 : ¬ MinimalInterpreter v1402313219310 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402313217902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))))
private theorem no_v1402313217902 : ¬ MinimalInterpreter v1402313217902 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1402313207022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402313207022 : ¬ MinimalInterpreter v1402313207022 :=
  cost_cut false 2 (by decide)

private def v1402313205614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))))
private theorem no_v1402313205614 : ¬ MinimalInterpreter v1402313205614 :=
  cost_cut false 2 (by decide)

private def v1402313202542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))))
private theorem no_v1402313202542 : ¬ MinimalInterpreter v1402313202542 :=
  cost_cut false 2 (by decide)

private def v1402313530478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1402313530478 : ¬ MinimalInterpreter v1402313530478 :=
  chain_cut false 2 (by decide)

private def v1402313477358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2))))))))
private theorem no_v1402313477358 : ¬ MinimalInterpreter v1402313477358 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))) (.app (.var 0) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402313481326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.var 2)))))))
private theorem no_v1402313481326 : ¬ MinimalInterpreter v1402313481326 :=
  chain_cut false 2 (by decide)

private def v1402313469038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1402313469038 : ¬ MinimalInterpreter v1402313469038 :=
  chain_cut false 2 (by decide)

private def v1402313466734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.var 2)))))))
private theorem no_v1402313466734 : ¬ MinimalInterpreter v1402313466734 :=
  chain_cut false 2 (by decide)

private def v1402312744046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1402312744046 : ¬ MinimalInterpreter v1402312744046 :=
  chain_cut false 2 (by decide)

private def v1402312690926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312690926 : ¬ MinimalInterpreter v1402312690926 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 1))) (.app (.app (.var 0) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312494318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 1) (.var 2)))))))
private theorem no_v1402312494318 : ¬ MinimalInterpreter v1402312494318 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1402312694894 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 1))))) (.var 2))))))
private theorem no_v1402312694894 : ¬ MinimalInterpreter v1402312694894 :=
  chain_cut false 2 (by decide)

private def v1402312682606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 1)))) (.var 2))))))
private theorem no_v1402312682606 : ¬ MinimalInterpreter v1402312682606 :=
  chain_cut false 2 (by decide)

private def v1402312680302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.var 2))))))
private theorem no_v1402312680302 : ¬ MinimalInterpreter v1402312680302 :=
  chain_cut false 2 (by decide)

private def v1402312498286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 1)))) (.var 2))))))
private theorem no_v1402312498286 : ¬ MinimalInterpreter v1402312498286 :=
  chain_cut false 2 (by decide)

private def v1402312485998 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 1))) (.var 2))))))
private theorem no_v1402312485998 : ¬ MinimalInterpreter v1402312485998 :=
  chain_cut false 2 (by decide)

private def v1402312436846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 1))) (.var 2))))))
private theorem no_v1402312436846 : ¬ MinimalInterpreter v1402312436846 :=
  chain_cut false 2 (by decide)

private def v1402312483694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 1)) (.var 2))))))
private theorem no_v1402312483694 : ¬ MinimalInterpreter v1402312483694 :=
  chain_cut false 2 (by decide)

private def v1402312434542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 1)) (.var 2))))))
private theorem no_v1402312434542 : ¬ MinimalInterpreter v1402312434542 :=
  chain_cut false 2 (by decide)

private def v1402332093678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))))
private theorem no_v1402332093678 : ¬ MinimalInterpreter v1402332093678 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402332092270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))))
private theorem no_v1402332092270 : ¬ MinimalInterpreter v1402332092270 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1402332081390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))))
private theorem no_v1402332081390 : ¬ MinimalInterpreter v1402332081390 :=
  cost_cut false 2 (by decide)

private def v1402332079982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))))
private theorem no_v1402332079982 : ¬ MinimalInterpreter v1402332079982 :=
  cost_cut false 2 (by decide)

private def v1402332076910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))))
private theorem no_v1402332076910 : ¬ MinimalInterpreter v1402332076910 :=
  cost_cut false 2 (by decide)

private def v1402332404846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1402332404846 : ¬ MinimalInterpreter v1402332404846 :=
  chain_cut false 2 (by decide)

private def v1402332351726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2))))))))
private theorem no_v1402332351726 : ¬ MinimalInterpreter v1402332351726 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1402332355694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.var 2)))))))
private theorem no_v1402332355694 : ¬ MinimalInterpreter v1402332355694 :=
  chain_cut false 2 (by decide)

private def v1402332343406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1402332343406 : ¬ MinimalInterpreter v1402332343406 :=
  chain_cut false 2 (by decide)

private def v1402332341102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.var 2)))))))
private theorem no_v1402332341102 : ¬ MinimalInterpreter v1402332341102 :=
  chain_cut false 2 (by decide)

private def v1402333584494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1402333584494 : ¬ MinimalInterpreter v1402333584494 :=
  chain_cut false 2 (by decide)

private def v1402330438766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1402330438766 : ¬ MinimalInterpreter v1402330438766 :=
  chain_cut false 2 (by decide)

private def v1402407902318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1402407902318 : ¬ MinimalInterpreter v1402407902318 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407849198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2))))))))
private theorem no_v1402407849198 : ¬ MinimalInterpreter v1402407849198 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.lam (.var 1))) (.var 1))) (.app (.app (.var 0) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1402407853166 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.var 2)))))))
private theorem no_v1402407853166 : ¬ MinimalInterpreter v1402407853166 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407840878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1402407840878 : ¬ MinimalInterpreter v1402407840878 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402407838574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 1)) (.var 2)))))))
private theorem no_v1402407838574 : ¬ MinimalInterpreter v1402407838574 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)

private def v1402409081966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1402409081966 : ¬ MinimalInterpreter v1402409081966 :=
  cycle_cut 2 11 (by decide) (by decide)

private def v1402413800558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2))))))))
private theorem no_v1402413800558 : ¬ MinimalInterpreter v1402413800558 :=
  id_cycle_cut 2 23 (by decide) (by decide)

private def v1402401217646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1402401217646 : ¬ MinimalInterpreter v1402401217646 :=
  w_cut false 0 (by decide)

theorem four90 : BadRow (markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,1,1,2]) := by
  have h : markedRow ⟨0,2,0,3,5,4⟩ [0,0] [0,0,1,1,2] = [v1402308500718,v1402308499310,v1402308488430,v1402308487022,v1402308483950,v1402308304110,v1402308302702,v1402308291822,v1402308242670,v1402308290414,v1402308287342,v1402308241262,v1402308238190,v1402308225902,v1402313219310,v1402313217902,v1402313207022,v1402313205614,v1402313202542,v1402313530478,v1402313477358,v1402313481326,v1402313469038,v1402313466734,v1402312744046,v1402312690926,v1402312494318,v1402312694894,v1402312682606,v1402312680302,v1402312498286,v1402312485998,v1402312436846,v1402312483694,v1402312434542,v1402332093678,v1402332092270,v1402332081390,v1402332079982,v1402332076910,v1402332404846,v1402332351726,v1402332355694,v1402332343406,v1402332341102,v1402333584494,v1402330438766,v1402407902318,v1402407849198,v1402407853166,v1402407840878,v1402407838574,v1402409081966,v1402413800558,v1402401217646] := by decide +kernel
  rw [h]
  exact (.cons (no_v1402308500718) (.cons (no_v1402308499310) (.cons (no_v1402308488430) (.cons (no_v1402308487022) (.cons (no_v1402308483950) (.cons (no_v1402308304110) (.cons (no_v1402308302702) (.cons (no_v1402308291822) (.cons (no_v1402308242670) (.cons (no_v1402308290414) (.cons (no_v1402308287342) (.cons (no_v1402308241262) (.cons (no_v1402308238190) (.cons (no_v1402308225902) (.cons (no_v1402313219310) (.cons (no_v1402313217902) (.cons (no_v1402313207022) (.cons (no_v1402313205614) (.cons (no_v1402313202542) (.cons (no_v1402313530478) (.cons (no_v1402313477358) (.cons (no_v1402313481326) (.cons (no_v1402313469038) (.cons (no_v1402313466734) (.cons (no_v1402312744046) (.cons (no_v1402312690926) (.cons (no_v1402312494318) (.cons (no_v1402312694894) (.cons (no_v1402312682606) (.cons (no_v1402312680302) (.cons (no_v1402312498286) (.cons (no_v1402312485998) (.cons (no_v1402312436846) (.cons (no_v1402312483694) (.cons (no_v1402312434542) (.cons (no_v1402332093678) (.cons (no_v1402332092270) (.cons (no_v1402332081390) (.cons (no_v1402332079982) (.cons (no_v1402332076910) (.cons (no_v1402332404846) (.cons (no_v1402332351726) (.cons (no_v1402332355694) (.cons (no_v1402332343406) (.cons (no_v1402332341102) (.cons (no_v1402333584494) (.cons (no_v1402330438766) (.cons (no_v1402407902318) (.cons (no_v1402407849198) (.cons (no_v1402407853166) (.cons (no_v1402407840878) (.cons (no_v1402407838574) (.cons (no_v1402409081966) (.cons (no_v1402413800558) (.cons (no_v1402401217646) .nil)))))))))))))))))))))))))))))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
