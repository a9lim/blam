import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1382308505206 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))))))))
private theorem no_v1382308505206 : ¬ MinimalInterpreter v1382308505206 :=
  cost_cut false 2 (by decide)

private def v1382308505014 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))))))))
private theorem no_v1382308505014 : ¬ MinimalInterpreter v1382308505014 :=
  cost_cut false 2 (by decide)

private def v1382308477558 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))))))))
private theorem no_v1382308477558 : ¬ MinimalInterpreter v1382308477558 :=
  cost_cut false 2 (by decide)

private def v1382308477366 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)))))))
private theorem no_v1382308477366 : ¬ MinimalInterpreter v1382308477366 :=
  cost_cut false 2 (by decide)

private def v1382308470454 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)))))))
private theorem no_v1382308470454 : ¬ MinimalInterpreter v1382308470454 :=
  cost_cut false 2 (by decide)

private def v1382308878790 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v1382308878790 : ¬ MinimalInterpreter v1382308878790 :=
  chain_cut false 2 (by decide)

private def v1382308878022 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 1))))))))
private theorem no_v1382308878022 : ¬ MinimalInterpreter v1382308878022 :=
  chain_cut false 2 (by decide)

private def v1382308877878 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 1))) (.var 1)))))))
private theorem no_v1382308877878 : ¬ MinimalInterpreter v1382308877878 :=
  chain_cut false 2 (by decide)

private def v1382308768198 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v1382308768198 : ¬ MinimalInterpreter v1382308768198 :=
  chain_cut false 2 (by decide)

private def v1382308767430 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 1)))))))
private theorem no_v1382308767430 : ¬ MinimalInterpreter v1382308767430 :=
  chain_cut false 2 (by decide)

private def v1382308739782 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 1)))))))
private theorem no_v1382308739782 : ¬ MinimalInterpreter v1382308739782 :=
  chain_cut false 2 (by decide)

private def v1382308767286 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.var 1))))))
private theorem no_v1382308767286 : ¬ MinimalInterpreter v1382308767286 :=
  chain_cut false 2 (by decide)

private def v1382308739638 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 1))) (.var 1))))))
private theorem no_v1382308739638 : ¬ MinimalInterpreter v1382308739638 :=
  chain_cut false 2 (by decide)

theorem four623 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [2,0,1,1]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [2,0,1,1] = [v1382308505206,v1382308505014,v1382308477558,v1382308477366,v1382308470454,v1382308878790,v1382308878022,v1382308877878,v1382308768198,v1382308767430,v1382308739782,v1382308767286,v1382308739638] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308505206) (.cons (no_v1382308505014) (.cons (no_v1382308477558) (.cons (no_v1382308477366) (.cons (no_v1382308470454) (.cons (no_v1382308878790) (.cons (no_v1382308878022) (.cons (no_v1382308877878) (.cons (no_v1382308768198) (.cons (no_v1382308767430) (.cons (no_v1382308739782) (.cons (no_v1382308767286) (.cons (no_v1382308739638) .nil)))))))))))))

private def v1382308877882 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))))
private theorem no_v1382308877882 : ¬ MinimalInterpreter v1382308877882 :=
  chain_cut false 2 (by decide)

private def v1382308767290 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 2)))) (.var 0))))))
private theorem no_v1382308767290 : ¬ MinimalInterpreter v1382308767290 :=
  chain_cut false 2 (by decide)

private def v1382308739642 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 2))) (.var 0))))))
private theorem no_v1382308739642 : ¬ MinimalInterpreter v1382308739642 :=
  chain_cut false 2 (by decide)

theorem four624 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [2,0,2,0]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [2,0,2,0] = [v1382308877882,v1382308767290,v1382308739642] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308877882) (.cons (no_v1382308767290) (.cons (no_v1382308739642) .nil)))

private def v1382308505398 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1)))))))))
private theorem no_v1382308505398 : ¬ MinimalInterpreter v1382308505398 :=
  cost_cut false 2 (by decide)

private def v1382308505046 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1))))))))
private theorem no_v1382308505046 : ¬ MinimalInterpreter v1382308505046 :=
  cost_cut false 2 (by decide)

private def v1382308477750 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1))))))))
private theorem no_v1382308477750 : ¬ MinimalInterpreter v1382308477750 :=
  cost_cut false 2 (by decide)

private def v1382308477398 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1)))))))
private theorem no_v1382308477398 : ¬ MinimalInterpreter v1382308477398 :=
  cost_cut false 2 (by decide)

private def v1382308470486 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1)))))))
private theorem no_v1382308470486 : ¬ MinimalInterpreter v1382308470486 :=
  cost_cut false 2 (by decide)

private def v1382308879558 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 1)))))))))
private theorem no_v1382308879558 : ¬ MinimalInterpreter v1382308879558 :=
  chain_cut false 2 (by decide)

private def v1382308878150 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 1))))))))
private theorem no_v1382308878150 : ¬ MinimalInterpreter v1382308878150 :=
  chain_cut false 2 (by decide)

private def v1382308768966 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v1382308768966 : ¬ MinimalInterpreter v1382308768966 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382308766518 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.var 1)))))))
private theorem no_v1382308766518 : ¬ MinimalInterpreter v1382308766518 :=
  chain_cut false 2 (by decide)

private def v1382308767558 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1)))))))
private theorem no_v1382308767558 : ¬ MinimalInterpreter v1382308767558 :=
  chain_cut false 2 (by decide)

private def v1382308739910 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1)))))))
private theorem no_v1382308739910 : ¬ MinimalInterpreter v1382308739910 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382308739286 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.var 1))))))
private theorem no_v1382308739286 : ¬ MinimalInterpreter v1382308739286 :=
  chain_cut false 2 (by decide)

theorem four625 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [2,1,0,1]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [2,1,0,1] = [v1382308505398,v1382308505046,v1382308477750,v1382308477398,v1382308470486,v1382308879558,v1382308878150,v1382308768966,v1382308766518,v1382308767558,v1382308739910,v1382308739286] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308505398) (.cons (no_v1382308505046) (.cons (no_v1382308477750) (.cons (no_v1382308477398) (.cons (no_v1382308470486) (.cons (no_v1382308879558) (.cons (no_v1382308878150) (.cons (no_v1382308768966) (.cons (no_v1382308766518) (.cons (no_v1382308767558) (.cons (no_v1382308739910) (.cons (no_v1382308739286) .nil))))))))))))

private def v1382308505402 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v1382308505402 : ¬ MinimalInterpreter v1382308505402 :=
  cost_cut false 2 (by decide)

private def v1382308505050 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v1382308505050 : ¬ MinimalInterpreter v1382308505050 :=
  cost_cut false 2 (by decide)

private def v1382308477754 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v1382308477754 : ¬ MinimalInterpreter v1382308477754 :=
  cost_cut false 2 (by decide)

private def v1382308477402 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v1382308477402 : ¬ MinimalInterpreter v1382308477402 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1382308470490 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v1382308470490 : ¬ MinimalInterpreter v1382308470490 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1382308878106 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 0)))))))
private theorem no_v1382308878106 : ¬ MinimalInterpreter v1382308878106 :=
  chain_cut false 2 (by decide)

private def v1382308766522 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 0)))))))
private theorem no_v1382308766522 : ¬ MinimalInterpreter v1382308766522 :=
  chain_cut false 2 (by decide)

private def v1382308767514 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 0))))))
private theorem no_v1382308767514 : ¬ MinimalInterpreter v1382308767514 :=
  chain_cut false 2 (by decide)

private def v1382308739866 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0))))))
private theorem no_v1382308739866 : ¬ MinimalInterpreter v1382308739866 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382308739290 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 0))))))
private theorem no_v1382308739290 : ¬ MinimalInterpreter v1382308739290 :=
  chain_cut false 2 (by decide)

theorem four626 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [2,1,1,0]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [2,1,1,0] = [v1382308505402,v1382308505050,v1382308477754,v1382308477402,v1382308470490,v1382308878106,v1382308766522,v1382308767514,v1382308739866,v1382308739290] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308505402) (.cons (no_v1382308505050) (.cons (no_v1382308477754) (.cons (no_v1382308477402) (.cons (no_v1382308470490) (.cons (no_v1382308878106) (.cons (no_v1382308766522) (.cons (no_v1382308767514) (.cons (no_v1382308739866) (.cons (no_v1382308739290) .nil))))))))))

private def v1382308766618 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0)))))))
private theorem no_v1382308766618 : ¬ MinimalInterpreter v1382308766618 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.app (.var 0) (.var 0))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1382308739306 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0))))))
private theorem no_v1382308739306 : ¬ MinimalInterpreter v1382308739306 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_dead (by decide) (.app (.var 1) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four627 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [2,2,0,0]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [2,2,0,0] = [v1382308766618,v1382308739306] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308766618) (.cons (no_v1382308739306) .nil))

private def v1382308508470 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1382308508470 : ¬ MinimalInterpreter v1382308508470 :=
  chain_cut false 2 (by decide)

private def v1382308508374 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1382308508374 : ¬ MinimalInterpreter v1382308508374 :=
  chain_cut false 2 (by decide)

private def v1382308478262 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1382308478262 : ¬ MinimalInterpreter v1382308478262 :=
  chain_cut false 2 (by decide)

private def v1382308478166 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1382308478166 : ¬ MinimalInterpreter v1382308478166 :=
  chain_cut false 2 (by decide)

private def v1382308470614 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1382308470614 : ¬ MinimalInterpreter v1382308470614 :=
  chain_cut false 2 (by decide)

theorem four628 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [3,0,0,1]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [3,0,0,1] = [v1382308508470,v1382308508374,v1382308478262,v1382308478166,v1382308470614] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308508470) (.cons (no_v1382308508374) (.cons (no_v1382308478262) (.cons (no_v1382308478166) (.cons (no_v1382308470614) .nil)))))

private def v1382308508474 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1382308508474 : ¬ MinimalInterpreter v1382308508474 :=
  chain_cut false 2 (by decide)

private def v1382308508378 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.var 3) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1382308508378 : ¬ MinimalInterpreter v1382308508378 :=
  chain_cut false 2 (by decide)

private def v1382308478266 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1382308478266 : ¬ MinimalInterpreter v1382308478266 :=
  chain_cut false 2 (by decide)

private def v1382308478170 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1382308478170 : ¬ MinimalInterpreter v1382308478170 :=
  chain_cut false 2 (by decide)

private def v1382308470618 : Term := (.app (.lam (.lam (.app (.var 1) (.var 1)))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 3) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1382308470618 : ¬ MinimalInterpreter v1382308470618 :=
  chain_cut false 2 (by decide)

theorem four629 : BadRow (markedRow ⟨1,2,2,3,4,4⟩ [1,1] [3,0,1,0]) := by
  have h : markedRow ⟨1,2,2,3,4,4⟩ [1,1] [3,0,1,0] = [v1382308508474,v1382308508378,v1382308478266,v1382308478170,v1382308470618] := by decide +kernel
  rw [h]
  exact (.cons (no_v1382308508474) (.cons (no_v1382308508378) (.cons (no_v1382308478266) (.cons (no_v1382308478170) (.cons (no_v1382308470618) .nil)))))

end Blc.SelfintSingleObject.Rows40
