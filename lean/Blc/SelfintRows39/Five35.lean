import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms105 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,0,0,0,3]) := by
  have h : atoms 3 5 [0,0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom137508078 : Term := (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))))))
private def v701156701422 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))))))))
private theorem no_v701156701422 : ¬ MinimalInterpreter v701156701422 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2)))) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137508078false : BadRow (sources false 3 5 atom137508078) := by
  have h : sources false 3 5 atom137508078 = [v701156701422] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156701422) .nil)

theorem atom137508078true : BadRow (sources true 3 5 atom137508078) := by
  have h : sources true 3 5 atom137508078 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137544942 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))))))
private def v701156738286 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))))))))
private theorem no_v701156738286 : ¬ MinimalInterpreter v701156738286 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))) (.app (.var 0) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137544942false : BadRow (sources false 3 5 atom137544942) := by
  have h : sources false 3 5 atom137544942 = [v701156738286] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156738286) .nil)

theorem atom137544942true : BadRow (sources true 3 5 atom137544942) := by
  have h : sources true 3 5 atom137544942 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137539950 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2)))))
private def v701156733294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2)))))))
private theorem no_v701156733294 : ¬ MinimalInterpreter v701156733294 :=
  chain_cut false 2 (by decide)
theorem atom137539950false : BadRow (sources false 3 5 atom137539950) := by
  have h : sources false 3 5 atom137539950 = [v701156733294] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156733294) .nil)

theorem atom137539950true : BadRow (sources true 3 5 atom137539950) := by
  have h : sources true 3 5 atom137539950 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom136531182 : Term := (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2))))))
private def v701155724526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v701155724526 : ¬ MinimalInterpreter v701155724526 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom136531182false : BadRow (sources false 3 5 atom136531182) := by
  have h : sources false 3 5 atom136531182 = [v701155724526] := by decide +kernel
  rw [h]
  exact (.cons (no_v701155724526) .nil)

theorem atom136531182true : BadRow (sources true 3 5 atom136531182) := by
  have h : sources true 3 5 atom136531182 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom136530798 : Term := (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 2)))))
private def v701155724142 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v701155724142 : ¬ MinimalInterpreter v701155724142 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom136530798false : BadRow (sources false 3 5 atom136530798) := by
  have h : sources false 3 5 atom136530798 = [v701155724142] := by decide +kernel
  rw [h]
  exact (.cons (no_v701155724142) .nil)

theorem atom136530798true : BadRow (sources true 3 5 atom136530798) := by
  have h : sources true 3 5 atom136530798 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137121006 : Term := (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2))))))
private def v701156314350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v701156314350 : ¬ MinimalInterpreter v701156314350 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137121006false : BadRow (sources false 3 5 atom137121006) := by
  have h : sources false 3 5 atom137121006 = [v701156314350] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156314350) .nil)

theorem atom137121006true : BadRow (sources true 3 5 atom137121006) := by
  have h : sources true 3 5 atom137121006 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137120622 : Term := (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 2)))))
private def v701156313966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v701156313966 : ¬ MinimalInterpreter v701156313966 :=
  chain_cut false 2 (by decide)
theorem atom137120622false : BadRow (sources false 3 5 atom137120622) := by
  have h : sources false 3 5 atom137120622 = [v701156313966] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156313966) .nil)

theorem atom137120622true : BadRow (sources true 3 5 atom137120622) := by
  have h : sources true 3 5 atom137120622 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137114862 : Term := (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 2)))))
private def v701156308206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 2)))))))
private theorem no_v701156308206 : ¬ MinimalInterpreter v701156308206 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137114862false : BadRow (sources false 3 5 atom137114862) := by
  have h : sources false 3 5 atom137114862 = [v701156308206] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156308206) .nil)

theorem atom137114862true : BadRow (sources true 3 5 atom137114862) := by
  have h : sources true 3 5 atom137114862 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137151726 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 2)))))
private def v701156345070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 2)))))))
private theorem no_v701156345070 : ¬ MinimalInterpreter v701156345070 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1))) (.app (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137151726false : BadRow (sources false 3 5 atom137151726) := by
  have h : sources false 3 5 atom137151726 = [v701156345070] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156345070) .nil)

theorem atom137151726true : BadRow (sources true 3 5 atom137151726) := by
  have h : sources true 3 5 atom137151726 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137053422 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 2)))))
private def v701156246766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 2)))))))
private theorem no_v701156246766 : ¬ MinimalInterpreter v701156246766 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137053422false : BadRow (sources false 3 5 atom137053422) := by
  have h : sources false 3 5 atom137053422 = [v701156246766] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156246766) .nil)

theorem atom137053422true : BadRow (sources true 3 5 atom137053422) := by
  have h : sources true 3 5 atom137053422 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137041134 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 2)))))
private def v701156234478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 2)))))))
private theorem no_v701156234478 : ¬ MinimalInterpreter v701156234478 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))) (.app (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137041134false : BadRow (sources false 3 5 atom137041134) := by
  have h : sources false 3 5 atom137041134 = [v701156234478] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156234478) .nil)

theorem atom137041134true : BadRow (sources true 3 5 atom137041134) := by
  have h : sources true 3 5 atom137041134 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137146734 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.var 2))))
private def v701156340078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.var 2))))))
private theorem no_v701156340078 : ¬ MinimalInterpreter v701156340078 :=
  chain_cut false 2 (by decide)
theorem atom137146734false : BadRow (sources false 3 5 atom137146734) := by
  have h : sources false 3 5 atom137146734 = [v701156340078] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156340078) .nil)

theorem atom137146734true : BadRow (sources true 3 5 atom137146734) := by
  have h : sources true 3 5 atom137146734 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137040750 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.var 2))))
private def v701156234094 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1))) (.var 2))))))
private theorem no_v701156234094 : ¬ MinimalInterpreter v701156234094 :=
  chain_cut false 2 (by decide)
theorem atom137040750false : BadRow (sources false 3 5 atom137040750) := by
  have h : sources false 3 5 atom137040750 = [v701156234094] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156234094) .nil)

theorem atom137040750true : BadRow (sources true 3 5 atom137040750) := by
  have h : sources true 3 5 atom137040750 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137039214 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 2))))
private def v701156232558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 2))))))
private theorem no_v701156232558 : ¬ MinimalInterpreter v701156232558 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom137039214false : BadRow (sources false 3 5 atom137039214) := by
  have h : sources false 3 5 atom137039214 = [v701156232558] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156232558) .nil)

theorem atom137039214true : BadRow (sources true 3 5 atom137039214) := by
  have h : sources true 3 5 atom137039214 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137048430 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 2))))
private def v701156241774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1)) (.var 2))))))
private theorem no_v701156241774 : ¬ MinimalInterpreter v701156241774 :=
  chain_cut false 2 (by decide)
theorem atom137048430false : BadRow (sources false 3 5 atom137048430) := by
  have h : sources false 3 5 atom137048430 = [v701156241774] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156241774) .nil)

theorem atom137048430true : BadRow (sources true 3 5 atom137048430) := by
  have h : sources true 3 5 atom137048430 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137023854 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 2))))
private def v701156217198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1)) (.var 2))))))
private theorem no_v701156217198 : ¬ MinimalInterpreter v701156217198 :=
  chain_cut false 2 (by decide)
theorem atom137023854false : BadRow (sources false 3 5 atom137023854) := by
  have h : sources false 3 5 atom137023854 = [v701156217198] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156217198) .nil)

theorem atom137023854true : BadRow (sources true 3 5 atom137023854) := by
  have h : sources true 3 5 atom137023854 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137020782 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 2))))
private def v701156214126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1)) (.var 2))))))
private theorem no_v701156214126 : ¬ MinimalInterpreter v701156214126 :=
  chain_cut false 2 (by decide)
theorem atom137020782false : BadRow (sources false 3 5 atom137020782) := by
  have h : sources false 3 5 atom137020782 = [v701156214126] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156214126) .nil)

theorem atom137020782true : BadRow (sources true 3 5 atom137020782) := by
  have h : sources true 3 5 atom137020782 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146982126 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))))))
private def v701166175470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))))))))
private theorem no_v701166175470 : ¬ MinimalInterpreter v701166175470 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom146982126false : BadRow (sources false 3 5 atom146982126) := by
  have h : sources false 3 5 atom146982126 = [v701166175470] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166175470) .nil)

theorem atom146982126true : BadRow (sources true 3 5 atom146982126) := by
  have h : sources true 3 5 atom146982126 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146977134 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2)))))
private def v701166170478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2)))))))
private theorem no_v701166170478 : ¬ MinimalInterpreter v701166170478 :=
  chain_cut false 2 (by decide)
theorem atom146977134false : BadRow (sources false 3 5 atom146977134) := by
  have h : sources false 3 5 atom146977134 = [v701166170478] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166170478) .nil)

theorem atom146977134true : BadRow (sources true 3 5 atom146977134) := by
  have h : sources true 3 5 atom146977134 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom143461614 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))
private def v701162654958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v701162654958 : ¬ MinimalInterpreter v701162654958 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom143461614false : BadRow (sources false 3 5 atom143461614) := by
  have h : sources false 3 5 atom143461614 = [v701162654958] := by decide +kernel
  rw [h]
  exact (.cons (no_v701162654958) .nil)

theorem atom143461614true : BadRow (sources true 3 5 atom143461614) := by
  have h : sources true 3 5 atom143461614 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom143461230 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))
private def v701162654574 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v701162654574 : ¬ MinimalInterpreter v701162654574 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom143461230false : BadRow (sources false 3 5 atom143461230) := by
  have h : sources false 3 5 atom143461230 = [v701162654574] := by decide +kernel
  rw [h]
  exact (.cons (no_v701162654574) .nil)

theorem atom143461230true : BadRow (sources true 3 5 atom143461230) := by
  have h : sources true 3 5 atom143461230 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145820910 : Term := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))
private def v701165014254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v701165014254 : ¬ MinimalInterpreter v701165014254 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom145820910false : BadRow (sources false 3 5 atom145820910) := by
  have h : sources false 3 5 atom145820910 = [v701165014254] := by decide +kernel
  rw [h]
  exact (.cons (no_v701165014254) .nil)

theorem atom145820910true : BadRow (sources true 3 5 atom145820910) := by
  have h : sources true 3 5 atom145820910 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145820526 : Term := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))
private def v701165013870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v701165013870 : ¬ MinimalInterpreter v701165013870 :=
  chain_cut false 2 (by decide)
theorem atom145820526false : BadRow (sources false 3 5 atom145820526) := by
  have h : sources false 3 5 atom145820526 = [v701165013870] := by decide +kernel
  rw [h]
  exact (.cons (no_v701165013870) .nil)

theorem atom145820526true : BadRow (sources true 3 5 atom145820526) := by
  have h : sources true 3 5 atom145820526 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184601838 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))
private def v701203795182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v701203795182 : ¬ MinimalInterpreter v701203795182 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem atom184601838false : BadRow (sources false 3 5 atom184601838) := by
  have h : sources false 3 5 atom184601838 = [v701203795182] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203795182) .nil)

theorem atom184601838true : BadRow (sources true 3 5 atom184601838) := by
  have h : sources true 3 5 atom184601838 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184601454 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private def v701203794798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v701203794798 : ¬ MinimalInterpreter v701203794798 :=
  chain_cut false 4 (by decide)
theorem atom184601454false : BadRow (sources false 3 5 atom184601454) := by
  have h : sources false 3 5 atom184601454 = [v701203794798] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203794798) .nil)

theorem atom184601454true : BadRow (sources true 3 5 atom184601454) := by
  have h : sources true 3 5 atom184601454 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184595694 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))
private def v701203789038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))))))
private theorem no_v701203789038 : ¬ MinimalInterpreter v701203789038 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem atom184595694false : BadRow (sources false 3 5 atom184595694) := by
  have h : sources false 3 5 atom184595694 = [v701203789038] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203789038) .nil)

theorem atom184595694true : BadRow (sources true 3 5 atom184595694) := by
  have h : sources true 3 5 atom184595694 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184595310 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))
private def v701203788654 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2))))))))
private theorem no_v701203788654 : ¬ MinimalInterpreter v701203788654 :=
  chain_cut false 4 (by decide)
theorem atom184595310false : BadRow (sources false 3 5 atom184595310) := by
  have h : sources false 3 5 atom184595310 = [v701203788654] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203788654) .nil)

theorem atom184595310true : BadRow (sources true 3 5 atom184595310) := by
  have h : sources true 3 5 atom184595310 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184593774 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))
private def v701203787118 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))))))
private theorem no_v701203787118 : ¬ MinimalInterpreter v701203787118 :=
  chain_cut false 4 (by decide)
theorem atom184593774false : BadRow (sources false 3 5 atom184593774) := by
  have h : sources false 3 5 atom184593774 = [v701203787118] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203787118) .nil)

theorem atom184593774true : BadRow (sources true 3 5 atom184593774) := by
  have h : sources true 3 5 atom184593774 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184749294 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private def v701203942638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v701203942638 : ¬ MinimalInterpreter v701203942638 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))
theorem atom184749294false : BadRow (sources false 3 5 atom184749294) := by
  have h : sources false 3 5 atom184749294 = [v701203942638] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203942638) .nil)

theorem atom184749294true : BadRow (sources true 3 5 atom184749294) := by
  have h : sources true 3 5 atom184749294 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184748910 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private def v701203942254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v701203942254 : ¬ MinimalInterpreter v701203942254 :=
  chain_cut false 4 (by decide)
theorem atom184748910false : BadRow (sources false 3 5 atom184748910) := by
  have h : sources false 3 5 atom184748910 = [v701203942254] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203942254) .nil)

theorem atom184748910true : BadRow (sources true 3 5 atom184748910) := by
  have h : sources true 3 5 atom184748910 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184730862 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))))))
private def v701203924206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))))))))
private theorem no_v701203924206 : ¬ MinimalInterpreter v701203924206 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom184730862false : BadRow (sources false 3 5 atom184730862) := by
  have h : sources false 3 5 atom184730862 = [v701203924206] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203924206) .nil)

theorem atom184730862true : BadRow (sources true 3 5 atom184730862) := by
  have h : sources true 3 5 atom184730862 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184725870 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2)))))
private def v701203919214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2)))))))
private theorem no_v701203919214 : ¬ MinimalInterpreter v701203919214 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom184725870false : BadRow (sources false 3 5 atom184725870) := by
  have h : sources false 3 5 atom184725870 = [v701203919214] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203919214) .nil)

theorem atom184725870true : BadRow (sources true 3 5 atom184725870) := by
  have h : sources true 3 5 atom184725870 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom185339118 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private def v701204532462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v701204532462 : ¬ MinimalInterpreter v701204532462 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
theorem atom185339118false : BadRow (sources false 3 5 atom185339118) := by
  have h : sources false 3 5 atom185339118 = [v701204532462] := by decide +kernel
  rw [h]
  exact (.cons (no_v701204532462) .nil)

theorem atom185339118true : BadRow (sources true 3 5 atom185339118) := by
  have h : sources true 3 5 atom185339118 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom185338734 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private def v701204532078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v701204532078 : ¬ MinimalInterpreter v701204532078 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom185338734false : BadRow (sources false 3 5 atom185338734) := by
  have h : sources false 3 5 atom185338734 = [v701204532078] := by decide +kernel
  rw [h]
  exact (.cons (no_v701204532078) .nil)

theorem atom185338734true : BadRow (sources true 3 5 atom185338734) := by
  have h : sources true 3 5 atom185338734 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom187698414 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private def v700885823002 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v700885823002 : ¬ MinimalInterpreter v700885823002 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v701206891758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))))
private theorem no_v701206891758 : ¬ MinimalInterpreter v701206891758 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
theorem atom187698414false : BadRow (sources false 3 5 atom187698414) := by
  have h : sources false 3 5 atom187698414 = [v700885823002,v701206891758] := by decide +kernel
  rw [h]
  exact (.cons (no_v700885823002) (.cons (no_v701206891758) .nil))

theorem atom187698414true : BadRow (sources true 3 5 atom187698414) := by
  have h : sources true 3 5 atom187698414 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom187698030 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private def v700885724698 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v700885724698 : ¬ MinimalInterpreter v700885724698 :=
  chain_cut false 3 (by decide)
private def v701206891374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))))
private theorem no_v701206891374 : ¬ MinimalInterpreter v701206891374 :=
  chain_cut false 4 (by decide)
theorem atom187698030false : BadRow (sources false 3 5 atom187698030) := by
  have h : sources false 3 5 atom187698030 = [v700885724698,v701206891374] := by decide +kernel
  rw [h]
  exact (.cons (no_v700885724698) (.cons (no_v701206891374) .nil))

theorem atom187698030true : BadRow (sources true 3 5 atom187698030) := by
  have h : sources true 3 5 atom187698030 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom181406958 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))
private def v699275210266 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699275210266 : ¬ MinimalInterpreter v699275210266 :=
  w_cut false 0 (by decide)
private def v701200600302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))))
private theorem no_v701200600302 : ¬ MinimalInterpreter v701200600302 :=
  w_cut false 0 (by decide)
theorem atom181406958false : BadRow (sources false 3 5 atom181406958) := by
  have h : sources false 3 5 atom181406958 = [v699275210266,v701200600302] := by decide +kernel
  rw [h]
  exact (.cons (no_v699275210266) (.cons (no_v701200600302) .nil))

theorem atom181406958true : BadRow (sources true 3 5 atom181406958) := by
  have h : sources true 3 5 atom181406958 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom181406574 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))
private def v699275111962 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699275111962 : ¬ MinimalInterpreter v699275111962 :=
  w_cut false 0 (by decide)
private def v701200599918 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))))
private theorem no_v701200599918 : ¬ MinimalInterpreter v701200599918 :=
  w_cut false 0 (by decide)
theorem atom181406574false : BadRow (sources false 3 5 atom181406574) := by
  have h : sources false 3 5 atom181406574 = [v699275111962,v701200599918] := by decide +kernel
  rw [h]
  exact (.cons (no_v699275111962) (.cons (no_v701200599918) .nil))

theorem atom181406574true : BadRow (sources true 3 5 atom181406574) := by
  have h : sources true 3 5 atom181406574 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom171183342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))
private def v701190376686 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v701190376686 : ¬ MinimalInterpreter v701190376686 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom171183342false : BadRow (sources false 3 5 atom171183342) := by
  have h : sources false 3 5 atom171183342 = [v701190376686] := by decide +kernel
  rw [h]
  exact (.cons (no_v701190376686) .nil)

theorem atom171183342true : BadRow (sources true 3 5 atom171183342) := by
  have h : sources true 3 5 atom171183342 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom171182958 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))
private def v701190376302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v701190376302 : ¬ MinimalInterpreter v701190376302 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom171182958false : BadRow (sources false 3 5 atom171182958) := by
  have h : sources false 3 5 atom171182958 = [v701190376302] := by decide +kernel
  rw [h]
  exact (.cons (no_v701190376302) .nil)

theorem atom171182958true : BadRow (sources true 3 5 atom171182958) := by
  have h : sources true 3 5 atom171182958 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180620526 : Term := (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))
private def v701199813870 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v701199813870 : ¬ MinimalInterpreter v701199813870 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom180620526false : BadRow (sources false 3 5 atom180620526) := by
  have h : sources false 3 5 atom180620526 = [v701199813870] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199813870) .nil)

theorem atom180620526true : BadRow (sources true 3 5 atom180620526) := by
  have h : sources true 3 5 atom180620526 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180620142 : Term := (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))
private def v701199813486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v701199813486 : ¬ MinimalInterpreter v701199813486 :=
  chain_cut false 3 (by decide)
theorem atom180620142false : BadRow (sources false 3 5 atom180620142) := by
  have h : sources false 3 5 atom180620142 = [v701199813486] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199813486) .nil)

theorem atom180620142true : BadRow (sources true 3 5 atom180620142) := by
  have h : sources true 3 5 atom180620142 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms106 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,0,0,1,2]) := by
  have h : atoms 3 5 [0,0,0,1,2] = [atom137508078,atom137544942,atom137539950,atom136531182,atom136530798,atom137121006,atom137120622,atom137114862,atom137151726,atom137053422,atom137041134,atom137146734,atom137040750,atom137039214,atom137048430,atom137023854,atom137020782,atom146982126,atom146977134,atom143461614,atom143461230,atom145820910,atom145820526,atom184601838,atom184601454,atom184595694,atom184595310,atom184593774,atom184749294,atom184748910,atom184730862,atom184725870,atom185339118,atom185338734,atom187698414,atom187698030,atom181406958,atom181406574,atom171183342,atom171182958,atom180620526,atom180620142] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom137508078false | exact atom137508078true) (.cons (fun lit => by cases lit <;> first | exact atom137544942false | exact atom137544942true) (.cons (fun lit => by cases lit <;> first | exact atom137539950false | exact atom137539950true) (.cons (fun lit => by cases lit <;> first | exact atom136531182false | exact atom136531182true) (.cons (fun lit => by cases lit <;> first | exact atom136530798false | exact atom136530798true) (.cons (fun lit => by cases lit <;> first | exact atom137121006false | exact atom137121006true) (.cons (fun lit => by cases lit <;> first | exact atom137120622false | exact atom137120622true) (.cons (fun lit => by cases lit <;> first | exact atom137114862false | exact atom137114862true) (.cons (fun lit => by cases lit <;> first | exact atom137151726false | exact atom137151726true) (.cons (fun lit => by cases lit <;> first | exact atom137053422false | exact atom137053422true) (.cons (fun lit => by cases lit <;> first | exact atom137041134false | exact atom137041134true) (.cons (fun lit => by cases lit <;> first | exact atom137146734false | exact atom137146734true) (.cons (fun lit => by cases lit <;> first | exact atom137040750false | exact atom137040750true) (.cons (fun lit => by cases lit <;> first | exact atom137039214false | exact atom137039214true) (.cons (fun lit => by cases lit <;> first | exact atom137048430false | exact atom137048430true) (.cons (fun lit => by cases lit <;> first | exact atom137023854false | exact atom137023854true) (.cons (fun lit => by cases lit <;> first | exact atom137020782false | exact atom137020782true) (.cons (fun lit => by cases lit <;> first | exact atom146982126false | exact atom146982126true) (.cons (fun lit => by cases lit <;> first | exact atom146977134false | exact atom146977134true) (.cons (fun lit => by cases lit <;> first | exact atom143461614false | exact atom143461614true) (.cons (fun lit => by cases lit <;> first | exact atom143461230false | exact atom143461230true) (.cons (fun lit => by cases lit <;> first | exact atom145820910false | exact atom145820910true) (.cons (fun lit => by cases lit <;> first | exact atom145820526false | exact atom145820526true) (.cons (fun lit => by cases lit <;> first | exact atom184601838false | exact atom184601838true) (.cons (fun lit => by cases lit <;> first | exact atom184601454false | exact atom184601454true) (.cons (fun lit => by cases lit <;> first | exact atom184595694false | exact atom184595694true) (.cons (fun lit => by cases lit <;> first | exact atom184595310false | exact atom184595310true) (.cons (fun lit => by cases lit <;> first | exact atom184593774false | exact atom184593774true) (.cons (fun lit => by cases lit <;> first | exact atom184749294false | exact atom184749294true) (.cons (fun lit => by cases lit <;> first | exact atom184748910false | exact atom184748910true) (.cons (fun lit => by cases lit <;> first | exact atom184730862false | exact atom184730862true) (.cons (fun lit => by cases lit <;> first | exact atom184725870false | exact atom184725870true) (.cons (fun lit => by cases lit <;> first | exact atom185339118false | exact atom185339118true) (.cons (fun lit => by cases lit <;> first | exact atom185338734false | exact atom185338734true) (.cons (fun lit => by cases lit <;> first | exact atom187698414false | exact atom187698414true) (.cons (fun lit => by cases lit <;> first | exact atom187698030false | exact atom187698030true) (.cons (fun lit => by cases lit <;> first | exact atom181406958false | exact atom181406958true) (.cons (fun lit => by cases lit <;> first | exact atom181406574false | exact atom181406574true) (.cons (fun lit => by cases lit <;> first | exact atom171183342false | exact atom171183342true) (.cons (fun lit => by cases lit <;> first | exact atom171182958false | exact atom171182958true) (.cons (fun lit => by cases lit <;> first | exact atom180620526false | exact atom180620526true) (.cons (fun lit => by cases lit <;> first | exact atom180620142false | exact atom180620142true) .nil))))))))))))))))))))))))))))))))))))))))))
private def atom137508086 : Term := (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))))))
private def v701156701430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))))))))
private theorem no_v701156701430 : ¬ MinimalInterpreter v701156701430 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1)))) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137508086false : BadRow (sources false 3 5 atom137508086) := by
  have h : sources false 3 5 atom137508086 = [v701156701430] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156701430) .nil)

theorem atom137508086true : BadRow (sources true 3 5 atom137508086) := by
  have h : sources true 3 5 atom137508086 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137544950 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))))))
private def v701156738294 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))))))))
private theorem no_v701156738294 : ¬ MinimalInterpreter v701156738294 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))) (.app (.var 0) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137544950false : BadRow (sources false 3 5 atom137544950) := by
  have h : sources false 3 5 atom137544950 = [v701156738294] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156738294) .nil)

theorem atom137544950true : BadRow (sources true 3 5 atom137544950) := by
  have h : sources true 3 5 atom137544950 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137539958 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1)))))
private def v701156733302 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1)))))))
private theorem no_v701156733302 : ¬ MinimalInterpreter v701156733302 :=
  chain_cut false 2 (by decide)
theorem atom137539958false : BadRow (sources false 3 5 atom137539958) := by
  have h : sources false 3 5 atom137539958 = [v701156733302] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156733302) .nil)

theorem atom137539958true : BadRow (sources true 3 5 atom137539958) := by
  have h : sources true 3 5 atom137539958 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom136531190 : Term := (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1))))))
private def v701155724534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v701155724534 : ¬ MinimalInterpreter v701155724534 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom136531190false : BadRow (sources false 3 5 atom136531190) := by
  have h : sources false 3 5 atom136531190 = [v701155724534] := by decide +kernel
  rw [h]
  exact (.cons (no_v701155724534) .nil)

theorem atom136531190true : BadRow (sources true 3 5 atom136531190) := by
  have h : sources true 3 5 atom136531190 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom136530806 : Term := (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 1)))))
private def v701155724150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v701155724150 : ¬ MinimalInterpreter v701155724150 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom136530806false : BadRow (sources false 3 5 atom136530806) := by
  have h : sources false 3 5 atom136530806 = [v701155724150] := by decide +kernel
  rw [h]
  exact (.cons (no_v701155724150) .nil)

theorem atom136530806true : BadRow (sources true 3 5 atom136530806) := by
  have h : sources true 3 5 atom136530806 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137121014 : Term := (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1))))))
private def v701156314358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v701156314358 : ¬ MinimalInterpreter v701156314358 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 1)))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137121014false : BadRow (sources false 3 5 atom137121014) := by
  have h : sources false 3 5 atom137121014 = [v701156314358] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156314358) .nil)

theorem atom137121014true : BadRow (sources true 3 5 atom137121014) := by
  have h : sources true 3 5 atom137121014 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137120630 : Term := (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 1)))))
private def v701156313974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v701156313974 : ¬ MinimalInterpreter v701156313974 :=
  chain_cut false 2 (by decide)
theorem atom137120630false : BadRow (sources false 3 5 atom137120630) := by
  have h : sources false 3 5 atom137120630 = [v701156313974] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156313974) .nil)

theorem atom137120630true : BadRow (sources true 3 5 atom137120630) := by
  have h : sources true 3 5 atom137120630 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137114870 : Term := (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 1)))))
private def v701156308214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 1)))))))
private theorem no_v701156308214 : ¬ MinimalInterpreter v701156308214 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137114870false : BadRow (sources false 3 5 atom137114870) := by
  have h : sources false 3 5 atom137114870 = [v701156308214] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156308214) .nil)

theorem atom137114870true : BadRow (sources true 3 5 atom137114870) := by
  have h : sources true 3 5 atom137114870 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137151734 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 2) (.var 1)))))
private def v701156345078 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 2) (.var 1)))))))
private theorem no_v701156345078 : ¬ MinimalInterpreter v701156345078 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 1))) (.app (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137151734false : BadRow (sources false 3 5 atom137151734) := by
  have h : sources false 3 5 atom137151734 = [v701156345078] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156345078) .nil)

theorem atom137151734true : BadRow (sources true 3 5 atom137151734) := by
  have h : sources true 3 5 atom137151734 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137053430 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 2) (.var 1)))))
private def v701156246774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 2) (.var 1)))))))
private theorem no_v701156246774 : ¬ MinimalInterpreter v701156246774 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 1))) (.app (.app (.app (.var 0) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137053430false : BadRow (sources false 3 5 atom137053430) := by
  have h : sources false 3 5 atom137053430 = [v701156246774] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156246774) .nil)

theorem atom137053430true : BadRow (sources true 3 5 atom137053430) := by
  have h : sources true 3 5 atom137053430 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137041142 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.var 1)))))
private def v701156234486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.var 1)))))))
private theorem no_v701156234486 : ¬ MinimalInterpreter v701156234486 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 1))) (.app (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137041142false : BadRow (sources false 3 5 atom137041142) := by
  have h : sources false 3 5 atom137041142 = [v701156234486] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156234486) .nil)

theorem atom137041142true : BadRow (sources true 3 5 atom137041142) := by
  have h : sources true 3 5 atom137041142 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137146742 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))) (.var 1))))
private def v701156340086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))) (.var 1))))))
private theorem no_v701156340086 : ¬ MinimalInterpreter v701156340086 :=
  chain_cut false 2 (by decide)
theorem atom137146742false : BadRow (sources false 3 5 atom137146742) := by
  have h : sources false 3 5 atom137146742 = [v701156340086] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156340086) .nil)

theorem atom137146742true : BadRow (sources true 3 5 atom137146742) := by
  have h : sources true 3 5 atom137146742 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom136893302 : Term := (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2))) (.var 1))))
private def v701156086646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v701156086646 : ¬ MinimalInterpreter v701156086646 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
theorem atom136893302false : BadRow (sources false 3 5 atom136893302) := by
  have h : sources false 3 5 atom136893302 = [v701156086646] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156086646) .nil)

theorem atom136893302true : BadRow (sources true 3 5 atom136893302) := by
  have h : sources true 3 5 atom136893302 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137040758 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 2))) (.var 1))))
private def v701156234102 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 2))) (.var 1))))))
private theorem no_v701156234102 : ¬ MinimalInterpreter v701156234102 :=
  chain_cut false 2 (by decide)
theorem atom137040758false : BadRow (sources false 3 5 atom137040758) := by
  have h : sources false 3 5 atom137040758 = [v701156234102] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156234102) .nil)

theorem atom137040758true : BadRow (sources true 3 5 atom137040758) := by
  have h : sources true 3 5 atom137040758 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137039222 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))))
private def v701156232566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)) (.var 1))))))
private theorem no_v701156232566 : ¬ MinimalInterpreter v701156232566 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom137039222false : BadRow (sources false 3 5 atom137039222) := by
  have h : sources false 3 5 atom137039222 = [v701156232566] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156232566) .nil)

theorem atom137039222true : BadRow (sources true 3 5 atom137039222) := by
  have h : sources true 3 5 atom137039222 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137048438 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 2)) (.var 1))))
private def v701156241782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 2)) (.var 1))))))
private theorem no_v701156241782 : ¬ MinimalInterpreter v701156241782 :=
  chain_cut false 2 (by decide)
theorem atom137048438false : BadRow (sources false 3 5 atom137048438) := by
  have h : sources false 3 5 atom137048438 = [v701156241782] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156241782) .nil)

theorem atom137048438true : BadRow (sources true 3 5 atom137048438) := by
  have h : sources true 3 5 atom137048438 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137023862 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 2)) (.var 1))))
private def v701156217206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 2)) (.var 1))))))
private theorem no_v701156217206 : ¬ MinimalInterpreter v701156217206 :=
  chain_cut false 2 (by decide)
theorem atom137023862false : BadRow (sources false 3 5 atom137023862) := by
  have h : sources false 3 5 atom137023862 = [v701156217206] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156217206) .nil)

theorem atom137023862true : BadRow (sources true 3 5 atom137023862) := by
  have h : sources true 3 5 atom137023862 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137020790 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2)) (.var 1))))
private def v701156214134 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2)) (.var 1))))))
private theorem no_v701156214134 : ¬ MinimalInterpreter v701156214134 :=
  chain_cut false 2 (by decide)
theorem atom137020790false : BadRow (sources false 3 5 atom137020790) := by
  have h : sources false 3 5 atom137020790 = [v701156214134] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156214134) .nil)

theorem atom137020790true : BadRow (sources true 3 5 atom137020790) := by
  have h : sources true 3 5 atom137020790 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146982134 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))))))
private def v701166175478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))))))))
private theorem no_v701166175478 : ¬ MinimalInterpreter v701166175478 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom146982134false : BadRow (sources false 3 5 atom146982134) := by
  have h : sources false 3 5 atom146982134 = [v701166175478] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166175478) .nil)

theorem atom146982134true : BadRow (sources true 3 5 atom146982134) := by
  have h : sources true 3 5 atom146982134 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146977142 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1)))))
private def v701166170486 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1)))))))
private theorem no_v701166170486 : ¬ MinimalInterpreter v701166170486 :=
  chain_cut false 2 (by decide)
theorem atom146977142false : BadRow (sources false 3 5 atom146977142) := by
  have h : sources false 3 5 atom146977142 = [v701166170486] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166170486) .nil)

theorem atom146977142true : BadRow (sources true 3 5 atom146977142) := by
  have h : sources true 3 5 atom146977142 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom143461622 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))
private def v701162654966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v701162654966 : ¬ MinimalInterpreter v701162654966 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom143461622false : BadRow (sources false 3 5 atom143461622) := by
  have h : sources false 3 5 atom143461622 = [v701162654966] := by decide +kernel
  rw [h]
  exact (.cons (no_v701162654966) .nil)

theorem atom143461622true : BadRow (sources true 3 5 atom143461622) := by
  have h : sources true 3 5 atom143461622 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom143461238 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))
private def v701162654582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v701162654582 : ¬ MinimalInterpreter v701162654582 :=
  w_cut false 0 (by decide)
theorem atom143461238false : BadRow (sources false 3 5 atom143461238) := by
  have h : sources false 3 5 atom143461238 = [v701162654582] := by decide +kernel
  rw [h]
  exact (.cons (no_v701162654582) .nil)

theorem atom143461238true : BadRow (sources true 3 5 atom143461238) := by
  have h : sources true 3 5 atom143461238 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145820918 : Term := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))
private def v701165014262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v701165014262 : ¬ MinimalInterpreter v701165014262 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom145820918false : BadRow (sources false 3 5 atom145820918) := by
  have h : sources false 3 5 atom145820918 = [v701165014262] := by decide +kernel
  rw [h]
  exact (.cons (no_v701165014262) .nil)

theorem atom145820918true : BadRow (sources true 3 5 atom145820918) := by
  have h : sources true 3 5 atom145820918 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145820534 : Term := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))
private def v701165013878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v701165013878 : ¬ MinimalInterpreter v701165013878 :=
  chain_cut false 2 (by decide)
theorem atom145820534false : BadRow (sources false 3 5 atom145820534) := by
  have h : sources false 3 5 atom145820534 = [v701165013878] := by decide +kernel
  rw [h]
  exact (.cons (no_v701165013878) .nil)

theorem atom145820534true : BadRow (sources true 3 5 atom145820534) := by
  have h : sources true 3 5 atom145820534 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184601846 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))
private def v701203795190 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v701203795190 : ¬ MinimalInterpreter v701203795190 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem atom184601846false : BadRow (sources false 3 5 atom184601846) := by
  have h : sources false 3 5 atom184601846 = [v701203795190] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203795190) .nil)

theorem atom184601846true : BadRow (sources true 3 5 atom184601846) := by
  have h : sources true 3 5 atom184601846 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184601462 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private def v701203794806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v701203794806 : ¬ MinimalInterpreter v701203794806 :=
  chain_cut false 4 (by decide)
theorem atom184601462false : BadRow (sources false 3 5 atom184601462) := by
  have h : sources false 3 5 atom184601462 = [v701203794806] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203794806) .nil)

theorem atom184601462true : BadRow (sources true 3 5 atom184601462) := by
  have h : sources true 3 5 atom184601462 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184595702 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))
private def v701203789046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))))))
private theorem no_v701203789046 : ¬ MinimalInterpreter v701203789046 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem atom184595702false : BadRow (sources false 3 5 atom184595702) := by
  have h : sources false 3 5 atom184595702 = [v701203789046] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203789046) .nil)

theorem atom184595702true : BadRow (sources true 3 5 atom184595702) := by
  have h : sources true 3 5 atom184595702 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184595318 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))
private def v701203788662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1))))))))
private theorem no_v701203788662 : ¬ MinimalInterpreter v701203788662 :=
  chain_cut false 4 (by decide)
theorem atom184595318false : BadRow (sources false 3 5 atom184595318) := by
  have h : sources false 3 5 atom184595318 = [v701203788662] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203788662) .nil)

theorem atom184595318true : BadRow (sources true 3 5 atom184595318) := by
  have h : sources true 3 5 atom184595318 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184593782 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))
private def v701203787126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))))))
private theorem no_v701203787126 : ¬ MinimalInterpreter v701203787126 :=
  chain_cut false 4 (by decide)
theorem atom184593782false : BadRow (sources false 3 5 atom184593782) := by
  have h : sources false 3 5 atom184593782 = [v701203787126] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203787126) .nil)

theorem atom184593782true : BadRow (sources true 3 5 atom184593782) := by
  have h : sources true 3 5 atom184593782 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184749302 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private def v701203942646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v701203942646 : ¬ MinimalInterpreter v701203942646 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))
theorem atom184749302false : BadRow (sources false 3 5 atom184749302) := by
  have h : sources false 3 5 atom184749302 = [v701203942646] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203942646) .nil)

theorem atom184749302true : BadRow (sources true 3 5 atom184749302) := by
  have h : sources true 3 5 atom184749302 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184748918 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private def v701203942262 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v701203942262 : ¬ MinimalInterpreter v701203942262 :=
  chain_cut false 4 (by decide)
theorem atom184748918false : BadRow (sources false 3 5 atom184748918) := by
  have h : sources false 3 5 atom184748918 = [v701203942262] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203942262) .nil)

theorem atom184748918true : BadRow (sources true 3 5 atom184748918) := by
  have h : sources true 3 5 atom184748918 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184730870 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))))))
private def v701203924214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))))))))
private theorem no_v701203924214 : ¬ MinimalInterpreter v701203924214 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.lam (.var 0))) (.var 1))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom184730870false : BadRow (sources false 3 5 atom184730870) := by
  have h : sources false 3 5 atom184730870 = [v701203924214] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203924214) .nil)

theorem atom184730870true : BadRow (sources true 3 5 atom184730870) := by
  have h : sources true 3 5 atom184730870 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184725878 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1)))))
private def v701203919222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1)))))))
private theorem no_v701203919222 : ¬ MinimalInterpreter v701203919222 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom184725878false : BadRow (sources false 3 5 atom184725878) := by
  have h : sources false 3 5 atom184725878 = [v701203919222] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203919222) .nil)

theorem atom184725878true : BadRow (sources true 3 5 atom184725878) := by
  have h : sources true 3 5 atom184725878 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom185339126 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private def v701204532470 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v701204532470 : ¬ MinimalInterpreter v701204532470 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
theorem atom185339126false : BadRow (sources false 3 5 atom185339126) := by
  have h : sources false 3 5 atom185339126 = [v701204532470] := by decide +kernel
  rw [h]
  exact (.cons (no_v701204532470) .nil)

theorem atom185339126true : BadRow (sources true 3 5 atom185339126) := by
  have h : sources true 3 5 atom185339126 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom185338742 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private def v701204532086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v701204532086 : ¬ MinimalInterpreter v701204532086 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom185338742false : BadRow (sources false 3 5 atom185338742) := by
  have h : sources false 3 5 atom185338742 = [v701204532086] := by decide +kernel
  rw [h]
  exact (.cons (no_v701204532086) .nil)

theorem atom185338742true : BadRow (sources true 3 5 atom185338742) := by
  have h : sources true 3 5 atom185338742 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom187698422 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private def v700885825050 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v700885825050 : ¬ MinimalInterpreter v700885825050 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v701206891766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))))
private theorem no_v701206891766 : ¬ MinimalInterpreter v701206891766 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
theorem atom187698422false : BadRow (sources false 3 5 atom187698422) := by
  have h : sources false 3 5 atom187698422 = [v700885825050,v701206891766] := by decide +kernel
  rw [h]
  exact (.cons (no_v700885825050) (.cons (no_v701206891766) .nil))

theorem atom187698422true : BadRow (sources true 3 5 atom187698422) := by
  have h : sources true 3 5 atom187698422 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom187698038 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private def v700885726746 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v700885726746 : ¬ MinimalInterpreter v700885726746 :=
  chain_cut false 3 (by decide)
private def v701206891382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))))
private theorem no_v701206891382 : ¬ MinimalInterpreter v701206891382 :=
  chain_cut false 4 (by decide)
theorem atom187698038false : BadRow (sources false 3 5 atom187698038) := by
  have h : sources false 3 5 atom187698038 = [v700885726746,v701206891382] := by decide +kernel
  rw [h]
  exact (.cons (no_v700885726746) (.cons (no_v701206891382) .nil))

theorem atom187698038true : BadRow (sources true 3 5 atom187698038) := by
  have h : sources true 3 5 atom187698038 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom181406966 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))
private def v699275212314 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699275212314 : ¬ MinimalInterpreter v699275212314 :=
  w_cut false 0 (by decide)
private def v701200600310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))))
private theorem no_v701200600310 : ¬ MinimalInterpreter v701200600310 :=
  w_cut false 0 (by decide)
theorem atom181406966false : BadRow (sources false 3 5 atom181406966) := by
  have h : sources false 3 5 atom181406966 = [v699275212314,v701200600310] := by decide +kernel
  rw [h]
  exact (.cons (no_v699275212314) (.cons (no_v701200600310) .nil))

theorem atom181406966true : BadRow (sources true 3 5 atom181406966) := by
  have h : sources true 3 5 atom181406966 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom181406582 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))
private def v699275114010 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699275114010 : ¬ MinimalInterpreter v699275114010 :=
  w_cut false 0 (by decide)
private def v701200599926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))))
private theorem no_v701200599926 : ¬ MinimalInterpreter v701200599926 :=
  w_cut false 0 (by decide)
theorem atom181406582false : BadRow (sources false 3 5 atom181406582) := by
  have h : sources false 3 5 atom181406582 = [v699275114010,v701200599926] := by decide +kernel
  rw [h]
  exact (.cons (no_v699275114010) (.cons (no_v701200599926) .nil))

theorem atom181406582true : BadRow (sources true 3 5 atom181406582) := by
  have h : sources true 3 5 atom181406582 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom171183350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))
private def v701190376694 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v701190376694 : ¬ MinimalInterpreter v701190376694 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom171183350false : BadRow (sources false 3 5 atom171183350) := by
  have h : sources false 3 5 atom171183350 = [v701190376694] := by decide +kernel
  rw [h]
  exact (.cons (no_v701190376694) .nil)

theorem atom171183350true : BadRow (sources true 3 5 atom171183350) := by
  have h : sources true 3 5 atom171183350 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom171182966 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))
private def v701190376310 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v701190376310 : ¬ MinimalInterpreter v701190376310 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom171182966false : BadRow (sources false 3 5 atom171182966) := by
  have h : sources false 3 5 atom171182966 = [v701190376310] := by decide +kernel
  rw [h]
  exact (.cons (no_v701190376310) .nil)

theorem atom171182966true : BadRow (sources true 3 5 atom171182966) := by
  have h : sources true 3 5 atom171182966 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180620534 : Term := (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))
private def v701199813878 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v701199813878 : ¬ MinimalInterpreter v701199813878 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom180620534false : BadRow (sources false 3 5 atom180620534) := by
  have h : sources false 3 5 atom180620534 = [v701199813878] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199813878) .nil)

theorem atom180620534true : BadRow (sources true 3 5 atom180620534) := by
  have h : sources true 3 5 atom180620534 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180620150 : Term := (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))
private def v701199813494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v701199813494 : ¬ MinimalInterpreter v701199813494 :=
  chain_cut false 3 (by decide)
theorem atom180620150false : BadRow (sources false 3 5 atom180620150) := by
  have h : sources false 3 5 atom180620150 = [v701199813494] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199813494) .nil)

theorem atom180620150true : BadRow (sources true 3 5 atom180620150) := by
  have h : sources true 3 5 atom180620150 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms107 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,0,0,2,1]) := by
  have h : atoms 3 5 [0,0,0,2,1] = [atom137508086,atom137544950,atom137539958,atom136531190,atom136530806,atom137121014,atom137120630,atom137114870,atom137151734,atom137053430,atom137041142,atom137146742,atom136893302,atom137040758,atom137039222,atom137048438,atom137023862,atom137020790,atom146982134,atom146977142,atom143461622,atom143461238,atom145820918,atom145820534,atom184601846,atom184601462,atom184595702,atom184595318,atom184593782,atom184749302,atom184748918,atom184730870,atom184725878,atom185339126,atom185338742,atom187698422,atom187698038,atom181406966,atom181406582,atom171183350,atom171182966,atom180620534,atom180620150] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom137508086false | exact atom137508086true) (.cons (fun lit => by cases lit <;> first | exact atom137544950false | exact atom137544950true) (.cons (fun lit => by cases lit <;> first | exact atom137539958false | exact atom137539958true) (.cons (fun lit => by cases lit <;> first | exact atom136531190false | exact atom136531190true) (.cons (fun lit => by cases lit <;> first | exact atom136530806false | exact atom136530806true) (.cons (fun lit => by cases lit <;> first | exact atom137121014false | exact atom137121014true) (.cons (fun lit => by cases lit <;> first | exact atom137120630false | exact atom137120630true) (.cons (fun lit => by cases lit <;> first | exact atom137114870false | exact atom137114870true) (.cons (fun lit => by cases lit <;> first | exact atom137151734false | exact atom137151734true) (.cons (fun lit => by cases lit <;> first | exact atom137053430false | exact atom137053430true) (.cons (fun lit => by cases lit <;> first | exact atom137041142false | exact atom137041142true) (.cons (fun lit => by cases lit <;> first | exact atom137146742false | exact atom137146742true) (.cons (fun lit => by cases lit <;> first | exact atom136893302false | exact atom136893302true) (.cons (fun lit => by cases lit <;> first | exact atom137040758false | exact atom137040758true) (.cons (fun lit => by cases lit <;> first | exact atom137039222false | exact atom137039222true) (.cons (fun lit => by cases lit <;> first | exact atom137048438false | exact atom137048438true) (.cons (fun lit => by cases lit <;> first | exact atom137023862false | exact atom137023862true) (.cons (fun lit => by cases lit <;> first | exact atom137020790false | exact atom137020790true) (.cons (fun lit => by cases lit <;> first | exact atom146982134false | exact atom146982134true) (.cons (fun lit => by cases lit <;> first | exact atom146977142false | exact atom146977142true) (.cons (fun lit => by cases lit <;> first | exact atom143461622false | exact atom143461622true) (.cons (fun lit => by cases lit <;> first | exact atom143461238false | exact atom143461238true) (.cons (fun lit => by cases lit <;> first | exact atom145820918false | exact atom145820918true) (.cons (fun lit => by cases lit <;> first | exact atom145820534false | exact atom145820534true) (.cons (fun lit => by cases lit <;> first | exact atom184601846false | exact atom184601846true) (.cons (fun lit => by cases lit <;> first | exact atom184601462false | exact atom184601462true) (.cons (fun lit => by cases lit <;> first | exact atom184595702false | exact atom184595702true) (.cons (fun lit => by cases lit <;> first | exact atom184595318false | exact atom184595318true) (.cons (fun lit => by cases lit <;> first | exact atom184593782false | exact atom184593782true) (.cons (fun lit => by cases lit <;> first | exact atom184749302false | exact atom184749302true) (.cons (fun lit => by cases lit <;> first | exact atom184748918false | exact atom184748918true) (.cons (fun lit => by cases lit <;> first | exact atom184730870false | exact atom184730870true) (.cons (fun lit => by cases lit <;> first | exact atom184725878false | exact atom184725878true) (.cons (fun lit => by cases lit <;> first | exact atom185339126false | exact atom185339126true) (.cons (fun lit => by cases lit <;> first | exact atom185338742false | exact atom185338742true) (.cons (fun lit => by cases lit <;> first | exact atom187698422false | exact atom187698422true) (.cons (fun lit => by cases lit <;> first | exact atom187698038false | exact atom187698038true) (.cons (fun lit => by cases lit <;> first | exact atom181406966false | exact atom181406966true) (.cons (fun lit => by cases lit <;> first | exact atom181406582false | exact atom181406582true) (.cons (fun lit => by cases lit <;> first | exact atom171183350false | exact atom171183350true) (.cons (fun lit => by cases lit <;> first | exact atom171182966false | exact atom171182966true) (.cons (fun lit => by cases lit <;> first | exact atom180620534false | exact atom180620534true) (.cons (fun lit => by cases lit <;> first | exact atom180620150false | exact atom180620150true) .nil)))))))))))))))))))))))))))))))))))))))))))
end Blc.SelfintSingleObject.Sat39
