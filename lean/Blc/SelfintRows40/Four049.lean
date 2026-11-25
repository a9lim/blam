import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1381370849082 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.var 0)))))))))
private theorem no_v1381370849082 : ¬ MinimalInterpreter v1381370849082 :=
  cost_cut false 1 (by decide)

private def v1381370848730 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 1)) (.var 0))))))))
private theorem no_v1381370848730 : ¬ MinimalInterpreter v1381370848730 :=
  cost_cut false 1 (by decide)

private def v1381370846010 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 1) (.var 0))))))))
private theorem no_v1381370846010 : ¬ MinimalInterpreter v1381370846010 :=
  cost_cut false 1 (by decide)

private def v1381370845658 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0)))))))
private theorem no_v1381370845658 : ¬ MinimalInterpreter v1381370845658 :=
  cost_cut false 1 (by decide)

private def v1381370844890 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 1)) (.var 0)))))))
private theorem no_v1381370844890 : ¬ MinimalInterpreter v1381370844890 :=
  cost_cut false 1 (by decide)

private def v1381370406714 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))))))))
private theorem no_v1381370406714 : ¬ MinimalInterpreter v1381370406714 :=
  cost_cut false 1 (by decide)

private def v1381370406362 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
private theorem no_v1381370406362 : ¬ MinimalInterpreter v1381370406362 :=
  cost_cut false 1 (by decide)

private def v1381370403642 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 1) (.var 0)))))))
private theorem no_v1381370403642 : ¬ MinimalInterpreter v1381370403642 :=
  cost_cut false 1 (by decide)

private def v1381370293050 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 1) (.var 0)))))))
private theorem no_v1381370293050 : ¬ MinimalInterpreter v1381370293050 :=
  cost_cut false 1 (by decide)

private def v1381370403290 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1)))) (.var 0))))))
private theorem no_v1381370403290 : ¬ MinimalInterpreter v1381370403290 :=
  cost_cut false 1 (by decide)

private def v1381370402522 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1))) (.var 0))))))
private theorem no_v1381370402522 : ¬ MinimalInterpreter v1381370402522 :=
  cost_cut false 1 (by decide)

private def v1381370292698 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1))) (.var 0))))))
private theorem no_v1381370292698 : ¬ MinimalInterpreter v1381370292698 :=
  cost_cut false 1 (by decide)

private def v1381370291930 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1)) (.var 0))))))
private theorem no_v1381370291930 : ¬ MinimalInterpreter v1381370291930 :=
  cost_cut false 1 (by decide)

private def v1381370264282 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1)) (.var 0))))))
private theorem no_v1381370264282 : ¬ MinimalInterpreter v1381370264282 :=
  cost_cut false 1 (by decide)

theorem four343 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,0,1,1,0]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,0,1,1,0] = [v1381370849082,v1381370848730,v1381370846010,v1381370845658,v1381370844890,v1381370406714,v1381370406362,v1381370403642,v1381370293050,v1381370403290,v1381370402522,v1381370292698,v1381370291930,v1381370264282] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370849082) (.cons (no_v1381370848730) (.cons (no_v1381370846010) (.cons (no_v1381370845658) (.cons (no_v1381370844890) (.cons (no_v1381370406714) (.cons (no_v1381370406362) (.cons (no_v1381370403642) (.cons (no_v1381370293050) (.cons (no_v1381370403290) (.cons (no_v1381370402522) (.cons (no_v1381370292698) (.cons (no_v1381370291930) (.cons (no_v1381370264282) .nil))))))))))))))

theorem four344 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,0,2,0,0]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,0,2,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381370852150 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 1)))))))))
private theorem no_v1381370852150 : ¬ MinimalInterpreter v1381370852150 :=
  cost_cut false 1 (by decide)

private def v1381370852054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))))))))
private theorem no_v1381370852054 : ¬ MinimalInterpreter v1381370852054 :=
  cost_cut false 1 (by decide)

private def v1381370846518 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 1))))))))
private theorem no_v1381370846518 : ¬ MinimalInterpreter v1381370846518 :=
  cost_cut false 1 (by decide)

private def v1381370846422 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 1)))))))
private theorem no_v1381370846422 : ¬ MinimalInterpreter v1381370846422 :=
  cost_cut false 1 (by decide)

private def v1381370845014 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 1)))))))
private theorem no_v1381370845014 : ¬ MinimalInterpreter v1381370845014 :=
  cost_cut false 1 (by decide)

private def v1381370409782 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v1381370409782 : ¬ MinimalInterpreter v1381370409782 :=
  cost_cut false 1 (by decide)

private def v1381370409686 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v1381370409686 : ¬ MinimalInterpreter v1381370409686 :=
  cost_cut false 1 (by decide)

private def v1381370404150 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 1)))))))
private theorem no_v1381370404150 : ¬ MinimalInterpreter v1381370404150 :=
  cost_cut false 1 (by decide)

private def v1381370293558 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v1381370293558 : ¬ MinimalInterpreter v1381370293558 :=
  cost_cut false 1 (by decide)

private def v1381370404054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 1))))))
private theorem no_v1381370404054 : ¬ MinimalInterpreter v1381370404054 :=
  cost_cut false 1 (by decide)

private def v1381370402646 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 1))))))
private theorem no_v1381370402646 : ¬ MinimalInterpreter v1381370402646 :=
  cost_cut false 1 (by decide)

private def v1381370293462 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v1381370293462 : ¬ MinimalInterpreter v1381370293462 :=
  cost_cut false 1 (by decide)

private def v1381370292054 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)) (.var 1))))))
private theorem no_v1381370292054 : ¬ MinimalInterpreter v1381370292054 :=
  cost_cut false 1 (by decide)

private def v1381370264406 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v1381370264406 : ¬ MinimalInterpreter v1381370264406 :=
  cost_cut false 1 (by decide)

theorem four345 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,1,0,0,1]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,1,0,0,1] = [v1381370852150,v1381370852054,v1381370846518,v1381370846422,v1381370845014,v1381370409782,v1381370409686,v1381370404150,v1381370293558,v1381370404054,v1381370402646,v1381370293462,v1381370292054,v1381370264406] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370852150) (.cons (no_v1381370852054) (.cons (no_v1381370846518) (.cons (no_v1381370846422) (.cons (no_v1381370845014) (.cons (no_v1381370409782) (.cons (no_v1381370409686) (.cons (no_v1381370404150) (.cons (no_v1381370293558) (.cons (no_v1381370404054) (.cons (no_v1381370402646) (.cons (no_v1381370293462) (.cons (no_v1381370292054) (.cons (no_v1381370264406) .nil))))))))))))))

private def v1381370852154 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 1) (.var 0)))))))))
private theorem no_v1381370852154 : ¬ MinimalInterpreter v1381370852154 :=
  cost_cut false 1 (by decide)

private def v1381370852058 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 1)) (.var 0))))))))
private theorem no_v1381370852058 : ¬ MinimalInterpreter v1381370852058 :=
  cost_cut false 1 (by decide)

private def v1381370846522 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))))))))
private theorem no_v1381370846522 : ¬ MinimalInterpreter v1381370846522 :=
  cost_cut false 1 (by decide)

private def v1381370846426 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))))))
private theorem no_v1381370846426 : ¬ MinimalInterpreter v1381370846426 :=
  cost_cut false 1 (by decide)

private def v1381370845018 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.var 0)))))))
private theorem no_v1381370845018 : ¬ MinimalInterpreter v1381370845018 :=
  cost_cut false 1 (by decide)

private def v1381370409786 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v1381370409786 : ¬ MinimalInterpreter v1381370409786 :=
  cost_cut false 1 (by decide)

private def v1381370409690 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v1381370409690 : ¬ MinimalInterpreter v1381370409690 :=
  cost_cut false 1 (by decide)

private def v1381370404154 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 1) (.var 0)))))))
private theorem no_v1381370404154 : ¬ MinimalInterpreter v1381370404154 :=
  cost_cut false 1 (by decide)

private def v1381370293562 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v1381370293562 : ¬ MinimalInterpreter v1381370293562 :=
  cost_cut false 1 (by decide)

private def v1381370404058 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1)))) (.var 0))))))
private theorem no_v1381370404058 : ¬ MinimalInterpreter v1381370404058 :=
  cost_cut false 1 (by decide)

private def v1381370402650 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1))) (.var 0))))))
private theorem no_v1381370402650 : ¬ MinimalInterpreter v1381370402650 :=
  cost_cut false 1 (by decide)

private def v1381370293466 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v1381370293466 : ¬ MinimalInterpreter v1381370293466 :=
  cost_cut false 1 (by decide)

private def v1381370292058 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1)) (.var 0))))))
private theorem no_v1381370292058 : ¬ MinimalInterpreter v1381370292058 :=
  cost_cut false 1 (by decide)

private def v1381370264410 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v1381370264410 : ¬ MinimalInterpreter v1381370264410 :=
  cost_cut false 1 (by decide)

theorem four346 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,1,0,1,0]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,1,0,1,0] = [v1381370852154,v1381370852058,v1381370846522,v1381370846426,v1381370845018,v1381370409786,v1381370409690,v1381370404154,v1381370293562,v1381370404058,v1381370402650,v1381370293466,v1381370292058,v1381370264410] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370852154) (.cons (no_v1381370852058) (.cons (no_v1381370846522) (.cons (no_v1381370846426) (.cons (no_v1381370845018) (.cons (no_v1381370409786) (.cons (no_v1381370409690) (.cons (no_v1381370404154) (.cons (no_v1381370293562) (.cons (no_v1381370404058) (.cons (no_v1381370402650) (.cons (no_v1381370293466) (.cons (no_v1381370292058) (.cons (no_v1381370264410) .nil))))))))))))))

private def v1381370852250 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.app (.var 0) (.var 0)))))))))
private theorem no_v1381370852250 : ¬ MinimalInterpreter v1381370852250 :=
  cost_cut false 1 (by decide)

private def v1381370852074 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 0))))))))
private theorem no_v1381370852074 : ¬ MinimalInterpreter v1381370852074 :=
  cost_cut false 1 (by decide)

private def v1381370846618 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 0))))))))
private theorem no_v1381370846618 : ¬ MinimalInterpreter v1381370846618 :=
  cost_cut false 1 (by decide)

private def v1381370846442 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 1) (.var 0))) (.var 0)))))))
private theorem no_v1381370846442 : ¬ MinimalInterpreter v1381370846442 :=
  cost_cut false 1 (by decide)

private def v1381370845034 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)))))))
private theorem no_v1381370845034 : ¬ MinimalInterpreter v1381370845034 :=
  cost_cut false 1 (by decide)

private def v1381370409882 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v1381370409882 : ¬ MinimalInterpreter v1381370409882 :=
  cost_cut false 1 (by decide)

private def v1381370409706 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v1381370409706 : ¬ MinimalInterpreter v1381370409706 :=
  cost_cut false 1 (by decide)

private def v1381370404250 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0)))))))
private theorem no_v1381370404250 : ¬ MinimalInterpreter v1381370404250 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370293658 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v1381370293658 : ¬ MinimalInterpreter v1381370293658 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370404074 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0)))) (.var 0))))))
private theorem no_v1381370404074 : ¬ MinimalInterpreter v1381370404074 :=
  cost_cut false 1 (by decide)

private def v1381370402666 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0))) (.var 0))))))
private theorem no_v1381370402666 : ¬ MinimalInterpreter v1381370402666 :=
  cost_cut false 1 (by decide)

private def v1381370293482 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v1381370293482 : ¬ MinimalInterpreter v1381370293482 :=
  cost_cut false 1 (by decide)

private def v1381370292074 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.var 0))))))
private theorem no_v1381370292074 : ¬ MinimalInterpreter v1381370292074 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370264426 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v1381370264426 : ¬ MinimalInterpreter v1381370264426 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four347 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,1,1,0,0]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,1,1,0,0] = [v1381370852250,v1381370852074,v1381370846618,v1381370846442,v1381370845034,v1381370409882,v1381370409706,v1381370404250,v1381370293658,v1381370404074,v1381370402666,v1381370293482,v1381370292074,v1381370264426] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370852250) (.cons (no_v1381370852074) (.cons (no_v1381370846618) (.cons (no_v1381370846442) (.cons (no_v1381370845034) (.cons (no_v1381370409882) (.cons (no_v1381370409706) (.cons (no_v1381370404250) (.cons (no_v1381370293658) (.cons (no_v1381370404074) (.cons (no_v1381370402666) (.cons (no_v1381370293482) (.cons (no_v1381370292074) (.cons (no_v1381370264426) .nil))))))))))))))

theorem four348 : BadRow (markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,2,0,0,0]) := by
  have h : markedRow ⟨1,2,0,2,5,4⟩ [0,0] [2,2,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1400965483758 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1400965483758 : ¬ MinimalInterpreter v1400965483758 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1))))) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965483374 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1400965483374 : ¬ MinimalInterpreter v1400965483374 :=
  chain_cut false 2 (by decide)

private def v1400965477614 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1400965477614 : ¬ MinimalInterpreter v1400965477614 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965477230 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1400965477230 : ¬ MinimalInterpreter v1400965477230 :=
  chain_cut false 2 (by decide)

private def v1400965475694 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1400965475694 : ¬ MinimalInterpreter v1400965475694 :=
  chain_cut false 2 (by decide)

private def v1400965385454 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1400965385454 : ¬ MinimalInterpreter v1400965385454 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965385070 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1400965385070 : ¬ MinimalInterpreter v1400965385070 :=
  chain_cut false 2 (by decide)

private def v1400965379310 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2)))))))
private theorem no_v1400965379310 : ¬ MinimalInterpreter v1400965379310 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1))) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965354734 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v1400965354734 : ¬ MinimalInterpreter v1400965354734 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1400965378926 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 2))))))
private theorem no_v1400965378926 : ¬ MinimalInterpreter v1400965378926 :=
  chain_cut false 2 (by decide)

private def v1400965377390 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2))))))
private theorem no_v1400965377390 : ¬ MinimalInterpreter v1400965377390 :=
  chain_cut false 2 (by decide)

private def v1400965354350 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v1400965354350 : ¬ MinimalInterpreter v1400965354350 :=
  chain_cut false 2 (by decide)

private def v1400965352814 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 2))))))
private theorem no_v1400965352814 : ¬ MinimalInterpreter v1400965352814 :=
  chain_cut false 2 (by decide)

private def v1400965346670 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v1400965346670 : ¬ MinimalInterpreter v1400965346670 :=
  chain_cut false 2 (by decide)

private def v1400967843054 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1400967843054 : ¬ MinimalInterpreter v1400967843054 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400967842670 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1400967842670 : ¬ MinimalInterpreter v1400967842670 :=
  chain_cut false 2 (by decide)

private def v1400967836910 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1400967836910 : ¬ MinimalInterpreter v1400967836910 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400967836526 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1400967836526 : ¬ MinimalInterpreter v1400967836526 :=
  chain_cut false 2 (by decide)

private def v1400967834990 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1400967834990 : ¬ MinimalInterpreter v1400967834990 :=
  chain_cut false 2 (by decide)

private def v1400967990510 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1400967990510 : ¬ MinimalInterpreter v1400967990510 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.app (.var 0) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1400967990126 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1400967990126 : ¬ MinimalInterpreter v1400967990126 :=
  chain_cut false 2 (by decide)

private def v1400967597294 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1400967597294 : ¬ MinimalInterpreter v1400967597294 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.app (.var 0) (.var 0)) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1400967596910 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1400967596910 : ¬ MinimalInterpreter v1400967596910 :=
  chain_cut false 2 (by decide)

private def v1400977280238 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1400977280238 : ¬ MinimalInterpreter v1400977280238 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400977279854 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1400977279854 : ¬ MinimalInterpreter v1400977279854 :=
  cost_cut false 3 (by decide)

private def v1400977274094 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))
private theorem no_v1400977274094 : ¬ MinimalInterpreter v1400977274094 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400977273710 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))))
private theorem no_v1400977273710 : ¬ MinimalInterpreter v1400977273710 :=
  cost_cut false 3 (by decide)

private def v1400977272174 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))))
private theorem no_v1400977272174 : ¬ MinimalInterpreter v1400977272174 :=
  cost_cut false 3 (by decide)

private def v1400977427694 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1400977427694 : ¬ MinimalInterpreter v1400977427694 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide))))))

private def v1400977427310 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1400977427310 : ¬ MinimalInterpreter v1400977427310 :=
  cost_cut false 3 (by decide)

private def v1400978017518 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v1400978017518 : ¬ MinimalInterpreter v1400978017518 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))

private def v1400978017134 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v1400978017134 : ¬ MinimalInterpreter v1400978017134 :=
  cost_cut false 3 (by decide)

private def v1400976444654 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v1400976444654 : ¬ MinimalInterpreter v1400976444654 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (so_dead (by decide) (.var 1)))) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))

private def v1400976444270 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v1400976444270 : ¬ MinimalInterpreter v1400976444270 :=
  cycle_cut 3 6 (by decide) (by decide)

theorem four349 : BadRow (markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,0,0,1,2]) := by
  have h : markedRow ⟨1,2,1,2,5,3⟩ [0,1] [0,0,0,1,2] = [v1400965483758,v1400965483374,v1400965477614,v1400965477230,v1400965475694,v1400965385454,v1400965385070,v1400965379310,v1400965354734,v1400965378926,v1400965377390,v1400965354350,v1400965352814,v1400965346670,v1400967843054,v1400967842670,v1400967836910,v1400967836526,v1400967834990,v1400967990510,v1400967990126,v1400967597294,v1400967596910,v1400977280238,v1400977279854,v1400977274094,v1400977273710,v1400977272174,v1400977427694,v1400977427310,v1400978017518,v1400978017134,v1400976444654,v1400976444270] := by decide +kernel
  rw [h]
  exact (.cons (no_v1400965483758) (.cons (no_v1400965483374) (.cons (no_v1400965477614) (.cons (no_v1400965477230) (.cons (no_v1400965475694) (.cons (no_v1400965385454) (.cons (no_v1400965385070) (.cons (no_v1400965379310) (.cons (no_v1400965354734) (.cons (no_v1400965378926) (.cons (no_v1400965377390) (.cons (no_v1400965354350) (.cons (no_v1400965352814) (.cons (no_v1400965346670) (.cons (no_v1400967843054) (.cons (no_v1400967842670) (.cons (no_v1400967836910) (.cons (no_v1400967836526) (.cons (no_v1400967834990) (.cons (no_v1400967990510) (.cons (no_v1400967990126) (.cons (no_v1400967597294) (.cons (no_v1400967596910) (.cons (no_v1400977280238) (.cons (no_v1400977279854) (.cons (no_v1400977274094) (.cons (no_v1400977273710) (.cons (no_v1400977272174) (.cons (no_v1400977427694) (.cons (no_v1400977427310) (.cons (no_v1400978017518) (.cons (no_v1400978017134) (.cons (no_v1400976444654) (.cons (no_v1400976444270) .nil))))))))))))))))))))))))))))))))))

end Blc.SelfintSingleObject.Rows40
