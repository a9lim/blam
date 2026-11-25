import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem four406 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [2,0,0,1,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [2,0,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four407 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [2,0,1,0,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [2,0,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four408 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [1,0] [2,1,0,0,0]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [1,0] [2,1,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

theorem four409 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [0,0,2,2]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [0,0,2,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381268298990 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v1381268298990 : ¬ MinimalInterpreter v1381268298990 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381268297582 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v1381268297582 : ¬ MinimalInterpreter v1381268297582 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381268286702 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v1381268286702 : ¬ MinimalInterpreter v1381268286702 :=
  cost_cut false 1 (by decide)

private def v1381268285294 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v1381268285294 : ¬ MinimalInterpreter v1381268285294 :=
  cost_cut false 1 (by decide)

private def v1381268282222 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v1381268282222 : ¬ MinimalInterpreter v1381268282222 :=
  cost_cut false 1 (by decide)

private def v1380462992622 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2))))))))
private theorem no_v1380462992622 : ¬ MinimalInterpreter v1380462992622 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 2)))) (.app (.var 0) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1380462991214 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2)))))))
private theorem no_v1380462991214 : ¬ MinimalInterpreter v1380462991214 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.var 0)) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 2))) (.app (.app (.var 0) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1380462980334 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 2)))))))
private theorem no_v1380462980334 : ¬ MinimalInterpreter v1380462980334 :=
  cost_cut false 1 (by decide)

private def v1380462978926 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 2))))))
private theorem no_v1380462978926 : ¬ MinimalInterpreter v1380462978926 :=
  cost_cut false 1 (by decide)

private def v1380462975854 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 2))))))
private theorem no_v1380462975854 : ¬ MinimalInterpreter v1380462975854 :=
  cost_cut false 1 (by decide)

theorem four410 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [0,1,1,2]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [0,1,1,2] = [v1381268298990,v1381268297582,v1381268286702,v1381268285294,v1381268282222,v1380462992622,v1380462991214,v1380462980334,v1380462978926,v1380462975854] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381268298990) (.cons (no_v1381268297582) (.cons (no_v1381268286702) (.cons (no_v1381268285294) (.cons (no_v1381268282222) (.cons (no_v1380462992622) (.cons (no_v1380462991214) (.cons (no_v1380462980334) (.cons (no_v1380462978926) (.cons (no_v1380462975854) .nil))))))))))

private def v1381268298998 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))
private theorem no_v1381268298998 : ¬ MinimalInterpreter v1381268298998 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381268297590 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))
private theorem no_v1381268297590 : ¬ MinimalInterpreter v1381268297590 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381268286710 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1)))))))
private theorem no_v1381268286710 : ¬ MinimalInterpreter v1381268286710 :=
  cost_cut false 1 (by decide)

private def v1381268285302 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1))))))
private theorem no_v1381268285302 : ¬ MinimalInterpreter v1381268285302 :=
  cost_cut false 1 (by decide)

private def v1381268282230 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1))))))
private theorem no_v1381268282230 : ¬ MinimalInterpreter v1381268282230 :=
  cost_cut false 1 (by decide)

private def v1380462992630 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1))))))))
private theorem no_v1380462992630 : ¬ MinimalInterpreter v1380462992630 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 1)))) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1380462991222 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1)))))))
private theorem no_v1380462991222 : ¬ MinimalInterpreter v1380462991222 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1380462980342 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 1)))))))
private theorem no_v1380462980342 : ¬ MinimalInterpreter v1380462980342 :=
  cost_cut false 1 (by decide)

private def v1380462978934 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 1))))))
private theorem no_v1380462978934 : ¬ MinimalInterpreter v1380462978934 :=
  cost_cut false 1 (by decide)

private def v1380462975862 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 1))))))
private theorem no_v1380462975862 : ¬ MinimalInterpreter v1380462975862 :=
  cost_cut false 1 (by decide)

theorem four411 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [0,1,2,1]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [0,1,2,1] = [v1381268298998,v1381268297590,v1381268286710,v1381268285302,v1381268282230,v1380462992630,v1380462991222,v1380462980342,v1380462978934,v1380462975862] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381268298998) (.cons (no_v1381268297590) (.cons (no_v1381268286710) (.cons (no_v1381268285302) (.cons (no_v1381268282230) (.cons (no_v1380462992630) (.cons (no_v1380462991222) (.cons (no_v1380462980342) (.cons (no_v1380462978934) (.cons (no_v1380462975862) .nil))))))))))

theorem four412 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [0,2,0,2]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [0,2,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

end Blc.SelfintSingleObject.Rows40
