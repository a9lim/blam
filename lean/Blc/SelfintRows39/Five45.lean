import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom138201878 : Term := (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))
private def v701157395222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))))))))
private theorem no_v701157395222 : ¬ MinimalInterpreter v701157395222 :=
  chain_cut false 2 (by decide)
theorem atom138201878false : BadRow (sources false 3 5 atom138201878) := by
  have h : sources false 3 5 atom138201878 = [v701157395222] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157395222) .nil)

theorem atom138201878true : BadRow (sources true 3 5 atom138201878) := by
  have h : sources true 3 5 atom138201878 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138195254 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1))))))
private def v701157388598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1))))))))
private theorem no_v701157388598 : ¬ MinimalInterpreter v701157388598 :=
  chain_cut false 2 (by decide)
theorem atom138195254false : BadRow (sources false 3 5 atom138195254) := by
  have h : sources false 3 5 atom138195254 = [v701157388598] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157388598) .nil)

theorem atom138195254true : BadRow (sources true 3 5 atom138195254) := by
  have h : sources true 3 5 atom138195254 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138195158 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))))
private def v701157388502 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)))))))
private theorem no_v701157388502 : ¬ MinimalInterpreter v701157388502 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom138195158false : BadRow (sources false 3 5 atom138195158) := by
  have h : sources false 3 5 atom138195158 = [v701157388502] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157388502) .nil)

theorem atom138195158true : BadRow (sources true 3 5 atom138195158) := by
  have h : sources true 3 5 atom138195158 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138195734 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1)))))
private def v701157389078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1)))))))
private theorem no_v701157389078 : ¬ MinimalInterpreter v701157389078 :=
  chain_cut false 2 (by decide)
theorem atom138195734false : BadRow (sources false 3 5 atom138195734) := by
  have h : sources false 3 5 atom138195734 = [v701157389078] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157389078) .nil)

theorem atom138195734true : BadRow (sources true 3 5 atom138195734) := by
  have h : sources true 3 5 atom138195734 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138194198 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))))
private def v701157387542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)))))))
private theorem no_v701157387542 : ¬ MinimalInterpreter v701157387542 :=
  chain_cut false 2 (by decide)
theorem atom138194198false : BadRow (sources false 3 5 atom138194198) := by
  have h : sources false 3 5 atom138194198 = [v701157387542] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157387542) .nil)

theorem atom138194198true : BadRow (sources true 3 5 atom138194198) := by
  have h : sources true 3 5 atom138194198 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138194006 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))))
private def v701157387350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)))))))
private theorem no_v701157387350 : ¬ MinimalInterpreter v701157387350 :=
  chain_cut false 2 (by decide)
theorem atom138194006false : BadRow (sources false 3 5 atom138194006) := by
  have h : sources false 3 5 atom138194006 = [v701157387350] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157387350) .nil)

theorem atom138194006true : BadRow (sources true 3 5 atom138194006) := by
  have h : sources true 3 5 atom138194006 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137317142 : Term := (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))
private def v701156510486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))))
private theorem no_v701156510486 : ¬ MinimalInterpreter v701156510486 :=
  chain_cut false 2 (by decide)
theorem atom137317142false : BadRow (sources false 3 5 atom137317142) := by
  have h : sources false 3 5 atom137317142 = [v701156510486] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156510486) .nil)

theorem atom137317142true : BadRow (sources true 3 5 atom137317142) := by
  have h : sources true 3 5 atom137317142 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137302838 : Term := (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))))
private def v701156496182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 1))))))))
private theorem no_v701156496182 : ¬ MinimalInterpreter v701156496182 :=
  chain_cut false 2 (by decide)
theorem atom137302838false : BadRow (sources false 3 5 atom137302838) := by
  have h : sources false 3 5 atom137302838 = [v701156496182] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156496182) .nil)

theorem atom137302838true : BadRow (sources true 3 5 atom137302838) := by
  have h : sources true 3 5 atom137302838 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137302742 : Term := (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))))
private def v701156496086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 1)))))))
private theorem no_v701156496086 : ¬ MinimalInterpreter v701156496086 :=
  chain_cut false 2 (by decide)
theorem atom137302742false : BadRow (sources false 3 5 atom137302742) := by
  have h : sources false 3 5 atom137302742 = [v701156496086] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156496086) .nil)

theorem atom137302742true : BadRow (sources true 3 5 atom137302742) := by
  have h : sources true 3 5 atom137302742 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137301302 : Term := (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))))
private def v701156494646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)))))))
private theorem no_v701156494646 : ¬ MinimalInterpreter v701156494646 :=
  w_cut false 0 (by decide)
theorem atom137301302false : BadRow (sources false 3 5 atom137301302) := by
  have h : sources false 3 5 atom137301302 = [v701156494646] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156494646) .nil)

theorem atom137301302true : BadRow (sources true 3 5 atom137301302) := by
  have h : sources true 3 5 atom137301302 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137310518 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 1)))))
private def v701156503862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 1)))))))
private theorem no_v701156503862 : ¬ MinimalInterpreter v701156503862 :=
  chain_cut false 2 (by decide)
theorem atom137310518false : BadRow (sources false 3 5 atom137310518) := by
  have h : sources false 3 5 atom137310518 = [v701156503862] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156503862) .nil)

theorem atom137310518true : BadRow (sources true 3 5 atom137310518) := by
  have h : sources true 3 5 atom137310518 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137089334 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 1)))))
private def v701156282678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 1)))))))
private theorem no_v701156282678 : ¬ MinimalInterpreter v701156282678 :=
  chain_cut false 2 (by decide)
theorem atom137089334false : BadRow (sources false 3 5 atom137089334) := by
  have h : sources false 3 5 atom137089334 = [v701156282678] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156282678) .nil)

theorem atom137089334true : BadRow (sources true 3 5 atom137089334) := by
  have h : sources true 3 5 atom137089334 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137086262 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 1)))))
private def v701156279606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 1)))))))
private theorem no_v701156279606 : ¬ MinimalInterpreter v701156279606 :=
  chain_cut false 2 (by decide)
theorem atom137086262false : BadRow (sources false 3 5 atom137086262) := by
  have h : sources false 3 5 atom137086262 = [v701156279606] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156279606) .nil)

theorem atom137086262true : BadRow (sources true 3 5 atom137086262) := by
  have h : sources true 3 5 atom137086262 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137310422 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1))))
private def v701156503766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 1))))))
private theorem no_v701156503766 : ¬ MinimalInterpreter v701156503766 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom137310422false : BadRow (sources false 3 5 atom137310422) := by
  have h : sources false 3 5 atom137310422 = [v701156503766] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156503766) .nil)

theorem atom137310422true : BadRow (sources true 3 5 atom137310422) := by
  have h : sources true 3 5 atom137310422 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137310998 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 1))))
private def v701156504342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 1))))))
private theorem no_v701156504342 : ¬ MinimalInterpreter v701156504342 :=
  chain_cut false 2 (by decide)
theorem atom137310998false : BadRow (sources false 3 5 atom137310998) := by
  have h : sources false 3 5 atom137310998 = [v701156504342] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156504342) .nil)

theorem atom137310998true : BadRow (sources true 3 5 atom137310998) := by
  have h : sources true 3 5 atom137310998 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137309462 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1))))
private def v701156502806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 1))))))
private theorem no_v701156502806 : ¬ MinimalInterpreter v701156502806 :=
  chain_cut false 2 (by decide)
theorem atom137309462false : BadRow (sources false 3 5 atom137309462) := by
  have h : sources false 3 5 atom137309462 = [v701156502806] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156502806) .nil)

theorem atom137309462true : BadRow (sources true 3 5 atom137309462) := by
  have h : sources true 3 5 atom137309462 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137309270 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1))))
private def v701156502614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 1))))))
private theorem no_v701156502614 : ¬ MinimalInterpreter v701156502614 :=
  chain_cut false 2 (by decide)
theorem atom137309270false : BadRow (sources false 3 5 atom137309270) := by
  have h : sources false 3 5 atom137309270 = [v701156502614] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156502614) .nil)

theorem atom137309270true : BadRow (sources true 3 5 atom137309270) := by
  have h : sources true 3 5 atom137309270 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137089238 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1))))
private def v701156282582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 1))))))
private theorem no_v701156282582 : ¬ MinimalInterpreter v701156282582 :=
  cost_cut false 4 (by decide)
theorem atom137089238false : BadRow (sources false 3 5 atom137089238) := by
  have h : sources false 3 5 atom137089238 = [v701156282582] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156282582) .nil)

theorem atom137089238true : BadRow (sources true 3 5 atom137089238) := by
  have h : sources true 3 5 atom137089238 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137089814 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1))))
private def v701156283158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 1))))))
private theorem no_v701156283158 : ¬ MinimalInterpreter v701156283158 :=
  chain_cut false 2 (by decide)
theorem atom137089814false : BadRow (sources false 3 5 atom137089814) := by
  have h : sources false 3 5 atom137089814 = [v701156283158] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156283158) .nil)

theorem atom137089814true : BadRow (sources true 3 5 atom137089814) := by
  have h : sources true 3 5 atom137089814 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137086166 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1))))
private def v701156279510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 1))))))
private theorem no_v701156279510 : ¬ MinimalInterpreter v701156279510 :=
  chain_cut false 2 (by decide)
theorem atom137086166false : BadRow (sources false 3 5 atom137086166) := by
  have h : sources false 3 5 atom137086166 = [v701156279510] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156279510) .nil)

theorem atom137086166true : BadRow (sources true 3 5 atom137086166) := by
  have h : sources true 3 5 atom137086166 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137088278 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1))))
private def v701156281622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 1))))))
private theorem no_v701156281622 : ¬ MinimalInterpreter v701156281622 :=
  chain_cut false 2 (by decide)
theorem atom137088278false : BadRow (sources false 3 5 atom137088278) := by
  have h : sources false 3 5 atom137088278 = [v701156281622] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156281622) .nil)

theorem atom137088278true : BadRow (sources true 3 5 atom137088278) := by
  have h : sources true 3 5 atom137088278 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137032982 : Term := (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 1))))
private def v701156226326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 1))))))
private theorem no_v701156226326 : ¬ MinimalInterpreter v701156226326 :=
  chain_cut false 2 (by decide)
theorem atom137032982false : BadRow (sources false 3 5 atom137032982) := by
  have h : sources false 3 5 atom137032982 = [v701156226326] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156226326) .nil)

theorem atom137032982true : BadRow (sources true 3 5 atom137032982) := by
  have h : sources true 3 5 atom137032982 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137085782 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))))
private def v701156279126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))))))
private theorem no_v701156279126 : ¬ MinimalInterpreter v701156279126 :=
  w_cut false 0 (by decide)
theorem atom137085782false : BadRow (sources false 3 5 atom137085782) := by
  have h : sources false 3 5 atom137085782 = [v701156279126] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156279126) .nil)

theorem atom137085782true : BadRow (sources true 3 5 atom137085782) := by
  have h : sources true 3 5 atom137085782 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137088086 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1))))
private def v701156281430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 1))))))
private theorem no_v701156281430 : ¬ MinimalInterpreter v701156281430 :=
  chain_cut false 2 (by decide)
theorem atom137088086false : BadRow (sources false 3 5 atom137088086) := by
  have h : sources false 3 5 atom137088086 = [v701156281430] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156281430) .nil)

theorem atom137088086true : BadRow (sources true 3 5 atom137088086) := by
  have h : sources true 3 5 atom137088086 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137032790 : Term := (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 1))))
private def v701156226134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 1))))))
private theorem no_v701156226134 : ¬ MinimalInterpreter v701156226134 :=
  chain_cut false 2 (by decide)
theorem atom137032790false : BadRow (sources false 3 5 atom137032790) := by
  have h : sources false 3 5 atom137032790 = [v701156226134] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156226134) .nil)

theorem atom137032790true : BadRow (sources true 3 5 atom137032790) := by
  have h : sources true 3 5 atom137032790 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137032022 : Term := (.lam (.lam (.app (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 1))))
private def v701156225366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 1))))))
private theorem no_v701156225366 : ¬ MinimalInterpreter v701156225366 :=
  chain_cut false 2 (by decide)
theorem atom137032022false : BadRow (sources false 3 5 atom137032022) := by
  have h : sources false 3 5 atom137032022 = [v701156225366] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156225366) .nil)

theorem atom137032022true : BadRow (sources true 3 5 atom137032022) := by
  have h : sources true 3 5 atom137032022 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms135 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [2,0,0,0,1]) := by
  have h : atoms 3 5 [2,0,0,0,1] = [atom138201878,atom138195254,atom138195158,atom138195734,atom138194198,atom138194006,atom137317142,atom137302838,atom137302742,atom137301302,atom137310518,atom137089334,atom137086262,atom137310422,atom137310998,atom137309462,atom137309270,atom137089238,atom137089814,atom137086166,atom137088278,atom137032982,atom137085782,atom137088086,atom137032790,atom137032022] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom138201878false | exact atom138201878true) (.cons (fun lit => by cases lit <;> first | exact atom138195254false | exact atom138195254true) (.cons (fun lit => by cases lit <;> first | exact atom138195158false | exact atom138195158true) (.cons (fun lit => by cases lit <;> first | exact atom138195734false | exact atom138195734true) (.cons (fun lit => by cases lit <;> first | exact atom138194198false | exact atom138194198true) (.cons (fun lit => by cases lit <;> first | exact atom138194006false | exact atom138194006true) (.cons (fun lit => by cases lit <;> first | exact atom137317142false | exact atom137317142true) (.cons (fun lit => by cases lit <;> first | exact atom137302838false | exact atom137302838true) (.cons (fun lit => by cases lit <;> first | exact atom137302742false | exact atom137302742true) (.cons (fun lit => by cases lit <;> first | exact atom137301302false | exact atom137301302true) (.cons (fun lit => by cases lit <;> first | exact atom137310518false | exact atom137310518true) (.cons (fun lit => by cases lit <;> first | exact atom137089334false | exact atom137089334true) (.cons (fun lit => by cases lit <;> first | exact atom137086262false | exact atom137086262true) (.cons (fun lit => by cases lit <;> first | exact atom137310422false | exact atom137310422true) (.cons (fun lit => by cases lit <;> first | exact atom137310998false | exact atom137310998true) (.cons (fun lit => by cases lit <;> first | exact atom137309462false | exact atom137309462true) (.cons (fun lit => by cases lit <;> first | exact atom137309270false | exact atom137309270true) (.cons (fun lit => by cases lit <;> first | exact atom137089238false | exact atom137089238true) (.cons (fun lit => by cases lit <;> first | exact atom137089814false | exact atom137089814true) (.cons (fun lit => by cases lit <;> first | exact atom137086166false | exact atom137086166true) (.cons (fun lit => by cases lit <;> first | exact atom137088278false | exact atom137088278true) (.cons (fun lit => by cases lit <;> first | exact atom137032982false | exact atom137032982true) (.cons (fun lit => by cases lit <;> first | exact atom137085782false | exact atom137085782true) (.cons (fun lit => by cases lit <;> first | exact atom137088086false | exact atom137088086true) (.cons (fun lit => by cases lit <;> first | exact atom137032790false | exact atom137032790true) (.cons (fun lit => by cases lit <;> first | exact atom137032022false | exact atom137032022true) .nil))))))))))))))))))))))))))
private def atom138202338 : Term := (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))))
private def v701157395682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))))))))
private theorem no_v701157395682 : ¬ MinimalInterpreter v701157395682 :=
  chain_cut false 2 (by decide)
theorem atom138202338false : BadRow (sources false 3 5 atom138202338) := by
  have h : sources false 3 5 atom138202338 = [v701157395682] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157395682) .nil)

theorem atom138202338true : BadRow (sources true 3 5 atom138202338) := by
  have h : sources true 3 5 atom138202338 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138201954 : Term := (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))
private def v701157395298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))))))))
private theorem no_v701157395298 : ¬ MinimalInterpreter v701157395298 :=
  chain_cut false 2 (by decide)
theorem atom138201954false : BadRow (sources false 3 5 atom138201954) := by
  have h : sources false 3 5 atom138201954 = [v701157395298] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157395298) .nil)

theorem atom138201954true : BadRow (sources true 3 5 atom138201954) := by
  have h : sources true 3 5 atom138201954 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138196194 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))))
private def v701157389538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v701157389538 : ¬ MinimalInterpreter v701157389538 :=
  chain_cut false 2 (by decide)
theorem atom138196194false : BadRow (sources false 3 5 atom138196194) := by
  have h : sources false 3 5 atom138196194 = [v701157389538] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157389538) .nil)

theorem atom138196194true : BadRow (sources true 3 5 atom138196194) := by
  have h : sources true 3 5 atom138196194 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138195258 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))))))
private def v701157388602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))))))))
private theorem no_v701157388602 : ¬ MinimalInterpreter v701157388602 :=
  chain_cut false 2 (by decide)
theorem atom138195258false : BadRow (sources false 3 5 atom138195258) := by
  have h : sources false 3 5 atom138195258 = [v701157388602] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157388602) .nil)

theorem atom138195258true : BadRow (sources true 3 5 atom138195258) := by
  have h : sources true 3 5 atom138195258 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138195810 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))))))
private def v701157389154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))))))))
private theorem no_v701157389154 : ¬ MinimalInterpreter v701157389154 :=
  chain_cut false 2 (by decide)
theorem atom138195810false : BadRow (sources false 3 5 atom138195810) := by
  have h : sources false 3 5 atom138195810 = [v701157389154] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157389154) .nil)

theorem atom138195810true : BadRow (sources true 3 5 atom138195810) := by
  have h : sources true 3 5 atom138195810 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138194274 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))))
private def v701157387618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))))))))
private theorem no_v701157387618 : ¬ MinimalInterpreter v701157387618 :=
  chain_cut false 2 (by decide)
theorem atom138194274false : BadRow (sources false 3 5 atom138194274) := by
  have h : sources false 3 5 atom138194274 = [v701157387618] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157387618) .nil)

theorem atom138194274true : BadRow (sources true 3 5 atom138194274) := by
  have h : sources true 3 5 atom138194274 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138194010 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0)))))
private def v701157387354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0)))))))
private theorem no_v701157387354 : ¬ MinimalInterpreter v701157387354 :=
  chain_cut false 2 (by decide)
theorem atom138194010false : BadRow (sources false 3 5 atom138194010) := by
  have h : sources false 3 5 atom138194010 = [v701157387354] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157387354) .nil)

theorem atom138194010true : BadRow (sources true 3 5 atom138194010) := by
  have h : sources true 3 5 atom138194010 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137317602 : Term := (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))))
private def v701156510946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v701156510946 : ¬ MinimalInterpreter v701156510946 :=
  chain_cut false 2 (by decide)
theorem atom137317602false : BadRow (sources false 3 5 atom137317602) := by
  have h : sources false 3 5 atom137317602 = [v701156510946] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156510946) .nil)

theorem atom137317602true : BadRow (sources true 3 5 atom137317602) := by
  have h : sources true 3 5 atom137317602 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137317218 : Term := (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))
private def v701156510562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))))))
private theorem no_v701156510562 : ¬ MinimalInterpreter v701156510562 :=
  chain_cut false 2 (by decide)
theorem atom137317218false : BadRow (sources false 3 5 atom137317218) := by
  have h : sources false 3 5 atom137317218 = [v701156510562] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156510562) .nil)

theorem atom137317218true : BadRow (sources true 3 5 atom137317218) := by
  have h : sources true 3 5 atom137317218 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137302842 : Term := (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))))
private def v701156496186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 0))))))))
private theorem no_v701156496186 : ¬ MinimalInterpreter v701156496186 :=
  chain_cut false 2 (by decide)
theorem atom137302842false : BadRow (sources false 3 5 atom137302842) := by
  have h : sources false 3 5 atom137302842 = [v701156496186] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156496186) .nil)

theorem atom137302842true : BadRow (sources true 3 5 atom137302842) := by
  have h : sources true 3 5 atom137302842 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137302746 : Term := (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))))
private def v701156496090 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 0)))))))
private theorem no_v701156496090 : ¬ MinimalInterpreter v701156496090 :=
  chain_cut false 2 (by decide)
theorem atom137302746false : BadRow (sources false 3 5 atom137302746) := by
  have h : sources false 3 5 atom137302746 = [v701156496090] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156496090) .nil)

theorem atom137302746true : BadRow (sources true 3 5 atom137302746) := by
  have h : sources true 3 5 atom137302746 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137311458 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0))))))
private def v701156504802 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 1) (.lam (.var 0))))))))
private theorem no_v701156504802 : ¬ MinimalInterpreter v701156504802 :=
  chain_cut false 2 (by decide)
theorem atom137311458false : BadRow (sources false 3 5 atom137311458) := by
  have h : sources false 3 5 atom137311458 = [v701156504802] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156504802) .nil)

theorem atom137311458true : BadRow (sources true 3 5 atom137311458) := by
  have h : sources true 3 5 atom137311458 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137090274 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 0))))))
private def v701156283618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 1) (.lam (.var 0))))))))
private theorem no_v701156283618 : ¬ MinimalInterpreter v701156283618 :=
  chain_cut false 2 (by decide)
theorem atom137090274false : BadRow (sources false 3 5 atom137090274) := by
  have h : sources false 3 5 atom137090274 = [v701156283618] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156283618) .nil)

theorem atom137090274true : BadRow (sources true 3 5 atom137090274) := by
  have h : sources true 3 5 atom137090274 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137301306 : Term := (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)))))
private def v701156494650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)))))))
private theorem no_v701156494650 : ¬ MinimalInterpreter v701156494650 :=
  w_cut false 0 (by decide)
theorem atom137301306false : BadRow (sources false 3 5 atom137301306) := by
  have h : sources false 3 5 atom137301306 = [v701156494650] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156494650) .nil)

theorem atom137301306true : BadRow (sources true 3 5 atom137301306) := by
  have h : sources true 3 5 atom137301306 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137310522 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 0)))))
private def v701156503866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 0)))))))
private theorem no_v701156503866 : ¬ MinimalInterpreter v701156503866 :=
  chain_cut false 2 (by decide)
theorem atom137310522false : BadRow (sources false 3 5 atom137310522) := by
  have h : sources false 3 5 atom137310522 = [v701156503866] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156503866) .nil)

theorem atom137310522true : BadRow (sources true 3 5 atom137310522) := by
  have h : sources true 3 5 atom137310522 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137089338 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 0)))))
private def v701156282682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 0)))))))
private theorem no_v701156282682 : ¬ MinimalInterpreter v701156282682 :=
  chain_cut false 2 (by decide)
theorem atom137089338false : BadRow (sources false 3 5 atom137089338) := by
  have h : sources false 3 5 atom137089338 = [v701156282682] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156282682) .nil)

theorem atom137089338true : BadRow (sources true 3 5 atom137089338) := by
  have h : sources true 3 5 atom137089338 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137086266 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 0)))))
private def v701156279610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 0)))))))
private theorem no_v701156279610 : ¬ MinimalInterpreter v701156279610 :=
  chain_cut false 2 (by decide)
theorem atom137086266false : BadRow (sources false 3 5 atom137086266) := by
  have h : sources false 3 5 atom137086266 = [v701156279610] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156279610) .nil)

theorem atom137086266true : BadRow (sources true 3 5 atom137086266) := by
  have h : sources true 3 5 atom137086266 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137311074 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.var 0)))))
private def v701156504418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))) (.lam (.var 0)))))))
private theorem no_v701156504418 : ¬ MinimalInterpreter v701156504418 :=
  chain_cut false 2 (by decide)
theorem atom137311074false : BadRow (sources false 3 5 atom137311074) := by
  have h : sources false 3 5 atom137311074 = [v701156504418] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156504418) .nil)

theorem atom137311074true : BadRow (sources true 3 5 atom137311074) := by
  have h : sources true 3 5 atom137311074 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137309538 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0)))))
private def v701156502882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))) (.lam (.var 0)))))))
private theorem no_v701156502882 : ¬ MinimalInterpreter v701156502882 :=
  chain_cut false 2 (by decide)
theorem atom137309538false : BadRow (sources false 3 5 atom137309538) := by
  have h : sources false 3 5 atom137309538 = [v701156502882] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156502882) .nil)

theorem atom137309538true : BadRow (sources true 3 5 atom137309538) := by
  have h : sources true 3 5 atom137309538 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137089890 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.var 0)))))
private def v701156283234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))) (.lam (.var 0)))))))
private theorem no_v701156283234 : ¬ MinimalInterpreter v701156283234 :=
  chain_cut false 2 (by decide)
theorem atom137089890false : BadRow (sources false 3 5 atom137089890) := by
  have h : sources false 3 5 atom137089890 = [v701156283234] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156283234) .nil)

theorem atom137089890true : BadRow (sources true 3 5 atom137089890) := by
  have h : sources true 3 5 atom137089890 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137088354 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0)))))
private def v701156281698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)) (.lam (.var 0)))))))
private theorem no_v701156281698 : ¬ MinimalInterpreter v701156281698 :=
  chain_cut false 2 (by decide)
theorem atom137088354false : BadRow (sources false 3 5 atom137088354) := by
  have h : sources false 3 5 atom137088354 = [v701156281698] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156281698) .nil)

theorem atom137088354true : BadRow (sources true 3 5 atom137088354) := by
  have h : sources true 3 5 atom137088354 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137033058 : Term := (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)) (.lam (.var 0)))))
private def v701156226402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)) (.lam (.var 0)))))))
private theorem no_v701156226402 : ¬ MinimalInterpreter v701156226402 :=
  chain_cut false 2 (by decide)
theorem atom137033058false : BadRow (sources false 3 5 atom137033058) := by
  have h : sources false 3 5 atom137033058 = [v701156226402] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156226402) .nil)

theorem atom137033058true : BadRow (sources true 3 5 atom137033058) := by
  have h : sources true 3 5 atom137033058 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137309274 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.var 0))))
private def v701156502618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.var 0))))))
private theorem no_v701156502618 : ¬ MinimalInterpreter v701156502618 :=
  chain_cut false 2 (by decide)
theorem atom137309274false : BadRow (sources false 3 5 atom137309274) := by
  have h : sources false 3 5 atom137309274 = [v701156502618] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156502618) .nil)

theorem atom137309274true : BadRow (sources true 3 5 atom137309274) := by
  have h : sources true 3 5 atom137309274 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137086170 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.var 0))))
private def v701156279514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.var 0))))))
private theorem no_v701156279514 : ¬ MinimalInterpreter v701156279514 :=
  chain_cut false 2 (by decide)
theorem atom137086170false : BadRow (sources false 3 5 atom137086170) := by
  have h : sources false 3 5 atom137086170 = [v701156279514] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156279514) .nil)

theorem atom137086170true : BadRow (sources true 3 5 atom137086170) := by
  have h : sources true 3 5 atom137086170 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137085786 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))))
private def v701156279130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))))))
private theorem no_v701156279130 : ¬ MinimalInterpreter v701156279130 :=
  w_cut false 0 (by decide)
theorem atom137085786false : BadRow (sources false 3 5 atom137085786) := by
  have h : sources false 3 5 atom137085786 = [v701156279130] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156279130) .nil)

theorem atom137085786true : BadRow (sources true 3 5 atom137085786) := by
  have h : sources true 3 5 atom137085786 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137088090 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))))
private def v701156281434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 0))))))
private theorem no_v701156281434 : ¬ MinimalInterpreter v701156281434 :=
  chain_cut false 2 (by decide)
theorem atom137088090false : BadRow (sources false 3 5 atom137088090) := by
  have h : sources false 3 5 atom137088090 = [v701156281434] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156281434) .nil)

theorem atom137088090true : BadRow (sources true 3 5 atom137088090) := by
  have h : sources true 3 5 atom137088090 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137032794 : Term := (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 0))))
private def v701156226138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 0))))))
private theorem no_v701156226138 : ¬ MinimalInterpreter v701156226138 :=
  chain_cut false 2 (by decide)
theorem atom137032794false : BadRow (sources false 3 5 atom137032794) := by
  have h : sources false 3 5 atom137032794 = [v701156226138] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156226138) .nil)

theorem atom137032794true : BadRow (sources true 3 5 atom137032794) := by
  have h : sources true 3 5 atom137032794 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137032026 : Term := (.lam (.lam (.app (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 0))))
private def v701156225370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 0))))))
private theorem no_v701156225370 : ¬ MinimalInterpreter v701156225370 :=
  chain_cut false 2 (by decide)
theorem atom137032026false : BadRow (sources false 3 5 atom137032026) := by
  have h : sources false 3 5 atom137032026 = [v701156225370] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156225370) .nil)

theorem atom137032026true : BadRow (sources true 3 5 atom137032026) := by
  have h : sources true 3 5 atom137032026 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms136 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [2,0,0,1,0]) := by
  have h : atoms 3 5 [2,0,0,1,0] = [atom138202338,atom138201954,atom138196194,atom138195258,atom138195810,atom138194274,atom138194010,atom137317602,atom137317218,atom137302842,atom137302746,atom137311458,atom137090274,atom137301306,atom137310522,atom137089338,atom137086266,atom137311074,atom137309538,atom137089890,atom137088354,atom137033058,atom137309274,atom137086170,atom137085786,atom137088090,atom137032794,atom137032026] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom138202338false | exact atom138202338true) (.cons (fun lit => by cases lit <;> first | exact atom138201954false | exact atom138201954true) (.cons (fun lit => by cases lit <;> first | exact atom138196194false | exact atom138196194true) (.cons (fun lit => by cases lit <;> first | exact atom138195258false | exact atom138195258true) (.cons (fun lit => by cases lit <;> first | exact atom138195810false | exact atom138195810true) (.cons (fun lit => by cases lit <;> first | exact atom138194274false | exact atom138194274true) (.cons (fun lit => by cases lit <;> first | exact atom138194010false | exact atom138194010true) (.cons (fun lit => by cases lit <;> first | exact atom137317602false | exact atom137317602true) (.cons (fun lit => by cases lit <;> first | exact atom137317218false | exact atom137317218true) (.cons (fun lit => by cases lit <;> first | exact atom137302842false | exact atom137302842true) (.cons (fun lit => by cases lit <;> first | exact atom137302746false | exact atom137302746true) (.cons (fun lit => by cases lit <;> first | exact atom137311458false | exact atom137311458true) (.cons (fun lit => by cases lit <;> first | exact atom137090274false | exact atom137090274true) (.cons (fun lit => by cases lit <;> first | exact atom137301306false | exact atom137301306true) (.cons (fun lit => by cases lit <;> first | exact atom137310522false | exact atom137310522true) (.cons (fun lit => by cases lit <;> first | exact atom137089338false | exact atom137089338true) (.cons (fun lit => by cases lit <;> first | exact atom137086266false | exact atom137086266true) (.cons (fun lit => by cases lit <;> first | exact atom137311074false | exact atom137311074true) (.cons (fun lit => by cases lit <;> first | exact atom137309538false | exact atom137309538true) (.cons (fun lit => by cases lit <;> first | exact atom137089890false | exact atom137089890true) (.cons (fun lit => by cases lit <;> first | exact atom137088354false | exact atom137088354true) (.cons (fun lit => by cases lit <;> first | exact atom137033058false | exact atom137033058true) (.cons (fun lit => by cases lit <;> first | exact atom137309274false | exact atom137309274true) (.cons (fun lit => by cases lit <;> first | exact atom137086170false | exact atom137086170true) (.cons (fun lit => by cases lit <;> first | exact atom137085786false | exact atom137085786true) (.cons (fun lit => by cases lit <;> first | exact atom137088090false | exact atom137088090true) (.cons (fun lit => by cases lit <;> first | exact atom137032794false | exact atom137032794true) (.cons (fun lit => by cases lit <;> first | exact atom137032026false | exact atom137032026true) .nil))))))))))))))))))))))))))))
private def atom138202650 : Term := (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))))
private def v701157395994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))))))
private theorem no_v701157395994 : ¬ MinimalInterpreter v701157395994 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom138202650false : BadRow (sources false 3 5 atom138202650) := by
  have h : sources false 3 5 atom138202650 = [v701157395994] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157395994) .nil)

theorem atom138202650true : BadRow (sources true 3 5 atom138202650) := by
  have h : sources true 3 5 atom138202650 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138202722 : Term := (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))))
private def v701157396066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))))))
private theorem no_v701157396066 : ¬ MinimalInterpreter v701157396066 :=
  chain_cut false 2 (by decide)
theorem atom138202722false : BadRow (sources false 3 5 atom138202722) := by
  have h : sources false 3 5 atom138202722 = [v701157396066] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157396066) .nil)

theorem atom138202722true : BadRow (sources true 3 5 atom138202722) := by
  have h : sources true 3 5 atom138202722 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138202018 : Term := (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))
private def v701157395362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))))
private theorem no_v701157395362 : ¬ MinimalInterpreter v701157395362 :=
  chain_cut false 2 (by decide)
theorem atom138202018false : BadRow (sources false 3 5 atom138202018) := by
  have h : sources false 3 5 atom138202018 = [v701157395362] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157395362) .nil)

theorem atom138202018true : BadRow (sources true 3 5 atom138202018) := by
  have h : sources true 3 5 atom138202018 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138201994 : Term := (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))))
private def v701157395338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))))))
private theorem no_v701157395338 : ¬ MinimalInterpreter v701157395338 :=
  chain_cut false 2 (by decide)
theorem atom138201994false : BadRow (sources false 3 5 atom138201994) := by
  have h : sources false 3 5 atom138201994 = [v701157395338] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157395338) .nil)

theorem atom138201994true : BadRow (sources true 3 5 atom138201994) := by
  have h : sources true 3 5 atom138201994 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138196506 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))))))
private def v701157389850 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))))))))
private theorem no_v701157389850 : ¬ MinimalInterpreter v701157389850 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom138196506false : BadRow (sources false 3 5 atom138196506) := by
  have h : sources false 3 5 atom138196506 = [v701157389850] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157389850) .nil)

theorem atom138196506true : BadRow (sources true 3 5 atom138196506) := by
  have h : sources true 3 5 atom138196506 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138196578 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))
private def v701157389922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v701157389922 : ¬ MinimalInterpreter v701157389922 :=
  chain_cut false 2 (by decide)
theorem atom138196578false : BadRow (sources false 3 5 atom138196578) := by
  have h : sources false 3 5 atom138196578 = [v701157389922] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157389922) .nil)

theorem atom138196578true : BadRow (sources true 3 5 atom138196578) := by
  have h : sources true 3 5 atom138196578 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138195874 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0))))))
private def v701157389218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0))))))))
private theorem no_v701157389218 : ¬ MinimalInterpreter v701157389218 :=
  chain_cut false 2 (by decide)
theorem atom138195874false : BadRow (sources false 3 5 atom138195874) := by
  have h : sources false 3 5 atom138195874 = [v701157389218] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157389218) .nil)

theorem atom138195874true : BadRow (sources true 3 5 atom138195874) := by
  have h : sources true 3 5 atom138195874 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138194338 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))))
private def v701157387682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))))))))
private theorem no_v701157387682 : ¬ MinimalInterpreter v701157387682 :=
  chain_cut false 2 (by decide)
theorem atom138194338false : BadRow (sources false 3 5 atom138194338) := by
  have h : sources false 3 5 atom138194338 = [v701157387682] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157387682) .nil)

theorem atom138194338true : BadRow (sources true 3 5 atom138194338) := by
  have h : sources true 3 5 atom138194338 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138195850 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)))))
private def v701157389194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)))))))
private theorem no_v701157389194 : ¬ MinimalInterpreter v701157389194 :=
  chain_cut false 2 (by decide)
theorem atom138195850false : BadRow (sources false 3 5 atom138195850) := by
  have h : sources false 3 5 atom138195850 = [v701157389194] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157389194) .nil)

theorem atom138195850true : BadRow (sources true 3 5 atom138195850) := by
  have h : sources true 3 5 atom138195850 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom138194314 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)))))
private def v701157387658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)))))))
private theorem no_v701157387658 : ¬ MinimalInterpreter v701157387658 :=
  chain_cut false 2 (by decide)
theorem atom138194314false : BadRow (sources false 3 5 atom138194314) := by
  have h : sources false 3 5 atom138194314 = [v701157387658] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157387658) .nil)

theorem atom138194314true : BadRow (sources true 3 5 atom138194314) := by
  have h : sources true 3 5 atom138194314 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137317914 : Term := (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))
private def v701156511258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))))
private theorem no_v701156511258 : ¬ MinimalInterpreter v701156511258 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom137317914false : BadRow (sources false 3 5 atom137317914) := by
  have h : sources false 3 5 atom137317914 = [v701156511258] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156511258) .nil)

theorem atom137317914true : BadRow (sources true 3 5 atom137317914) := by
  have h : sources true 3 5 atom137317914 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137317986 : Term := (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))))
private def v701156511330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v701156511330 : ¬ MinimalInterpreter v701156511330 :=
  chain_cut false 2 (by decide)
theorem atom137317986false : BadRow (sources false 3 5 atom137317986) := by
  have h : sources false 3 5 atom137317986 = [v701156511330] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156511330) .nil)

theorem atom137317986true : BadRow (sources true 3 5 atom137317986) := by
  have h : sources true 3 5 atom137317986 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137317282 : Term := (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))
private def v701156510626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))))
private theorem no_v701156510626 : ¬ MinimalInterpreter v701156510626 :=
  chain_cut false 2 (by decide)
theorem atom137317282false : BadRow (sources false 3 5 atom137317282) := by
  have h : sources false 3 5 atom137317282 = [v701156510626] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156510626) .nil)

theorem atom137317282true : BadRow (sources true 3 5 atom137317282) := by
  have h : sources true 3 5 atom137317282 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137317258 : Term := (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))))
private def v701156510602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))))))
private theorem no_v701156510602 : ¬ MinimalInterpreter v701156510602 :=
  chain_cut false 2 (by decide)
theorem atom137317258false : BadRow (sources false 3 5 atom137317258) := by
  have h : sources false 3 5 atom137317258 = [v701156510602] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156510602) .nil)

theorem atom137317258true : BadRow (sources true 3 5 atom137317258) := by
  have h : sources true 3 5 atom137317258 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137302938 : Term := (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 0))))))
private def v701156496282 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private theorem no_v701156496282 : ¬ MinimalInterpreter v701156496282 :=
  chain_cut false 2 (by decide)
theorem atom137302938false : BadRow (sources false 3 5 atom137302938) := by
  have h : sources false 3 5 atom137302938 = [v701156496282] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156496282) .nil)

theorem atom137302938true : BadRow (sources true 3 5 atom137302938) := by
  have h : sources true 3 5 atom137302938 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137302762 : Term := (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)))))
private def v701156496106 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private theorem no_v701156496106 : ¬ MinimalInterpreter v701156496106 :=
  chain_cut false 2 (by decide)
theorem atom137302762false : BadRow (sources false 3 5 atom137302762) := by
  have h : sources false 3 5 atom137302762 = [v701156496106] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156496106) .nil)

theorem atom137302762true : BadRow (sources true 3 5 atom137302762) := by
  have h : sources true 3 5 atom137302762 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137311770 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 0))))))
private def v701156505114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.app (.var 0) (.var 0))))))))
private theorem no_v701156505114 : ¬ MinimalInterpreter v701156505114 :=
  so_cut false 4 (show SO (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) from (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide)))
theorem atom137311770false : BadRow (sources false 3 5 atom137311770) := by
  have h : sources false 3 5 atom137311770 = [v701156505114] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156505114) .nil)

theorem atom137311770true : BadRow (sources true 3 5 atom137311770) := by
  have h : sources true 3 5 atom137311770 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137311842 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (.var 0))))))
private def v701156505186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.lam (.var 0))))))))
private theorem no_v701156505186 : ¬ MinimalInterpreter v701156505186 :=
  chain_cut false 2 (by decide)
theorem atom137311842false : BadRow (sources false 3 5 atom137311842) := by
  have h : sources false 3 5 atom137311842 = [v701156505186] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156505186) .nil)

theorem atom137311842true : BadRow (sources true 3 5 atom137311842) := by
  have h : sources true 3 5 atom137311842 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137090586 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0))))))
private def v701156283930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.app (.var 0) (.var 0))))))))
private theorem no_v701156283930 : ¬ MinimalInterpreter v701156283930 :=
  cost_cut false 5 (by decide)
theorem atom137090586false : BadRow (sources false 3 5 atom137090586) := by
  have h : sources false 3 5 atom137090586 = [v701156283930] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156283930) .nil)

theorem atom137090586true : BadRow (sources true 3 5 atom137090586) := by
  have h : sources true 3 5 atom137090586 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137090658 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0))))))
private def v701156284002 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.lam (.var 0))))))))
private theorem no_v701156284002 : ¬ MinimalInterpreter v701156284002 :=
  chain_cut false 2 (by decide)
theorem atom137090658false : BadRow (sources false 3 5 atom137090658) := by
  have h : sources false 3 5 atom137090658 = [v701156284002] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156284002) .nil)

theorem atom137090658true : BadRow (sources true 3 5 atom137090658) := by
  have h : sources true 3 5 atom137090658 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137086362 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0)))))
private def v701156279706 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0)))))))
private theorem no_v701156279706 : ¬ MinimalInterpreter v701156279706 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.app (.var 2) (so_closed_lam (by decide) (.var 0))) (.var 1)) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))
theorem atom137086362false : BadRow (sources false 3 5 atom137086362) := by
  have h : sources false 3 5 atom137086362 = [v701156279706] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156279706) .nil)

theorem atom137086362true : BadRow (sources true 3 5 atom137086362) := by
  have h : sources true 3 5 atom137086362 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137311138 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.var 0)))))
private def v701156504482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))) (.lam (.var 0)))))))
private theorem no_v701156504482 : ¬ MinimalInterpreter v701156504482 :=
  chain_cut false 2 (by decide)
theorem atom137311138false : BadRow (sources false 3 5 atom137311138) := by
  have h : sources false 3 5 atom137311138 = [v701156504482] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156504482) .nil)

theorem atom137311138true : BadRow (sources true 3 5 atom137311138) := by
  have h : sources true 3 5 atom137311138 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137309602 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.var 0)))))
private def v701156502946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.var 0)))))))
private theorem no_v701156502946 : ¬ MinimalInterpreter v701156502946 :=
  chain_cut false 2 (by decide)
theorem atom137309602false : BadRow (sources false 3 5 atom137309602) := by
  have h : sources false 3 5 atom137309602 = [v701156502946] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156502946) .nil)

theorem atom137309602true : BadRow (sources true 3 5 atom137309602) := by
  have h : sources true 3 5 atom137309602 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137089954 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.var 0)))))
private def v701156283298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))) (.lam (.var 0)))))))
private theorem no_v701156283298 : ¬ MinimalInterpreter v701156283298 :=
  chain_cut false 2 (by decide)
theorem atom137089954false : BadRow (sources false 3 5 atom137089954) := by
  have h : sources false 3 5 atom137089954 = [v701156283298] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156283298) .nil)

theorem atom137089954true : BadRow (sources true 3 5 atom137089954) := by
  have h : sources true 3 5 atom137089954 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137088418 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)) (.lam (.var 0)))))
private def v701156281762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)) (.lam (.var 0)))))))
private theorem no_v701156281762 : ¬ MinimalInterpreter v701156281762 :=
  chain_cut false 2 (by decide)
theorem atom137088418false : BadRow (sources false 3 5 atom137088418) := by
  have h : sources false 3 5 atom137088418 = [v701156281762] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156281762) .nil)

theorem atom137088418true : BadRow (sources true 3 5 atom137088418) := by
  have h : sources true 3 5 atom137088418 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137033122 : Term := (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)) (.lam (.var 0)))))
private def v701156226466 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)) (.lam (.var 0)))))))
private theorem no_v701156226466 : ¬ MinimalInterpreter v701156226466 :=
  chain_cut false 2 (by decide)
theorem atom137033122false : BadRow (sources false 3 5 atom137033122) := by
  have h : sources false 3 5 atom137033122 = [v701156226466] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156226466) .nil)

theorem atom137033122true : BadRow (sources true 3 5 atom137033122) := by
  have h : sources true 3 5 atom137033122 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137311114 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 0))))
private def v701156504458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 0))))))
private theorem no_v701156504458 : ¬ MinimalInterpreter v701156504458 :=
  chain_cut false 2 (by decide)
theorem atom137311114false : BadRow (sources false 3 5 atom137311114) := by
  have h : sources false 3 5 atom137311114 = [v701156504458] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156504458) .nil)

theorem atom137311114true : BadRow (sources true 3 5 atom137311114) := by
  have h : sources true 3 5 atom137311114 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137309578 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 0))))
private def v701156502922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 0))))))
private theorem no_v701156502922 : ¬ MinimalInterpreter v701156502922 :=
  chain_cut false 2 (by decide)
theorem atom137309578false : BadRow (sources false 3 5 atom137309578) := by
  have h : sources false 3 5 atom137309578 = [v701156502922] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156502922) .nil)

theorem atom137309578true : BadRow (sources true 3 5 atom137309578) := by
  have h : sources true 3 5 atom137309578 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137089930 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 0))))
private def v701156283274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 0))))))
private theorem no_v701156283274 : ¬ MinimalInterpreter v701156283274 :=
  chain_cut false 2 (by decide)
theorem atom137089930false : BadRow (sources false 3 5 atom137089930) := by
  have h : sources false 3 5 atom137089930 = [v701156283274] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156283274) .nil)

theorem atom137089930true : BadRow (sources true 3 5 atom137089930) := by
  have h : sources true 3 5 atom137089930 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137086186 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.var 0))))
private def v701156279530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.var 0))))))
private theorem no_v701156279530 : ¬ MinimalInterpreter v701156279530 :=
  chain_cut false 2 (by decide)
theorem atom137086186false : BadRow (sources false 3 5 atom137086186) := by
  have h : sources false 3 5 atom137086186 = [v701156279530] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156279530) .nil)

theorem atom137086186true : BadRow (sources true 3 5 atom137086186) := by
  have h : sources true 3 5 atom137086186 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137088394 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.var 0))))
private def v701156281738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.var 0))))))
private theorem no_v701156281738 : ¬ MinimalInterpreter v701156281738 :=
  chain_cut false 2 (by decide)
theorem atom137088394false : BadRow (sources false 3 5 atom137088394) := by
  have h : sources false 3 5 atom137088394 = [v701156281738] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156281738) .nil)

theorem atom137088394true : BadRow (sources true 3 5 atom137088394) := by
  have h : sources true 3 5 atom137088394 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137033098 : Term := (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 0))))
private def v701156226442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 0))))))
private theorem no_v701156226442 : ¬ MinimalInterpreter v701156226442 :=
  chain_cut false 2 (by decide)
theorem atom137033098false : BadRow (sources false 3 5 atom137033098) := by
  have h : sources false 3 5 atom137033098 = [v701156226442] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156226442) .nil)

theorem atom137033098true : BadRow (sources true 3 5 atom137033098) := by
  have h : sources true 3 5 atom137033098 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137032042 : Term := (.lam (.lam (.app (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 0))))
private def v701156225386 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 0))))))
private theorem no_v701156225386 : ¬ MinimalInterpreter v701156225386 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.app (.var 2) (so_closed_lam (by decide) (.var 0))) (.var 1)) (.var 0)) (.var 0)) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))
theorem atom137032042false : BadRow (sources false 3 5 atom137032042) := by
  have h : sources false 3 5 atom137032042 = [v701156225386] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156225386) .nil)

theorem atom137032042true : BadRow (sources true 3 5 atom137032042) := by
  have h : sources true 3 5 atom137032042 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms137 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [2,0,1,0,0]) := by
  have h : atoms 3 5 [2,0,1,0,0] = [atom138202650,atom138202722,atom138202018,atom138201994,atom138196506,atom138196578,atom138195874,atom138194338,atom138195850,atom138194314,atom137317914,atom137317986,atom137317282,atom137317258,atom137302938,atom137302762,atom137311770,atom137311842,atom137090586,atom137090658,atom137086362,atom137311138,atom137309602,atom137089954,atom137088418,atom137033122,atom137311114,atom137309578,atom137089930,atom137086186,atom137088394,atom137033098,atom137032042] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom138202650false | exact atom138202650true) (.cons (fun lit => by cases lit <;> first | exact atom138202722false | exact atom138202722true) (.cons (fun lit => by cases lit <;> first | exact atom138202018false | exact atom138202018true) (.cons (fun lit => by cases lit <;> first | exact atom138201994false | exact atom138201994true) (.cons (fun lit => by cases lit <;> first | exact atom138196506false | exact atom138196506true) (.cons (fun lit => by cases lit <;> first | exact atom138196578false | exact atom138196578true) (.cons (fun lit => by cases lit <;> first | exact atom138195874false | exact atom138195874true) (.cons (fun lit => by cases lit <;> first | exact atom138194338false | exact atom138194338true) (.cons (fun lit => by cases lit <;> first | exact atom138195850false | exact atom138195850true) (.cons (fun lit => by cases lit <;> first | exact atom138194314false | exact atom138194314true) (.cons (fun lit => by cases lit <;> first | exact atom137317914false | exact atom137317914true) (.cons (fun lit => by cases lit <;> first | exact atom137317986false | exact atom137317986true) (.cons (fun lit => by cases lit <;> first | exact atom137317282false | exact atom137317282true) (.cons (fun lit => by cases lit <;> first | exact atom137317258false | exact atom137317258true) (.cons (fun lit => by cases lit <;> first | exact atom137302938false | exact atom137302938true) (.cons (fun lit => by cases lit <;> first | exact atom137302762false | exact atom137302762true) (.cons (fun lit => by cases lit <;> first | exact atom137311770false | exact atom137311770true) (.cons (fun lit => by cases lit <;> first | exact atom137311842false | exact atom137311842true) (.cons (fun lit => by cases lit <;> first | exact atom137090586false | exact atom137090586true) (.cons (fun lit => by cases lit <;> first | exact atom137090658false | exact atom137090658true) (.cons (fun lit => by cases lit <;> first | exact atom137086362false | exact atom137086362true) (.cons (fun lit => by cases lit <;> first | exact atom137311138false | exact atom137311138true) (.cons (fun lit => by cases lit <;> first | exact atom137309602false | exact atom137309602true) (.cons (fun lit => by cases lit <;> first | exact atom137089954false | exact atom137089954true) (.cons (fun lit => by cases lit <;> first | exact atom137088418false | exact atom137088418true) (.cons (fun lit => by cases lit <;> first | exact atom137033122false | exact atom137033122true) (.cons (fun lit => by cases lit <;> first | exact atom137311114false | exact atom137311114true) (.cons (fun lit => by cases lit <;> first | exact atom137309578false | exact atom137309578true) (.cons (fun lit => by cases lit <;> first | exact atom137089930false | exact atom137089930true) (.cons (fun lit => by cases lit <;> first | exact atom137086186false | exact atom137086186true) (.cons (fun lit => by cases lit <;> first | exact atom137088394false | exact atom137088394true) (.cons (fun lit => by cases lit <;> first | exact atom137033098false | exact atom137033098true) (.cons (fun lit => by cases lit <;> first | exact atom137032042false | exact atom137032042true) .nil)))))))))))))))))))))))))))))))))
end Blc.SelfintSingleObject.Sat39
