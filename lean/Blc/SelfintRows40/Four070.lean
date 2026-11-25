import Blc.SelfintNonlinearShell
namespace Blc.SelfintSingleObject.Rows40
open Term SelfintWireCost SourceRefutations OperandGrammar FiveLive
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v1381370706422 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.app (.var 3) (.var 1)))))))))
private theorem no_v1381370706422 : ¬ MinimalInterpreter v1381370706422 :=
  cost_cut false 1 (by decide)

private def v1381370703606 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 1) (.var 3)) (.var 1))))))))
private theorem no_v1381370703606 : ¬ MinimalInterpreter v1381370703606 :=
  cost_cut false 1 (by decide)

private def v1381370749430 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v1381370749430 : ¬ MinimalInterpreter v1381370749430 :=
  cost_cut false 1 (by decide)

private def v1381370388982 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 1)) (.lam (.app (.var 3) (.var 1))))))))
private theorem no_v1381370388982 : ¬ MinimalInterpreter v1381370388982 :=
  cost_cut false 1 (by decide)

private def v1381370367734 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 1) (.var 3)))) (.var 1))))))
private theorem no_v1381370367734 : ¬ MinimalInterpreter v1381370367734 :=
  cost_cut false 1 (by decide)

private def v1381376254454 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 1) (.lam (.app (.var 3) (.var 1)))))))))
private theorem no_v1381376254454 : ¬ MinimalInterpreter v1381376254454 :=
  cost_cut false 1 (by decide)

theorem four490 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,1,3,1]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,1,3,1] = [v1381370706422,v1381370703606,v1381370749430,v1381370388982,v1381370367734,v1381376254454] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370706422) (.cons (no_v1381370703606) (.cons (no_v1381370749430) (.cons (no_v1381370388982) (.cons (no_v1381370367734) (.cons (no_v1381376254454) .nil))))))

private def v1381370707166 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 3)))))))))
private theorem no_v1381370707166 : ¬ MinimalInterpreter v1381370707166 :=
  cost_cut false 1 (by decide)

private def v1381370703710 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))))))
private theorem no_v1381370703710 : ¬ MinimalInterpreter v1381370703710 :=
  cost_cut false 1 (by decide)

private def v1381370753822 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 3)))))))))
private theorem no_v1381370753822 : ¬ MinimalInterpreter v1381370753822 :=
  cost_cut false 1 (by decide)

private def v1381370739998 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 3))))))))
private theorem no_v1381370739998 : ¬ MinimalInterpreter v1381370739998 :=
  cost_cut false 1 (by decide)

private def v1381370393374 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 3))))))))
private theorem no_v1381370393374 : ¬ MinimalInterpreter v1381370393374 :=
  cost_cut false 1 (by decide)

private def v1381370379550 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 3)))))))
private theorem no_v1381370379550 : ¬ MinimalInterpreter v1381370379550 :=
  cost_cut false 1 (by decide)

private def v1381370289438 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 3)))))))
private theorem no_v1381370289438 : ¬ MinimalInterpreter v1381370289438 :=
  cost_cut false 1 (by decide)

private def v1381376212190 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 3)))))))))
private theorem no_v1381376212190 : ¬ MinimalInterpreter v1381376212190 :=
  cost_cut false 1 (by decide)

private def v1381376208734 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 3))))))))
private theorem no_v1381376208734 : ¬ MinimalInterpreter v1381376208734 :=
  cost_cut false 1 (by decide)

theorem four491 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,2,0,3]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,2,0,3] = [v1381370707166,v1381370703710,v1381370753822,v1381370739998,v1381370393374,v1381370379550,v1381370289438,v1381376212190,v1381376208734] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370707166) (.cons (no_v1381370703710) (.cons (no_v1381370753822) (.cons (no_v1381370739998) (.cons (no_v1381370393374) (.cons (no_v1381370379550) (.cons (no_v1381370289438) (.cons (no_v1381376212190) (.cons (no_v1381376208734) .nil)))))))))

private def v1381370753262 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v1381370753262 : ¬ MinimalInterpreter v1381370753262 :=
  cost_cut false 1 (by decide)

private def v1381370739822 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 1))) (.var 2)))))))
private theorem no_v1381370739822 : ¬ MinimalInterpreter v1381370739822 :=
  cost_cut false 1 (by decide)

private def v1381370392814 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 1) (.var 2))))))))
private theorem no_v1381370392814 : ¬ MinimalInterpreter v1381370392814 :=
  cost_cut false 1 (by decide)

private def v1381370367854 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.var 1)))) (.var 2))))))
private theorem no_v1381370367854 : ¬ MinimalInterpreter v1381370367854 :=
  cost_cut false 1 (by decide)

private def v1381370379374 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 1)))) (.var 2))))))
private theorem no_v1381370379374 : ¬ MinimalInterpreter v1381370379374 :=
  cost_cut false 1 (by decide)

private def v1381370289262 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 1))) (.var 2))))))
private theorem no_v1381370289262 : ¬ MinimalInterpreter v1381370289262 :=
  cost_cut false 1 (by decide)

private def v1381376258286 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.lam (.app (.var 1) (.var 2)))))))))
private theorem no_v1381376258286 : ¬ MinimalInterpreter v1381376258286 :=
  cost_cut false 1 (by decide)

theorem four492 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,2,1,2]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,2,1,2] = [v1381370753262,v1381370739822,v1381370392814,v1381370367854,v1381370379374,v1381370289262,v1381376258286] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370753262) (.cons (no_v1381370739822) (.cons (no_v1381370392814) (.cons (no_v1381370367854) (.cons (no_v1381370379374) (.cons (no_v1381370289262) (.cons (no_v1381376258286) .nil)))))))

private def v1381370753270 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v1381370753270 : ¬ MinimalInterpreter v1381370753270 :=
  cost_cut false 1 (by decide)

private def v1381370753990 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 2) (.lam (.var 1)))))))))
private theorem no_v1381370753990 : ¬ MinimalInterpreter v1381370753990 :=
  cost_cut false 1 (by decide)

private def v1381370740166 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 2)) (.lam (.var 1))))))))
private theorem no_v1381370740166 : ¬ MinimalInterpreter v1381370740166 :=
  cost_cut false 1 (by decide)

private def v1381370392822 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 2) (.var 1))))))))
private theorem no_v1381370392822 : ¬ MinimalInterpreter v1381370392822 :=
  cost_cut false 1 (by decide)

private def v1381370393542 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 2) (.lam (.var 1))))))))
private theorem no_v1381370393542 : ¬ MinimalInterpreter v1381370393542 :=
  cost_cut false 1 (by decide)

private def v1381370379718 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.lam (.var 1)))))))
private theorem no_v1381370379718 : ¬ MinimalInterpreter v1381370379718 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 2))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.var 1)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 1) (.app (.var 2) (.var 2))) (so_dead (by decide) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 1))) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))

private def v1381370289606 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.lam (.var 1)))))))
private theorem no_v1381370289606 : ¬ MinimalInterpreter v1381370289606 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.var 1))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 1) (.var 2)) (.var 2)) (so_dead (by decide) (.var 1))) (.app (.app (.var 0) (.var 1)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381376258294 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))))))
private theorem no_v1381376258294 : ¬ MinimalInterpreter v1381376258294 :=
  cost_cut false 1 (by decide)

theorem four493 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,2,2,1]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,2,2,1] = [v1381370753270,v1381370753990,v1381370740166,v1381370392822,v1381370393542,v1381370379718,v1381370289606,v1381376258294] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370753270) (.cons (no_v1381370753990) (.cons (no_v1381370740166) (.cons (no_v1381370392822) (.cons (no_v1381370393542) (.cons (no_v1381370379718) (.cons (no_v1381370289606) (.cons (no_v1381376258294) .nil))))))))

private def v1381370707194 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 3) (.var 0)))))))))
private theorem no_v1381370707194 : ¬ MinimalInterpreter v1381370707194 :=
  cost_cut false 1 (by decide)

private def v1381370703738 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))))))
private theorem no_v1381370703738 : ¬ MinimalInterpreter v1381370703738 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))) (so_dead (by decide) (.app (.var 1) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 3)) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

private def v1381370739834 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 3))) (.var 0)))))))
private theorem no_v1381370739834 : ¬ MinimalInterpreter v1381370739834 :=
  cost_cut false 1 (by decide)

private def v1381370367866 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.var 3)))) (.var 0))))))
private theorem no_v1381370367866 : ¬ MinimalInterpreter v1381370367866 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.var 3)))) (.var 0)))) (.lam (r := (.app (.var 0) (.lam (.app (.var 1) (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (so_dead (by decide) (.app (.var 2) (.var 3)))) (.var 0)) (.app (.var 0) (so_dead (by decide) (.app (.var 1) (.var 2)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381370379386 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 3)))) (.var 0))))))
private theorem no_v1381370379386 : ¬ MinimalInterpreter v1381370379386 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 3)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 1)))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 2))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (so_dead (by decide) (.var 3)))) (.var 0)) (.app (.var 0) (.app (.var 1) (so_dead (by decide) (.var 2)))) (by decide) (by decide)) (.app (.var 0) (so_dead (by decide) (.var 1))) (by decide) (by decide)))))

private def v1381370289274 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 3))) (.var 0))))))
private theorem no_v1381370289274 : ¬ MinimalInterpreter v1381370289274 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 3))) (.var 0)))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 3))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 2)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_dead (by decide) (.var 3))) (.var 0)) (.app (.app (.var 0) (.var 1)) (so_dead (by decide) (.var 2))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))

private def v1381376212218 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 2) (.app (.var 3) (.var 0)))))))))
private theorem no_v1381376212218 : ¬ MinimalInterpreter v1381376212218 :=
  cost_cut false 1 (by decide)

private def v1381376208762 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0))))))))
private theorem no_v1381376208762 : ¬ MinimalInterpreter v1381376208762 :=
  so_cut false 0 (show SO (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.lam (.lam (.app (.app (.var 2) (.var 3)) (.var 0)))))) (.app (.var 1) (so_dead (by decide) (.lam (r := (.app (.var 1) (.var 2))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 3)) (.var 0)) (.app (.var 1) (.var 2)) (by decide) (by decide)))) (.var 0) (by decide) (by decide)))))

theorem four494 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,2,3,0]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,2,3,0] = [v1381370707194,v1381370703738,v1381370739834,v1381370367866,v1381370379386,v1381370289274,v1381376212218,v1381376208762] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370707194) (.cons (no_v1381370703738) (.cons (no_v1381370739834) (.cons (no_v1381370367866) (.cons (no_v1381370379386) (.cons (no_v1381370289274) (.cons (no_v1381376212218) (.cons (no_v1381376208762) .nil))))))))

private def v1381370707566 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.app (.var 0) (.var 2)))))))))
private theorem no_v1381370707566 : ¬ MinimalInterpreter v1381370707566 :=
  cost_cut false 1 (by decide)

private def v1381370703790 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 0)) (.var 2))))))))
private theorem no_v1381370703790 : ¬ MinimalInterpreter v1381370703790 :=
  cost_cut false 1 (by decide)

private def v1381370371694 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 3))) (.app (.var 0) (.var 2)))))))
private theorem no_v1381370371694 : ¬ MinimalInterpreter v1381370371694 :=
  cost_cut false 1 (by decide)

private def v1381370283950 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 3))) (.var 0)) (.var 2))))))
private theorem no_v1381370283950 : ¬ MinimalInterpreter v1381370283950 :=
  cost_cut false 1 (by decide)

private def v1381376212590 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 0) (.var 2)))))))))
private theorem no_v1381376212590 : ¬ MinimalInterpreter v1381376212590 :=
  cost_cut false 1 (by decide)

private def v1381376208814 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 3) (.var 0)) (.var 2))))))))
private theorem no_v1381376208814 : ¬ MinimalInterpreter v1381376208814 :=
  cost_cut false 1 (by decide)

theorem four495 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,3,0,2]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,3,0,2] = [v1381370707566,v1381370703790,v1381370371694,v1381370283950,v1381376212590,v1381376208814] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370707566) (.cons (no_v1381370703790) (.cons (no_v1381370371694) (.cons (no_v1381370283950) (.cons (no_v1381376212590) (.cons (no_v1381376208814) .nil))))))

private def v1381370707574 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.app (.var 1) (.var 1)))))))))
private theorem no_v1381370707574 : ¬ MinimalInterpreter v1381370707574 :=
  cost_cut false 1 (by decide)

private def v1381370703798 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 3) (.var 1)) (.var 1))))))))
private theorem no_v1381370703798 : ¬ MinimalInterpreter v1381370703798 :=
  cost_cut false 1 (by decide)

private def v1381370367926 : Term := (.app (.lam (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 3) (.var 1)))) (.var 1))))))
private theorem no_v1381370367926 : ¬ MinimalInterpreter v1381370367926 :=
  cost_cut false 1 (by decide)

theorem four496 : BadRow (markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,3,1,1]) := by
  have h : markedRow ⟨1,2,0,3,4,6⟩ [0,0] [1,3,1,1] = [v1381370707574,v1381370703798,v1381370367926] := by decide +kernel
  rw [h]
  exact (.cons (no_v1381370707574) (.cons (no_v1381370703798) (.cons (no_v1381370367926) .nil)))

end Blc.SelfintSingleObject.Rows40
