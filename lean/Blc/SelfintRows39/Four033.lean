import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Rows39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def v701153660154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 3) (.var 0))))))))))
private theorem no_v701153660154 : ¬ MinimalInterpreter v701153660154 :=
  cost_cut false 2 (by decide)
private def v701153659770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 3)) (.var 0)))))))))
private theorem no_v701153659770 : ¬ MinimalInterpreter v701153659770 :=
  cost_cut false 2 (by decide)
private def v701153604858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 3) (.var 0)))))))))
private theorem no_v701153604858 : ¬ MinimalInterpreter v701153604858 :=
  cost_cut false 2 (by decide)
private def v701153604474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 3))) (.var 0))))))))
private theorem no_v701153604474 : ¬ MinimalInterpreter v701153604474 :=
  cost_cut false 2 (by decide)
private def v701153590650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 3)) (.var 0))))))))
private theorem no_v701153590650 : ¬ MinimalInterpreter v701153590650 :=
  cost_cut false 2 (by decide)
private def v701157388410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))))))
private theorem no_v701157388410 : ¬ MinimalInterpreter v701157388410 :=
  chain_cut false 2 (by decide)
private def v701156503674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 3))))) (.var 0))))))
private theorem no_v701156503674 : ¬ MinimalInterpreter v701156503674 :=
  chain_cut false 2 (by decide)
private def v701156282490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.lam (.var 3)))) (.var 0))))))
private theorem no_v701156282490 : ¬ MinimalInterpreter v701156282490 :=
  chain_cut false 2 (by decide)
theorem row198 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [2,0,3,0]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [2,0,3,0] = [v701153660154,v701153659770,v701153604858,v701153604474,v701153590650,v701157388410,v701156503674,v701156282490] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153660154) (.cons (no_v701153659770) (.cons (no_v701153604858) (.cons (no_v701153604474) (.cons (no_v701153590650) (.cons (no_v701157388410) (.cons (no_v701156503674) (.cons (no_v701156282490) .nil))))))))

private def v701153660526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v701153660526 : ¬ MinimalInterpreter v701153660526 :=
  cost_cut false 2 (by decide)
private def v701153659822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v701153659822 : ¬ MinimalInterpreter v701153659822 :=
  cost_cut false 2 (by decide)
private def v701153605230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 2)))))))))
private theorem no_v701153605230 : ¬ MinimalInterpreter v701153605230 :=
  cost_cut false 2 (by decide)
private def v701153604526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 2))))))))
private theorem no_v701153604526 : ¬ MinimalInterpreter v701153604526 :=
  cost_cut false 2 (by decide)
private def v701153590702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 2))))))))
private theorem no_v701153590702 : ¬ MinimalInterpreter v701153590702 :=
  cost_cut false 2 (by decide)
private def v701154408846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 2))))))))))
private theorem no_v701154408846 : ¬ MinimalInterpreter v701154408846 :=
  cost_cut false 2 (by decide)
private def v701154406030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 2)))))))))
private theorem no_v701154406030 : ¬ MinimalInterpreter v701154406030 :=
  cost_cut false 2 (by decide)
private def v701154187662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 2)))))))))
private theorem no_v701154187662 : ¬ MinimalInterpreter v701154187662 :=
  cost_cut false 2 (by decide)
private def v701154184846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 2))))))))
private theorem no_v701154184846 : ¬ MinimalInterpreter v701154184846 :=
  cost_cut false 2 (by decide)
private def v701154129550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 2))))))))
private theorem no_v701154129550 : ¬ MinimalInterpreter v701154129550 :=
  cost_cut false 2 (by decide)
private def v701157402126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 2))))))))))
private theorem no_v701157402126 : ¬ MinimalInterpreter v701157402126 :=
  chain_cut false 2 (by decide)
private def v701157390862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 2)))))))))
private theorem no_v701157390862 : ¬ MinimalInterpreter v701157390862 :=
  chain_cut false 2 (by decide)
private def v701156517390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.lam (.var 2)))))))))
private theorem no_v701156517390 : ¬ MinimalInterpreter v701156517390 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.lam (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.lam (.var 2))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.lam (.var 2)))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (so_dead (by decide) (so_dead (by decide) (.var 2))))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156497806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 0) (.lam (.var 2))))))))
private theorem no_v701156497806 : ¬ MinimalInterpreter v701156497806 :=
  chain_cut false 2 (by decide)
private def v701156506126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.lam (.var 2))))))))
private theorem no_v701156506126 : ¬ MinimalInterpreter v701156506126 :=
  chain_cut false 2 (by decide)
private def v701156284942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.lam (.var 2))))))))
private theorem no_v701156284942 : ¬ MinimalInterpreter v701156284942 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.lam (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.lam (.var 2)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 2))))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156279950 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 0)) (.lam (.var 2)))))))
private theorem no_v701156279950 : ¬ MinimalInterpreter v701156279950 :=
  chain_cut false 2 (by decide)
theorem row199 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [2,1,0,2]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [2,1,0,2] = [v701153660526,v701153659822,v701153605230,v701153604526,v701153590702,v701154408846,v701154406030,v701154187662,v701154184846,v701154129550,v701157402126,v701157390862,v701156517390,v701156497806,v701156506126,v701156284942,v701156279950] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153660526) (.cons (no_v701153659822) (.cons (no_v701153605230) (.cons (no_v701153604526) (.cons (no_v701153590702) (.cons (no_v701154408846) (.cons (no_v701154406030) (.cons (no_v701154187662) (.cons (no_v701154184846) (.cons (no_v701154129550) (.cons (no_v701157402126) (.cons (no_v701157390862) (.cons (no_v701156517390) (.cons (no_v701156497806) (.cons (no_v701156506126) (.cons (no_v701156284942) (.cons (no_v701156279950) .nil)))))))))))))))))

private def v701154408566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.lam (.app (.var 1) (.var 1))))))))))
private theorem no_v701154408566 : ¬ MinimalInterpreter v701154408566 :=
  cost_cut false 2 (by decide)
private def v701154408902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.lam (.var 1))))))))))
private theorem no_v701154408902 : ¬ MinimalInterpreter v701154408902 :=
  cost_cut false 2 (by decide)
private def v701154406086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 1)) (.lam (.var 1)))))))))
private theorem no_v701154406086 : ¬ MinimalInterpreter v701154406086 :=
  cost_cut false 2 (by decide)
private def v701154405942 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.var 1))))))))
private theorem no_v701154405942 : ¬ MinimalInterpreter v701154405942 :=
  cost_cut false 2 (by decide)
private def v701154187382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 1)))))))))
private theorem no_v701154187382 : ¬ MinimalInterpreter v701154187382 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 1) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.lam (.app (.var 1) (.var 1))))) (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.app (.var 1) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154187718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 1) (.lam (.var 1)))))))))
private theorem no_v701154187718 : ¬ MinimalInterpreter v701154187718 :=
  cost_cut false 2 (by decide)
private def v701154182774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.var 1))))))))
private theorem no_v701154182774 : ¬ MinimalInterpreter v701154182774 :=
  cost_cut false 2 (by decide)
private def v701154184902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 1))))))))
private theorem no_v701154184902 : ¬ MinimalInterpreter v701154184902 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 0)))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.var 2) (.app (.var 1) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.app (.var 0) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154129606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 1))))))))
private theorem no_v701154129606 : ¬ MinimalInterpreter v701154129606 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (.lam (.var 1))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 0))) (g := (.app (.var 1) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (.var 1)) (so_dead (by decide) (.var 1))) (.app (.app (.var 1) (.var 0)) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154182070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 1)))) (.var 1)))))))
private theorem no_v701154182070 : ¬ MinimalInterpreter v701154182070 :=
  cost_cut false 2 (by decide)
private def v701154184758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 1)))))))
private theorem no_v701154184758 : ¬ MinimalInterpreter v701154184758 :=
  cost_cut false 2 (by decide)
private def v701154129462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.var 1)))))))
private theorem no_v701154129462 : ¬ MinimalInterpreter v701154129462 :=
  cost_cut false 2 (by decide)
private def v701154128310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.var 1)))))))
private theorem no_v701154128310 : ¬ MinimalInterpreter v701154128310 :=
  cost_cut false 2 (by decide)
private def v701157390534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 1))))))))
private theorem no_v701157390534 : ¬ MinimalInterpreter v701157390534 :=
  chain_cut false 2 (by decide)
private def v701156497862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.app (.var 1) (.lam (.var 1))))))))
private theorem no_v701156497862 : ¬ MinimalInterpreter v701156497862 :=
  chain_cut false 2 (by decide)
private def v701156505798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.lam (.var 1)))))))
private theorem no_v701156505798 : ¬ MinimalInterpreter v701156505798 :=
  chain_cut false 2 (by decide)
private def v701156284614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.lam (.var 1)))))))
private theorem no_v701156284614 : ¬ MinimalInterpreter v701156284614 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 1))) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.lam (.var 1)))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 1))) (so_dead (by decide) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156280006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.var 1)) (.lam (.var 1)))))))
private theorem no_v701156280006 : ¬ MinimalInterpreter v701156280006 :=
  chain_cut false 2 (by decide)
private def v701156279862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.lam (.var 1))) (.var 1))))))
private theorem no_v701156279862 : ¬ MinimalInterpreter v701156279862 :=
  chain_cut false 2 (by decide)
theorem row200 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [2,1,1,1]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [2,1,1,1] = [v701154408566,v701154408902,v701154406086,v701154405942,v701154187382,v701154187718,v701154182774,v701154184902,v701154129606,v701154182070,v701154184758,v701154129462,v701154128310,v701157390534,v701156497862,v701156505798,v701156284614,v701156280006,v701156279862] := by decide +kernel
  rw [h]
  exact (.cons (no_v701154408566) (.cons (no_v701154408902) (.cons (no_v701154406086) (.cons (no_v701154405942) (.cons (no_v701154187382) (.cons (no_v701154187718) (.cons (no_v701154182774) (.cons (no_v701154184902) (.cons (no_v701154129606) (.cons (no_v701154182070) (.cons (no_v701154184758) (.cons (no_v701154129462) (.cons (no_v701154128310) (.cons (no_v701157390534) (.cons (no_v701156497862) (.cons (no_v701156505798) (.cons (no_v701156284614) (.cons (no_v701156280006) (.cons (no_v701156279862) .nil)))))))))))))))))))

private def v701153660538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v701153660538 : ¬ MinimalInterpreter v701153660538 :=
  cost_cut false 2 (by decide)
private def v701153659834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v701153659834 : ¬ MinimalInterpreter v701153659834 :=
  cost_cut false 2 (by decide)
private def v701153605242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 2) (.var 0)))))))))
private theorem no_v701153605242 : ¬ MinimalInterpreter v701153605242 :=
  cost_cut false 2 (by decide)
private def v701153604538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0))))))))
private theorem no_v701153604538 : ¬ MinimalInterpreter v701153604538 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v701153590714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0))))))))
private theorem no_v701153590714 : ¬ MinimalInterpreter v701153590714 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 2)) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v701154405946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 2))) (.var 0))))))))
private theorem no_v701154405946 : ¬ MinimalInterpreter v701154405946 :=
  cost_cut false 2 (by decide)
private def v701154182074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 1) (.var 2)))) (.var 0)))))))
private theorem no_v701154182074 : ¬ MinimalInterpreter v701154182074 :=
  cost_cut false 2 (by decide)
private def v701154184762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 2)))) (.var 0)))))))
private theorem no_v701154184762 : ¬ MinimalInterpreter v701154184762 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 2)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 1) (.app (.var 0) (so_dead (by decide) (.var 1)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701154129466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 2))) (.var 0)))))))
private theorem no_v701154129466 : ¬ MinimalInterpreter v701154129466 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 2))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (.var 2))) (.var 0)) (.app (.app (.var 1) (.var 0)) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701157390394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 0)))))))
private theorem no_v701157390394 : ¬ MinimalInterpreter v701157390394 :=
  chain_cut false 2 (by decide)
private def v701156505658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 2))))) (.var 0))))))
private theorem no_v701156505658 : ¬ MinimalInterpreter v701156505658 :=
  chain_cut false 2 (by decide)
private def v701156284474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 2)))) (.var 0))))))
private theorem no_v701156284474 : ¬ MinimalInterpreter v701156284474 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 2)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.lam (.var 2)))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.lam (.lam (.var 2)))) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_dead (by decide) (so_dead (by decide) (.var 2)))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156279866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 1))) (.lam (.var 2))) (.var 0))))))
private theorem no_v701156279866 : ¬ MinimalInterpreter v701156279866 :=
  chain_cut false 2 (by decide)
theorem row201 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [2,1,2,0]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [2,1,2,0] = [v701153660538,v701153659834,v701153605242,v701153604538,v701153590714,v701154405946,v701154182074,v701154184762,v701154129466,v701157390394,v701156505658,v701156284474,v701156279866] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153660538) (.cons (no_v701153659834) (.cons (no_v701153605242) (.cons (no_v701153604538) (.cons (no_v701153590714) (.cons (no_v701154405946) (.cons (no_v701154182074) (.cons (no_v701154184762) (.cons (no_v701154129466) (.cons (no_v701157390394) (.cons (no_v701156505658) (.cons (no_v701156284474) (.cons (no_v701156279866) .nil)))))))))))))

private def v701153660726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v701153660726 : ¬ MinimalInterpreter v701153660726 :=
  cost_cut false 2 (by decide)
private def v701153659862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v701153659862 : ¬ MinimalInterpreter v701153659862 :=
  cost_cut false 2 (by decide)
private def v701153605430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 0) (.var 1)))))))))
private theorem no_v701153605430 : ¬ MinimalInterpreter v701153605430 :=
  cost_cut false 2 (by decide)
private def v701153604566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1))))))))
private theorem no_v701153604566 : ¬ MinimalInterpreter v701153604566 :=
  cost_cut false 2 (by decide)
private def v701153590742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 0)) (.var 1))))))))
private theorem no_v701153590742 : ¬ MinimalInterpreter v701153590742 :=
  cost_cut false 2 (by decide)
private def v701154182966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.var 1))))))))
private theorem no_v701154182966 : ¬ MinimalInterpreter v701154182966 :=
  cost_cut false 2 (by decide)
private def v701154128342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.var 1)))))))
private theorem no_v701154128342 : ¬ MinimalInterpreter v701154128342 :=
  cost_cut false 2 (by decide)
private def v701156498630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.lam (.var 1))))))))
private theorem no_v701156498630 : ¬ MinimalInterpreter v701156498630 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.lam (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 0) (.lam (.var 1)))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 1))))) (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.app (.var 0) (so_dead (by decide) (.var 1)))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156493110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.app (.var 0) (.var 1)))))))
private theorem no_v701156493110 : ¬ MinimalInterpreter v701156493110 :=
  chain_cut false 2 (by decide)
private def v701156280134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.lam (.var 1)))))))
private theorem no_v701156280134 : ¬ MinimalInterpreter v701156280134 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.lam (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 0)) (.lam (.var 1))))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 1)))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 0)) (so_dead (by decide) (.var 1))) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156278742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.var 0)) (.var 1))))))
private theorem no_v701156278742 : ¬ MinimalInterpreter v701156278742 :=
  chain_cut false 2 (by decide)
theorem row202 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [2,2,0,1]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [2,2,0,1] = [v701153660726,v701153659862,v701153605430,v701153604566,v701153590742,v701154182966,v701154128342,v701156498630,v701156493110,v701156280134,v701156278742] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153660726) (.cons (no_v701153659862) (.cons (no_v701153605430) (.cons (no_v701153604566) (.cons (no_v701153590742) (.cons (no_v701154182966) (.cons (no_v701154128342) (.cons (no_v701156498630) (.cons (no_v701156493110) (.cons (no_v701156280134) (.cons (no_v701156278742) .nil)))))))))))

private def v701153660730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v701153660730 : ¬ MinimalInterpreter v701153660730 :=
  cost_cut false 2 (by decide)
private def v701153659866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v701153659866 : ¬ MinimalInterpreter v701153659866 :=
  cost_cut false 2 (by decide)
private def v701153605434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.var 2)) (.app (.var 1) (.var 0)))))))))
private theorem no_v701153605434 : ¬ MinimalInterpreter v701153605434 :=
  cost_cut false 2 (by decide)
private def v701153604570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0))))))))
private theorem no_v701153604570 : ¬ MinimalInterpreter v701153604570 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
private def v701153590746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0))))))))
private theorem no_v701153590746 : ¬ MinimalInterpreter v701153590746 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.var 0))) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 1)) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 2)) (.var 1)) (.var 0)) (.app (.app (.var 1) (.var 1)) (.var 0)) (by decide) (by decide)) (.app (.var 0) (.var 0)) (by decide) (by decide)))))))
private def v701154182970 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 2))) (.app (.var 1) (.var 0))))))))
private theorem no_v701154182970 : ¬ MinimalInterpreter v701154182970 :=
  cost_cut false 2 (by decide)
private def v701154182106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 2) (.var 1)))) (.var 0)))))))
private theorem no_v701154182106 : ¬ MinimalInterpreter v701154182106 :=
  cost_cut false 2 (by decide)
private def v701154128346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 1)) (.var 0)))))))
private theorem no_v701154128346 : ¬ MinimalInterpreter v701154128346 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (.var 1)) (.var 0)) (.app (.app (.var 1) (so_dead (by decide) (.var 1))) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v701156493114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.app (.var 1) (.var 0)))))))
private theorem no_v701156493114 : ¬ MinimalInterpreter v701156493114 :=
  chain_cut false 2 (by decide)
private def v701156280090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1))) (.var 0))))))
private theorem no_v701156280090 : ¬ MinimalInterpreter v701156280090 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.lam (.var 2))) (.lam (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.lam (.var 1)))) (g := (.app (.app (.var 1) (.lam (.var 1))) (.var 0))) (.app (.app (.app (.var 2) (so_dead (by decide) (.var 2))) (so_dead (by decide) (.var 1))) (.var 0)) (.app (.var 1) (so_dead (by decide) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
private def v701156278746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.lam (.var 2)))) (.var 1)) (.var 0))))))
private theorem no_v701156278746 : ¬ MinimalInterpreter v701156278746 :=
  chain_cut false 2 (by decide)
theorem row203 : BadRow (row ⟨0,2,0,4,4,5⟩ [0,0] [2,2,1,0]) := by
  have h : row ⟨0,2,0,4,4,5⟩ [0,0] [2,2,1,0] = [v701153660730,v701153659866,v701153605434,v701153604570,v701153590746,v701154182970,v701154182106,v701154128346,v701156493114,v701156280090,v701156278746] := by decide +kernel
  rw [h]
  exact (.cons (no_v701153660730) (.cons (no_v701153659866) (.cons (no_v701153605434) (.cons (no_v701153604570) (.cons (no_v701153590746) (.cons (no_v701154182970) (.cons (no_v701154182106) (.cons (no_v701154128346) (.cons (no_v701156493114) (.cons (no_v701156280090) (.cons (no_v701156278746) .nil)))))))))))

end Blc.SelfintSingleObject.Rows39
