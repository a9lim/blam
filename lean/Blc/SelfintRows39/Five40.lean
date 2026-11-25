import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom137600538 : Term := (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))))
private def v701156793882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))))))))
private theorem no_v701156793882 : ¬ MinimalInterpreter v701156793882 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (.app (.var 0) (.app (.var 1) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (by decide) (by decide)))))
theorem atom137600538false : BadRow (sources false 3 5 atom137600538) := by
  have h : sources false 3 5 atom137600538 = [v701156793882] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156793882) .nil)

theorem atom137600538true : BadRow (sources true 3 5 atom137600538) := by
  have h : sources true 3 5 atom137600538 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137600610 : Term := (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))))))
private def v701156793954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))))))))
private theorem no_v701156793954 : ¬ MinimalInterpreter v701156793954 :=
  chain_cut false 2 (by decide)
theorem atom137600610false : BadRow (sources false 3 5 atom137600610) := by
  have h : sources false 3 5 atom137600610 = [v701156793954] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156793954) .nil)

theorem atom137600610true : BadRow (sources true 3 5 atom137600610) := by
  have h : sources true 3 5 atom137600610 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137598882 : Term := (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))))
private def v701156792226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))))))
private theorem no_v701156792226 : ¬ MinimalInterpreter v701156792226 :=
  chain_cut false 2 (by decide)
theorem atom137598882false : BadRow (sources false 3 5 atom137598882) := by
  have h : sources false 3 5 atom137598882 = [v701156792226] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156792226) .nil)

theorem atom137598882true : BadRow (sources true 3 5 atom137598882) := by
  have h : sources true 3 5 atom137598882 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137598858 : Term := (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))))))
private def v701156792202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))))))))
private theorem no_v701156792202 : ¬ MinimalInterpreter v701156792202 :=
  chain_cut false 2 (by decide)
theorem atom137598858false : BadRow (sources false 3 5 atom137598858) := by
  have h : sources false 3 5 atom137598858 = [v701156792202] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156792202) .nil)

theorem atom137598858true : BadRow (sources true 3 5 atom137598858) := by
  have h : sources true 3 5 atom137598858 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137555482 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 0)))))))
private def v701156748826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 0)))))))))
private theorem no_v701156748826 : ¬ MinimalInterpreter v701156748826 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.var 0))))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137555482false : BadRow (sources false 3 5 atom137555482) := by
  have h : sources false 3 5 atom137555482 = [v701156748826] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156748826) .nil)

theorem atom137555482true : BadRow (sources true 3 5 atom137555482) := by
  have h : sources true 3 5 atom137555482 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137555554 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0)))))))
private def v701156748898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v701156748898 : ¬ MinimalInterpreter v701156748898 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0))))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137555554false : BadRow (sources false 3 5 atom137555554) := by
  have h : sources false 3 5 atom137555554 = [v701156748898] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156748898) .nil)

theorem atom137555554true : BadRow (sources true 3 5 atom137555554) := by
  have h : sources true 3 5 atom137555554 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137553826 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0))))))
private def v701156747170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0))))))))
private theorem no_v701156747170 : ¬ MinimalInterpreter v701156747170 :=
  chain_cut false 2 (by decide)
theorem atom137553826false : BadRow (sources false 3 5 atom137553826) := by
  have h : sources false 3 5 atom137553826 = [v701156747170] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156747170) .nil)

theorem atom137553826true : BadRow (sources true 3 5 atom137553826) := by
  have h : sources true 3 5 atom137553826 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137542562 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0))))))
private def v701156735906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0))))))))
private theorem no_v701156735906 : ¬ MinimalInterpreter v701156735906 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137542562false : BadRow (sources false 3 5 atom137542562) := by
  have h : sources false 3 5 atom137542562 = [v701156735906] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156735906) .nil)

theorem atom137542562true : BadRow (sources true 3 5 atom137542562) := by
  have h : sources true 3 5 atom137542562 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137553802 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0)))))
private def v701156747146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0)))))))
private theorem no_v701156747146 : ¬ MinimalInterpreter v701156747146 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (so_closed_lam (by decide) (.var 0)))) (.var 0))) (.app (.var 0) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))
theorem atom137553802false : BadRow (sources false 3 5 atom137553802) := by
  have h : sources false 3 5 atom137553802 = [v701156747146] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156747146) .nil)

theorem atom137553802true : BadRow (sources true 3 5 atom137553802) := by
  have h : sources true 3 5 atom137553802 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137542538 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0)))))
private def v701156735882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0)))))))
private theorem no_v701156735882 : ¬ MinimalInterpreter v701156735882 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137542538false : BadRow (sources false 3 5 atom137542538) := by
  have h : sources false 3 5 atom137542538 = [v701156735882] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156735882) .nil)

theorem atom137542538true : BadRow (sources true 3 5 atom137542538) := by
  have h : sources true 3 5 atom137542538 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137207322 : Term := (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))))
private def v701156400666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.app (.var 0) (.var 0)))))))))
private theorem no_v701156400666 : ¬ MinimalInterpreter v701156400666 :=
  so_cut true 3 (show SO (.app (.app (.var 0) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))))) from (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.var 1)) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))))) (.app (.app (.var 0) (.var 1)) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.var 0) (by decide) (by decide)))))
theorem atom137207322false : BadRow (sources false 3 5 atom137207322) := by
  have h : sources false 3 5 atom137207322 = [v701156400666] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156400666) .nil)

theorem atom137207322true : BadRow (sources true 3 5 atom137207322) := by
  have h : sources true 3 5 atom137207322 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137207394 : Term := (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.lam (.var 0)))))))
private def v701156400738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v701156400738 : ¬ MinimalInterpreter v701156400738 :=
  chain_cut false 2 (by decide)
theorem atom137207394false : BadRow (sources false 3 5 atom137207394) := by
  have h : sources false 3 5 atom137207394 = [v701156400738] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156400738) .nil)

theorem atom137207394true : BadRow (sources true 3 5 atom137207394) := by
  have h : sources true 3 5 atom137207394 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137205666 : Term := (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))))
private def v701156399010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))))))
private theorem no_v701156399010 : ¬ MinimalInterpreter v701156399010 :=
  chain_cut false 2 (by decide)
theorem atom137205666false : BadRow (sources false 3 5 atom137205666) := by
  have h : sources false 3 5 atom137205666 = [v701156399010] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156399010) .nil)

theorem atom137205666true : BadRow (sources true 3 5 atom137205666) := by
  have h : sources true 3 5 atom137205666 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137205642 : Term := (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))))
private def v701156398986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))))))
private theorem no_v701156398986 : ¬ MinimalInterpreter v701156398986 :=
  chain_cut false 2 (by decide)
theorem atom137205642false : BadRow (sources false 3 5 atom137205642) := by
  have h : sources false 3 5 atom137205642 = [v701156398986] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156398986) .nil)

theorem atom137205642true : BadRow (sources true 3 5 atom137205642) := by
  have h : sources true 3 5 atom137205642 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137162266 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 0) (.var 0))))))
private def v701156355610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 0) (.var 0))))))))
private theorem no_v701156355610 : ¬ MinimalInterpreter v701156355610 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137162266false : BadRow (sources false 3 5 atom137162266) := by
  have h : sources false 3 5 atom137162266 = [v701156355610] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156355610) .nil)

theorem atom137162266true : BadRow (sources true 3 5 atom137162266) := by
  have h : sources true 3 5 atom137162266 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137162338 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.var 0))))))
private def v701156355682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.var 0))))))))
private theorem no_v701156355682 : ¬ MinimalInterpreter v701156355682 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.lam (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137162338false : BadRow (sources false 3 5 atom137162338) := by
  have h : sources false 3 5 atom137162338 = [v701156355682] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156355682) .nil)

theorem atom137162338true : BadRow (sources true 3 5 atom137162338) := by
  have h : sources true 3 5 atom137162338 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137063962 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.app (.var 0) (.var 0))))))
private def v701156257306 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.app (.var 0) (.var 0))))))))
private theorem no_v701156257306 : ¬ MinimalInterpreter v701156257306 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom137063962false : BadRow (sources false 3 5 atom137063962) := by
  have h : sources false 3 5 atom137063962 = [v701156257306] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156257306) .nil)

theorem atom137063962true : BadRow (sources true 3 5 atom137063962) := by
  have h : sources true 3 5 atom137063962 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137064034 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.lam (.var 0))))))
private def v701156257378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.lam (.var 0))))))))
private theorem no_v701156257378 : ¬ MinimalInterpreter v701156257378 :=
  chain_cut false 2 (by decide)
theorem atom137064034false : BadRow (sources false 3 5 atom137064034) := by
  have h : sources false 3 5 atom137064034 = [v701156257378] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156257378) .nil)

theorem atom137064034true : BadRow (sources true 3 5 atom137064034) := by
  have h : sources true 3 5 atom137064034 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137160610 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.lam (.var 0)))))
private def v701156353954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.lam (.var 0)))))))
private theorem no_v701156353954 : ¬ MinimalInterpreter v701156353954 :=
  chain_cut false 2 (by decide)
theorem atom137160610false : BadRow (sources false 3 5 atom137160610) := by
  have h : sources false 3 5 atom137160610 = [v701156353954] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156353954) .nil)

theorem atom137160610true : BadRow (sources true 3 5 atom137160610) := by
  have h : sources true 3 5 atom137160610 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137149346 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.var 0)))))
private def v701156342690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.var 0)))))))
private theorem no_v701156342690 : ¬ MinimalInterpreter v701156342690 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.lam (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0)))) (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137149346false : BadRow (sources false 3 5 atom137149346) := by
  have h : sources false 3 5 atom137149346 = [v701156342690] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156342690) .nil)

theorem atom137149346true : BadRow (sources true 3 5 atom137149346) := by
  have h : sources true 3 5 atom137149346 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137062306 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.lam (.var 0)))))
private def v701156255650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.lam (.var 0)))))))
private theorem no_v701156255650 : ¬ MinimalInterpreter v701156255650 :=
  chain_cut false 2 (by decide)
theorem atom137062306false : BadRow (sources false 3 5 atom137062306) := by
  have h : sources false 3 5 atom137062306 = [v701156255650] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156255650) .nil)

theorem atom137062306true : BadRow (sources true 3 5 atom137062306) := by
  have h : sources true 3 5 atom137062306 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137051042 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.var 0)))))
private def v701156244386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.var 0)))))))
private theorem no_v701156244386 : ¬ MinimalInterpreter v701156244386 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.lam (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))) (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137051042false : BadRow (sources false 3 5 atom137051042) := by
  have h : sources false 3 5 atom137051042 = [v701156244386] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156244386) .nil)

theorem atom137051042true : BadRow (sources true 3 5 atom137051042) := by
  have h : sources true 3 5 atom137051042 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137026466 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.lam (.var 0)))))
private def v701156219810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.lam (.var 0)))))))
private theorem no_v701156219810 : ¬ MinimalInterpreter v701156219810 :=
  chain_cut false 2 (by decide)
theorem atom137026466false : BadRow (sources false 3 5 atom137026466) := by
  have h : sources false 3 5 atom137026466 = [v701156219810] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156219810) .nil)

theorem atom137026466true : BadRow (sources true 3 5 atom137026466) := by
  have h : sources true 3 5 atom137026466 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137160586 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))) (.var 0))))
private def v701156353930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))) (.var 0))))))
private theorem no_v701156353930 : ¬ MinimalInterpreter v701156353930 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (so_closed_lam (by decide) (.var 0))))) (.var 0)) (.app (.var 0) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))
theorem atom137160586false : BadRow (sources false 3 5 atom137160586) := by
  have h : sources false 3 5 atom137160586 = [v701156353930] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156353930) .nil)

theorem atom137160586true : BadRow (sources true 3 5 atom137160586) := by
  have h : sources true 3 5 atom137160586 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137149322 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))) (.var 0))))
private def v701156342666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))) (.var 0))))))
private theorem no_v701156342666 : ¬ MinimalInterpreter v701156342666 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))) (.var 0)))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137149322false : BadRow (sources false 3 5 atom137149322) := by
  have h : sources false 3 5 atom137149322 = [v701156342666] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156342666) .nil)

theorem atom137149322true : BadRow (sources true 3 5 atom137149322) := by
  have h : sources true 3 5 atom137149322 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137062282 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0)))) (.var 0))))
private def v701156255626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0)))) (.var 0))))))
private theorem no_v701156255626 : ¬ MinimalInterpreter v701156255626 :=
  chain_cut false 2 (by decide)
theorem atom137062282false : BadRow (sources false 3 5 atom137062282) := by
  have h : sources false 3 5 atom137062282 = [v701156255626] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156255626) .nil)

theorem atom137062282true : BadRow (sources true 3 5 atom137062282) := by
  have h : sources true 3 5 atom137062282 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137051018 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))) (.var 0))))
private def v701156244362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))) (.var 0))))))
private theorem no_v701156244362 : ¬ MinimalInterpreter v701156244362 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0))) (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137051018false : BadRow (sources false 3 5 atom137051018) := by
  have h : sources false 3 5 atom137051018 = [v701156244362] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156244362) .nil)

theorem atom137051018true : BadRow (sources true 3 5 atom137051018) := by
  have h : sources true 3 5 atom137051018 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137026442 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0))) (.var 0))))
private def v701156219786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0))) (.var 0))))))
private theorem no_v701156219786 : ¬ MinimalInterpreter v701156219786 :=
  chain_cut false 2 (by decide)
theorem atom137026442false : BadRow (sources false 3 5 atom137026442) := by
  have h : sources false 3 5 atom137026442 = [v701156219786] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156219786) .nil)

theorem atom137026442true : BadRow (sources true 3 5 atom137026442) := by
  have h : sources true 3 5 atom137026442 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom147037794 : Term := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))))))
private def v701166231138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))))))))
private theorem no_v701166231138 : ¬ MinimalInterpreter v701166231138 :=
  chain_cut false 2 (by decide)
theorem atom147037794false : BadRow (sources false 3 5 atom147037794) := by
  have h : sources false 3 5 atom147037794 = [v701166231138] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166231138) .nil)

theorem atom147037794true : BadRow (sources true 3 5 atom147037794) := by
  have h : sources true 3 5 atom147037794 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom147036066 : Term := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))))
private def v701166229410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))))))
private theorem no_v701166229410 : ¬ MinimalInterpreter v701166229410 :=
  chain_cut false 2 (by decide)
theorem atom147036066false : BadRow (sources false 3 5 atom147036066) := by
  have h : sources false 3 5 atom147036066 = [v701166229410] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166229410) .nil)

theorem atom147036066true : BadRow (sources true 3 5 atom147036066) := by
  have h : sources true 3 5 atom147036066 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom147036042 : Term := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))))))
private def v701166229386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))))))))
private theorem no_v701166229386 : ¬ MinimalInterpreter v701166229386 :=
  chain_cut false 2 (by decide)
theorem atom147036042false : BadRow (sources false 3 5 atom147036042) := by
  have h : sources false 3 5 atom147036042 = [v701166229386] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166229386) .nil)

theorem atom147036042true : BadRow (sources true 3 5 atom147036042) := by
  have h : sources true 3 5 atom147036042 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146992738 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0)))))))
private def v701166186082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v701166186082 : ¬ MinimalInterpreter v701166186082 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0))))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom146992738false : BadRow (sources false 3 5 atom146992738) := by
  have h : sources false 3 5 atom146992738 = [v701166186082] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166186082) .nil)

theorem atom146992738true : BadRow (sources true 3 5 atom146992738) := by
  have h : sources true 3 5 atom146992738 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146991010 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0))))))
private def v701166184354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0))))))))
private theorem no_v701166184354 : ¬ MinimalInterpreter v701166184354 :=
  chain_cut false 2 (by decide)
theorem atom146991010false : BadRow (sources false 3 5 atom146991010) := by
  have h : sources false 3 5 atom146991010 = [v701166184354] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166184354) .nil)

theorem atom146991010true : BadRow (sources true 3 5 atom146991010) := by
  have h : sources true 3 5 atom146991010 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146979746 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0))))))
private def v701166173090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0))))))))
private theorem no_v701166173090 : ¬ MinimalInterpreter v701166173090 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom146979746false : BadRow (sources false 3 5 atom146979746) := by
  have h : sources false 3 5 atom146979746 = [v701166173090] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166173090) .nil)

theorem atom146979746true : BadRow (sources true 3 5 atom146979746) := by
  have h : sources true 3 5 atom146979746 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146990986 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0)))))
private def v701166184330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0)))))))
private theorem no_v701166184330 : ¬ MinimalInterpreter v701166184330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.app (.var 0) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide))) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))
theorem atom146990986false : BadRow (sources false 3 5 atom146990986) := by
  have h : sources false 3 5 atom146990986 = [v701166184330] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166184330) .nil)

theorem atom146990986true : BadRow (sources true 3 5 atom146990986) := by
  have h : sources true 3 5 atom146990986 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146979722 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0)))))
private def v701166173066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0)))))))
private theorem no_v701166173066 : ¬ MinimalInterpreter v701166173066 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom146979722false : BadRow (sources false 3 5 atom146979722) := by
  have h : sources false 3 5 atom146979722 = [v701166173066] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166173066) .nil)

theorem atom146979722true : BadRow (sources true 3 5 atom146979722) := by
  have h : sources true 3 5 atom146979722 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145811362 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.var 0))))
private def v701165004706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.lam (.var 0))))))
private theorem no_v701165004706 : ¬ MinimalInterpreter v701165004706 :=
  chain_cut false 2 (by decide)
theorem atom145811362false : BadRow (sources false 3 5 atom145811362) := by
  have h : sources false 3 5 atom145811362 = [v701165004706] := by decide +kernel
  rw [h]
  exact (.cons (no_v701165004706) .nil)

theorem atom145811362true : BadRow (sources true 3 5 atom145811362) := by
  have h : sources true 3 5 atom145811362 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145800098 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.var 0))))
private def v701164993442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.var 0))))))
private theorem no_v701164993442 : ¬ MinimalInterpreter v701164993442 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (.var 0)))) (.app (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (so_closed_lam (by decide) (.var 0))) (.var 0) (by decide) (by decide)))))
theorem atom145800098false : BadRow (sources false 3 5 atom145800098) := by
  have h : sources false 3 5 atom145800098 = [v701164993442] := by decide +kernel
  rw [h]
  exact (.cons (no_v701164993442) .nil)

theorem atom145800098true : BadRow (sources true 3 5 atom145800098) := by
  have h : sources true 3 5 atom145800098 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184608666 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))
private def v701203802010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0))))))))))
private theorem no_v701203802010 : ¬ MinimalInterpreter v701203802010 :=
  chain_cut false 4 (by decide)
theorem atom184608666false : BadRow (sources false 3 5 atom184608666) := by
  have h : sources false 3 5 atom184608666 = [v701203802010] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203802010) .nil)

theorem atom184608666true : BadRow (sources true 3 5 atom184608666) := by
  have h : sources true 3 5 atom184608666 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184608234 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))
private def v701203801578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0)))))))))
private theorem no_v701203801578 : ¬ MinimalInterpreter v701203801578 :=
  chain_cut false 4 (by decide)
theorem atom184608234false : BadRow (sources false 3 5 atom184608234) := by
  have h : sources false 3 5 atom184608234 = [v701203801578] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203801578) .nil)

theorem atom184608234true : BadRow (sources true 3 5 atom184608234) := by
  have h : sources true 3 5 atom184608234 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184597402 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))
private def v701203790746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0)))))))))
private theorem no_v701203790746 : ¬ MinimalInterpreter v701203790746 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem atom184597402false : BadRow (sources false 3 5 atom184597402) := by
  have h : sources false 3 5 atom184597402 = [v701203790746] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203790746) .nil)

theorem atom184597402true : BadRow (sources true 3 5 atom184597402) := by
  have h : sources true 3 5 atom184597402 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184596970 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))
private def v701203790314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0))))))))
private theorem no_v701203790314 : ¬ MinimalInterpreter v701203790314 :=
  chain_cut false 4 (by decide)
theorem atom184596970false : BadRow (sources false 3 5 atom184596970) := by
  have h : sources false 3 5 atom184596970 = [v701203790314] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203790314) .nil)

theorem atom184596970true : BadRow (sources true 3 5 atom184596970) := by
  have h : sources true 3 5 atom184596970 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184594154 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))
private def v701203787498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0))))))))
private theorem no_v701203787498 : ¬ MinimalInterpreter v701203787498 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem atom184594154false : BadRow (sources false 3 5 atom184594154) := by
  have h : sources false 3 5 atom184594154 = [v701203787498] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203787498) .nil)

theorem atom184594154true : BadRow (sources true 3 5 atom184594154) := by
  have h : sources true 3 5 atom184594154 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184786530 : Term := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))))))
private def v701203979874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))))))))
private theorem no_v701203979874 : ¬ MinimalInterpreter v701203979874 :=
  chain_cut false 6 (by decide)
theorem atom184786530false : BadRow (sources false 3 5 atom184786530) := by
  have h : sources false 3 5 atom184786530 = [v701203979874] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203979874) .nil)

theorem atom184786530true : BadRow (sources true 3 5 atom184786530) := by
  have h : sources true 3 5 atom184786530 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184784802 : Term := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))))
private def v701203978146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))))))))
private theorem no_v701203978146 : ¬ MinimalInterpreter v701203978146 :=
  chain_cut false 6 (by decide)
theorem atom184784802false : BadRow (sources false 3 5 atom184784802) := by
  have h : sources false 3 5 atom184784802 = [v701203978146] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203978146) .nil)

theorem atom184784802true : BadRow (sources true 3 5 atom184784802) := by
  have h : sources true 3 5 atom184784802 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184784778 : Term := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))))))
private def v701203978122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))))))))
private theorem no_v701203978122 : ¬ MinimalInterpreter v701203978122 :=
  chain_cut false 6 (by decide)
theorem atom184784778false : BadRow (sources false 3 5 atom184784778) := by
  have h : sources false 3 5 atom184784778 = [v701203978122] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203978122) .nil)

theorem atom184784778true : BadRow (sources true 3 5 atom184784778) := by
  have h : sources true 3 5 atom184784778 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184741474 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0)))))))
private def v701203934818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v701203934818 : ¬ MinimalInterpreter v701203934818 :=
  w_cut false 0 (by decide)
theorem atom184741474false : BadRow (sources false 3 5 atom184741474) := by
  have h : sources false 3 5 atom184741474 = [v701203934818] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203934818) .nil)

theorem atom184741474true : BadRow (sources true 3 5 atom184741474) := by
  have h : sources true 3 5 atom184741474 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184739746 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0))))))
private def v701203933090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0))))))))
private theorem no_v701203933090 : ¬ MinimalInterpreter v701203933090 :=
  chain_cut false 7 (by decide)
theorem atom184739746false : BadRow (sources false 3 5 atom184739746) := by
  have h : sources false 3 5 atom184739746 = [v701203933090] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203933090) .nil)

theorem atom184739746true : BadRow (sources true 3 5 atom184739746) := by
  have h : sources true 3 5 atom184739746 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184728482 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0))))))
private def v701203921826 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0))))))))
private theorem no_v701203921826 : ¬ MinimalInterpreter v701203921826 :=
  w_cut false 0 (by decide)
theorem atom184728482false : BadRow (sources false 3 5 atom184728482) := by
  have h : sources false 3 5 atom184728482 = [v701203921826] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203921826) .nil)

theorem atom184728482true : BadRow (sources true 3 5 atom184728482) := by
  have h : sources true 3 5 atom184728482 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184739722 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0)))))
private def v701203933066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0)))))))
private theorem no_v701203933066 : ¬ MinimalInterpreter v701203933066 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.app (.var 2) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.app (.var 0) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide))))))
theorem atom184739722false : BadRow (sources false 3 5 atom184739722) := by
  have h : sources false 3 5 atom184739722 = [v701203933066] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203933066) .nil)

theorem atom184739722true : BadRow (sources true 3 5 atom184739722) := by
  have h : sources true 3 5 atom184739722 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184728458 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0)))))
private def v701203921802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0)))))))
private theorem no_v701203921802 : ¬ MinimalInterpreter v701203921802 :=
  w_cut false 0 (by decide)
theorem atom184728458false : BadRow (sources false 3 5 atom184728458) := by
  have h : sources false 3 5 atom184728458 = [v701203921802] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203921802) .nil)

theorem atom184728458true : BadRow (sources true 3 5 atom184728458) := by
  have h : sources true 3 5 atom184728458 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180414370 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.var 0)))
private def v701199607714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.var 0)))))
private theorem no_v701199607714 : ¬ MinimalInterpreter v701199607714 :=
  chain_cut false 8 (by decide)
theorem atom180414370false : BadRow (sources false 3 5 atom180414370) := by
  have h : sources false 3 5 atom180414370 = [v701199607714] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199607714) .nil)

theorem atom180414370true : BadRow (sources true 3 5 atom180414370) := by
  have h : sources true 3 5 atom180414370 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180403106 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (.var 0)))
private def v701199596450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (.var 0)))))
private theorem no_v701199596450 : ¬ MinimalInterpreter v701199596450 :=
  w_cut false 0 (by decide)
theorem atom180403106false : BadRow (sources false 3 5 atom180403106) := by
  have h : sources false 3 5 atom180403106 = [v701199596450] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199596450) .nil)

theorem atom180403106true : BadRow (sources true 3 5 atom180403106) := by
  have h : sources true 3 5 atom180403106 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180369898 : Term := (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.var 0))
private def v699009722906 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.var 0))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699009722906 : ¬ MinimalInterpreter v699009722906 :=
  chain_cut false 2 (by decide)
private def v701199563242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.var 0))))
private theorem no_v701199563242 : ¬ MinimalInterpreter v701199563242 :=
  chain_cut false 3 (by decide)
theorem atom180369898false : BadRow (sources false 3 5 atom180369898) := by
  have h : sources false 3 5 atom180369898 = [v699009722906,v701199563242] := by decide +kernel
  rw [h]
  exact (.cons (no_v699009722906) (.cons (no_v701199563242) .nil))

theorem atom180369898true : BadRow (sources true 3 5 atom180369898) := by
  have h : sources true 3 5 atom180369898 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180367082 : Term := (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.var 0))
private def v699009002010 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699009002010 : ¬ MinimalInterpreter v699009002010 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v701199560426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.var 0))))
private theorem no_v701199560426 : ¬ MinimalInterpreter v701199560426 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))))
theorem atom180367082false : BadRow (sources false 3 5 atom180367082) := by
  have h : sources false 3 5 atom180367082 = [v699009002010,v701199560426] := by decide +kernel
  rw [h]
  exact (.cons (no_v699009002010) (.cons (no_v701199560426) .nil))

theorem atom180367082true : BadRow (sources true 3 5 atom180367082) := by
  have h : sources true 3 5 atom180367082 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms120 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,1,2,0,0]) := by
  have h : atoms 3 5 [0,1,2,0,0] = [atom137600538,atom137600610,atom137598882,atom137598858,atom137555482,atom137555554,atom137553826,atom137542562,atom137553802,atom137542538,atom137207322,atom137207394,atom137205666,atom137205642,atom137162266,atom137162338,atom137063962,atom137064034,atom137160610,atom137149346,atom137062306,atom137051042,atom137026466,atom137160586,atom137149322,atom137062282,atom137051018,atom137026442,atom147037794,atom147036066,atom147036042,atom146992738,atom146991010,atom146979746,atom146990986,atom146979722,atom145811362,atom145800098,atom184608666,atom184608234,atom184597402,atom184596970,atom184594154,atom184786530,atom184784802,atom184784778,atom184741474,atom184739746,atom184728482,atom184739722,atom184728458,atom180414370,atom180403106,atom180369898,atom180367082] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom137600538false | exact atom137600538true) (.cons (fun lit => by cases lit <;> first | exact atom137600610false | exact atom137600610true) (.cons (fun lit => by cases lit <;> first | exact atom137598882false | exact atom137598882true) (.cons (fun lit => by cases lit <;> first | exact atom137598858false | exact atom137598858true) (.cons (fun lit => by cases lit <;> first | exact atom137555482false | exact atom137555482true) (.cons (fun lit => by cases lit <;> first | exact atom137555554false | exact atom137555554true) (.cons (fun lit => by cases lit <;> first | exact atom137553826false | exact atom137553826true) (.cons (fun lit => by cases lit <;> first | exact atom137542562false | exact atom137542562true) (.cons (fun lit => by cases lit <;> first | exact atom137553802false | exact atom137553802true) (.cons (fun lit => by cases lit <;> first | exact atom137542538false | exact atom137542538true) (.cons (fun lit => by cases lit <;> first | exact atom137207322false | exact atom137207322true) (.cons (fun lit => by cases lit <;> first | exact atom137207394false | exact atom137207394true) (.cons (fun lit => by cases lit <;> first | exact atom137205666false | exact atom137205666true) (.cons (fun lit => by cases lit <;> first | exact atom137205642false | exact atom137205642true) (.cons (fun lit => by cases lit <;> first | exact atom137162266false | exact atom137162266true) (.cons (fun lit => by cases lit <;> first | exact atom137162338false | exact atom137162338true) (.cons (fun lit => by cases lit <;> first | exact atom137063962false | exact atom137063962true) (.cons (fun lit => by cases lit <;> first | exact atom137064034false | exact atom137064034true) (.cons (fun lit => by cases lit <;> first | exact atom137160610false | exact atom137160610true) (.cons (fun lit => by cases lit <;> first | exact atom137149346false | exact atom137149346true) (.cons (fun lit => by cases lit <;> first | exact atom137062306false | exact atom137062306true) (.cons (fun lit => by cases lit <;> first | exact atom137051042false | exact atom137051042true) (.cons (fun lit => by cases lit <;> first | exact atom137026466false | exact atom137026466true) (.cons (fun lit => by cases lit <;> first | exact atom137160586false | exact atom137160586true) (.cons (fun lit => by cases lit <;> first | exact atom137149322false | exact atom137149322true) (.cons (fun lit => by cases lit <;> first | exact atom137062282false | exact atom137062282true) (.cons (fun lit => by cases lit <;> first | exact atom137051018false | exact atom137051018true) (.cons (fun lit => by cases lit <;> first | exact atom137026442false | exact atom137026442true) (.cons (fun lit => by cases lit <;> first | exact atom147037794false | exact atom147037794true) (.cons (fun lit => by cases lit <;> first | exact atom147036066false | exact atom147036066true) (.cons (fun lit => by cases lit <;> first | exact atom147036042false | exact atom147036042true) (.cons (fun lit => by cases lit <;> first | exact atom146992738false | exact atom146992738true) (.cons (fun lit => by cases lit <;> first | exact atom146991010false | exact atom146991010true) (.cons (fun lit => by cases lit <;> first | exact atom146979746false | exact atom146979746true) (.cons (fun lit => by cases lit <;> first | exact atom146990986false | exact atom146990986true) (.cons (fun lit => by cases lit <;> first | exact atom146979722false | exact atom146979722true) (.cons (fun lit => by cases lit <;> first | exact atom145811362false | exact atom145811362true) (.cons (fun lit => by cases lit <;> first | exact atom145800098false | exact atom145800098true) (.cons (fun lit => by cases lit <;> first | exact atom184608666false | exact atom184608666true) (.cons (fun lit => by cases lit <;> first | exact atom184608234false | exact atom184608234true) (.cons (fun lit => by cases lit <;> first | exact atom184597402false | exact atom184597402true) (.cons (fun lit => by cases lit <;> first | exact atom184596970false | exact atom184596970true) (.cons (fun lit => by cases lit <;> first | exact atom184594154false | exact atom184594154true) (.cons (fun lit => by cases lit <;> first | exact atom184786530false | exact atom184786530true) (.cons (fun lit => by cases lit <;> first | exact atom184784802false | exact atom184784802true) (.cons (fun lit => by cases lit <;> first | exact atom184784778false | exact atom184784778true) (.cons (fun lit => by cases lit <;> first | exact atom184741474false | exact atom184741474true) (.cons (fun lit => by cases lit <;> first | exact atom184739746false | exact atom184739746true) (.cons (fun lit => by cases lit <;> first | exact atom184728482false | exact atom184728482true) (.cons (fun lit => by cases lit <;> first | exact atom184739722false | exact atom184739722true) (.cons (fun lit => by cases lit <;> first | exact atom184728458false | exact atom184728458true) (.cons (fun lit => by cases lit <;> first | exact atom180414370false | exact atom180414370true) (.cons (fun lit => by cases lit <;> first | exact atom180403106false | exact atom180403106true) (.cons (fun lit => by cases lit <;> first | exact atom180369898false | exact atom180369898true) (.cons (fun lit => by cases lit <;> first | exact atom180367082false | exact atom180367082true) .nil)))))))))))))))))))))))))))))))))))))))))))))))))))))))
private def atom137612054 : Term := (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))
private def v701156805398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))))
private theorem no_v701156805398 : ¬ MinimalInterpreter v701156805398 :=
  chain_cut false 2 (by decide)
theorem atom137612054false : BadRow (sources false 3 5 atom137612054) := by
  have h : sources false 3 5 atom137612054 = [v701156805398] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156805398) .nil)

theorem atom137612054true : BadRow (sources true 3 5 atom137612054) := by
  have h : sources true 3 5 atom137612054 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137556278 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1))))))
private def v701156749622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1))))))))
private theorem no_v701156749622 : ¬ MinimalInterpreter v701156749622 :=
  chain_cut false 2 (by decide)
theorem atom137556278false : BadRow (sources false 3 5 atom137556278) := by
  have h : sources false 3 5 atom137556278 = [v701156749622] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156749622) .nil)

theorem atom137556278true : BadRow (sources true 3 5 atom137556278) := by
  have h : sources true 3 5 atom137556278 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137556182 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 1)))))
private def v701156749526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 1)))))))
private theorem no_v701156749526 : ¬ MinimalInterpreter v701156749526 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 1) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (by decide) (by decide)))))
theorem atom137556182false : BadRow (sources false 3 5 atom137556182) := by
  have h : sources false 3 5 atom137556182 = [v701156749526] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156749526) .nil)

theorem atom137556182true : BadRow (sources true 3 5 atom137556182) := by
  have h : sources true 3 5 atom137556182 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137556758 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1)))))
private def v701156750102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1)))))))
private theorem no_v701156750102 : ¬ MinimalInterpreter v701156750102 :=
  chain_cut false 2 (by decide)
theorem atom137556758false : BadRow (sources false 3 5 atom137556758) := by
  have h : sources false 3 5 atom137556758 = [v701156750102] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156750102) .nil)

theorem atom137556758true : BadRow (sources true 3 5 atom137556758) := by
  have h : sources true 3 5 atom137556758 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137542934 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1)))))
private def v701156736278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1)))))))
private theorem no_v701156736278 : ¬ MinimalInterpreter v701156736278 :=
  chain_cut false 2 (by decide)
theorem atom137542934false : BadRow (sources false 3 5 atom137542934) := by
  have h : sources false 3 5 atom137542934 = [v701156736278] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156736278) .nil)

theorem atom137542934true : BadRow (sources true 3 5 atom137542934) := by
  have h : sources true 3 5 atom137542934 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137542742 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1)))))
private def v701156736086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1)))))))
private theorem no_v701156736086 : ¬ MinimalInterpreter v701156736086 :=
  chain_cut false 2 (by decide)
theorem atom137542742false : BadRow (sources false 3 5 atom137542742) := by
  have h : sources false 3 5 atom137542742 = [v701156736086] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156736086) .nil)

theorem atom137542742true : BadRow (sources true 3 5 atom137542742) := by
  have h : sources true 3 5 atom137542742 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137218838 : Term := (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))
private def v701156412182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))))
private theorem no_v701156412182 : ¬ MinimalInterpreter v701156412182 :=
  chain_cut false 2 (by decide)
theorem atom137218838false : BadRow (sources false 3 5 atom137218838) := by
  have h : sources false 3 5 atom137218838 = [v701156412182] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156412182) .nil)

theorem atom137218838true : BadRow (sources true 3 5 atom137218838) := by
  have h : sources true 3 5 atom137218838 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137163062 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.var 0) (.var 1)))))
private def v701156356406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.var 0) (.var 1)))))))
private theorem no_v701156356406 : ¬ MinimalInterpreter v701156356406 :=
  chain_cut false 2 (by decide)
theorem atom137163062false : BadRow (sources false 3 5 atom137163062) := by
  have h : sources false 3 5 atom137163062 = [v701156356406] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156356406) .nil)

theorem atom137163062true : BadRow (sources true 3 5 atom137163062) := by
  have h : sources true 3 5 atom137163062 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137064758 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.var 0) (.var 1)))))
private def v701156258102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.var 0) (.var 1)))))))
private theorem no_v701156258102 : ¬ MinimalInterpreter v701156258102 :=
  chain_cut false 2 (by decide)
theorem atom137064758false : BadRow (sources false 3 5 atom137064758) := by
  have h : sources false 3 5 atom137064758 = [v701156258102] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156258102) .nil)

theorem atom137064758true : BadRow (sources true 3 5 atom137064758) := by
  have h : sources true 3 5 atom137064758 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137162966 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))) (.var 1))))
private def v701156356310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.app (.var 0) (.var 0))))) (.var 1))))))
private theorem no_v701156356310 : ¬ MinimalInterpreter v701156356310 :=
  so_cut true 3 (show SO (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))))) (.var 1)) from (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))) (.var 1))) (.app (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0) (by decide) (by decide)))) (.var 1)))
theorem atom137162966false : BadRow (sources false 3 5 atom137162966) := by
  have h : sources false 3 5 atom137162966 = [v701156356310] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156356310) .nil)

theorem atom137162966true : BadRow (sources true 3 5 atom137162966) := by
  have h : sources true 3 5 atom137162966 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137163542 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))) (.var 1))))
private def v701156356886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.lam (.var 0))))) (.var 1))))))
private theorem no_v701156356886 : ¬ MinimalInterpreter v701156356886 :=
  chain_cut false 2 (by decide)
theorem atom137163542false : BadRow (sources false 3 5 atom137163542) := by
  have h : sources false 3 5 atom137163542 = [v701156356886] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156356886) .nil)

theorem atom137163542true : BadRow (sources true 3 5 atom137163542) := by
  have h : sources true 3 5 atom137163542 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137149718 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))) (.var 1))))
private def v701156343062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.lam (.var 0)))) (.var 1))))))
private theorem no_v701156343062 : ¬ MinimalInterpreter v701156343062 :=
  chain_cut false 2 (by decide)
theorem atom137149718false : BadRow (sources false 3 5 atom137149718) := by
  have h : sources false 3 5 atom137149718 = [v701156343062] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156343062) .nil)

theorem atom137149718true : BadRow (sources true 3 5 atom137149718) := by
  have h : sources true 3 5 atom137149718 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137149526 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))) (.var 1))))
private def v701156342870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 0))) (.var 1))))))
private theorem no_v701156342870 : ¬ MinimalInterpreter v701156342870 :=
  chain_cut false 2 (by decide)
theorem atom137149526false : BadRow (sources false 3 5 atom137149526) := by
  have h : sources false 3 5 atom137149526 = [v701156342870] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156342870) .nil)

theorem atom137149526true : BadRow (sources true 3 5 atom137149526) := by
  have h : sources true 3 5 atom137149526 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137064662 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0)))) (.var 1))))
private def v701156258006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.app (.var 0) (.var 0)))) (.var 1))))))
private theorem no_v701156258006 : ¬ MinimalInterpreter v701156258006 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom137064662false : BadRow (sources false 3 5 atom137064662) := by
  have h : sources false 3 5 atom137064662 = [v701156258006] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156258006) .nil)

theorem atom137064662true : BadRow (sources true 3 5 atom137064662) := by
  have h : sources true 3 5 atom137064662 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137065238 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 0)))) (.var 1))))
private def v701156258582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.lam (.var 0)))) (.var 1))))))
private theorem no_v701156258582 : ¬ MinimalInterpreter v701156258582 :=
  chain_cut false 2 (by decide)
theorem atom137065238false : BadRow (sources false 3 5 atom137065238) := by
  have h : sources false 3 5 atom137065238 = [v701156258582] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156258582) .nil)

theorem atom137065238true : BadRow (sources true 3 5 atom137065238) := by
  have h : sources true 3 5 atom137065238 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137051414 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 0))) (.var 1))))
private def v701156244758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.lam (.var 0))) (.var 1))))))
private theorem no_v701156244758 : ¬ MinimalInterpreter v701156244758 :=
  chain_cut false 2 (by decide)
theorem atom137051414false : BadRow (sources false 3 5 atom137051414) := by
  have h : sources false 3 5 atom137051414 = [v701156244758] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156244758) .nil)

theorem atom137051414true : BadRow (sources true 3 5 atom137051414) := by
  have h : sources true 3 5 atom137051414 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137026838 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0))) (.var 1))))
private def v701156220182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.lam (.var 0))) (.var 1))))))
private theorem no_v701156220182 : ¬ MinimalInterpreter v701156220182 :=
  chain_cut false 2 (by decide)
theorem atom137026838false : BadRow (sources false 3 5 atom137026838) := by
  have h : sources false 3 5 atom137026838 = [v701156220182] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156220182) .nil)

theorem atom137026838true : BadRow (sources true 3 5 atom137026838) := by
  have h : sources true 3 5 atom137026838 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137051222 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0)) (.var 1))))
private def v701156244566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0)) (.var 1))))))
private theorem no_v701156244566 : ¬ MinimalInterpreter v701156244566 :=
  chain_cut false 2 (by decide)
theorem atom137051222false : BadRow (sources false 3 5 atom137051222) := by
  have h : sources false 3 5 atom137051222 = [v701156244566] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156244566) .nil)

theorem atom137051222true : BadRow (sources true 3 5 atom137051222) := by
  have h : sources true 3 5 atom137051222 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137026646 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 0)) (.var 1))))
private def v701156219990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 0)) (.var 1))))))
private theorem no_v701156219990 : ¬ MinimalInterpreter v701156219990 :=
  chain_cut false 2 (by decide)
theorem atom137026646false : BadRow (sources false 3 5 atom137026646) := by
  have h : sources false 3 5 atom137026646 = [v701156219990] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156219990) .nil)

theorem atom137026646true : BadRow (sources true 3 5 atom137026646) := by
  have h : sources true 3 5 atom137026646 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom147049238 : Term := (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))
private def v701166242582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))))
private theorem no_v701166242582 : ¬ MinimalInterpreter v701166242582 :=
  chain_cut false 2 (by decide)
theorem atom147049238false : BadRow (sources false 3 5 atom147049238) := by
  have h : sources false 3 5 atom147049238 = [v701166242582] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166242582) .nil)

theorem atom147049238true : BadRow (sources true 3 5 atom147049238) := by
  have h : sources true 3 5 atom147049238 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146993462 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1))))))
private def v701166186806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1))))))))
private theorem no_v701166186806 : ¬ MinimalInterpreter v701166186806 :=
  chain_cut false 2 (by decide)
theorem atom146993462false : BadRow (sources false 3 5 atom146993462) := by
  have h : sources false 3 5 atom146993462 = [v701166186806] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166186806) .nil)

theorem atom146993462true : BadRow (sources true 3 5 atom146993462) := by
  have h : sources true 3 5 atom146993462 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146993942 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1)))))
private def v701166187286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1)))))))
private theorem no_v701166187286 : ¬ MinimalInterpreter v701166187286 :=
  chain_cut false 2 (by decide)
theorem atom146993942false : BadRow (sources false 3 5 atom146993942) := by
  have h : sources false 3 5 atom146993942 = [v701166187286] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166187286) .nil)

theorem atom146993942true : BadRow (sources true 3 5 atom146993942) := by
  have h : sources true 3 5 atom146993942 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146980118 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1)))))
private def v701166173462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1)))))))
private theorem no_v701166173462 : ¬ MinimalInterpreter v701166173462 :=
  chain_cut false 2 (by decide)
theorem atom146980118false : BadRow (sources false 3 5 atom146980118) := by
  have h : sources false 3 5 atom146980118 = [v701166173462] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166173462) .nil)

theorem atom146980118true : BadRow (sources true 3 5 atom146980118) := by
  have h : sources true 3 5 atom146980118 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146979926 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1)))))
private def v701166173270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1)))))))
private theorem no_v701166173270 : ¬ MinimalInterpreter v701166173270 :=
  chain_cut false 2 (by decide)
theorem atom146979926false : BadRow (sources false 3 5 atom146979926) := by
  have h : sources false 3 5 atom146979926 = [v701166173270] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166173270) .nil)

theorem atom146979926true : BadRow (sources true 3 5 atom146979926) := by
  have h : sources true 3 5 atom146979926 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184611638 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private def v701203804982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1))))))))))
private theorem no_v701203804982 : ¬ MinimalInterpreter v701203804982 :=
  chain_cut false 4 (by decide)
theorem atom184611638false : BadRow (sources false 3 5 atom184611638) := by
  have h : sources false 3 5 atom184611638 = [v701203804982] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203804982) .nil)

theorem atom184611638true : BadRow (sources true 3 5 atom184611638) := by
  have h : sources true 3 5 atom184611638 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184611542 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private def v701203804886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1)))))))))
private theorem no_v701203804886 : ¬ MinimalInterpreter v701203804886 :=
  chain_cut false 4 (by decide)
theorem atom184611542false : BadRow (sources false 3 5 atom184611542) := by
  have h : sources false 3 5 atom184611542 = [v701203804886] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203804886) .nil)

theorem atom184611542true : BadRow (sources true 3 5 atom184611542) := by
  have h : sources true 3 5 atom184611542 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184597814 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))
private def v701203791158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1)))))))))
private theorem no_v701203791158 : ¬ MinimalInterpreter v701203791158 :=
  chain_cut false 4 (by decide)
theorem atom184597814false : BadRow (sources false 3 5 atom184597814) := by
  have h : sources false 3 5 atom184597814 = [v701203791158] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203791158) .nil)

theorem atom184597814true : BadRow (sources true 3 5 atom184597814) := by
  have h : sources true 3 5 atom184597814 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184597718 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))
private def v701203791062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))))))
private theorem no_v701203791062 : ¬ MinimalInterpreter v701203791062 :=
  chain_cut false 4 (by decide)
theorem atom184597718false : BadRow (sources false 3 5 atom184597718) := by
  have h : sources false 3 5 atom184597718 = [v701203791062] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203791062) .nil)

theorem atom184597718true : BadRow (sources true 3 5 atom184597718) := by
  have h : sources true 3 5 atom184597718 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184594262 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))
private def v701203787606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1))))))))
private theorem no_v701203787606 : ¬ MinimalInterpreter v701203787606 :=
  chain_cut false 4 (by decide)
theorem atom184594262false : BadRow (sources false 3 5 atom184594262) := by
  have h : sources false 3 5 atom184594262 = [v701203787606] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203787606) .nil)

theorem atom184594262true : BadRow (sources true 3 5 atom184594262) := by
  have h : sources true 3 5 atom184594262 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184797974 : Term := (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))
private def v701203991318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))))
private theorem no_v701203991318 : ¬ MinimalInterpreter v701203991318 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom184797974false : BadRow (sources false 3 5 atom184797974) := by
  have h : sources false 3 5 atom184797974 = [v701203991318] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203991318) .nil)

theorem atom184797974true : BadRow (sources true 3 5 atom184797974) := by
  have h : sources true 3 5 atom184797974 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184742198 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1))))))
private def v701203935542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1))))))))
private theorem no_v701203935542 : ¬ MinimalInterpreter v701203935542 :=
  chain_cut false 5 (by decide)
theorem atom184742198false : BadRow (sources false 3 5 atom184742198) := by
  have h : sources false 3 5 atom184742198 = [v701203935542] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203935542) .nil)

theorem atom184742198true : BadRow (sources true 3 5 atom184742198) := by
  have h : sources true 3 5 atom184742198 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184742678 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1)))))
private def v701203936022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1)))))))
private theorem no_v701203936022 : ¬ MinimalInterpreter v701203936022 :=
  chain_cut false 5 (by decide)
theorem atom184742678false : BadRow (sources false 3 5 atom184742678) := by
  have h : sources false 3 5 atom184742678 = [v701203936022] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203936022) .nil)

theorem atom184742678true : BadRow (sources true 3 5 atom184742678) := by
  have h : sources true 3 5 atom184742678 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184728854 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1)))))
private def v701203922198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1)))))))
private theorem no_v701203922198 : ¬ MinimalInterpreter v701203922198 :=
  chain_cut false 5 (by decide)
theorem atom184728854false : BadRow (sources false 3 5 atom184728854) := by
  have h : sources false 3 5 atom184728854 = [v701203922198] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203922198) .nil)

theorem atom184728854true : BadRow (sources true 3 5 atom184728854) := by
  have h : sources true 3 5 atom184728854 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184728662 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1)))))
private def v701203922006 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1)))))))
private theorem no_v701203922006 : ¬ MinimalInterpreter v701203922006 :=
  chain_cut false 5 (by decide)
theorem atom184728662false : BadRow (sources false 3 5 atom184728662) := by
  have h : sources false 3 5 atom184728662 = [v701203922006] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203922006) .nil)

theorem atom184728662true : BadRow (sources true 3 5 atom184728662) := by
  have h : sources true 3 5 atom184728662 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms121 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,2,0,0,1]) := by
  have h : atoms 3 5 [0,2,0,0,1] = [atom137612054,atom137556278,atom137556182,atom137556758,atom137542934,atom137542742,atom137218838,atom137163062,atom137064758,atom137162966,atom137163542,atom137149718,atom137149526,atom137064662,atom137065238,atom137051414,atom137026838,atom137051222,atom137026646,atom147049238,atom146993462,atom146993942,atom146980118,atom146979926,atom184611638,atom184611542,atom184597814,atom184597718,atom184594262,atom184797974,atom184742198,atom184742678,atom184728854,atom184728662] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom137612054false | exact atom137612054true) (.cons (fun lit => by cases lit <;> first | exact atom137556278false | exact atom137556278true) (.cons (fun lit => by cases lit <;> first | exact atom137556182false | exact atom137556182true) (.cons (fun lit => by cases lit <;> first | exact atom137556758false | exact atom137556758true) (.cons (fun lit => by cases lit <;> first | exact atom137542934false | exact atom137542934true) (.cons (fun lit => by cases lit <;> first | exact atom137542742false | exact atom137542742true) (.cons (fun lit => by cases lit <;> first | exact atom137218838false | exact atom137218838true) (.cons (fun lit => by cases lit <;> first | exact atom137163062false | exact atom137163062true) (.cons (fun lit => by cases lit <;> first | exact atom137064758false | exact atom137064758true) (.cons (fun lit => by cases lit <;> first | exact atom137162966false | exact atom137162966true) (.cons (fun lit => by cases lit <;> first | exact atom137163542false | exact atom137163542true) (.cons (fun lit => by cases lit <;> first | exact atom137149718false | exact atom137149718true) (.cons (fun lit => by cases lit <;> first | exact atom137149526false | exact atom137149526true) (.cons (fun lit => by cases lit <;> first | exact atom137064662false | exact atom137064662true) (.cons (fun lit => by cases lit <;> first | exact atom137065238false | exact atom137065238true) (.cons (fun lit => by cases lit <;> first | exact atom137051414false | exact atom137051414true) (.cons (fun lit => by cases lit <;> first | exact atom137026838false | exact atom137026838true) (.cons (fun lit => by cases lit <;> first | exact atom137051222false | exact atom137051222true) (.cons (fun lit => by cases lit <;> first | exact atom137026646false | exact atom137026646true) (.cons (fun lit => by cases lit <;> first | exact atom147049238false | exact atom147049238true) (.cons (fun lit => by cases lit <;> first | exact atom146993462false | exact atom146993462true) (.cons (fun lit => by cases lit <;> first | exact atom146993942false | exact atom146993942true) (.cons (fun lit => by cases lit <;> first | exact atom146980118false | exact atom146980118true) (.cons (fun lit => by cases lit <;> first | exact atom146979926false | exact atom146979926true) (.cons (fun lit => by cases lit <;> first | exact atom184611638false | exact atom184611638true) (.cons (fun lit => by cases lit <;> first | exact atom184611542false | exact atom184611542true) (.cons (fun lit => by cases lit <;> first | exact atom184597814false | exact atom184597814true) (.cons (fun lit => by cases lit <;> first | exact atom184597718false | exact atom184597718true) (.cons (fun lit => by cases lit <;> first | exact atom184594262false | exact atom184594262true) (.cons (fun lit => by cases lit <;> first | exact atom184797974false | exact atom184797974true) (.cons (fun lit => by cases lit <;> first | exact atom184742198false | exact atom184742198true) (.cons (fun lit => by cases lit <;> first | exact atom184742678false | exact atom184742678true) (.cons (fun lit => by cases lit <;> first | exact atom184728854false | exact atom184728854true) (.cons (fun lit => by cases lit <;> first | exact atom184728662false | exact atom184728662true) .nil))))))))))))))))))))))))))))))))))
private def atom137612514 : Term := (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))))
private def v701156805858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))))))
private theorem no_v701156805858 : ¬ MinimalInterpreter v701156805858 :=
  chain_cut false 2 (by decide)
theorem atom137612514false : BadRow (sources false 3 5 atom137612514) := by
  have h : sources false 3 5 atom137612514 = [v701156805858] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156805858) .nil)

theorem atom137612514true : BadRow (sources true 3 5 atom137612514) := by
  have h : sources true 3 5 atom137612514 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137612130 : Term := (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))
private def v701156805474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))))
private theorem no_v701156805474 : ¬ MinimalInterpreter v701156805474 :=
  chain_cut false 2 (by decide)
theorem atom137612130false : BadRow (sources false 3 5 atom137612130) := by
  have h : sources false 3 5 atom137612130 = [v701156805474] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156805474) .nil)

theorem atom137612130true : BadRow (sources true 3 5 atom137612130) := by
  have h : sources true 3 5 atom137612130 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137557218 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0)))))))
private def v701156750562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v701156750562 : ¬ MinimalInterpreter v701156750562 :=
  chain_cut false 2 (by decide)
theorem atom137557218false : BadRow (sources false 3 5 atom137557218) := by
  have h : sources false 3 5 atom137557218 = [v701156750562] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156750562) .nil)

theorem atom137557218true : BadRow (sources true 3 5 atom137557218) := by
  have h : sources true 3 5 atom137557218 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137556282 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0))))))
private def v701156749626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0))))))))
private theorem no_v701156749626 : ¬ MinimalInterpreter v701156749626 :=
  chain_cut false 2 (by decide)
theorem atom137556282false : BadRow (sources false 3 5 atom137556282) := by
  have h : sources false 3 5 atom137556282 = [v701156749626] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156749626) .nil)

theorem atom137556282true : BadRow (sources true 3 5 atom137556282) := by
  have h : sources true 3 5 atom137556282 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137556834 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0))))))
private def v701156750178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0))))))))
private theorem no_v701156750178 : ¬ MinimalInterpreter v701156750178 :=
  chain_cut false 2 (by decide)
theorem atom137556834false : BadRow (sources false 3 5 atom137556834) := by
  have h : sources false 3 5 atom137556834 = [v701156750178] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156750178) .nil)

theorem atom137556834true : BadRow (sources true 3 5 atom137556834) := by
  have h : sources true 3 5 atom137556834 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137543010 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0))))))
private def v701156736354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0))))))))
private theorem no_v701156736354 : ¬ MinimalInterpreter v701156736354 :=
  chain_cut false 2 (by decide)
theorem atom137543010false : BadRow (sources false 3 5 atom137543010) := by
  have h : sources false 3 5 atom137543010 = [v701156736354] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156736354) .nil)

theorem atom137543010true : BadRow (sources true 3 5 atom137543010) := by
  have h : sources true 3 5 atom137543010 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137542746 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0)))))
private def v701156736090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0)))))))
private theorem no_v701156736090 : ¬ MinimalInterpreter v701156736090 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 2) (so_closed_lam (by decide) (.var 0))) (.var 1)) (.var 0))) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))
theorem atom137542746false : BadRow (sources false 3 5 atom137542746) := by
  have h : sources false 3 5 atom137542746 = [v701156736090] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156736090) .nil)

theorem atom137542746true : BadRow (sources true 3 5 atom137542746) := by
  have h : sources true 3 5 atom137542746 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137219298 : Term := (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))))
private def v701156412642 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v701156412642 : ¬ MinimalInterpreter v701156412642 :=
  chain_cut false 2 (by decide)
theorem atom137219298false : BadRow (sources false 3 5 atom137219298) := by
  have h : sources false 3 5 atom137219298 = [v701156412642] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156412642) .nil)

theorem atom137219298true : BadRow (sources true 3 5 atom137219298) := by
  have h : sources true 3 5 atom137219298 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137218914 : Term := (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))
private def v701156412258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))))
private theorem no_v701156412258 : ¬ MinimalInterpreter v701156412258 :=
  chain_cut false 2 (by decide)
theorem atom137218914false : BadRow (sources false 3 5 atom137218914) := by
  have h : sources false 3 5 atom137218914 = [v701156412258] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156412258) .nil)

theorem atom137218914true : BadRow (sources true 3 5 atom137218914) := by
  have h : sources true 3 5 atom137218914 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137164002 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 1) (.lam (.var 0))))))
private def v701156357346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 1) (.lam (.var 0))))))))
private theorem no_v701156357346 : ¬ MinimalInterpreter v701156357346 :=
  chain_cut false 2 (by decide)
theorem atom137164002false : BadRow (sources false 3 5 atom137164002) := by
  have h : sources false 3 5 atom137164002 = [v701156357346] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156357346) .nil)

theorem atom137164002true : BadRow (sources true 3 5 atom137164002) := by
  have h : sources true 3 5 atom137164002 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137065698 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.lam (.var 0))))))
private def v701156259042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.lam (.var 0))))))))
private theorem no_v701156259042 : ¬ MinimalInterpreter v701156259042 :=
  chain_cut false 2 (by decide)
theorem atom137065698false : BadRow (sources false 3 5 atom137065698) := by
  have h : sources false 3 5 atom137065698 = [v701156259042] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156259042) .nil)

theorem atom137065698true : BadRow (sources true 3 5 atom137065698) := by
  have h : sources true 3 5 atom137065698 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137163066 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.var 1) (.var 0)))))
private def v701156356410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.app (.var 1) (.var 0)))))))
private theorem no_v701156356410 : ¬ MinimalInterpreter v701156356410 :=
  chain_cut false 2 (by decide)
theorem atom137163066false : BadRow (sources false 3 5 atom137163066) := by
  have h : sources false 3 5 atom137163066 = [v701156356410] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156356410) .nil)

theorem atom137163066true : BadRow (sources true 3 5 atom137163066) := by
  have h : sources true 3 5 atom137163066 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137064762 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.var 0)))))
private def v701156258106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.app (.var 1) (.var 0)))))))
private theorem no_v701156258106 : ¬ MinimalInterpreter v701156258106 :=
  chain_cut false 2 (by decide)
theorem atom137064762false : BadRow (sources false 3 5 atom137064762) := by
  have h : sources false 3 5 atom137064762 = [v701156258106] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156258106) .nil)

theorem atom137064762true : BadRow (sources true 3 5 atom137064762) := by
  have h : sources true 3 5 atom137064762 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137163618 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.lam (.var 0)))))
private def v701156356962 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.lam (.var 0)))))))
private theorem no_v701156356962 : ¬ MinimalInterpreter v701156356962 :=
  chain_cut false 2 (by decide)
theorem atom137163618false : BadRow (sources false 3 5 atom137163618) := by
  have h : sources false 3 5 atom137163618 = [v701156356962] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156356962) .nil)

theorem atom137163618true : BadRow (sources true 3 5 atom137163618) := by
  have h : sources true 3 5 atom137163618 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137149794 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.lam (.var 0)))))
private def v701156343138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.lam (.var 0)))))))
private theorem no_v701156343138 : ¬ MinimalInterpreter v701156343138 :=
  chain_cut false 2 (by decide)
theorem atom137149794false : BadRow (sources false 3 5 atom137149794) := by
  have h : sources false 3 5 atom137149794 = [v701156343138] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156343138) .nil)

theorem atom137149794true : BadRow (sources true 3 5 atom137149794) := by
  have h : sources true 3 5 atom137149794 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137065314 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.lam (.var 0)))))
private def v701156258658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.lam (.var 0)))))))
private theorem no_v701156258658 : ¬ MinimalInterpreter v701156258658 :=
  chain_cut false 2 (by decide)
theorem atom137065314false : BadRow (sources false 3 5 atom137065314) := by
  have h : sources false 3 5 atom137065314 = [v701156258658] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156258658) .nil)

theorem atom137065314true : BadRow (sources true 3 5 atom137065314) := by
  have h : sources true 3 5 atom137065314 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137051490 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)) (.lam (.var 0)))))
private def v701156244834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)) (.lam (.var 0)))))))
private theorem no_v701156244834 : ¬ MinimalInterpreter v701156244834 :=
  chain_cut false 2 (by decide)
theorem atom137051490false : BadRow (sources false 3 5 atom137051490) := by
  have h : sources false 3 5 atom137051490 = [v701156244834] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156244834) .nil)

theorem atom137051490true : BadRow (sources true 3 5 atom137051490) := by
  have h : sources true 3 5 atom137051490 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137026914 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.lam (.var 0)))))
private def v701156220258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.lam (.var 0)))))))
private theorem no_v701156220258 : ¬ MinimalInterpreter v701156220258 :=
  chain_cut false 2 (by decide)
theorem atom137026914false : BadRow (sources false 3 5 atom137026914) := by
  have h : sources false 3 5 atom137026914 = [v701156220258] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156220258) .nil)

theorem atom137026914true : BadRow (sources true 3 5 atom137026914) := by
  have h : sources true 3 5 atom137026914 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137149530 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))) (.var 0))))
private def v701156342874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))) (.var 0))))))
private theorem no_v701156342874 : ¬ MinimalInterpreter v701156342874 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 2) (so_closed_lam (by decide) (.var 0))) (.var 1))) (.var 0)) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))
theorem atom137149530false : BadRow (sources false 3 5 atom137149530) := by
  have h : sources false 3 5 atom137149530 = [v701156342874] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156342874) .nil)

theorem atom137149530true : BadRow (sources true 3 5 atom137149530) := by
  have h : sources true 3 5 atom137149530 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137051226 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1)) (.var 0))))
private def v701156244570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1)) (.var 0))))))
private theorem no_v701156244570 : ¬ MinimalInterpreter v701156244570 :=
  chain_cut false 2 (by decide)
theorem atom137051226false : BadRow (sources false 3 5 atom137051226) := by
  have h : sources false 3 5 atom137051226 = [v701156244570] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156244570) .nil)

theorem atom137051226true : BadRow (sources true 3 5 atom137051226) := by
  have h : sources true 3 5 atom137051226 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137026650 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 0))))
private def v701156219994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1)) (.var 0))))))
private theorem no_v701156219994 : ¬ MinimalInterpreter v701156219994 :=
  chain_cut false 2 (by decide)
theorem atom137026650false : BadRow (sources false 3 5 atom137026650) := by
  have h : sources false 3 5 atom137026650 = [v701156219994] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156219994) .nil)

theorem atom137026650true : BadRow (sources true 3 5 atom137026650) := by
  have h : sources true 3 5 atom137026650 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom147049698 : Term := (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))))
private def v701166243042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))))))
private theorem no_v701166243042 : ¬ MinimalInterpreter v701166243042 :=
  chain_cut false 2 (by decide)
theorem atom147049698false : BadRow (sources false 3 5 atom147049698) := by
  have h : sources false 3 5 atom147049698 = [v701166243042] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166243042) .nil)

theorem atom147049698true : BadRow (sources true 3 5 atom147049698) := by
  have h : sources true 3 5 atom147049698 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom147049314 : Term := (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))
private def v701166242658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))))
private theorem no_v701166242658 : ¬ MinimalInterpreter v701166242658 :=
  chain_cut false 2 (by decide)
theorem atom147049314false : BadRow (sources false 3 5 atom147049314) := by
  have h : sources false 3 5 atom147049314 = [v701166242658] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166242658) .nil)

theorem atom147049314true : BadRow (sources true 3 5 atom147049314) := by
  have h : sources true 3 5 atom147049314 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146994402 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0)))))))
private def v701166187746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v701166187746 : ¬ MinimalInterpreter v701166187746 :=
  chain_cut false 2 (by decide)
theorem atom146994402false : BadRow (sources false 3 5 atom146994402) := by
  have h : sources false 3 5 atom146994402 = [v701166187746] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166187746) .nil)

theorem atom146994402true : BadRow (sources true 3 5 atom146994402) := by
  have h : sources true 3 5 atom146994402 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146993466 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0))))))
private def v701166186810 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0))))))))
private theorem no_v701166186810 : ¬ MinimalInterpreter v701166186810 :=
  chain_cut false 2 (by decide)
theorem atom146993466false : BadRow (sources false 3 5 atom146993466) := by
  have h : sources false 3 5 atom146993466 = [v701166186810] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166186810) .nil)

theorem atom146993466true : BadRow (sources true 3 5 atom146993466) := by
  have h : sources true 3 5 atom146993466 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146994018 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0))))))
private def v701166187362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0))))))))
private theorem no_v701166187362 : ¬ MinimalInterpreter v701166187362 :=
  chain_cut false 2 (by decide)
theorem atom146994018false : BadRow (sources false 3 5 atom146994018) := by
  have h : sources false 3 5 atom146994018 = [v701166187362] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166187362) .nil)

theorem atom146994018true : BadRow (sources true 3 5 atom146994018) := by
  have h : sources true 3 5 atom146994018 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146980194 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0))))))
private def v701166173538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0))))))))
private theorem no_v701166173538 : ¬ MinimalInterpreter v701166173538 :=
  chain_cut false 2 (by decide)
theorem atom146980194false : BadRow (sources false 3 5 atom146980194) := by
  have h : sources false 3 5 atom146980194 = [v701166173538] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166173538) .nil)

theorem atom146980194true : BadRow (sources true 3 5 atom146980194) := by
  have h : sources true 3 5 atom146980194 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146979930 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0)))))
private def v701166173274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0)))))))
private theorem no_v701166173274 : ¬ MinimalInterpreter v701166173274 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (so_closed_lam (by decide) (.var 0))) (.var 1)) (.var 0)) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 0)) (by decide) (by decide))) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))
theorem atom146979930false : BadRow (sources false 3 5 atom146979930) := by
  have h : sources false 3 5 atom146979930 = [v701166173274] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166173274) .nil)

theorem atom146979930true : BadRow (sources true 3 5 atom146979930) := by
  have h : sources true 3 5 atom146979930 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145814370 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.var 0))))
private def v701165007714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.var 0))))))
private theorem no_v701165007714 : ¬ MinimalInterpreter v701165007714 :=
  chain_cut false 2 (by decide)
theorem atom145814370false : BadRow (sources false 3 5 atom145814370) := by
  have h : sources false 3 5 atom145814370 = [v701165007714] := by decide +kernel
  rw [h]
  exact (.cons (no_v701165007714) .nil)

theorem atom145814370true : BadRow (sources true 3 5 atom145814370) := by
  have h : sources true 3 5 atom145814370 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145800546 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.var 0))))
private def v701164993890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))) (.lam (.var 0))))))
private theorem no_v701164993890 : ¬ MinimalInterpreter v701164993890 :=
  chain_cut false 2 (by decide)
theorem atom145800546false : BadRow (sources false 3 5 atom145800546) := by
  have h : sources false 3 5 atom145800546 = [v701164993890] := by decide +kernel
  rw [h]
  exact (.cons (no_v701164993890) .nil)

theorem atom145800546true : BadRow (sources true 3 5 atom145800546) := by
  have h : sources true 3 5 atom145800546 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184611642 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private def v701203804986 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0))))))))))
private theorem no_v701203804986 : ¬ MinimalInterpreter v701203804986 :=
  chain_cut false 4 (by decide)
theorem atom184611642false : BadRow (sources false 3 5 atom184611642) := by
  have h : sources false 3 5 atom184611642 = [v701203804986] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203804986) .nil)

theorem atom184611642true : BadRow (sources true 3 5 atom184611642) := by
  have h : sources true 3 5 atom184611642 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184611546 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private def v701203804890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0)))))))))
private theorem no_v701203804890 : ¬ MinimalInterpreter v701203804890 :=
  chain_cut false 4 (by decide)
theorem atom184611546false : BadRow (sources false 3 5 atom184611546) := by
  have h : sources false 3 5 atom184611546 = [v701203804890] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203804890) .nil)

theorem atom184611546true : BadRow (sources true 3 5 atom184611546) := by
  have h : sources true 3 5 atom184611546 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184597818 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))
private def v701203791162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))))))
private theorem no_v701203791162 : ¬ MinimalInterpreter v701203791162 :=
  chain_cut false 4 (by decide)
theorem atom184597818false : BadRow (sources false 3 5 atom184597818) := by
  have h : sources false 3 5 atom184597818 = [v701203791162] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203791162) .nil)

theorem atom184597818true : BadRow (sources true 3 5 atom184597818) := by
  have h : sources true 3 5 atom184597818 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184597722 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))
private def v701203791066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0))))))))
private theorem no_v701203791066 : ¬ MinimalInterpreter v701203791066 :=
  chain_cut false 4 (by decide)
theorem atom184597722false : BadRow (sources false 3 5 atom184597722) := by
  have h : sources false 3 5 atom184597722 = [v701203791066] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203791066) .nil)

theorem atom184597722true : BadRow (sources true 3 5 atom184597722) := by
  have h : sources true 3 5 atom184597722 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184594266 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))
private def v701203787610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0))))))))
private theorem no_v701203787610 : ¬ MinimalInterpreter v701203787610 :=
  chain_cut false 4 (by decide)
theorem atom184594266false : BadRow (sources false 3 5 atom184594266) := by
  have h : sources false 3 5 atom184594266 = [v701203787610] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203787610) .nil)

theorem atom184594266true : BadRow (sources true 3 5 atom184594266) := by
  have h : sources true 3 5 atom184594266 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184798434 : Term := (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))))
private def v701203991778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))))))
private theorem no_v701203991778 : ¬ MinimalInterpreter v701203991778 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom184798434false : BadRow (sources false 3 5 atom184798434) := by
  have h : sources false 3 5 atom184798434 = [v701203991778] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203991778) .nil)

theorem atom184798434true : BadRow (sources true 3 5 atom184798434) := by
  have h : sources true 3 5 atom184798434 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184798050 : Term := (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))
private def v701203991394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))))
private theorem no_v701203991394 : ¬ MinimalInterpreter v701203991394 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom184798050false : BadRow (sources false 3 5 atom184798050) := by
  have h : sources false 3 5 atom184798050 = [v701203991394] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203991394) .nil)

theorem atom184798050true : BadRow (sources true 3 5 atom184798050) := by
  have h : sources true 3 5 atom184798050 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184743138 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0)))))))
private def v701203936482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v701203936482 : ¬ MinimalInterpreter v701203936482 :=
  chain_cut false 5 (by decide)
theorem atom184743138false : BadRow (sources false 3 5 atom184743138) := by
  have h : sources false 3 5 atom184743138 = [v701203936482] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203936482) .nil)

theorem atom184743138true : BadRow (sources true 3 5 atom184743138) := by
  have h : sources true 3 5 atom184743138 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184742202 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0))))))
private def v701203935546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0))))))))
private theorem no_v701203935546 : ¬ MinimalInterpreter v701203935546 :=
  chain_cut false 5 (by decide)
theorem atom184742202false : BadRow (sources false 3 5 atom184742202) := by
  have h : sources false 3 5 atom184742202 = [v701203935546] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203935546) .nil)

theorem atom184742202true : BadRow (sources true 3 5 atom184742202) := by
  have h : sources true 3 5 atom184742202 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184742754 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0))))))
private def v701203936098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0))))))))
private theorem no_v701203936098 : ¬ MinimalInterpreter v701203936098 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom184742754false : BadRow (sources false 3 5 atom184742754) := by
  have h : sources false 3 5 atom184742754 = [v701203936098] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203936098) .nil)

theorem atom184742754true : BadRow (sources true 3 5 atom184742754) := by
  have h : sources true 3 5 atom184742754 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184728930 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0))))))
private def v701203922274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0))))))))
private theorem no_v701203922274 : ¬ MinimalInterpreter v701203922274 :=
  chain_cut false 5 (by decide)
theorem atom184728930false : BadRow (sources false 3 5 atom184728930) := by
  have h : sources false 3 5 atom184728930 = [v701203922274] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203922274) .nil)

theorem atom184728930true : BadRow (sources true 3 5 atom184728930) := by
  have h : sources true 3 5 atom184728930 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184728666 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0)))))
private def v701203922010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0)))))))
private theorem no_v701203922010 : ¬ MinimalInterpreter v701203922010 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (so_closed_lam (by decide) (.var 0))) (.var 1)) (.var 0)) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide))))))
theorem atom184728666false : BadRow (sources false 3 5 atom184728666) := by
  have h : sources false 3 5 atom184728666 = [v701203922010] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203922010) .nil)

theorem atom184728666true : BadRow (sources true 3 5 atom184728666) := by
  have h : sources true 3 5 atom184728666 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180417378 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))) (.lam (.var 0)))
private def v701199610722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))) (.lam (.var 0)))))
private theorem no_v701199610722 : ¬ MinimalInterpreter v701199610722 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
theorem atom180417378false : BadRow (sources false 3 5 atom180417378) := by
  have h : sources false 3 5 atom180417378 = [v701199610722] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199610722) .nil)

theorem atom180417378true : BadRow (sources true 3 5 atom180417378) := by
  have h : sources true 3 5 atom180417378 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180403554 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))) (.lam (.var 0)))
private def v701199596898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))) (.lam (.var 0)))))
private theorem no_v701199596898 : ¬ MinimalInterpreter v701199596898 :=
  chain_cut false 6 (by decide)
theorem atom180403554false : BadRow (sources false 3 5 atom180403554) := by
  have h : sources false 3 5 atom180403554 = [v701199596898] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199596898) .nil)

theorem atom180403554true : BadRow (sources true 3 5 atom180403554) := by
  have h : sources true 3 5 atom180403554 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180370650 : Term := (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.var 0))
private def v699009915418 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.var 0))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699009915418 : ¬ MinimalInterpreter v699009915418 :=
  chain_cut false 2 (by decide)
private def v701199563994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.var 0))))
private theorem no_v701199563994 : ¬ MinimalInterpreter v701199563994 :=
  chain_cut false 3 (by decide)
theorem atom180370650false : BadRow (sources false 3 5 atom180370650) := by
  have h : sources false 3 5 atom180370650 = [v699009915418,v701199563994] := by decide +kernel
  rw [h]
  exact (.cons (no_v699009915418) (.cons (no_v701199563994) .nil))

theorem atom180370650true : BadRow (sources true 3 5 atom180370650) := by
  have h : sources true 3 5 atom180370650 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180367194 : Term := (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.var 0))
private def v699009030682 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.var 0))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699009030682 : ¬ MinimalInterpreter v699009030682 :=
  chain_cut false 2 (by decide)
private def v701199560538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.var 0))))
private theorem no_v701199560538 : ¬ MinimalInterpreter v701199560538 :=
  chain_cut false 3 (by decide)
theorem atom180367194false : BadRow (sources false 3 5 atom180367194) := by
  have h : sources false 3 5 atom180367194 = [v699009030682,v701199560538] := by decide +kernel
  rw [h]
  exact (.cons (no_v699009030682) (.cons (no_v701199560538) .nil))

theorem atom180367194true : BadRow (sources true 3 5 atom180367194) := by
  have h : sources true 3 5 atom180367194 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms122 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,2,0,1,0]) := by
  have h : atoms 3 5 [0,2,0,1,0] = [atom137612514,atom137612130,atom137557218,atom137556282,atom137556834,atom137543010,atom137542746,atom137219298,atom137218914,atom137164002,atom137065698,atom137163066,atom137064762,atom137163618,atom137149794,atom137065314,atom137051490,atom137026914,atom137149530,atom137051226,atom137026650,atom147049698,atom147049314,atom146994402,atom146993466,atom146994018,atom146980194,atom146979930,atom145814370,atom145800546,atom184611642,atom184611546,atom184597818,atom184597722,atom184594266,atom184798434,atom184798050,atom184743138,atom184742202,atom184742754,atom184728930,atom184728666,atom180417378,atom180403554,atom180370650,atom180367194] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom137612514false | exact atom137612514true) (.cons (fun lit => by cases lit <;> first | exact atom137612130false | exact atom137612130true) (.cons (fun lit => by cases lit <;> first | exact atom137557218false | exact atom137557218true) (.cons (fun lit => by cases lit <;> first | exact atom137556282false | exact atom137556282true) (.cons (fun lit => by cases lit <;> first | exact atom137556834false | exact atom137556834true) (.cons (fun lit => by cases lit <;> first | exact atom137543010false | exact atom137543010true) (.cons (fun lit => by cases lit <;> first | exact atom137542746false | exact atom137542746true) (.cons (fun lit => by cases lit <;> first | exact atom137219298false | exact atom137219298true) (.cons (fun lit => by cases lit <;> first | exact atom137218914false | exact atom137218914true) (.cons (fun lit => by cases lit <;> first | exact atom137164002false | exact atom137164002true) (.cons (fun lit => by cases lit <;> first | exact atom137065698false | exact atom137065698true) (.cons (fun lit => by cases lit <;> first | exact atom137163066false | exact atom137163066true) (.cons (fun lit => by cases lit <;> first | exact atom137064762false | exact atom137064762true) (.cons (fun lit => by cases lit <;> first | exact atom137163618false | exact atom137163618true) (.cons (fun lit => by cases lit <;> first | exact atom137149794false | exact atom137149794true) (.cons (fun lit => by cases lit <;> first | exact atom137065314false | exact atom137065314true) (.cons (fun lit => by cases lit <;> first | exact atom137051490false | exact atom137051490true) (.cons (fun lit => by cases lit <;> first | exact atom137026914false | exact atom137026914true) (.cons (fun lit => by cases lit <;> first | exact atom137149530false | exact atom137149530true) (.cons (fun lit => by cases lit <;> first | exact atom137051226false | exact atom137051226true) (.cons (fun lit => by cases lit <;> first | exact atom137026650false | exact atom137026650true) (.cons (fun lit => by cases lit <;> first | exact atom147049698false | exact atom147049698true) (.cons (fun lit => by cases lit <;> first | exact atom147049314false | exact atom147049314true) (.cons (fun lit => by cases lit <;> first | exact atom146994402false | exact atom146994402true) (.cons (fun lit => by cases lit <;> first | exact atom146993466false | exact atom146993466true) (.cons (fun lit => by cases lit <;> first | exact atom146994018false | exact atom146994018true) (.cons (fun lit => by cases lit <;> first | exact atom146980194false | exact atom146980194true) (.cons (fun lit => by cases lit <;> first | exact atom146979930false | exact atom146979930true) (.cons (fun lit => by cases lit <;> first | exact atom145814370false | exact atom145814370true) (.cons (fun lit => by cases lit <;> first | exact atom145800546false | exact atom145800546true) (.cons (fun lit => by cases lit <;> first | exact atom184611642false | exact atom184611642true) (.cons (fun lit => by cases lit <;> first | exact atom184611546false | exact atom184611546true) (.cons (fun lit => by cases lit <;> first | exact atom184597818false | exact atom184597818true) (.cons (fun lit => by cases lit <;> first | exact atom184597722false | exact atom184597722true) (.cons (fun lit => by cases lit <;> first | exact atom184594266false | exact atom184594266true) (.cons (fun lit => by cases lit <;> first | exact atom184798434false | exact atom184798434true) (.cons (fun lit => by cases lit <;> first | exact atom184798050false | exact atom184798050true) (.cons (fun lit => by cases lit <;> first | exact atom184743138false | exact atom184743138true) (.cons (fun lit => by cases lit <;> first | exact atom184742202false | exact atom184742202true) (.cons (fun lit => by cases lit <;> first | exact atom184742754false | exact atom184742754true) (.cons (fun lit => by cases lit <;> first | exact atom184728930false | exact atom184728930true) (.cons (fun lit => by cases lit <;> first | exact atom184728666false | exact atom184728666true) (.cons (fun lit => by cases lit <;> first | exact atom180417378false | exact atom180417378true) (.cons (fun lit => by cases lit <;> first | exact atom180403554false | exact atom180403554true) (.cons (fun lit => by cases lit <;> first | exact atom180370650false | exact atom180370650true) (.cons (fun lit => by cases lit <;> first | exact atom180367194false | exact atom180367194true) .nil))))))))))))))))))))))))))))))))))))))))))))))
end Blc.SelfintSingleObject.Sat39
