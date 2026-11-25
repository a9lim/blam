import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom137599458 : Term := (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))))))
private def v701156792802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))))))))
private theorem no_v701156792802 : ¬ MinimalInterpreter v701156792802 :=
  chain_cut false 2 (by decide)
theorem atom137599458false : BadRow (sources false 3 5 atom137599458) := by
  have h : sources false 3 5 atom137599458 = [v701156792802] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156792802) .nil)

theorem atom137599458true : BadRow (sources true 3 5 atom137599458) := by
  have h : sources true 3 5 atom137599458 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137598690 : Term := (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))))
private def v701156792034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))))))
private theorem no_v701156792034 : ¬ MinimalInterpreter v701156792034 :=
  chain_cut false 2 (by decide)
theorem atom137598690false : BadRow (sources false 3 5 atom137598690) := by
  have h : sources false 3 5 atom137598690 = [v701156792034] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156792034) .nil)

theorem atom137598690true : BadRow (sources true 3 5 atom137598690) := by
  have h : sources true 3 5 atom137598690 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137554402 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0)))))))
private def v701156747746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0)))))))))
private theorem no_v701156747746 : ¬ MinimalInterpreter v701156747746 :=
  chain_cut false 2 (by decide)
theorem atom137554402false : BadRow (sources false 3 5 atom137554402) := by
  have h : sources false 3 5 atom137554402 = [v701156747746] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156747746) .nil)

theorem atom137554402true : BadRow (sources true 3 5 atom137554402) := by
  have h : sources true 3 5 atom137554402 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137552506 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0))))))
private def v701156745850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0))))))))
private theorem no_v701156745850 : ¬ MinimalInterpreter v701156745850 :=
  chain_cut false 2 (by decide)
theorem atom137552506false : BadRow (sources false 3 5 atom137552506) := by
  have h : sources false 3 5 atom137552506 = [v701156745850] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156745850) .nil)

theorem atom137552506true : BadRow (sources true 3 5 atom137552506) := by
  have h : sources true 3 5 atom137552506 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137553634 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0))))))
private def v701156746978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0))))))))
private theorem no_v701156746978 : ¬ MinimalInterpreter v701156746978 :=
  chain_cut false 2 (by decide)
theorem atom137553634false : BadRow (sources false 3 5 atom137553634) := by
  have h : sources false 3 5 atom137553634 = [v701156746978] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156746978) .nil)

theorem atom137553634true : BadRow (sources true 3 5 atom137553634) := by
  have h : sources true 3 5 atom137553634 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137542370 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0))))))
private def v701156735714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0))))))))
private theorem no_v701156735714 : ¬ MinimalInterpreter v701156735714 :=
  chain_cut false 2 (by decide)
theorem atom137542370false : BadRow (sources false 3 5 atom137542370) := by
  have h : sources false 3 5 atom137542370 = [v701156735714] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156735714) .nil)

theorem atom137542370true : BadRow (sources true 3 5 atom137542370) := by
  have h : sources true 3 5 atom137542370 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137541818 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0)))))
private def v701156735162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0)))))))
private theorem no_v701156735162 : ¬ MinimalInterpreter v701156735162 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 2)) (.var 0))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137541818false : BadRow (sources false 3 5 atom137541818) := by
  have h : sources false 3 5 atom137541818 = [v701156735162] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156735162) .nil)

theorem atom137541818true : BadRow (sources true 3 5 atom137541818) := by
  have h : sources true 3 5 atom137541818 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137206242 : Term := (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))))
private def v701156399586 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))))))
private theorem no_v701156399586 : ¬ MinimalInterpreter v701156399586 :=
  chain_cut false 2 (by decide)
theorem atom137206242false : BadRow (sources false 3 5 atom137206242) := by
  have h : sources false 3 5 atom137206242 = [v701156399586] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156399586) .nil)

theorem atom137206242true : BadRow (sources true 3 5 atom137206242) := by
  have h : sources true 3 5 atom137206242 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137205474 : Term := (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))))
private def v701156398818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))))))
private theorem no_v701156398818 : ¬ MinimalInterpreter v701156398818 :=
  chain_cut false 2 (by decide)
theorem atom137205474false : BadRow (sources false 3 5 atom137205474) := by
  have h : sources false 3 5 atom137205474 = [v701156398818] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156398818) .nil)

theorem atom137205474true : BadRow (sources true 3 5 atom137205474) := by
  have h : sources true 3 5 atom137205474 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137161186 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.lam (.var 0))))))
private def v701156354530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.lam (.var 0))))))))
private theorem no_v701156354530 : ¬ MinimalInterpreter v701156354530 :=
  chain_cut false 2 (by decide)
theorem atom137161186false : BadRow (sources false 3 5 atom137161186) := by
  have h : sources false 3 5 atom137161186 = [v701156354530] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156354530) .nil)

theorem atom137161186true : BadRow (sources true 3 5 atom137161186) := by
  have h : sources true 3 5 atom137161186 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137062882 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.lam (.var 0))))))
private def v701156256226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.lam (.var 0))))))))
private theorem no_v701156256226 : ¬ MinimalInterpreter v701156256226 :=
  chain_cut false 2 (by decide)
theorem atom137062882false : BadRow (sources false 3 5 atom137062882) := by
  have h : sources false 3 5 atom137062882 = [v701156256226] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156256226) .nil)

theorem atom137062882true : BadRow (sources true 3 5 atom137062882) := by
  have h : sources true 3 5 atom137062882 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137159290 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 2) (.var 0)))))
private def v701156352634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 2) (.var 0)))))))
private theorem no_v701156352634 : ¬ MinimalInterpreter v701156352634 :=
  chain_cut false 2 (by decide)
theorem atom137159290false : BadRow (sources false 3 5 atom137159290) := by
  have h : sources false 3 5 atom137159290 = [v701156352634] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156352634) .nil)

theorem atom137159290true : BadRow (sources true 3 5 atom137159290) := by
  have h : sources true 3 5 atom137159290 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137060986 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 2) (.var 0)))))
private def v701156254330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 2) (.var 0)))))))
private theorem no_v701156254330 : ¬ MinimalInterpreter v701156254330 :=
  chain_cut false 2 (by decide)
theorem atom137060986false : BadRow (sources false 3 5 atom137060986) := by
  have h : sources false 3 5 atom137060986 = [v701156254330] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156254330) .nil)

theorem atom137060986true : BadRow (sources true 3 5 atom137060986) := by
  have h : sources true 3 5 atom137060986 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137160418 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.lam (.var 0)))))
private def v701156353762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.lam (.var 0)))))))
private theorem no_v701156353762 : ¬ MinimalInterpreter v701156353762 :=
  chain_cut false 2 (by decide)
theorem atom137160418false : BadRow (sources false 3 5 atom137160418) := by
  have h : sources false 3 5 atom137160418 = [v701156353762] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156353762) .nil)

theorem atom137160418true : BadRow (sources true 3 5 atom137160418) := by
  have h : sources true 3 5 atom137160418 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137149154 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.lam (.var 0)))))
private def v701156342498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.lam (.var 0)))))))
private theorem no_v701156342498 : ¬ MinimalInterpreter v701156342498 :=
  chain_cut false 2 (by decide)
theorem atom137149154false : BadRow (sources false 3 5 atom137149154) := by
  have h : sources false 3 5 atom137149154 = [v701156342498] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156342498) .nil)

theorem atom137149154true : BadRow (sources true 3 5 atom137149154) := by
  have h : sources true 3 5 atom137149154 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137062114 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.lam (.var 0)))))
private def v701156255458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.lam (.var 0)))))))
private theorem no_v701156255458 : ¬ MinimalInterpreter v701156255458 :=
  chain_cut false 2 (by decide)
theorem atom137062114false : BadRow (sources false 3 5 atom137062114) := by
  have h : sources false 3 5 atom137062114 = [v701156255458] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156255458) .nil)

theorem atom137062114true : BadRow (sources true 3 5 atom137062114) := by
  have h : sources true 3 5 atom137062114 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137050850 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.lam (.var 0)))))
private def v701156244194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.lam (.var 0)))))))
private theorem no_v701156244194 : ¬ MinimalInterpreter v701156244194 :=
  chain_cut false 2 (by decide)
theorem atom137050850false : BadRow (sources false 3 5 atom137050850) := by
  have h : sources false 3 5 atom137050850 = [v701156244194] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156244194) .nil)

theorem atom137050850true : BadRow (sources true 3 5 atom137050850) := by
  have h : sources true 3 5 atom137050850 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137026274 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.lam (.var 0)))))
private def v701156219618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.lam (.var 0)))))))
private theorem no_v701156219618 : ¬ MinimalInterpreter v701156219618 :=
  chain_cut false 2 (by decide)
theorem atom137026274false : BadRow (sources false 3 5 atom137026274) := by
  have h : sources false 3 5 atom137026274 = [v701156219618] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156219618) .nil)

theorem atom137026274true : BadRow (sources true 3 5 atom137026274) := by
  have h : sources true 3 5 atom137026274 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137148602 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))) (.var 0))))
private def v701156341946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))) (.var 0))))))
private theorem no_v701156341946 : ¬ MinimalInterpreter v701156341946 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 2))) (.var 0)) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137148602false : BadRow (sources false 3 5 atom137148602) := by
  have h : sources false 3 5 atom137148602 = [v701156341946] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156341946) .nil)

theorem atom137148602true : BadRow (sources true 3 5 atom137148602) := by
  have h : sources true 3 5 atom137148602 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137050298 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2)) (.var 0))))
private def v701156243642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2)) (.var 0))))))
private theorem no_v701156243642 : ¬ MinimalInterpreter v701156243642 :=
  chain_cut false 2 (by decide)
theorem atom137050298false : BadRow (sources false 3 5 atom137050298) := by
  have h : sources false 3 5 atom137050298 = [v701156243642] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156243642) .nil)

theorem atom137050298true : BadRow (sources true 3 5 atom137050298) := by
  have h : sources true 3 5 atom137050298 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137025722 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2)) (.var 0))))
private def v701156219066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2)) (.var 0))))))
private theorem no_v701156219066 : ¬ MinimalInterpreter v701156219066 :=
  chain_cut false 2 (by decide)
theorem atom137025722false : BadRow (sources false 3 5 atom137025722) := by
  have h : sources false 3 5 atom137025722 = [v701156219066] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156219066) .nil)

theorem atom137025722true : BadRow (sources true 3 5 atom137025722) := by
  have h : sources true 3 5 atom137025722 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom147036642 : Term := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))))))
private def v701166229986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))))))))
private theorem no_v701166229986 : ¬ MinimalInterpreter v701166229986 :=
  chain_cut false 2 (by decide)
theorem atom147036642false : BadRow (sources false 3 5 atom147036642) := by
  have h : sources false 3 5 atom147036642 = [v701166229986] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166229986) .nil)

theorem atom147036642true : BadRow (sources true 3 5 atom147036642) := by
  have h : sources true 3 5 atom147036642 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom147035874 : Term := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))))
private def v701166229218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))))))
private theorem no_v701166229218 : ¬ MinimalInterpreter v701166229218 :=
  chain_cut false 2 (by decide)
theorem atom147035874false : BadRow (sources false 3 5 atom147035874) := by
  have h : sources false 3 5 atom147035874 = [v701166229218] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166229218) .nil)

theorem atom147035874true : BadRow (sources true 3 5 atom147035874) := by
  have h : sources true 3 5 atom147035874 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146991586 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0)))))))
private def v701166184930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0)))))))))
private theorem no_v701166184930 : ¬ MinimalInterpreter v701166184930 :=
  chain_cut false 2 (by decide)
theorem atom146991586false : BadRow (sources false 3 5 atom146991586) := by
  have h : sources false 3 5 atom146991586 = [v701166184930] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166184930) .nil)

theorem atom146991586true : BadRow (sources true 3 5 atom146991586) := by
  have h : sources true 3 5 atom146991586 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146989690 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0))))))
private def v701166183034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0))))))))
private theorem no_v701166183034 : ¬ MinimalInterpreter v701166183034 :=
  chain_cut false 2 (by decide)
theorem atom146989690false : BadRow (sources false 3 5 atom146989690) := by
  have h : sources false 3 5 atom146989690 = [v701166183034] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166183034) .nil)

theorem atom146989690true : BadRow (sources true 3 5 atom146989690) := by
  have h : sources true 3 5 atom146989690 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146990818 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0))))))
private def v701166184162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0))))))))
private theorem no_v701166184162 : ¬ MinimalInterpreter v701166184162 :=
  chain_cut false 2 (by decide)
theorem atom146990818false : BadRow (sources false 3 5 atom146990818) := by
  have h : sources false 3 5 atom146990818 = [v701166184162] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166184162) .nil)

theorem atom146990818true : BadRow (sources true 3 5 atom146990818) := by
  have h : sources true 3 5 atom146990818 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146979554 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0))))))
private def v701166172898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0))))))))
private theorem no_v701166172898 : ¬ MinimalInterpreter v701166172898 :=
  chain_cut false 2 (by decide)
theorem atom146979554false : BadRow (sources false 3 5 atom146979554) := by
  have h : sources false 3 5 atom146979554 = [v701166172898] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166172898) .nil)

theorem atom146979554true : BadRow (sources true 3 5 atom146979554) := by
  have h : sources true 3 5 atom146979554 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146979002 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0)))))
private def v701166172346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0)))))))
private theorem no_v701166172346 : ¬ MinimalInterpreter v701166172346 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 2)) (.var 0)) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom146979002false : BadRow (sources false 3 5 atom146979002) := by
  have h : sources false 3 5 atom146979002 = [v701166172346] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166172346) .nil)

theorem atom146979002true : BadRow (sources true 3 5 atom146979002) := by
  have h : sources true 3 5 atom146979002 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145811170 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.lam (.var 0))))
private def v701165004514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.lam (.var 0))))))
private theorem no_v701165004514 : ¬ MinimalInterpreter v701165004514 :=
  chain_cut false 2 (by decide)
theorem atom145811170false : BadRow (sources false 3 5 atom145811170) := by
  have h : sources false 3 5 atom145811170 = [v701165004514] := by decide +kernel
  rw [h]
  exact (.cons (no_v701165004514) .nil)

theorem atom145811170true : BadRow (sources true 3 5 atom145811170) := by
  have h : sources true 3 5 atom145811170 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145799906 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.var 0))))
private def v701164993250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.lam (.var 0))))))
private theorem no_v701164993250 : ¬ MinimalInterpreter v701164993250 :=
  chain_cut false 2 (by decide)
theorem atom145799906false : BadRow (sources false 3 5 atom145799906) := by
  have h : sources false 3 5 atom145799906 = [v701164993250] := by decide +kernel
  rw [h]
  exact (.cons (no_v701164993250) .nil)

theorem atom145799906true : BadRow (sources true 3 5 atom145799906) := by
  have h : sources true 3 5 atom145799906 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184608378 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))
private def v701203801722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0))))))))))
private theorem no_v701203801722 : ¬ MinimalInterpreter v701203801722 :=
  chain_cut false 4 (by decide)
theorem atom184608378false : BadRow (sources false 3 5 atom184608378) := by
  have h : sources false 3 5 atom184608378 = [v701203801722] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203801722) .nil)

theorem atom184608378true : BadRow (sources true 3 5 atom184608378) := by
  have h : sources true 3 5 atom184608378 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184608186 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))
private def v701203801530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0)))))))))
private theorem no_v701203801530 : ¬ MinimalInterpreter v701203801530 :=
  chain_cut false 4 (by decide)
theorem atom184608186false : BadRow (sources false 3 5 atom184608186) := by
  have h : sources false 3 5 atom184608186 = [v701203801530] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203801530) .nil)

theorem atom184608186true : BadRow (sources true 3 5 atom184608186) := by
  have h : sources true 3 5 atom184608186 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184597114 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))
private def v701203790458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0)))))))))
private theorem no_v701203790458 : ¬ MinimalInterpreter v701203790458 :=
  chain_cut false 4 (by decide)
theorem atom184597114false : BadRow (sources false 3 5 atom184597114) := by
  have h : sources false 3 5 atom184597114 = [v701203790458] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203790458) .nil)

theorem atom184597114true : BadRow (sources true 3 5 atom184597114) := by
  have h : sources true 3 5 atom184597114 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184596922 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))
private def v701203790266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0))))))))
private theorem no_v701203790266 : ¬ MinimalInterpreter v701203790266 :=
  chain_cut false 4 (by decide)
theorem atom184596922false : BadRow (sources false 3 5 atom184596922) := by
  have h : sources false 3 5 atom184596922 = [v701203790266] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203790266) .nil)

theorem atom184596922true : BadRow (sources true 3 5 atom184596922) := by
  have h : sources true 3 5 atom184596922 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184594106 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))
private def v701203787450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0))))))))
private theorem no_v701203787450 : ¬ MinimalInterpreter v701203787450 :=
  chain_cut false 4 (by decide)
theorem atom184594106false : BadRow (sources false 3 5 atom184594106) := by
  have h : sources false 3 5 atom184594106 = [v701203787450] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203787450) .nil)

theorem atom184594106true : BadRow (sources true 3 5 atom184594106) := by
  have h : sources true 3 5 atom184594106 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184785378 : Term := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))))))
private def v701203978722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))))))))
private theorem no_v701203978722 : ¬ MinimalInterpreter v701203978722 :=
  chain_cut true 6 (by decide)
theorem atom184785378false : BadRow (sources false 3 5 atom184785378) := by
  have h : sources false 3 5 atom184785378 = [v701203978722] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203978722) .nil)

theorem atom184785378true : BadRow (sources true 3 5 atom184785378) := by
  have h : sources true 3 5 atom184785378 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184784610 : Term := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))))
private def v701203977954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))))))))
private theorem no_v701203977954 : ¬ MinimalInterpreter v701203977954 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom184784610false : BadRow (sources false 3 5 atom184784610) := by
  have h : sources false 3 5 atom184784610 = [v701203977954] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203977954) .nil)

theorem atom184784610true : BadRow (sources true 3 5 atom184784610) := by
  have h : sources true 3 5 atom184784610 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184740322 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0)))))))
private def v701203933666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0)))))))))
private theorem no_v701203933666 : ¬ MinimalInterpreter v701203933666 :=
  chain_cut true 7 (by decide)
theorem atom184740322false : BadRow (sources false 3 5 atom184740322) := by
  have h : sources false 3 5 atom184740322 = [v701203933666] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203933666) .nil)

theorem atom184740322true : BadRow (sources true 3 5 atom184740322) := by
  have h : sources true 3 5 atom184740322 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184738426 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0))))))
private def v701203931770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0))))))))
private theorem no_v701203931770 : ¬ MinimalInterpreter v701203931770 :=
  chain_cut false 10 (by decide)
theorem atom184738426false : BadRow (sources false 3 5 atom184738426) := by
  have h : sources false 3 5 atom184738426 = [v701203931770] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203931770) .nil)

theorem atom184738426true : BadRow (sources true 3 5 atom184738426) := by
  have h : sources true 3 5 atom184738426 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184739554 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0))))))
private def v701203932898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0))))))))
private theorem no_v701203932898 : ¬ MinimalInterpreter v701203932898 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom184739554false : BadRow (sources false 3 5 atom184739554) := by
  have h : sources false 3 5 atom184739554 = [v701203932898] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203932898) .nil)

theorem atom184739554true : BadRow (sources true 3 5 atom184739554) := by
  have h : sources true 3 5 atom184739554 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184728290 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0))))))
private def v701203921634 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0))))))))
private theorem no_v701203921634 : ¬ MinimalInterpreter v701203921634 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom184728290false : BadRow (sources false 3 5 atom184728290) := by
  have h : sources false 3 5 atom184728290 = [v701203921634] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203921634) .nil)

theorem atom184728290true : BadRow (sources true 3 5 atom184728290) := by
  have h : sources true 3 5 atom184728290 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184727738 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0)))))
private def v701203921082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0)))))))
private theorem no_v701203921082 : ¬ MinimalInterpreter v701203921082 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 2)) (.var 0)) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom184727738false : BadRow (sources false 3 5 atom184727738) := by
  have h : sources false 3 5 atom184727738 = [v701203921082] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203921082) .nil)

theorem atom184727738true : BadRow (sources true 3 5 atom184727738) := by
  have h : sources true 3 5 atom184727738 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180414178 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.var 0)))
private def v701199607522 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.var 0)))))
private theorem no_v701199607522 : ¬ MinimalInterpreter v701199607522 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
theorem atom180414178false : BadRow (sources false 3 5 atom180414178) := by
  have h : sources false 3 5 atom180414178 = [v701199607522] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199607522) .nil)

theorem atom180414178true : BadRow (sources true 3 5 atom180414178) := by
  have h : sources true 3 5 atom180414178 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180402914 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.var 0)))
private def v701199596258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.var 0)))))
private theorem no_v701199596258 : ¬ MinimalInterpreter v701199596258 :=
  cycle_cut 2 6 (by decide) (by decide)
theorem atom180402914false : BadRow (sources false 3 5 atom180402914) := by
  have h : sources false 3 5 atom180402914 = [v701199596258] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199596258) .nil)

theorem atom180402914true : BadRow (sources true 3 5 atom180402914) := by
  have h : sources true 3 5 atom180402914 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180369850 : Term := (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.var 0))
private def v699009710618 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.var 0))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699009710618 : ¬ MinimalInterpreter v699009710618 :=
  chain_cut false 2 (by decide)
private def v701199563194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.var 0))))
private theorem no_v701199563194 : ¬ MinimalInterpreter v701199563194 :=
  chain_cut false 3 (by decide)
theorem atom180369850false : BadRow (sources false 3 5 atom180369850) := by
  have h : sources false 3 5 atom180369850 = [v699009710618,v701199563194] := by decide +kernel
  rw [h]
  exact (.cons (no_v699009710618) (.cons (no_v701199563194) .nil))

theorem atom180369850true : BadRow (sources true 3 5 atom180369850) := by
  have h : sources true 3 5 atom180369850 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180367034 : Term := (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 0))
private def v699008989722 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 0))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699008989722 : ¬ MinimalInterpreter v699008989722 :=
  chain_cut false 2 (by decide)
private def v701199560378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 0))))
private theorem no_v701199560378 : ¬ MinimalInterpreter v701199560378 :=
  chain_cut false 3 (by decide)
theorem atom180367034false : BadRow (sources false 3 5 atom180367034) := by
  have h : sources false 3 5 atom180367034 = [v699008989722,v701199560378] := by decide +kernel
  rw [h]
  exact (.cons (no_v699008989722) (.cons (no_v701199560378) .nil))

theorem atom180367034true : BadRow (sources true 3 5 atom180367034) := by
  have h : sources true 3 5 atom180367034 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms117 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,1,0,2,0]) := by
  have h : atoms 3 5 [0,1,0,2,0] = [atom137599458,atom137598690,atom137554402,atom137552506,atom137553634,atom137542370,atom137541818,atom137206242,atom137205474,atom137161186,atom137062882,atom137159290,atom137060986,atom137160418,atom137149154,atom137062114,atom137050850,atom137026274,atom137148602,atom137050298,atom137025722,atom147036642,atom147035874,atom146991586,atom146989690,atom146990818,atom146979554,atom146979002,atom145811170,atom145799906,atom184608378,atom184608186,atom184597114,atom184596922,atom184594106,atom184785378,atom184784610,atom184740322,atom184738426,atom184739554,atom184728290,atom184727738,atom180414178,atom180402914,atom180369850,atom180367034] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom137599458false | exact atom137599458true) (.cons (fun lit => by cases lit <;> first | exact atom137598690false | exact atom137598690true) (.cons (fun lit => by cases lit <;> first | exact atom137554402false | exact atom137554402true) (.cons (fun lit => by cases lit <;> first | exact atom137552506false | exact atom137552506true) (.cons (fun lit => by cases lit <;> first | exact atom137553634false | exact atom137553634true) (.cons (fun lit => by cases lit <;> first | exact atom137542370false | exact atom137542370true) (.cons (fun lit => by cases lit <;> first | exact atom137541818false | exact atom137541818true) (.cons (fun lit => by cases lit <;> first | exact atom137206242false | exact atom137206242true) (.cons (fun lit => by cases lit <;> first | exact atom137205474false | exact atom137205474true) (.cons (fun lit => by cases lit <;> first | exact atom137161186false | exact atom137161186true) (.cons (fun lit => by cases lit <;> first | exact atom137062882false | exact atom137062882true) (.cons (fun lit => by cases lit <;> first | exact atom137159290false | exact atom137159290true) (.cons (fun lit => by cases lit <;> first | exact atom137060986false | exact atom137060986true) (.cons (fun lit => by cases lit <;> first | exact atom137160418false | exact atom137160418true) (.cons (fun lit => by cases lit <;> first | exact atom137149154false | exact atom137149154true) (.cons (fun lit => by cases lit <;> first | exact atom137062114false | exact atom137062114true) (.cons (fun lit => by cases lit <;> first | exact atom137050850false | exact atom137050850true) (.cons (fun lit => by cases lit <;> first | exact atom137026274false | exact atom137026274true) (.cons (fun lit => by cases lit <;> first | exact atom137148602false | exact atom137148602true) (.cons (fun lit => by cases lit <;> first | exact atom137050298false | exact atom137050298true) (.cons (fun lit => by cases lit <;> first | exact atom137025722false | exact atom137025722true) (.cons (fun lit => by cases lit <;> first | exact atom147036642false | exact atom147036642true) (.cons (fun lit => by cases lit <;> first | exact atom147035874false | exact atom147035874true) (.cons (fun lit => by cases lit <;> first | exact atom146991586false | exact atom146991586true) (.cons (fun lit => by cases lit <;> first | exact atom146989690false | exact atom146989690true) (.cons (fun lit => by cases lit <;> first | exact atom146990818false | exact atom146990818true) (.cons (fun lit => by cases lit <;> first | exact atom146979554false | exact atom146979554true) (.cons (fun lit => by cases lit <;> first | exact atom146979002false | exact atom146979002true) (.cons (fun lit => by cases lit <;> first | exact atom145811170false | exact atom145811170true) (.cons (fun lit => by cases lit <;> first | exact atom145799906false | exact atom145799906true) (.cons (fun lit => by cases lit <;> first | exact atom184608378false | exact atom184608378true) (.cons (fun lit => by cases lit <;> first | exact atom184608186false | exact atom184608186true) (.cons (fun lit => by cases lit <;> first | exact atom184597114false | exact atom184597114true) (.cons (fun lit => by cases lit <;> first | exact atom184596922false | exact atom184596922true) (.cons (fun lit => by cases lit <;> first | exact atom184594106false | exact atom184594106true) (.cons (fun lit => by cases lit <;> first | exact atom184785378false | exact atom184785378true) (.cons (fun lit => by cases lit <;> first | exact atom184784610false | exact atom184784610true) (.cons (fun lit => by cases lit <;> first | exact atom184740322false | exact atom184740322true) (.cons (fun lit => by cases lit <;> first | exact atom184738426false | exact atom184738426true) (.cons (fun lit => by cases lit <;> first | exact atom184739554false | exact atom184739554true) (.cons (fun lit => by cases lit <;> first | exact atom184728290false | exact atom184728290true) (.cons (fun lit => by cases lit <;> first | exact atom184727738false | exact atom184727738true) (.cons (fun lit => by cases lit <;> first | exact atom180414178false | exact atom180414178true) (.cons (fun lit => by cases lit <;> first | exact atom180402914false | exact atom180402914true) (.cons (fun lit => by cases lit <;> first | exact atom180369850false | exact atom180369850true) (.cons (fun lit => by cases lit <;> first | exact atom180367034false | exact atom180367034true) .nil))))))))))))))))))))))))))))))))))))))))))))))
theorem atoms118 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,1,1,0,1]) := by
  have h : atoms 3 5 [0,1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil
theorem atoms119 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,1,1,1,0]) := by
  have h : atoms 3 5 [0,1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
