import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms132 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [1,1,0,1,0]) := by
  have h : atoms 3 5 [1,1,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil
theorem atoms133 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [1,1,1,0,0]) := by
  have h : atoms 3 5 [1,1,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom138012186 : Term := (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))
private def v701157205530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))))
private theorem no_v701157205530 : ¬ MinimalInterpreter v701157205530 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom138012186false : BadRow (sources false 3 5 atom138012186) := by
  have h : sources false 3 5 atom138012186 = [v701157205530] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157205530) .nil)

theorem atom138012186true : BadRow (sources true 3 5 atom138012186) := by
  have h : sources true 3 5 atom138012186 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138012258 : Term := (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))))
private def v701157205602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))))))
private theorem no_v701157205602 : ¬ MinimalInterpreter v701157205602 :=
  chain_cut false 2 (by decide)
theorem atom138012258false : BadRow (sources false 3 5 atom138012258) := by
  have h : sources false 3 5 atom138012258 = [v701157205602] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157205602) .nil)

theorem atom138012258true : BadRow (sources true 3 5 atom138012258) := by
  have h : sources true 3 5 atom138012258 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138012066 : Term := (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))
private def v701157205410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))))
private theorem no_v701157205410 : ¬ MinimalInterpreter v701157205410 :=
  chain_cut false 2 (by decide)
theorem atom138012066false : BadRow (sources false 3 5 atom138012066) := by
  have h : sources false 3 5 atom138012066 = [v701157205410] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157205410) .nil)

theorem atom138012066true : BadRow (sources true 3 5 atom138012066) := by
  have h : sources true 3 5 atom138012066 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138012042 : Term := (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))
private def v701157205386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))))
private theorem no_v701157205386 : ¬ MinimalInterpreter v701157205386 :=
  chain_cut false 2 (by decide)
theorem atom138012042false : BadRow (sources false 3 5 atom138012042) := by
  have h : sources false 3 5 atom138012042 = [v701157205386] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157205386) .nil)

theorem atom138012042true : BadRow (sources true 3 5 atom138012042) := by
  have h : sources true 3 5 atom138012042 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137984538 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 0)))))))
private def v701157177882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 0)))))))))
private theorem no_v701157177882 : ¬ MinimalInterpreter v701157177882 :=
  cost_cut true 4 (by decide)
theorem atom137984538false : BadRow (sources false 3 5 atom137984538) := by
  have h : sources false 3 5 atom137984538 = [v701157177882] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157177882) .nil)

theorem atom137984538true : BadRow (sources true 3 5 atom137984538) := by
  have h : sources true 3 5 atom137984538 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137984610 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 0)))))))
private def v701157177954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v701157177954 : ¬ MinimalInterpreter v701157177954 :=
  chain_cut false 2 (by decide)
theorem atom137984610false : BadRow (sources false 3 5 atom137984610) := by
  have h : sources false 3 5 atom137984610 = [v701157177954] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157177954) .nil)

theorem atom137984610true : BadRow (sources true 3 5 atom137984610) := by
  have h : sources true 3 5 atom137984610 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137984154 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 0))))))
private def v701157177498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 0))))))))
private theorem no_v701157177498 : ¬ MinimalInterpreter v701157177498 :=
  chain_cut false 2 (by decide)
theorem atom137984154false : BadRow (sources false 3 5 atom137984154) := by
  have h : sources false 3 5 atom137984154 = [v701157177498] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157177498) .nil)

theorem atom137984154true : BadRow (sources true 3 5 atom137984154) := by
  have h : sources true 3 5 atom137984154 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137984418 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 0))))))
private def v701157177762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 0))))))))
private theorem no_v701157177762 : ¬ MinimalInterpreter v701157177762 :=
  chain_cut false 2 (by decide)
theorem atom137984418false : BadRow (sources false 3 5 atom137984418) := by
  have h : sources false 3 5 atom137984418 = [v701157177762] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157177762) .nil)

theorem atom137984418true : BadRow (sources true 3 5 atom137984418) := by
  have h : sources true 3 5 atom137984418 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137977506 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 0))))))
private def v701157170850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 0))))))))
private theorem no_v701157170850 : ¬ MinimalInterpreter v701157170850 :=
  chain_cut false 2 (by decide)
theorem atom137977506false : BadRow (sources false 3 5 atom137977506) := by
  have h : sources false 3 5 atom137977506 = [v701157170850] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157170850) .nil)

theorem atom137977506true : BadRow (sources true 3 5 atom137977506) := by
  have h : sources true 3 5 atom137977506 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137984106 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 0)))))
private def v701157177450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 0)))))))
private theorem no_v701157177450 : ¬ MinimalInterpreter v701157177450 :=
  so_cut true 3 (show SO (.app (.var 1) (.app (.lam (.lam (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0))))) (.var 0))) from (.app (.var 1) (.app (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 1) (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.app (.var 1) (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (.var 0))) (.var 0) (by decide) (by decide))) (.var 0))))
theorem atom137984106false : BadRow (sources false 3 5 atom137984106) := by
  have h : sources false 3 5 atom137984106 = [v701157177450] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157177450) .nil)

theorem atom137984106true : BadRow (sources true 3 5 atom137984106) := by
  have h : sources true 3 5 atom137984106 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137984394 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 0)))))
private def v701157177738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 0)))))))
private theorem no_v701157177738 : ¬ MinimalInterpreter v701157177738 :=
  chain_cut false 2 (by decide)
theorem atom137984394false : BadRow (sources false 3 5 atom137984394) := by
  have h : sources false 3 5 atom137984394 = [v701157177738] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157177738) .nil)

theorem atom137984394true : BadRow (sources true 3 5 atom137984394) := by
  have h : sources true 3 5 atom137984394 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137977482 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 0)))))
private def v701157170826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 0)))))))
private theorem no_v701157170826 : ¬ MinimalInterpreter v701157170826 :=
  chain_cut false 2 (by decide)
theorem atom137977482false : BadRow (sources false 3 5 atom137977482) := by
  have h : sources false 3 5 atom137977482 = [v701157170826] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157170826) .nil)

theorem atom137977482true : BadRow (sources true 3 5 atom137977482) := by
  have h : sources true 3 5 atom137977482 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137977386 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 0)))))
private def v701157170730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 0)))))))
private theorem no_v701157170730 : ¬ MinimalInterpreter v701157170730 :=
  chain_cut false 2 (by decide)
theorem atom137977386false : BadRow (sources false 3 5 atom137977386) := by
  have h : sources false 3 5 atom137977386 = [v701157170730] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157170730) .nil)

theorem atom137977386true : BadRow (sources true 3 5 atom137977386) := by
  have h : sources true 3 5 atom137977386 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137291290 : Term := (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))
private def v701156484634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))))))
private theorem no_v701156484634 : ¬ MinimalInterpreter v701156484634 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137291290false : BadRow (sources false 3 5 atom137291290) := by
  have h : sources false 3 5 atom137291290 = [v701156484634] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156484634) .nil)

theorem atom137291290true : BadRow (sources true 3 5 atom137291290) := by
  have h : sources true 3 5 atom137291290 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137291362 : Term := (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))
private def v701156484706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v701156484706 : ¬ MinimalInterpreter v701156484706 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137291362false : BadRow (sources false 3 5 atom137291362) := by
  have h : sources false 3 5 atom137291362 = [v701156484706] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156484706) .nil)

theorem atom137291362true : BadRow (sources true 3 5 atom137291362) := by
  have h : sources true 3 5 atom137291362 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137291170 : Term := (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))
private def v701156484514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))))))
private theorem no_v701156484514 : ¬ MinimalInterpreter v701156484514 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0))))) (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137291170false : BadRow (sources false 3 5 atom137291170) := by
  have h : sources false 3 5 atom137291170 = [v701156484514] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156484514) .nil)

theorem atom137291170true : BadRow (sources true 3 5 atom137291170) := by
  have h : sources true 3 5 atom137291170 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137291146 : Term := (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))
private def v701156484490 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))))
private theorem no_v701156484490 : ¬ MinimalInterpreter v701156484490 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137291146false : BadRow (sources false 3 5 atom137291146) := by
  have h : sources false 3 5 atom137291146 = [v701156484490] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156484490) .nil)

theorem atom137291146true : BadRow (sources true 3 5 atom137291146) := by
  have h : sources true 3 5 atom137291146 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137263642 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.app (.var 0) (.var 0))))))
private def v701156456986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.app (.var 0) (.var 0))))))))
private theorem no_v701156456986 : ¬ MinimalInterpreter v701156456986 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom137263642false : BadRow (sources false 3 5 atom137263642) := by
  have h : sources false 3 5 atom137263642 = [v701156456986] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156456986) .nil)

theorem atom137263642true : BadRow (sources true 3 5 atom137263642) := by
  have h : sources true 3 5 atom137263642 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137263714 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 0) (.lam (.var 0))))))
private def v701156457058 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 0) (.lam (.var 0))))))))
private theorem no_v701156457058 : ¬ MinimalInterpreter v701156457058 :=
  chain_cut false 2 (by decide)
theorem atom137263714false : BadRow (sources false 3 5 atom137263714) := by
  have h : sources false 3 5 atom137263714 = [v701156457058] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156457058) .nil)

theorem atom137263714true : BadRow (sources true 3 5 atom137263714) := by
  have h : sources true 3 5 atom137263714 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137083418 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.app (.var 0) (.var 0))))))
private def v701156276762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.app (.var 0) (.var 0))))))))
private theorem no_v701156276762 : ¬ MinimalInterpreter v701156276762 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137083418false : BadRow (sources false 3 5 atom137083418) := by
  have h : sources false 3 5 atom137083418 = [v701156276762] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156276762) .nil)

theorem atom137083418true : BadRow (sources true 3 5 atom137083418) := by
  have h : sources true 3 5 atom137083418 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137083490 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.lam (.var 0))))))
private def v701156276834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.lam (.var 0))))))))
private theorem no_v701156276834 : ¬ MinimalInterpreter v701156276834 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.lam (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137083490false : BadRow (sources false 3 5 atom137083490) := by
  have h : sources false 3 5 atom137083490 = [v701156276834] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156276834) .nil)

theorem atom137083490true : BadRow (sources true 3 5 atom137083490) := by
  have h : sources true 3 5 atom137083490 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137263258 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.app (.var 0) (.var 0)))))
private def v701156456602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.app (.var 0) (.var 0)))))))
private theorem no_v701156456602 : ¬ MinimalInterpreter v701156456602 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.app (.var 2) (so_closed_lam (by decide) (.var 0)))) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))
theorem atom137263258false : BadRow (sources false 3 5 atom137263258) := by
  have h : sources false 3 5 atom137263258 = [v701156456602] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156456602) .nil)

theorem atom137263258true : BadRow (sources true 3 5 atom137263258) := by
  have h : sources true 3 5 atom137263258 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137083034 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.app (.var 0) (.var 0)))))
private def v701156276378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.app (.var 0) (.var 0)))))))
private theorem no_v701156276378 : ¬ MinimalInterpreter v701156276378 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 1) (.var 2)) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137083034false : BadRow (sources false 3 5 atom137083034) := by
  have h : sources false 3 5 atom137083034 = [v701156276378] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156276378) .nil)

theorem atom137083034true : BadRow (sources true 3 5 atom137083034) := by
  have h : sources true 3 5 atom137083034 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137263522 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.var 0)))))
private def v701156456866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))) (.lam (.var 0)))))))
private theorem no_v701156456866 : ¬ MinimalInterpreter v701156456866 :=
  chain_cut false 2 (by decide)
theorem atom137263522false : BadRow (sources false 3 5 atom137263522) := by
  have h : sources false 3 5 atom137263522 = [v701156456866] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156456866) .nil)

theorem atom137263522true : BadRow (sources true 3 5 atom137263522) := by
  have h : sources true 3 5 atom137263522 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137256610 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))) (.lam (.var 0)))))
private def v701156449954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))) (.lam (.var 0)))))))
private theorem no_v701156449954 : ¬ MinimalInterpreter v701156449954 :=
  chain_cut false 2 (by decide)
theorem atom137256610false : BadRow (sources false 3 5 atom137256610) := by
  have h : sources false 3 5 atom137256610 = [v701156449954] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156449954) .nil)

theorem atom137256610true : BadRow (sources true 3 5 atom137256610) := by
  have h : sources true 3 5 atom137256610 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137083298 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.lam (.var 0)))))
private def v701156276642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.lam (.var 0)))))))
private theorem no_v701156276642 : ¬ MinimalInterpreter v701156276642 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.lam (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0)))) (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137083298false : BadRow (sources false 3 5 atom137083298) := by
  have h : sources false 3 5 atom137083298 = [v701156276642] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156276642) .nil)

theorem atom137083298true : BadRow (sources true 3 5 atom137083298) := by
  have h : sources true 3 5 atom137083298 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137076386 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)) (.lam (.var 0)))))
private def v701156269730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)) (.lam (.var 0)))))))
private theorem no_v701156269730 : ¬ MinimalInterpreter v701156269730 :=
  chain_cut false 2 (by decide)
theorem atom137076386false : BadRow (sources false 3 5 atom137076386) := by
  have h : sources false 3 5 atom137076386 = [v701156269730] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156269730) .nil)

theorem atom137076386true : BadRow (sources true 3 5 atom137076386) := by
  have h : sources true 3 5 atom137076386 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137031330 : Term := (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.lam (.var 0)))))
private def v701156224674 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.lam (.var 0)))))))
private theorem no_v701156224674 : ¬ MinimalInterpreter v701156224674 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.lam (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0)))) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137031330false : BadRow (sources false 3 5 atom137031330) := by
  have h : sources false 3 5 atom137031330 = [v701156224674] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156224674) .nil)

theorem atom137031330true : BadRow (sources true 3 5 atom137031330) := by
  have h : sources true 3 5 atom137031330 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137263210 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))) (.var 0))))
private def v701156456554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))) (.var 0))))))
private theorem no_v701156456554 : ¬ MinimalInterpreter v701156456554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.var 0)) (.app (.var 0) (.app (.var 1) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (by decide) (by decide)))))
theorem atom137263210false : BadRow (sources false 3 5 atom137263210) := by
  have h : sources false 3 5 atom137263210 = [v701156456554] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156456554) .nil)

theorem atom137263210true : BadRow (sources true 3 5 atom137263210) := by
  have h : sources true 3 5 atom137263210 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137263498 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))) (.var 0))))
private def v701156456842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))) (.var 0))))))
private theorem no_v701156456842 : ¬ MinimalInterpreter v701156456842 :=
  chain_cut false 2 (by decide)
theorem atom137263498false : BadRow (sources false 3 5 atom137263498) := by
  have h : sources false 3 5 atom137263498 = [v701156456842] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156456842) .nil)

theorem atom137263498true : BadRow (sources true 3 5 atom137263498) := by
  have h : sources true 3 5 atom137263498 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137256586 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))) (.var 0))))
private def v701156449930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))) (.var 0))))))
private theorem no_v701156449930 : ¬ MinimalInterpreter v701156449930 :=
  chain_cut false 2 (by decide)
theorem atom137256586false : BadRow (sources false 3 5 atom137256586) := by
  have h : sources false 3 5 atom137256586 = [v701156449930] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156449930) .nil)

theorem atom137256586true : BadRow (sources true 3 5 atom137256586) := by
  have h : sources true 3 5 atom137256586 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137256490 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))) (.var 0))))
private def v701156449834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))) (.var 0))))))
private theorem no_v701156449834 : ¬ MinimalInterpreter v701156449834 :=
  chain_cut false 2 (by decide)
theorem atom137256490false : BadRow (sources false 3 5 atom137256490) := by
  have h : sources false 3 5 atom137256490 = [v701156449834] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156449834) .nil)

theorem atom137256490true : BadRow (sources true 3 5 atom137256490) := by
  have h : sources true 3 5 atom137256490 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137082986 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 0)))) (.var 0))))
private def v701156276330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 0)))) (.var 0))))))
private theorem no_v701156276330 : ¬ MinimalInterpreter v701156276330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 0)))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (.var 0)) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137082986false : BadRow (sources false 3 5 atom137082986) := by
  have h : sources false 3 5 atom137082986 = [v701156276330] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156276330) .nil)

theorem atom137082986true : BadRow (sources true 3 5 atom137082986) := by
  have h : sources true 3 5 atom137082986 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137083274 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0)))) (.var 0))))
private def v701156276618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0)))) (.var 0))))))
private theorem no_v701156276618 : ¬ MinimalInterpreter v701156276618 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0)))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137083274false : BadRow (sources false 3 5 atom137083274) := by
  have h : sources false 3 5 atom137083274 = [v701156276618] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156276618) .nil)

theorem atom137083274true : BadRow (sources true 3 5 atom137083274) := by
  have h : sources true 3 5 atom137083274 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137076362 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0))) (.var 0))))
private def v701156269706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0))) (.var 0))))))
private theorem no_v701156269706 : ¬ MinimalInterpreter v701156269706 :=
  chain_cut false 2 (by decide)
theorem atom137076362false : BadRow (sources false 3 5 atom137076362) := by
  have h : sources false 3 5 atom137076362 = [v701156269706] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156269706) .nil)

theorem atom137076362true : BadRow (sources true 3 5 atom137076362) := by
  have h : sources true 3 5 atom137076362 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137031306 : Term := (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0))) (.var 0))))
private def v701156224650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0))) (.var 0))))))
private theorem no_v701156224650 : ¬ MinimalInterpreter v701156224650 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137031306false : BadRow (sources false 3 5 atom137031306) := by
  have h : sources false 3 5 atom137031306 = [v701156224650] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156224650) .nil)

theorem atom137031306true : BadRow (sources true 3 5 atom137031306) := by
  have h : sources true 3 5 atom137031306 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137076266 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0)) (.var 0))))
private def v701156269610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0)) (.var 0))))))
private theorem no_v701156269610 : ¬ MinimalInterpreter v701156269610 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.app (.var 2) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.var 0)) (.app (.var 0) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))
theorem atom137076266false : BadRow (sources false 3 5 atom137076266) := by
  have h : sources false 3 5 atom137076266 = [v701156269610] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156269610) .nil)

theorem atom137076266true : BadRow (sources true 3 5 atom137076266) := by
  have h : sources true 3 5 atom137076266 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137031210 : Term := (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0)) (.var 0))))
private def v701156224554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0)) (.var 0))))))
private theorem no_v701156224554 : ¬ MinimalInterpreter v701156224554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 1) (.var 2)) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.var 0)) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137031210false : BadRow (sources false 3 5 atom137031210) := by
  have h : sources false 3 5 atom137031210 = [v701156224554] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156224554) .nil)

theorem atom137031210true : BadRow (sources true 3 5 atom137031210) := by
  have h : sources true 3 5 atom137031210 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms134 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [1,2,0,0,0]) := by
  have h : atoms 3 5 [1,2,0,0,0] = [atom138012186,atom138012258,atom138012066,atom138012042,atom137984538,atom137984610,atom137984154,atom137984418,atom137977506,atom137984106,atom137984394,atom137977482,atom137977386,atom137291290,atom137291362,atom137291170,atom137291146,atom137263642,atom137263714,atom137083418,atom137083490,atom137263258,atom137083034,atom137263522,atom137256610,atom137083298,atom137076386,atom137031330,atom137263210,atom137263498,atom137256586,atom137256490,atom137082986,atom137083274,atom137076362,atom137031306,atom137076266,atom137031210] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom138012186false | exact atom138012186true) (.cons (fun lit => by cases lit <;> first | exact atom138012258false | exact atom138012258true) (.cons (fun lit => by cases lit <;> first | exact atom138012066false | exact atom138012066true) (.cons (fun lit => by cases lit <;> first | exact atom138012042false | exact atom138012042true) (.cons (fun lit => by cases lit <;> first | exact atom137984538false | exact atom137984538true) (.cons (fun lit => by cases lit <;> first | exact atom137984610false | exact atom137984610true) (.cons (fun lit => by cases lit <;> first | exact atom137984154false | exact atom137984154true) (.cons (fun lit => by cases lit <;> first | exact atom137984418false | exact atom137984418true) (.cons (fun lit => by cases lit <;> first | exact atom137977506false | exact atom137977506true) (.cons (fun lit => by cases lit <;> first | exact atom137984106false | exact atom137984106true) (.cons (fun lit => by cases lit <;> first | exact atom137984394false | exact atom137984394true) (.cons (fun lit => by cases lit <;> first | exact atom137977482false | exact atom137977482true) (.cons (fun lit => by cases lit <;> first | exact atom137977386false | exact atom137977386true) (.cons (fun lit => by cases lit <;> first | exact atom137291290false | exact atom137291290true) (.cons (fun lit => by cases lit <;> first | exact atom137291362false | exact atom137291362true) (.cons (fun lit => by cases lit <;> first | exact atom137291170false | exact atom137291170true) (.cons (fun lit => by cases lit <;> first | exact atom137291146false | exact atom137291146true) (.cons (fun lit => by cases lit <;> first | exact atom137263642false | exact atom137263642true) (.cons (fun lit => by cases lit <;> first | exact atom137263714false | exact atom137263714true) (.cons (fun lit => by cases lit <;> first | exact atom137083418false | exact atom137083418true) (.cons (fun lit => by cases lit <;> first | exact atom137083490false | exact atom137083490true) (.cons (fun lit => by cases lit <;> first | exact atom137263258false | exact atom137263258true) (.cons (fun lit => by cases lit <;> first | exact atom137083034false | exact atom137083034true) (.cons (fun lit => by cases lit <;> first | exact atom137263522false | exact atom137263522true) (.cons (fun lit => by cases lit <;> first | exact atom137256610false | exact atom137256610true) (.cons (fun lit => by cases lit <;> first | exact atom137083298false | exact atom137083298true) (.cons (fun lit => by cases lit <;> first | exact atom137076386false | exact atom137076386true) (.cons (fun lit => by cases lit <;> first | exact atom137031330false | exact atom137031330true) (.cons (fun lit => by cases lit <;> first | exact atom137263210false | exact atom137263210true) (.cons (fun lit => by cases lit <;> first | exact atom137263498false | exact atom137263498true) (.cons (fun lit => by cases lit <;> first | exact atom137256586false | exact atom137256586true) (.cons (fun lit => by cases lit <;> first | exact atom137256490false | exact atom137256490true) (.cons (fun lit => by cases lit <;> first | exact atom137082986false | exact atom137082986true) (.cons (fun lit => by cases lit <;> first | exact atom137083274false | exact atom137083274true) (.cons (fun lit => by cases lit <;> first | exact atom137076362false | exact atom137076362true) (.cons (fun lit => by cases lit <;> first | exact atom137031306false | exact atom137031306true) (.cons (fun lit => by cases lit <;> first | exact atom137076266false | exact atom137076266true) (.cons (fun lit => by cases lit <;> first | exact atom137031210false | exact atom137031210true) .nil))))))))))))))))))))))))))))))))))))))
end Blc.SelfintSingleObject.Sat39
