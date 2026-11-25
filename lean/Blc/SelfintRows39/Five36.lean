import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms108 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,0,0,3,0]) := by
  have h : atoms 3 5 [0,0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom137571886 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))))
private def v701156765230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))))))
private theorem no_v701156765230 : ¬ MinimalInterpreter v701156765230 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 2)))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137571886false : BadRow (sources false 3 5 atom137571886) := by
  have h : sources false 3 5 atom137571886 = [v701156765230] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156765230) .nil)

theorem atom137571886true : BadRow (sources true 3 5 atom137571886) := by
  have h : sources true 3 5 atom137571886 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137547310 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2)))))
private def v701156740654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2)))))))
private theorem no_v701156740654 : ¬ MinimalInterpreter v701156740654 :=
  chain_cut false 2 (by decide)
theorem atom137547310false : BadRow (sources false 3 5 atom137547310) := by
  have h : sources false 3 5 atom137547310 = [v701156740654] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156740654) .nil)

theorem atom137547310true : BadRow (sources true 3 5 atom137547310) := by
  have h : sources true 3 5 atom137547310 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137541166 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2)))))
private def v701156734510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2)))))))
private theorem no_v701156734510 : ¬ MinimalInterpreter v701156734510 :=
  chain_cut false 2 (by decide)
theorem atom137541166false : BadRow (sources false 3 5 atom137541166) := by
  have h : sources false 3 5 atom137541166 = [v701156734510] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156734510) .nil)

theorem atom137541166true : BadRow (sources true 3 5 atom137541166) := by
  have h : sources true 3 5 atom137541166 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137178670 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))
private def v701156372014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))))
private theorem no_v701156372014 : ¬ MinimalInterpreter v701156372014 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 2))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137178670false : BadRow (sources false 3 5 atom137178670) := by
  have h : sources false 3 5 atom137178670 = [v701156372014] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156372014) .nil)

theorem atom137178670true : BadRow (sources true 3 5 atom137178670) := by
  have h : sources true 3 5 atom137178670 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom136531566 : Term := (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 2))))))
private def v701155724910 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v701155724910 : ¬ MinimalInterpreter v701155724910 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom136531566false : BadRow (sources false 3 5 atom136531566) := by
  have h : sources false 3 5 atom136531566 = [v701155724910] := by decide +kernel
  rw [h]
  exact (.cons (no_v701155724910) .nil)

theorem atom136531566true : BadRow (sources true 3 5 atom136531566) := by
  have h : sources true 3 5 atom136531566 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom136530862 : Term := (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 2)))))
private def v701155724206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v701155724206 : ¬ MinimalInterpreter v701155724206 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom136530862false : BadRow (sources false 3 5 atom136530862) := by
  have h : sources false 3 5 atom136530862 = [v701155724206] := by decide +kernel
  rw [h]
  exact (.cons (no_v701155724206) .nil)

theorem atom136530862true : BadRow (sources true 3 5 atom136530862) := by
  have h : sources true 3 5 atom136530862 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137121390 : Term := (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 2))))))
private def v701156314734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v701156314734 : ¬ MinimalInterpreter v701156314734 :=
  chain_cut false 2 (by decide)
theorem atom137121390false : BadRow (sources false 3 5 atom137121390) := by
  have h : sources false 3 5 atom137121390 = [v701156314734] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156314734) .nil)

theorem atom137121390true : BadRow (sources true 3 5 atom137121390) := by
  have h : sources true 3 5 atom137121390 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137120686 : Term := (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 2)))))
private def v701156314030 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v701156314030 : ¬ MinimalInterpreter v701156314030 :=
  chain_cut false 2 (by decide)
theorem atom137120686false : BadRow (sources false 3 5 atom137120686) := by
  have h : sources false 3 5 atom137120686 = [v701156314030] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156314030) .nil)

theorem atom137120686true : BadRow (sources true 3 5 atom137120686) := by
  have h : sources true 3 5 atom137120686 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137041518 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 2)))))
private def v701156234862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 0) (.var 2)))))))
private theorem no_v701156234862 : ¬ MinimalInterpreter v701156234862 :=
  chain_cut false 2 (by decide)
theorem atom137041518false : BadRow (sources false 3 5 atom137041518) := by
  have h : sources false 3 5 atom137041518 = [v701156234862] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156234862) .nil)

theorem atom137041518true : BadRow (sources true 3 5 atom137041518) := by
  have h : sources true 3 5 atom137041518 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137154094 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 2))))
private def v701156347438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (.var 2))))))
private theorem no_v701156347438 : ¬ MinimalInterpreter v701156347438 :=
  chain_cut false 2 (by decide)
theorem atom137154094false : BadRow (sources false 3 5 atom137154094) := by
  have h : sources false 3 5 atom137154094 = [v701156347438] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156347438) .nil)

theorem atom137154094true : BadRow (sources true 3 5 atom137154094) := by
  have h : sources true 3 5 atom137154094 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137147950 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 2))))
private def v701156341294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.var 2))))))
private theorem no_v701156341294 : ¬ MinimalInterpreter v701156341294 :=
  chain_cut false 2 (by decide)
theorem atom137147950false : BadRow (sources false 3 5 atom137147950) := by
  have h : sources false 3 5 atom137147950 = [v701156341294] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156341294) .nil)

theorem atom137147950true : BadRow (sources true 3 5 atom137147950) := by
  have h : sources true 3 5 atom137147950 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137055790 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 2))))
private def v701156249134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.lam (.var 0)))) (.var 2))))))
private theorem no_v701156249134 : ¬ MinimalInterpreter v701156249134 :=
  chain_cut false 2 (by decide)
theorem atom137055790false : BadRow (sources false 3 5 atom137055790) := by
  have h : sources false 3 5 atom137055790 = [v701156249134] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156249134) .nil)

theorem atom137055790true : BadRow (sources true 3 5 atom137055790) := by
  have h : sources true 3 5 atom137055790 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137040814 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.var 2))))
private def v701156234158 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0))) (.var 2))))))
private theorem no_v701156234158 : ¬ MinimalInterpreter v701156234158 :=
  chain_cut false 2 (by decide)
theorem atom137040814false : BadRow (sources false 3 5 atom137040814) := by
  have h : sources false 3 5 atom137040814 = [v701156234158] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156234158) .nil)

theorem atom137040814true : BadRow (sources true 3 5 atom137040814) := by
  have h : sources true 3 5 atom137040814 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137049646 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.var 2))))
private def v701156242990 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0))) (.var 2))))))
private theorem no_v701156242990 : ¬ MinimalInterpreter v701156242990 :=
  chain_cut false 2 (by decide)
theorem atom137049646false : BadRow (sources false 3 5 atom137049646) := by
  have h : sources false 3 5 atom137049646 = [v701156242990] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156242990) .nil)

theorem atom137049646true : BadRow (sources true 3 5 atom137049646) := by
  have h : sources true 3 5 atom137049646 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137025070 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 2))))
private def v701156218414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0))) (.var 2))))))
private theorem no_v701156218414 : ¬ MinimalInterpreter v701156218414 :=
  chain_cut false 2 (by decide)
theorem atom137025070false : BadRow (sources false 3 5 atom137025070) := by
  have h : sources false 3 5 atom137025070 = [v701156218414] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156218414) .nil)

theorem atom137025070true : BadRow (sources true 3 5 atom137025070) := by
  have h : sources true 3 5 atom137025070 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137020846 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 2))))
private def v701156214190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0)) (.var 2))))))
private theorem no_v701156214190 : ¬ MinimalInterpreter v701156214190 :=
  chain_cut false 2 (by decide)
theorem atom137020846false : BadRow (sources false 3 5 atom137020846) := by
  have h : sources false 3 5 atom137020846 = [v701156214190] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156214190) .nil)

theorem atom137020846true : BadRow (sources true 3 5 atom137020846) := by
  have h : sources true 3 5 atom137020846 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom147009070 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))))
private def v701166202414 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))))))
private theorem no_v701166202414 : ¬ MinimalInterpreter v701166202414 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 2))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom147009070false : BadRow (sources false 3 5 atom147009070) := by
  have h : sources false 3 5 atom147009070 = [v701166202414] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166202414) .nil)

theorem atom147009070true : BadRow (sources true 3 5 atom147009070) := by
  have h : sources true 3 5 atom147009070 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146984494 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2)))))
private def v701166177838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2)))))))
private theorem no_v701166177838 : ¬ MinimalInterpreter v701166177838 :=
  chain_cut false 2 (by decide)
theorem atom146984494false : BadRow (sources false 3 5 atom146984494) := by
  have h : sources false 3 5 atom146984494 = [v701166177838] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166177838) .nil)

theorem atom146984494true : BadRow (sources true 3 5 atom146984494) := by
  have h : sources true 3 5 atom146984494 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146978350 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2)))))
private def v701166171694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2)))))))
private theorem no_v701166171694 : ¬ MinimalInterpreter v701166171694 :=
  chain_cut false 2 (by decide)
theorem atom146978350false : BadRow (sources false 3 5 atom146978350) := by
  have h : sources false 3 5 atom146978350 = [v701166171694] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166171694) .nil)

theorem atom146978350true : BadRow (sources true 3 5 atom146978350) := by
  have h : sources true 3 5 atom146978350 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom143461998 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))
private def v701162655342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v701162655342 : ¬ MinimalInterpreter v701162655342 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom143461998false : BadRow (sources false 3 5 atom143461998) := by
  have h : sources false 3 5 atom143461998 = [v701162655342] := by decide +kernel
  rw [h]
  exact (.cons (no_v701162655342) .nil)

theorem atom143461998true : BadRow (sources true 3 5 atom143461998) := by
  have h : sources true 3 5 atom143461998 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom143461294 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))
private def v701162654638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v701162654638 : ¬ MinimalInterpreter v701162654638 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom143461294false : BadRow (sources false 3 5 atom143461294) := by
  have h : sources false 3 5 atom143461294 = [v701162654638] := by decide +kernel
  rw [h]
  exact (.cons (no_v701162654638) .nil)

theorem atom143461294true : BadRow (sources true 3 5 atom143461294) := by
  have h : sources true 3 5 atom143461294 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145821294 : Term := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))
private def v701165014638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v701165014638 : ¬ MinimalInterpreter v701165014638 :=
  chain_cut false 2 (by decide)
theorem atom145821294false : BadRow (sources false 3 5 atom145821294) := by
  have h : sources false 3 5 atom145821294 = [v701165014638] := by decide +kernel
  rw [h]
  exact (.cons (no_v701165014638) .nil)

theorem atom145821294true : BadRow (sources true 3 5 atom145821294) := by
  have h : sources true 3 5 atom145821294 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145820590 : Term := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))
private def v701165013934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v701165013934 : ¬ MinimalInterpreter v701165013934 :=
  chain_cut false 2 (by decide)
theorem atom145820590false : BadRow (sources false 3 5 atom145820590) := by
  have h : sources false 3 5 atom145820590 = [v701165013934] := by decide +kernel
  rw [h]
  exact (.cons (no_v701165013934) .nil)

theorem atom145820590true : BadRow (sources true 3 5 atom145820590) := by
  have h : sources true 3 5 atom145820590 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184602222 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))
private def v701203795566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v701203795566 : ¬ MinimalInterpreter v701203795566 :=
  chain_cut false 4 (by decide)
theorem atom184602222false : BadRow (sources false 3 5 atom184602222) := by
  have h : sources false 3 5 atom184602222 = [v701203795566] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203795566) .nil)

theorem atom184602222true : BadRow (sources true 3 5 atom184602222) := by
  have h : sources true 3 5 atom184602222 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184601518 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private def v701203794862 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v701203794862 : ¬ MinimalInterpreter v701203794862 :=
  chain_cut false 4 (by decide)
theorem atom184601518false : BadRow (sources false 3 5 atom184601518) := by
  have h : sources false 3 5 atom184601518 = [v701203794862] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203794862) .nil)

theorem atom184601518true : BadRow (sources true 3 5 atom184601518) := by
  have h : sources true 3 5 atom184601518 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184596078 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))
private def v701203789422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2)))))))))
private theorem no_v701203789422 : ¬ MinimalInterpreter v701203789422 :=
  chain_cut false 4 (by decide)
theorem atom184596078false : BadRow (sources false 3 5 atom184596078) := by
  have h : sources false 3 5 atom184596078 = [v701203789422] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203789422) .nil)

theorem atom184596078true : BadRow (sources true 3 5 atom184596078) := by
  have h : sources true 3 5 atom184596078 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184595374 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))
private def v701203788718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))))))
private theorem no_v701203788718 : ¬ MinimalInterpreter v701203788718 :=
  chain_cut false 4 (by decide)
theorem atom184595374false : BadRow (sources false 3 5 atom184595374) := by
  have h : sources false 3 5 atom184595374 = [v701203788718] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203788718) .nil)

theorem atom184595374true : BadRow (sources true 3 5 atom184595374) := by
  have h : sources true 3 5 atom184595374 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184593838 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))
private def v701203787182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2))))))))
private theorem no_v701203787182 : ¬ MinimalInterpreter v701203787182 :=
  chain_cut false 4 (by decide)
theorem atom184593838false : BadRow (sources false 3 5 atom184593838) := by
  have h : sources false 3 5 atom184593838 = [v701203787182] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203787182) .nil)

theorem atom184593838true : BadRow (sources true 3 5 atom184593838) := by
  have h : sources true 3 5 atom184593838 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184749678 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private def v701203943022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v701203943022 : ¬ MinimalInterpreter v701203943022 :=
  chain_cut false 4 (by decide)
theorem atom184749678false : BadRow (sources false 3 5 atom184749678) := by
  have h : sources false 3 5 atom184749678 = [v701203943022] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203943022) .nil)

theorem atom184749678true : BadRow (sources true 3 5 atom184749678) := by
  have h : sources true 3 5 atom184749678 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184748974 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private def v701203942318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v701203942318 : ¬ MinimalInterpreter v701203942318 :=
  chain_cut false 4 (by decide)
theorem atom184748974false : BadRow (sources false 3 5 atom184748974) := by
  have h : sources false 3 5 atom184748974 = [v701203942318] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203942318) .nil)

theorem atom184748974true : BadRow (sources true 3 5 atom184748974) := by
  have h : sources true 3 5 atom184748974 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184757806 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))))
private def v701203951150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))))))
private theorem no_v701203951150 : ¬ MinimalInterpreter v701203951150 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 2))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom184757806false : BadRow (sources false 3 5 atom184757806) := by
  have h : sources false 3 5 atom184757806 = [v701203951150] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203951150) .nil)

theorem atom184757806true : BadRow (sources true 3 5 atom184757806) := by
  have h : sources true 3 5 atom184757806 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184733230 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2)))))
private def v701203926574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2)))))))
private theorem no_v701203926574 : ¬ MinimalInterpreter v701203926574 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom184733230false : BadRow (sources false 3 5 atom184733230) := by
  have h : sources false 3 5 atom184733230 = [v701203926574] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203926574) .nil)

theorem atom184733230true : BadRow (sources true 3 5 atom184733230) := by
  have h : sources true 3 5 atom184733230 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184727086 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2)))))
private def v701203920430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2)))))))
private theorem no_v701203920430 : ¬ MinimalInterpreter v701203920430 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom184727086false : BadRow (sources false 3 5 atom184727086) := by
  have h : sources false 3 5 atom184727086 = [v701203920430] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203920430) .nil)

theorem atom184727086true : BadRow (sources true 3 5 atom184727086) := by
  have h : sources true 3 5 atom184727086 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom185339502 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private def v701204532846 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v701204532846 : ¬ MinimalInterpreter v701204532846 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom185339502false : BadRow (sources false 3 5 atom185339502) := by
  have h : sources false 3 5 atom185339502 = [v701204532846] := by decide +kernel
  rw [h]
  exact (.cons (no_v701204532846) .nil)

theorem atom185339502true : BadRow (sources true 3 5 atom185339502) := by
  have h : sources true 3 5 atom185339502 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom185338798 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private def v701204532142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v701204532142 : ¬ MinimalInterpreter v701204532142 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom185338798false : BadRow (sources false 3 5 atom185338798) := by
  have h : sources false 3 5 atom185338798 = [v701204532142] := by decide +kernel
  rw [h]
  exact (.cons (no_v701204532142) .nil)

theorem atom185338798true : BadRow (sources true 3 5 atom185338798) := by
  have h : sources true 3 5 atom185338798 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom187698798 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private def v700885921306 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v700885921306 : ¬ MinimalInterpreter v700885921306 :=
  chain_cut false 3 (by decide)
private def v701206892142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))))
private theorem no_v701206892142 : ¬ MinimalInterpreter v701206892142 :=
  chain_cut false 4 (by decide)
theorem atom187698798false : BadRow (sources false 3 5 atom187698798) := by
  have h : sources false 3 5 atom187698798 = [v700885921306,v701206892142] := by decide +kernel
  rw [h]
  exact (.cons (no_v700885921306) (.cons (no_v701206892142) .nil))

theorem atom187698798true : BadRow (sources true 3 5 atom187698798) := by
  have h : sources true 3 5 atom187698798 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom187698094 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private def v700885741082 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v700885741082 : ¬ MinimalInterpreter v700885741082 :=
  chain_cut false 3 (by decide)
private def v701206891438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))))
private theorem no_v701206891438 : ¬ MinimalInterpreter v701206891438 :=
  chain_cut false 4 (by decide)
theorem atom187698094false : BadRow (sources false 3 5 atom187698094) := by
  have h : sources false 3 5 atom187698094 = [v700885741082,v701206891438] := by decide +kernel
  rw [h]
  exact (.cons (no_v700885741082) (.cons (no_v701206891438) .nil))

theorem atom187698094true : BadRow (sources true 3 5 atom187698094) := by
  have h : sources true 3 5 atom187698094 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom181407342 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))
private def v699275308570 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699275308570 : ¬ MinimalInterpreter v699275308570 :=
  w_cut false 0 (by decide)
private def v701200600686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))))
private theorem no_v701200600686 : ¬ MinimalInterpreter v701200600686 :=
  w_cut false 0 (by decide)
theorem atom181407342false : BadRow (sources false 3 5 atom181407342) := by
  have h : sources false 3 5 atom181407342 = [v699275308570,v701200600686] := by decide +kernel
  rw [h]
  exact (.cons (no_v699275308570) (.cons (no_v701200600686) .nil))

theorem atom181407342true : BadRow (sources true 3 5 atom181407342) := by
  have h : sources true 3 5 atom181407342 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom181406638 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
private def v699275128346 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699275128346 : ¬ MinimalInterpreter v699275128346 :=
  w_cut false 0 (by decide)
private def v701200599982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))
private theorem no_v701200599982 : ¬ MinimalInterpreter v701200599982 :=
  w_cut false 0 (by decide)
theorem atom181406638false : BadRow (sources false 3 5 atom181406638) := by
  have h : sources false 3 5 atom181406638 = [v699275128346,v701200599982] := by decide +kernel
  rw [h]
  exact (.cons (no_v699275128346) (.cons (no_v701200599982) .nil))

theorem atom181406638true : BadRow (sources true 3 5 atom181406638) := by
  have h : sources true 3 5 atom181406638 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom171183726 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))
private def v701190377070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v701190377070 : ¬ MinimalInterpreter v701190377070 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom171183726false : BadRow (sources false 3 5 atom171183726) := by
  have h : sources false 3 5 atom171183726 = [v701190377070] := by decide +kernel
  rw [h]
  exact (.cons (no_v701190377070) .nil)

theorem atom171183726true : BadRow (sources true 3 5 atom171183726) := by
  have h : sources true 3 5 atom171183726 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom171183022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))
private def v701190376366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v701190376366 : ¬ MinimalInterpreter v701190376366 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom171183022false : BadRow (sources false 3 5 atom171183022) := by
  have h : sources false 3 5 atom171183022 = [v701190376366] := by decide +kernel
  rw [h]
  exact (.cons (no_v701190376366) .nil)

theorem atom171183022true : BadRow (sources true 3 5 atom171183022) := by
  have h : sources true 3 5 atom171183022 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180620910 : Term := (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))
private def v701199814254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v701199814254 : ¬ MinimalInterpreter v701199814254 :=
  chain_cut false 3 (by decide)
theorem atom180620910false : BadRow (sources false 3 5 atom180620910) := by
  have h : sources false 3 5 atom180620910 = [v701199814254] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199814254) .nil)

theorem atom180620910true : BadRow (sources true 3 5 atom180620910) := by
  have h : sources true 3 5 atom180620910 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180620206 : Term := (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))
private def v701199813550 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v701199813550 : ¬ MinimalInterpreter v701199813550 :=
  chain_cut false 3 (by decide)
theorem atom180620206false : BadRow (sources false 3 5 atom180620206) := by
  have h : sources false 3 5 atom180620206 = [v701199813550] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199813550) .nil)

theorem atom180620206true : BadRow (sources true 3 5 atom180620206) := by
  have h : sources true 3 5 atom180620206 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms109 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,0,1,0,2]) := by
  have h : atoms 3 5 [0,0,1,0,2] = [atom137571886,atom137547310,atom137541166,atom137178670,atom136531566,atom136530862,atom137121390,atom137120686,atom137041518,atom137154094,atom137147950,atom137055790,atom137040814,atom137049646,atom137025070,atom137020846,atom147009070,atom146984494,atom146978350,atom143461998,atom143461294,atom145821294,atom145820590,atom184602222,atom184601518,atom184596078,atom184595374,atom184593838,atom184749678,atom184748974,atom184757806,atom184733230,atom184727086,atom185339502,atom185338798,atom187698798,atom187698094,atom181407342,atom181406638,atom171183726,atom171183022,atom180620910,atom180620206] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom137571886false | exact atom137571886true) (.cons (fun lit => by cases lit <;> first | exact atom137547310false | exact atom137547310true) (.cons (fun lit => by cases lit <;> first | exact atom137541166false | exact atom137541166true) (.cons (fun lit => by cases lit <;> first | exact atom137178670false | exact atom137178670true) (.cons (fun lit => by cases lit <;> first | exact atom136531566false | exact atom136531566true) (.cons (fun lit => by cases lit <;> first | exact atom136530862false | exact atom136530862true) (.cons (fun lit => by cases lit <;> first | exact atom137121390false | exact atom137121390true) (.cons (fun lit => by cases lit <;> first | exact atom137120686false | exact atom137120686true) (.cons (fun lit => by cases lit <;> first | exact atom137041518false | exact atom137041518true) (.cons (fun lit => by cases lit <;> first | exact atom137154094false | exact atom137154094true) (.cons (fun lit => by cases lit <;> first | exact atom137147950false | exact atom137147950true) (.cons (fun lit => by cases lit <;> first | exact atom137055790false | exact atom137055790true) (.cons (fun lit => by cases lit <;> first | exact atom137040814false | exact atom137040814true) (.cons (fun lit => by cases lit <;> first | exact atom137049646false | exact atom137049646true) (.cons (fun lit => by cases lit <;> first | exact atom137025070false | exact atom137025070true) (.cons (fun lit => by cases lit <;> first | exact atom137020846false | exact atom137020846true) (.cons (fun lit => by cases lit <;> first | exact atom147009070false | exact atom147009070true) (.cons (fun lit => by cases lit <;> first | exact atom146984494false | exact atom146984494true) (.cons (fun lit => by cases lit <;> first | exact atom146978350false | exact atom146978350true) (.cons (fun lit => by cases lit <;> first | exact atom143461998false | exact atom143461998true) (.cons (fun lit => by cases lit <;> first | exact atom143461294false | exact atom143461294true) (.cons (fun lit => by cases lit <;> first | exact atom145821294false | exact atom145821294true) (.cons (fun lit => by cases lit <;> first | exact atom145820590false | exact atom145820590true) (.cons (fun lit => by cases lit <;> first | exact atom184602222false | exact atom184602222true) (.cons (fun lit => by cases lit <;> first | exact atom184601518false | exact atom184601518true) (.cons (fun lit => by cases lit <;> first | exact atom184596078false | exact atom184596078true) (.cons (fun lit => by cases lit <;> first | exact atom184595374false | exact atom184595374true) (.cons (fun lit => by cases lit <;> first | exact atom184593838false | exact atom184593838true) (.cons (fun lit => by cases lit <;> first | exact atom184749678false | exact atom184749678true) (.cons (fun lit => by cases lit <;> first | exact atom184748974false | exact atom184748974true) (.cons (fun lit => by cases lit <;> first | exact atom184757806false | exact atom184757806true) (.cons (fun lit => by cases lit <;> first | exact atom184733230false | exact atom184733230true) (.cons (fun lit => by cases lit <;> first | exact atom184727086false | exact atom184727086true) (.cons (fun lit => by cases lit <;> first | exact atom185339502false | exact atom185339502true) (.cons (fun lit => by cases lit <;> first | exact atom185338798false | exact atom185338798true) (.cons (fun lit => by cases lit <;> first | exact atom187698798false | exact atom187698798true) (.cons (fun lit => by cases lit <;> first | exact atom187698094false | exact atom187698094true) (.cons (fun lit => by cases lit <;> first | exact atom181407342false | exact atom181407342true) (.cons (fun lit => by cases lit <;> first | exact atom181406638false | exact atom181406638true) (.cons (fun lit => by cases lit <;> first | exact atom171183726false | exact atom171183726true) (.cons (fun lit => by cases lit <;> first | exact atom171183022false | exact atom171183022true) (.cons (fun lit => by cases lit <;> first | exact atom180620910false | exact atom180620910true) (.cons (fun lit => by cases lit <;> first | exact atom180620206false | exact atom180620206true) .nil)))))))))))))))))))))))))))))))))))))))))))
theorem atoms110 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,0,1,1,1]) := by
  have h : atoms 3 5 [0,0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
