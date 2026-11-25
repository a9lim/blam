import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1381268311862 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1381268311862 : ¬ MinimalInterpreter v1381268311862 :=
  cost_cut false 1 (by decide)

private def v1381268310998 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1381268310998 : ¬ MinimalInterpreter v1381268310998 :=
  cost_cut false 1 (by decide)

private def v1381268289334 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1381268289334 : ¬ MinimalInterpreter v1381268289334 :=
  cost_cut false 1 (by decide)

private def v1381268288470 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1381268288470 : ¬ MinimalInterpreter v1381268288470 :=
  cost_cut false 1 (by decide)

private def v1381268282838 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1381268282838 : ¬ MinimalInterpreter v1381268282838 :=
  cost_cut false 1 (by decide)

private def v1381268655926 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1381268655926 : ¬ MinimalInterpreter v1381268655926 :=
  cost_cut false 1 (by decide)

private def v1381268655062 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1381268655062 : ¬ MinimalInterpreter v1381268655062 :=
  cost_cut false 1 (by decide)

private def v1380463005494 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1380463005494 : ¬ MinimalInterpreter v1380463005494 :=
  cost_cut false 1 (by decide)

private def v1380463004630 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1380463004630 : ¬ MinimalInterpreter v1380463004630 :=
  cost_cut false 1 (by decide)

private def v1380462982966 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v1380462982966 : ¬ MinimalInterpreter v1380462982966 :=
  cost_cut false 1 (by decide)

private def v1380462982102 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v1380462982102 : ¬ MinimalInterpreter v1380462982102 :=
  cost_cut false 1 (by decide)

private def v1380462976470 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v1380462976470 : ¬ MinimalInterpreter v1380462976470 :=
  cost_cut false 1 (by decide)

private def v1380463349558 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v1380463349558 : ¬ MinimalInterpreter v1380463349558 :=
  cost_cut false 1 (by decide)

private def v1380463348694 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v1380463348694 : ¬ MinimalInterpreter v1380463348694 :=
  cost_cut false 1 (by decide)

theorem four420 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [1,2,0,1]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [1,2,0,1] = [v1381268311862,v1381268310998,v1381268289334,v1381268288470,v1381268282838,v1381268655926,v1381268655062,v1380463005494,v1380463004630,v1380462982966,v1380462982102,v1380462976470,v1380463349558,v1380463348694] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381268311862) (.cons (no_v1381268310998) (.cons (no_v1381268289334) (.cons (no_v1381268288470) (.cons (no_v1381268282838) (.cons (no_v1381268655926) (.cons (no_v1381268655062) (.cons (no_v1380463005494) (.cons (no_v1380463004630) (.cons (no_v1380462982966) (.cons (no_v1380462982102) (.cons (no_v1380462976470) (.cons (no_v1380463349558) (.cons (no_v1380463348694) .nil))))))))))))))

private def v1381268311866 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1381268311866 : ¬ MinimalInterpreter v1381268311866 :=
  cost_cut false 1 (by decide)

private def v1381268311002 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1381268311002 : ¬ MinimalInterpreter v1381268311002 :=
  cost_cut false 1 (by decide)

private def v1381268289338 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1381268289338 : ¬ MinimalInterpreter v1381268289338 :=
  cost_cut false 1 (by decide)

private def v1381268288474 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1381268288474 : ¬ MinimalInterpreter v1381268288474 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381268282842 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1381268282842 : ¬ MinimalInterpreter v1381268282842 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381268655930 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1381268655930 : ¬ MinimalInterpreter v1381268655930 :=
  cost_cut false 1 (by decide)

private def v1381268655066 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1381268655066 : ¬ MinimalInterpreter v1381268655066 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

private def v1380463005498 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1380463005498 : ¬ MinimalInterpreter v1380463005498 :=
  cost_cut false 1 (by decide)

private def v1380463004634 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1380463004634 : ¬ MinimalInterpreter v1380463004634 :=
  cost_cut false 1 (by decide)

private def v1380462982970 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v1380462982970 : ¬ MinimalInterpreter v1380462982970 :=
  cost_cut false 1 (by decide)

private def v1380462982106 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v1380462982106 : ¬ MinimalInterpreter v1380462982106 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1380462976474 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v1380462976474 : ¬ MinimalInterpreter v1380462976474 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1380463349562 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v1380463349562 : ¬ MinimalInterpreter v1380463349562 :=
  cost_cut false 1 (by decide)

private def v1380463348698 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v1380463348698 : ¬ MinimalInterpreter v1380463348698 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))

theorem four421 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [1,2,1,0]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [1,2,1,0] = [v1381268311866,v1381268311002,v1381268289338,v1381268288474,v1381268282842,v1381268655930,v1381268655066,v1380463005498,v1380463004634,v1380462982970,v1380462982106,v1380462976474,v1380463349562,v1380463348698] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381268311866) (.cons (no_v1381268311002) (.cons (no_v1381268289338) (.cons (no_v1381268288474) (.cons (no_v1381268282842) (.cons (no_v1381268655930) (.cons (no_v1381268655066) (.cons (no_v1380463005498) (.cons (no_v1380463004634) (.cons (no_v1380462982970) (.cons (no_v1380462982106) (.cons (no_v1380462976474) (.cons (no_v1380463349562) (.cons (no_v1380463348698) .nil))))))))))))))

theorem four422 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [2,0,0,2]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [2,0,0,2] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381268317814 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v1381268317814 : ¬ MinimalInterpreter v1381268317814 :=
  cost_cut false 1 (by decide)

private def v1381268317622 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v1381268317622 : ¬ MinimalInterpreter v1381268317622 :=
  cost_cut false 1 (by decide)

private def v1381268290166 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v1381268290166 : ¬ MinimalInterpreter v1381268290166 :=
  cost_cut false 1 (by decide)

private def v1381268289974 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v1381268289974 : ¬ MinimalInterpreter v1381268289974 :=
  cost_cut false 1 (by decide)

private def v1381268283062 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v1381268283062 : ¬ MinimalInterpreter v1381268283062 :=
  cost_cut false 1 (by decide)

private def v1380463011446 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 1))))))))
private theorem no_v1380463011446 : ¬ MinimalInterpreter v1380463011446 :=
  cost_cut false 1 (by decide)

private def v1380463011254 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 1)))))))
private theorem no_v1380463011254 : ¬ MinimalInterpreter v1380463011254 :=
  cost_cut false 1 (by decide)

private def v1380462983798 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 1)))))))
private theorem no_v1380462983798 : ¬ MinimalInterpreter v1380462983798 :=
  cost_cut false 1 (by decide)

private def v1380462983606 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 1))))))
private theorem no_v1380462983606 : ¬ MinimalInterpreter v1380462983606 :=
  cost_cut false 1 (by decide)

private def v1380462976694 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 1))))))
private theorem no_v1380462976694 : ¬ MinimalInterpreter v1380462976694 :=
  cost_cut false 1 (by decide)

theorem four423 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [2,0,1,1]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [2,0,1,1] = [v1381268317814,v1381268317622,v1381268290166,v1381268289974,v1381268283062,v1380463011446,v1380463011254,v1380462983798,v1380462983606,v1380462976694] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381268317814) (.cons (no_v1381268317622) (.cons (no_v1381268290166) (.cons (no_v1381268289974) (.cons (no_v1381268283062) (.cons (no_v1380463011446) (.cons (no_v1380463011254) (.cons (no_v1380462983798) (.cons (no_v1380462983606) (.cons (no_v1380462976694) .nil))))))))))

theorem four424 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [2,0,2,0]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [2,0,2,0] = [] := by decide +kernel
  rw [h]
  exact .nil

private def v1381268318006 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1))))))))
private theorem no_v1381268318006 : ¬ MinimalInterpreter v1381268318006 :=
  cost_cut false 1 (by decide)

private def v1381268317654 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1)))))))
private theorem no_v1381268317654 : ¬ MinimalInterpreter v1381268317654 :=
  cost_cut false 1 (by decide)

private def v1381268290358 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1)))))))
private theorem no_v1381268290358 : ¬ MinimalInterpreter v1381268290358 :=
  cost_cut false 1 (by decide)

private def v1381268290006 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1))))))
private theorem no_v1381268290006 : ¬ MinimalInterpreter v1381268290006 :=
  cost_cut false 1 (by decide)

private def v1381268283094 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1))))))
private theorem no_v1381268283094 : ¬ MinimalInterpreter v1381268283094 :=
  cost_cut false 1 (by decide)

private def v1380463011638 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 1))))))))
private theorem no_v1380463011638 : ¬ MinimalInterpreter v1380463011638 :=
  cost_cut false 1 (by decide)

private def v1380463011286 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 1)))))))
private theorem no_v1380463011286 : ¬ MinimalInterpreter v1380463011286 :=
  cost_cut false 1 (by decide)

private def v1380462983990 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 1)))))))
private theorem no_v1380462983990 : ¬ MinimalInterpreter v1380462983990 :=
  cost_cut false 1 (by decide)

private def v1380462983638 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 1))))))
private theorem no_v1380462983638 : ¬ MinimalInterpreter v1380462983638 :=
  cost_cut false 1 (by decide)

private def v1380462976726 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 1))))))
private theorem no_v1380462976726 : ¬ MinimalInterpreter v1380462976726 :=
  cost_cut false 1 (by decide)

theorem four425 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [2,1,0,1]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [2,1,0,1] = [v1381268318006,v1381268317654,v1381268290358,v1381268290006,v1381268283094,v1380463011638,v1380463011286,v1380462983990,v1380462983638,v1380462976726] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381268318006) (.cons (no_v1381268317654) (.cons (no_v1381268290358) (.cons (no_v1381268290006) (.cons (no_v1381268283094) (.cons (no_v1380463011638) (.cons (no_v1380463011286) (.cons (no_v1380462983990) (.cons (no_v1380462983638) (.cons (no_v1380462976726) .nil))))))))))

private def v1381268318010 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0))))))))
private theorem no_v1381268318010 : ¬ MinimalInterpreter v1381268318010 :=
  cost_cut false 1 (by decide)

private def v1381268317658 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
private theorem no_v1381268317658 : ¬ MinimalInterpreter v1381268317658 :=
  cost_cut false 1 (by decide)

private def v1381268290362 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0)))))))
private theorem no_v1381268290362 : ¬ MinimalInterpreter v1381268290362 :=
  cost_cut false 1 (by decide)

private def v1381268290010 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))
private theorem no_v1381268290010 : ¬ MinimalInterpreter v1381268290010 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381268283098 : Term := (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))
private theorem no_v1381268283098 : ¬ MinimalInterpreter v1381268283098 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1380463011642 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.var 0))))))))
private theorem no_v1380463011642 : ¬ MinimalInterpreter v1380463011642 :=
  cost_cut false 1 (by decide)

private def v1380463011290 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.var 0)))))))
private theorem no_v1380463011290 : ¬ MinimalInterpreter v1380463011290 :=
  cost_cut false 1 (by decide)

private def v1380462983994 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.var 0)))))))
private theorem no_v1380462983994 : ¬ MinimalInterpreter v1380462983994 :=
  cost_cut false 1 (by decide)

private def v1380462983642 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0))))))
private theorem no_v1380462983642 : ¬ MinimalInterpreter v1380462983642 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1380462976730 : Term := (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0))))))
private theorem no_v1380462976730 : ¬ MinimalInterpreter v1380462976730 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.app (.var 0) (.var 0)) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

theorem four426 : BadRow (markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [2,1,1,0]) := by
  have h : markedRow ⟨1,3,0,2,4,4⟩ [0,0,0] [2,1,1,0] = [v1381268318010,v1381268317658,v1381268290362,v1381268290010,v1381268283098,v1380463011642,v1380463011290,v1380462983994,v1380462983642,v1380462976730] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381268318010) (.cons (no_v1381268317658) (.cons (no_v1381268290362) (.cons (no_v1381268290010) (.cons (no_v1381268283098) (.cons (no_v1380463011642) (.cons (no_v1380463011290) (.cons (no_v1380462983994) (.cons (no_v1380462983642) (.cons (no_v1380462976730) .nil))))))))))

end Blc.SelfintSingleObject.Rows40
