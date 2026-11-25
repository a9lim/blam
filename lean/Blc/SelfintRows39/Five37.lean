import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom137574882 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))))
private def v701156768226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))))))
private theorem no_v701156768226 : ¬ MinimalInterpreter v701156768226 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (so_closed_lam (by decide) (.var 0)))))) (.app (.var 0) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))
theorem atom137574882false : BadRow (sources false 3 5 atom137574882) := by
  have h : sources false 3 5 atom137574882 = [v701156768226] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156768226) .nil)

theorem atom137574882true : BadRow (sources true 3 5 atom137574882) := by
  have h : sources true 3 5 atom137574882 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137572066 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))
private def v701156765410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))))
private theorem no_v701156765410 : ¬ MinimalInterpreter v701156765410 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_closed_lam (by decide) (.var 0))))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137572066false : BadRow (sources false 3 5 atom137572066) := by
  have h : sources false 3 5 atom137572066 = [v701156765410] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156765410) .nil)

theorem atom137572066true : BadRow (sources true 3 5 atom137572066) := by
  have h : sources true 3 5 atom137572066 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137550306 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0)))))))
private def v701156743650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0)))))))))
private theorem no_v701156743650 : ¬ MinimalInterpreter v701156743650 :=
  chain_cut false 2 (by decide)
theorem atom137550306false : BadRow (sources false 3 5 atom137550306) := by
  have h : sources false 3 5 atom137550306 = [v701156743650] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156743650) .nil)

theorem atom137550306true : BadRow (sources true 3 5 atom137550306) := by
  have h : sources true 3 5 atom137550306 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137547490 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))))))
private def v701156740834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))))))))
private theorem no_v701156740834 : ¬ MinimalInterpreter v701156740834 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0)))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (so_closed_lam (by decide) (.var 0)))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137547490false : BadRow (sources false 3 5 atom137547490) := by
  have h : sources false 3 5 atom137547490 = [v701156740834] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156740834) .nil)

theorem atom137547490true : BadRow (sources true 3 5 atom137547490) := by
  have h : sources true 3 5 atom137547490 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137541346 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0))))))
private def v701156734690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0))))))))
private theorem no_v701156734690 : ¬ MinimalInterpreter v701156734690 :=
  chain_cut false 2 (by decide)
theorem atom137541346false : BadRow (sources false 3 5 atom137541346) := by
  have h : sources false 3 5 atom137541346 = [v701156734690] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156734690) .nil)

theorem atom137541346true : BadRow (sources true 3 5 atom137541346) := by
  have h : sources true 3 5 atom137541346 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137181666 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))))
private def v701156375010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))))))
private theorem no_v701156375010 : ¬ MinimalInterpreter v701156375010 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (so_closed_lam (by decide) (.var 0))))) (.app (.var 0) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))
theorem atom137181666false : BadRow (sources false 3 5 atom137181666) := by
  have h : sources false 3 5 atom137181666 = [v701156375010] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156375010) .nil)

theorem atom137181666true : BadRow (sources true 3 5 atom137181666) := by
  have h : sources true 3 5 atom137181666 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137178850 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))
private def v701156372194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))))
private theorem no_v701156372194 : ¬ MinimalInterpreter v701156372194 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (so_closed_lam (by decide) (.var 0)))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137178850false : BadRow (sources false 3 5 atom137178850) := by
  have h : sources false 3 5 atom137178850 = [v701156372194] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156372194) .nil)

theorem atom137178850true : BadRow (sources true 3 5 atom137178850) := by
  have h : sources true 3 5 atom137178850 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom136531578 : Term := (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 2) (.var 0))))))
private def v701155724922 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v701155724922 : ¬ MinimalInterpreter v701155724922 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom136531578false : BadRow (sources false 3 5 atom136531578) := by
  have h : sources false 3 5 atom136531578 = [v701155724922] := by decide +kernel
  rw [h]
  exact (.cons (no_v701155724922) .nil)

theorem atom136531578true : BadRow (sources true 3 5 atom136531578) := by
  have h : sources true 3 5 atom136531578 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom136530874 : Term := (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)))))
private def v701155724218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v701155724218 : ¬ MinimalInterpreter v701155724218 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom136530874false : BadRow (sources false 3 5 atom136530874) := by
  have h : sources false 3 5 atom136530874 = [v701155724218] := by decide +kernel
  rw [h]
  exact (.cons (no_v701155724218) .nil)

theorem atom136530874true : BadRow (sources true 3 5 atom136530874) := by
  have h : sources true 3 5 atom136530874 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137121402 : Term := (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 2) (.var 0))))))
private def v701156314746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v701156314746 : ¬ MinimalInterpreter v701156314746 :=
  chain_cut false 2 (by decide)
theorem atom137121402false : BadRow (sources false 3 5 atom137121402) := by
  have h : sources false 3 5 atom137121402 = [v701156314746] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156314746) .nil)

theorem atom137121402true : BadRow (sources true 3 5 atom137121402) := by
  have h : sources true 3 5 atom137121402 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137120698 : Term := (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)))))
private def v701156314042 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v701156314042 : ¬ MinimalInterpreter v701156314042 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137120698false : BadRow (sources false 3 5 atom137120698) := by
  have h : sources false 3 5 atom137120698 = [v701156314042] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156314042) .nil)

theorem atom137120698true : BadRow (sources true 3 5 atom137120698) := by
  have h : sources true 3 5 atom137120698 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137157090 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 2) (.lam (.var 0))))))
private def v701156350434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 2) (.lam (.var 0))))))))
private theorem no_v701156350434 : ¬ MinimalInterpreter v701156350434 :=
  chain_cut false 2 (by decide)
theorem atom137157090false : BadRow (sources false 3 5 atom137157090) := by
  have h : sources false 3 5 atom137157090 = [v701156350434] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156350434) .nil)

theorem atom137157090true : BadRow (sources true 3 5 atom137157090) := by
  have h : sources true 3 5 atom137157090 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137058786 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.lam (.var 0))))))
private def v701156252130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.lam (.var 0))))))))
private theorem no_v701156252130 : ¬ MinimalInterpreter v701156252130 :=
  chain_cut false 2 (by decide)
theorem atom137058786false : BadRow (sources false 3 5 atom137058786) := by
  have h : sources false 3 5 atom137058786 = [v701156252130] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156252130) .nil)

theorem atom137058786true : BadRow (sources true 3 5 atom137058786) := by
  have h : sources true 3 5 atom137058786 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137041530 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 2) (.var 0)))))
private def v701156234874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.app (.var 2) (.var 0)))))))
private theorem no_v701156234874 : ¬ MinimalInterpreter v701156234874 :=
  chain_cut false 2 (by decide)
theorem atom137041530false : BadRow (sources false 3 5 atom137041530) := by
  have h : sources false 3 5 atom137041530 = [v701156234874] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156234874) .nil)

theorem atom137041530true : BadRow (sources true 3 5 atom137041530) := by
  have h : sources true 3 5 atom137041530 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137154274 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.var 0)))))
private def v701156347618 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.var 0)))))))
private theorem no_v701156347618 : ¬ MinimalInterpreter v701156347618 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.lam (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137154274false : BadRow (sources false 3 5 atom137154274) := by
  have h : sources false 3 5 atom137154274 = [v701156347618] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156347618) .nil)

theorem atom137154274true : BadRow (sources true 3 5 atom137154274) := by
  have h : sources true 3 5 atom137154274 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137148130 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.lam (.var 0)))))
private def v701156341474 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.lam (.var 0)))))))
private theorem no_v701156341474 : ¬ MinimalInterpreter v701156341474 :=
  chain_cut false 2 (by decide)
theorem atom137148130false : BadRow (sources false 3 5 atom137148130) := by
  have h : sources false 3 5 atom137148130 = [v701156341474] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156341474) .nil)

theorem atom137148130true : BadRow (sources true 3 5 atom137148130) := by
  have h : sources true 3 5 atom137148130 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137055970 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.var 0)))))
private def v701156249314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.var 0)))))))
private theorem no_v701156249314 : ¬ MinimalInterpreter v701156249314 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.lam (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137055970false : BadRow (sources false 3 5 atom137055970) := by
  have h : sources false 3 5 atom137055970 = [v701156249314] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156249314) .nil)

theorem atom137055970true : BadRow (sources true 3 5 atom137055970) := by
  have h : sources true 3 5 atom137055970 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137049826 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)) (.lam (.var 0)))))
private def v701156243170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)) (.lam (.var 0)))))))
private theorem no_v701156243170 : ¬ MinimalInterpreter v701156243170 :=
  chain_cut false 2 (by decide)
theorem atom137049826false : BadRow (sources false 3 5 atom137049826) := by
  have h : sources false 3 5 atom137049826 = [v701156243170] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156243170) .nil)

theorem atom137049826true : BadRow (sources true 3 5 atom137049826) := by
  have h : sources true 3 5 atom137049826 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137025250 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.lam (.var 0)))))
private def v701156218594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.lam (.var 0)))))))
private theorem no_v701156218594 : ¬ MinimalInterpreter v701156218594 :=
  chain_cut false 2 (by decide)
theorem atom137025250false : BadRow (sources false 3 5 atom137025250) := by
  have h : sources false 3 5 atom137025250 = [v701156218594] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156218594) .nil)

theorem atom137025250true : BadRow (sources true 3 5 atom137025250) := by
  have h : sources true 3 5 atom137025250 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom136893370 : Term := (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))) (.var 0))))
private def v701156086714 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v701156086714 : ¬ MinimalInterpreter v701156086714 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (g := (.app (.var 1) (.var 0))) (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2))) (.var 0)) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom136893370false : BadRow (sources false 3 5 atom136893370) := by
  have h : sources false 3 5 atom136893370 = [v701156086714] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156086714) .nil)

theorem atom136893370true : BadRow (sources true 3 5 atom136893370) := by
  have h : sources true 3 5 atom136893370 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137040826 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))) (.var 0))))
private def v701156234170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))) (.var 0))))))
private theorem no_v701156234170 : ¬ MinimalInterpreter v701156234170 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0))) (.app (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137040826false : BadRow (sources false 3 5 atom137040826) := by
  have h : sources false 3 5 atom137040826 = [v701156234170] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156234170) .nil)

theorem atom137040826true : BadRow (sources true 3 5 atom137040826) := by
  have h : sources true 3 5 atom137040826 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137020858 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2)) (.var 0))))
private def v701156214202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2)) (.var 0))))))
private theorem no_v701156214202 : ¬ MinimalInterpreter v701156214202 :=
  chain_cut false 2 (by decide)
theorem atom137020858false : BadRow (sources false 3 5 atom137020858) := by
  have h : sources false 3 5 atom137020858 = [v701156214202] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156214202) .nil)

theorem atom137020858true : BadRow (sources true 3 5 atom137020858) := by
  have h : sources true 3 5 atom137020858 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom147012066 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))))
private def v701166205410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))))))
private theorem no_v701166205410 : ¬ MinimalInterpreter v701166205410 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (so_closed_lam (by decide) (.var 0))))) (.app (.var 0) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide))) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))
theorem atom147012066false : BadRow (sources false 3 5 atom147012066) := by
  have h : sources false 3 5 atom147012066 = [v701166205410] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166205410) .nil)

theorem atom147012066true : BadRow (sources true 3 5 atom147012066) := by
  have h : sources true 3 5 atom147012066 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom147009250 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))
private def v701166202594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))))
private theorem no_v701166202594 : ¬ MinimalInterpreter v701166202594 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))) (.app (.var 0) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_closed_lam (by decide) (.var 0)))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom147009250false : BadRow (sources false 3 5 atom147009250) := by
  have h : sources false 3 5 atom147009250 = [v701166202594] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166202594) .nil)

theorem atom147009250true : BadRow (sources true 3 5 atom147009250) := by
  have h : sources true 3 5 atom147009250 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146987490 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0)))))))
private def v701166180834 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0)))))))))
private theorem no_v701166180834 : ¬ MinimalInterpreter v701166180834 :=
  chain_cut false 2 (by decide)
theorem atom146987490false : BadRow (sources false 3 5 atom146987490) := by
  have h : sources false 3 5 atom146987490 = [v701166180834] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166180834) .nil)

theorem atom146987490true : BadRow (sources true 3 5 atom146987490) := by
  have h : sources true 3 5 atom146987490 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146984674 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))))))
private def v701166178018 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))))))))
private theorem no_v701166178018 : ¬ MinimalInterpreter v701166178018 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom146984674false : BadRow (sources false 3 5 atom146984674) := by
  have h : sources false 3 5 atom146984674 = [v701166178018] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166178018) .nil)

theorem atom146984674true : BadRow (sources true 3 5 atom146984674) := by
  have h : sources true 3 5 atom146984674 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146978530 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0))))))
private def v701166171874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0))))))))
private theorem no_v701166171874 : ¬ MinimalInterpreter v701166171874 :=
  chain_cut false 2 (by decide)
theorem atom146978530false : BadRow (sources false 3 5 atom146978530) := by
  have h : sources false 3 5 atom146978530 = [v701166171874] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166171874) .nil)

theorem atom146978530true : BadRow (sources true 3 5 atom146978530) := by
  have h : sources true 3 5 atom146978530 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom143462010 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))
private def v701162655354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v701162655354 : ¬ MinimalInterpreter v701162655354 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom143462010false : BadRow (sources false 3 5 atom143462010) := by
  have h : sources false 3 5 atom143462010 = [v701162655354] := by decide +kernel
  rw [h]
  exact (.cons (no_v701162655354) .nil)

theorem atom143462010true : BadRow (sources true 3 5 atom143462010) := by
  have h : sources true 3 5 atom143462010 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom143461306 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))
private def v701162654650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v701162654650 : ¬ MinimalInterpreter v701162654650 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom143461306false : BadRow (sources false 3 5 atom143461306) := by
  have h : sources false 3 5 atom143461306 = [v701162654650] := by decide +kernel
  rw [h]
  exact (.cons (no_v701162654650) .nil)

theorem atom143461306true : BadRow (sources true 3 5 atom143461306) := by
  have h : sources true 3 5 atom143461306 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145821306 : Term := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))
private def v701165014650 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v701165014650 : ¬ MinimalInterpreter v701165014650 :=
  chain_cut false 2 (by decide)
theorem atom145821306false : BadRow (sources false 3 5 atom145821306) := by
  have h : sources false 3 5 atom145821306 = [v701165014650] := by decide +kernel
  rw [h]
  exact (.cons (no_v701165014650) .nil)

theorem atom145821306true : BadRow (sources true 3 5 atom145821306) := by
  have h : sources true 3 5 atom145821306 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145820602 : Term := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))
private def v701165013946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v701165013946 : ¬ MinimalInterpreter v701165013946 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom145820602false : BadRow (sources false 3 5 atom145820602) := by
  have h : sources false 3 5 atom145820602 = [v701165013946] := by decide +kernel
  rw [h]
  exact (.cons (no_v701165013946) .nil)

theorem atom145820602true : BadRow (sources true 3 5 atom145820602) := by
  have h : sources true 3 5 atom145820602 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145805026 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.var 0))))
private def v701164998370 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.var 0))))))
private theorem no_v701164998370 : ¬ MinimalInterpreter v701164998370 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (.var 0)))) (.app (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide))) (so_closed_lam (by decide) (.var 0))) (.var 0) (by decide) (by decide)))))
theorem atom145805026false : BadRow (sources false 3 5 atom145805026) := by
  have h : sources false 3 5 atom145805026 = [v701164998370] := by decide +kernel
  rw [h]
  exact (.cons (no_v701164998370) .nil)

theorem atom145805026true : BadRow (sources true 3 5 atom145805026) := by
  have h : sources true 3 5 atom145805026 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145798882 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.var 0))))
private def v701164992226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.lam (.var 0))))))
private theorem no_v701164992226 : ¬ MinimalInterpreter v701164992226 :=
  chain_cut false 2 (by decide)
theorem atom145798882false : BadRow (sources false 3 5 atom145798882) := by
  have h : sources false 3 5 atom145798882 = [v701164992226] := by decide +kernel
  rw [h]
  exact (.cons (no_v701164992226) .nil)

theorem atom145798882true : BadRow (sources true 3 5 atom145798882) := by
  have h : sources true 3 5 atom145798882 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184602234 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))
private def v701203795578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v701203795578 : ¬ MinimalInterpreter v701203795578 :=
  chain_cut false 4 (by decide)
theorem atom184602234false : BadRow (sources false 3 5 atom184602234) := by
  have h : sources false 3 5 atom184602234 = [v701203795578] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203795578) .nil)

theorem atom184602234true : BadRow (sources true 3 5 atom184602234) := by
  have h : sources true 3 5 atom184602234 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184601530 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private def v701203794874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v701203794874 : ¬ MinimalInterpreter v701203794874 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem atom184601530false : BadRow (sources false 3 5 atom184601530) := by
  have h : sources false 3 5 atom184601530 = [v701203794874] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203794874) .nil)

theorem atom184601530true : BadRow (sources true 3 5 atom184601530) := by
  have h : sources true 3 5 atom184601530 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184596090 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))
private def v701203789434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0)))))))))
private theorem no_v701203789434 : ¬ MinimalInterpreter v701203789434 :=
  chain_cut false 4 (by decide)
theorem atom184596090false : BadRow (sources false 3 5 atom184596090) := by
  have h : sources false 3 5 atom184596090 = [v701203789434] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203789434) .nil)

theorem atom184596090true : BadRow (sources true 3 5 atom184596090) := by
  have h : sources true 3 5 atom184596090 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184595386 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))
private def v701203788730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))))
private theorem no_v701203788730 : ¬ MinimalInterpreter v701203788730 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem atom184595386false : BadRow (sources false 3 5 atom184595386) := by
  have h : sources false 3 5 atom184595386 = [v701203788730] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203788730) .nil)

theorem atom184595386true : BadRow (sources true 3 5 atom184595386) := by
  have h : sources true 3 5 atom184595386 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184593850 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))
private def v701203787194 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0))))))))
private theorem no_v701203787194 : ¬ MinimalInterpreter v701203787194 :=
  chain_cut false 4 (by decide)
theorem atom184593850false : BadRow (sources false 3 5 atom184593850) := by
  have h : sources false 3 5 atom184593850 = [v701203787194] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203787194) .nil)

theorem atom184593850true : BadRow (sources true 3 5 atom184593850) := by
  have h : sources true 3 5 atom184593850 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184749690 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private def v701203943034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v701203943034 : ¬ MinimalInterpreter v701203943034 :=
  chain_cut false 4 (by decide)
theorem atom184749690false : BadRow (sources false 3 5 atom184749690) := by
  have h : sources false 3 5 atom184749690 = [v701203943034] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203943034) .nil)

theorem atom184749690true : BadRow (sources true 3 5 atom184749690) := by
  have h : sources true 3 5 atom184749690 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184748986 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private def v701203942330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v701203942330 : ¬ MinimalInterpreter v701203942330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))
theorem atom184748986false : BadRow (sources false 3 5 atom184748986) := by
  have h : sources false 3 5 atom184748986 = [v701203942330] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203942330) .nil)

theorem atom184748986true : BadRow (sources true 3 5 atom184748986) := by
  have h : sources true 3 5 atom184748986 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184760802 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))))
private def v701203954146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0))))))))))
private theorem no_v701203954146 : ¬ MinimalInterpreter v701203954146 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.app (.var 1) (.lam (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.app (.var 2) (so_closed_lam (by decide) (.var 0))))) (.app (.var 0) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide))))))
theorem atom184760802false : BadRow (sources false 3 5 atom184760802) := by
  have h : sources false 3 5 atom184760802 = [v701203954146] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203954146) .nil)

theorem atom184760802true : BadRow (sources true 3 5 atom184760802) := by
  have h : sources true 3 5 atom184760802 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184757986 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))
private def v701203951330 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))))))
private theorem no_v701203951330 : ¬ MinimalInterpreter v701203951330 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0)))))) (.lam (r := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (so_closed_lam (by decide) (.var 0)))) (.app (.app (.var 0) (.var 1)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom184757986false : BadRow (sources false 3 5 atom184757986) := by
  have h : sources false 3 5 atom184757986 = [v701203951330] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203951330) .nil)

theorem atom184757986true : BadRow (sources true 3 5 atom184757986) := by
  have h : sources true 3 5 atom184757986 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184736226 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0)))))))
private def v701203929570 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0)))))))))
private theorem no_v701203929570 : ¬ MinimalInterpreter v701203929570 :=
  chain_cut true 6 (by decide)
theorem atom184736226false : BadRow (sources false 3 5 atom184736226) := by
  have h : sources false 3 5 atom184736226 = [v701203929570] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203929570) .nil)

theorem atom184736226true : BadRow (sources true 3 5 atom184736226) := by
  have h : sources true 3 5 atom184736226 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184733410 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))))))
private def v701203926754 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))))))))
private theorem no_v701203926754 : ¬ MinimalInterpreter v701203926754 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (so_closed_lam (by decide) (.var 0))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom184733410false : BadRow (sources false 3 5 atom184733410) := by
  have h : sources false 3 5 atom184733410 = [v701203926754] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203926754) .nil)

theorem atom184733410true : BadRow (sources true 3 5 atom184733410) := by
  have h : sources true 3 5 atom184733410 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184727266 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0))))))
private def v701203920610 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0))))))))
private theorem no_v701203920610 : ¬ MinimalInterpreter v701203920610 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom184727266false : BadRow (sources false 3 5 atom184727266) := by
  have h : sources false 3 5 atom184727266 = [v701203920610] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203920610) .nil)

theorem atom184727266true : BadRow (sources true 3 5 atom184727266) := by
  have h : sources true 3 5 atom184727266 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom185339514 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private def v701204532858 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v701204532858 : ¬ MinimalInterpreter v701204532858 :=
  chain_cut false 8 (by decide)
theorem atom185339514false : BadRow (sources false 3 5 atom185339514) := by
  have h : sources false 3 5 atom185339514 = [v701204532858] := by decide +kernel
  rw [h]
  exact (.cons (no_v701204532858) .nil)

theorem atom185339514true : BadRow (sources true 3 5 atom185339514) := by
  have h : sources true 3 5 atom185339514 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom185338810 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private def v701204532154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v701204532154 : ¬ MinimalInterpreter v701204532154 :=
  w_cut false 0 (by decide)
theorem atom185338810false : BadRow (sources false 3 5 atom185338810) := by
  have h : sources false 3 5 atom185338810 = [v701204532154] := by decide +kernel
  rw [h]
  exact (.cons (no_v701204532154) .nil)

theorem atom185338810true : BadRow (sources true 3 5 atom185338810) := by
  have h : sources true 3 5 atom185338810 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom187698810 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private def v700885924378 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v700885924378 : ¬ MinimalInterpreter v700885924378 :=
  chain_cut false 3 (by decide)
private def v701206892154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))))
private theorem no_v701206892154 : ¬ MinimalInterpreter v701206892154 :=
  chain_cut false 4 (by decide)
theorem atom187698810false : BadRow (sources false 3 5 atom187698810) := by
  have h : sources false 3 5 atom187698810 = [v700885924378,v701206892154] := by decide +kernel
  rw [h]
  exact (.cons (no_v700885924378) (.cons (no_v701206892154) .nil))

theorem atom187698810true : BadRow (sources true 3 5 atom187698810) := by
  have h : sources true 3 5 atom187698810 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom187698106 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private def v700885744154 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v700885744154 : ¬ MinimalInterpreter v700885744154 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v701206891450 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))))
private theorem no_v701206891450 : ¬ MinimalInterpreter v701206891450 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
theorem atom187698106false : BadRow (sources false 3 5 atom187698106) := by
  have h : sources false 3 5 atom187698106 = [v700885744154,v701206891450] := by decide +kernel
  rw [h]
  exact (.cons (no_v700885744154) (.cons (no_v701206891450) .nil))

theorem atom187698106true : BadRow (sources true 3 5 atom187698106) := by
  have h : sources true 3 5 atom187698106 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom181407354 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))
private def v699275311642 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699275311642 : ¬ MinimalInterpreter v699275311642 :=
  w_cut false 0 (by decide)
private def v701200600698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))))
private theorem no_v701200600698 : ¬ MinimalInterpreter v701200600698 :=
  w_cut false 0 (by decide)
theorem atom181407354false : BadRow (sources false 3 5 atom181407354) := by
  have h : sources false 3 5 atom181407354 = [v699275311642,v701200600698] := by decide +kernel
  rw [h]
  exact (.cons (no_v699275311642) (.cons (no_v701200600698) .nil))

theorem atom181407354true : BadRow (sources true 3 5 atom181407354) := by
  have h : sources true 3 5 atom181407354 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom181406650 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))
private def v699275131418 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699275131418 : ¬ MinimalInterpreter v699275131418 :=
  w_cut false 0 (by decide)
private def v701200599994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))))
private theorem no_v701200599994 : ¬ MinimalInterpreter v701200599994 :=
  w_cut false 0 (by decide)
theorem atom181406650false : BadRow (sources false 3 5 atom181406650) := by
  have h : sources false 3 5 atom181406650 = [v699275131418,v701200599994] := by decide +kernel
  rw [h]
  exact (.cons (no_v699275131418) (.cons (no_v701200599994) .nil))

theorem atom181406650true : BadRow (sources true 3 5 atom181406650) := by
  have h : sources true 3 5 atom181406650 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom171183738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))
private def v701190377082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v701190377082 : ¬ MinimalInterpreter v701190377082 :=
  chain_cut false 7 (by decide)
theorem atom171183738false : BadRow (sources false 3 5 atom171183738) := by
  have h : sources false 3 5 atom171183738 = [v701190377082] := by decide +kernel
  rw [h]
  exact (.cons (no_v701190377082) .nil)

theorem atom171183738true : BadRow (sources true 3 5 atom171183738) := by
  have h : sources true 3 5 atom171183738 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom171183034 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))
private def v701190376378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v701190376378 : ¬ MinimalInterpreter v701190376378 :=
  w_cut false 0 (by decide)
theorem atom171183034false : BadRow (sources false 3 5 atom171183034) := by
  have h : sources false 3 5 atom171183034 = [v701190376378] := by decide +kernel
  rw [h]
  exact (.cons (no_v701190376378) .nil)

theorem atom171183034true : BadRow (sources true 3 5 atom171183034) := by
  have h : sources true 3 5 atom171183034 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180620922 : Term := (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))
private def v701199814266 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v701199814266 : ¬ MinimalInterpreter v701199814266 :=
  chain_cut false 3 (by decide)
theorem atom180620922false : BadRow (sources false 3 5 atom180620922) := by
  have h : sources false 3 5 atom180620922 = [v701199814266] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199814266) .nil)

theorem atom180620922true : BadRow (sources true 3 5 atom180620922) := by
  have h : sources true 3 5 atom180620922 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180620218 : Term := (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))
private def v701199813562 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v701199813562 : ¬ MinimalInterpreter v701199813562 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom180620218false : BadRow (sources false 3 5 atom180620218) := by
  have h : sources false 3 5 atom180620218 = [v701199813562] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199813562) .nil)

theorem atom180620218true : BadRow (sources true 3 5 atom180620218) := by
  have h : sources true 3 5 atom180620218 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180408034 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.var 0)))
private def v701199601378 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.var 0)))))
private theorem no_v701199601378 : ¬ MinimalInterpreter v701199601378 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.var 0))))))
theorem atom180408034false : BadRow (sources false 3 5 atom180408034) := by
  have h : sources false 3 5 atom180408034 = [v701199601378] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199601378) .nil)

theorem atom180408034true : BadRow (sources true 3 5 atom180408034) := by
  have h : sources true 3 5 atom180408034 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180401890 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.var 0)))
private def v701199595234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.var 0)))))
private theorem no_v701199595234 : ¬ MinimalInterpreter v701199595234 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
theorem atom180401890false : BadRow (sources false 3 5 atom180401890) := by
  have h : sources false 3 5 atom180401890 = [v701199595234] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199595234) .nil)

theorem atom180401890true : BadRow (sources true 3 5 atom180401890) := by
  have h : sources true 3 5 atom180401890 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180368314 : Term := (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.var 0))
private def v699009317402 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.var 0))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699009317402 : ¬ MinimalInterpreter v699009317402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v701199561658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.var 0))))
private theorem no_v701199561658 : ¬ MinimalInterpreter v701199561658 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))))
theorem atom180368314false : BadRow (sources false 3 5 atom180368314) := by
  have h : sources false 3 5 atom180368314 = [v699009317402,v701199561658] := by decide +kernel
  rw [h]
  exact (.cons (no_v699009317402) (.cons (no_v701199561658) .nil))

theorem atom180368314true : BadRow (sources true 3 5 atom180368314) := by
  have h : sources true 3 5 atom180368314 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180366778 : Term := (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 0))
private def v699008924186 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 0))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699008924186 : ¬ MinimalInterpreter v699008924186 :=
  chain_cut false 2 (by decide)
private def v701199560122 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.var 0))))
private theorem no_v701199560122 : ¬ MinimalInterpreter v701199560122 :=
  chain_cut false 3 (by decide)
theorem atom180366778false : BadRow (sources false 3 5 atom180366778) := by
  have h : sources false 3 5 atom180366778 = [v699008924186,v701199560122] := by decide +kernel
  rw [h]
  exact (.cons (no_v699008924186) (.cons (no_v701199560122) .nil))

theorem atom180366778true : BadRow (sources true 3 5 atom180366778) := by
  have h : sources true 3 5 atom180366778 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms111 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,0,1,2,0]) := by
  have h : atoms 3 5 [0,0,1,2,0] = [atom137574882,atom137572066,atom137550306,atom137547490,atom137541346,atom137181666,atom137178850,atom136531578,atom136530874,atom137121402,atom137120698,atom137157090,atom137058786,atom137041530,atom137154274,atom137148130,atom137055970,atom137049826,atom137025250,atom136893370,atom137040826,atom137020858,atom147012066,atom147009250,atom146987490,atom146984674,atom146978530,atom143462010,atom143461306,atom145821306,atom145820602,atom145805026,atom145798882,atom184602234,atom184601530,atom184596090,atom184595386,atom184593850,atom184749690,atom184748986,atom184760802,atom184757986,atom184736226,atom184733410,atom184727266,atom185339514,atom185338810,atom187698810,atom187698106,atom181407354,atom181406650,atom171183738,atom171183034,atom180620922,atom180620218,atom180408034,atom180401890,atom180368314,atom180366778] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom137574882false | exact atom137574882true) (.cons (fun lit => by cases lit <;> first | exact atom137572066false | exact atom137572066true) (.cons (fun lit => by cases lit <;> first | exact atom137550306false | exact atom137550306true) (.cons (fun lit => by cases lit <;> first | exact atom137547490false | exact atom137547490true) (.cons (fun lit => by cases lit <;> first | exact atom137541346false | exact atom137541346true) (.cons (fun lit => by cases lit <;> first | exact atom137181666false | exact atom137181666true) (.cons (fun lit => by cases lit <;> first | exact atom137178850false | exact atom137178850true) (.cons (fun lit => by cases lit <;> first | exact atom136531578false | exact atom136531578true) (.cons (fun lit => by cases lit <;> first | exact atom136530874false | exact atom136530874true) (.cons (fun lit => by cases lit <;> first | exact atom137121402false | exact atom137121402true) (.cons (fun lit => by cases lit <;> first | exact atom137120698false | exact atom137120698true) (.cons (fun lit => by cases lit <;> first | exact atom137157090false | exact atom137157090true) (.cons (fun lit => by cases lit <;> first | exact atom137058786false | exact atom137058786true) (.cons (fun lit => by cases lit <;> first | exact atom137041530false | exact atom137041530true) (.cons (fun lit => by cases lit <;> first | exact atom137154274false | exact atom137154274true) (.cons (fun lit => by cases lit <;> first | exact atom137148130false | exact atom137148130true) (.cons (fun lit => by cases lit <;> first | exact atom137055970false | exact atom137055970true) (.cons (fun lit => by cases lit <;> first | exact atom137049826false | exact atom137049826true) (.cons (fun lit => by cases lit <;> first | exact atom137025250false | exact atom137025250true) (.cons (fun lit => by cases lit <;> first | exact atom136893370false | exact atom136893370true) (.cons (fun lit => by cases lit <;> first | exact atom137040826false | exact atom137040826true) (.cons (fun lit => by cases lit <;> first | exact atom137020858false | exact atom137020858true) (.cons (fun lit => by cases lit <;> first | exact atom147012066false | exact atom147012066true) (.cons (fun lit => by cases lit <;> first | exact atom147009250false | exact atom147009250true) (.cons (fun lit => by cases lit <;> first | exact atom146987490false | exact atom146987490true) (.cons (fun lit => by cases lit <;> first | exact atom146984674false | exact atom146984674true) (.cons (fun lit => by cases lit <;> first | exact atom146978530false | exact atom146978530true) (.cons (fun lit => by cases lit <;> first | exact atom143462010false | exact atom143462010true) (.cons (fun lit => by cases lit <;> first | exact atom143461306false | exact atom143461306true) (.cons (fun lit => by cases lit <;> first | exact atom145821306false | exact atom145821306true) (.cons (fun lit => by cases lit <;> first | exact atom145820602false | exact atom145820602true) (.cons (fun lit => by cases lit <;> first | exact atom145805026false | exact atom145805026true) (.cons (fun lit => by cases lit <;> first | exact atom145798882false | exact atom145798882true) (.cons (fun lit => by cases lit <;> first | exact atom184602234false | exact atom184602234true) (.cons (fun lit => by cases lit <;> first | exact atom184601530false | exact atom184601530true) (.cons (fun lit => by cases lit <;> first | exact atom184596090false | exact atom184596090true) (.cons (fun lit => by cases lit <;> first | exact atom184595386false | exact atom184595386true) (.cons (fun lit => by cases lit <;> first | exact atom184593850false | exact atom184593850true) (.cons (fun lit => by cases lit <;> first | exact atom184749690false | exact atom184749690true) (.cons (fun lit => by cases lit <;> first | exact atom184748986false | exact atom184748986true) (.cons (fun lit => by cases lit <;> first | exact atom184760802false | exact atom184760802true) (.cons (fun lit => by cases lit <;> first | exact atom184757986false | exact atom184757986true) (.cons (fun lit => by cases lit <;> first | exact atom184736226false | exact atom184736226true) (.cons (fun lit => by cases lit <;> first | exact atom184733410false | exact atom184733410true) (.cons (fun lit => by cases lit <;> first | exact atom184727266false | exact atom184727266true) (.cons (fun lit => by cases lit <;> first | exact atom185339514false | exact atom185339514true) (.cons (fun lit => by cases lit <;> first | exact atom185338810false | exact atom185338810true) (.cons (fun lit => by cases lit <;> first | exact atom187698810false | exact atom187698810true) (.cons (fun lit => by cases lit <;> first | exact atom187698106false | exact atom187698106true) (.cons (fun lit => by cases lit <;> first | exact atom181407354false | exact atom181407354true) (.cons (fun lit => by cases lit <;> first | exact atom181406650false | exact atom181406650true) (.cons (fun lit => by cases lit <;> first | exact atom171183738false | exact atom171183738true) (.cons (fun lit => by cases lit <;> first | exact atom171183034false | exact atom171183034true) (.cons (fun lit => by cases lit <;> first | exact atom180620922false | exact atom180620922true) (.cons (fun lit => by cases lit <;> first | exact atom180620218false | exact atom180620218true) (.cons (fun lit => by cases lit <;> first | exact atom180408034false | exact atom180408034true) (.cons (fun lit => by cases lit <;> first | exact atom180401890false | exact atom180401890true) (.cons (fun lit => by cases lit <;> first | exact atom180368314false | exact atom180368314true) (.cons (fun lit => by cases lit <;> first | exact atom180366778false | exact atom180366778true) .nil)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
private def atom137572118 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))))
private def v701156765462 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))))))
private theorem no_v701156765462 : ¬ MinimalInterpreter v701156765462 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (r := (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (so_closed_lam (by decide) (.var 0))) (.var 1)))) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))
theorem atom137572118false : BadRow (sources false 3 5 atom137572118) := by
  have h : sources false 3 5 atom137572118 = [v701156765462] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156765462) .nil)

theorem atom137572118true : BadRow (sources true 3 5 atom137572118) := by
  have h : sources true 3 5 atom137572118 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137547542 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1)))))
private def v701156740886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1)))))))
private theorem no_v701156740886 : ¬ MinimalInterpreter v701156740886 :=
  chain_cut false 2 (by decide)
theorem atom137547542false : BadRow (sources false 3 5 atom137547542) := by
  have h : sources false 3 5 atom137547542 = [v701156740886] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156740886) .nil)

theorem atom137547542true : BadRow (sources true 3 5 atom137547542) := by
  have h : sources true 3 5 atom137547542 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137541398 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1)))))
private def v701156734742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1)))))))
private theorem no_v701156734742 : ¬ MinimalInterpreter v701156734742 :=
  chain_cut false 2 (by decide)
theorem atom137541398false : BadRow (sources false 3 5 atom137541398) := by
  have h : sources false 3 5 atom137541398 = [v701156734742] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156734742) .nil)

theorem atom137541398true : BadRow (sources true 3 5 atom137541398) := by
  have h : sources true 3 5 atom137541398 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137178902 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))))
private def v701156372246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))))))
private theorem no_v701156372246 : ¬ MinimalInterpreter v701156372246 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (so_closed_lam (by decide) (.var 0))) (.var 1))) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))
theorem atom137178902false : BadRow (sources false 3 5 atom137178902) := by
  have h : sources false 3 5 atom137178902 = [v701156372246] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156372246) .nil)

theorem atom137178902true : BadRow (sources true 3 5 atom137178902) := by
  have h : sources true 3 5 atom137178902 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom136531766 : Term := (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.app (.var 0) (.var 1))))))
private def v701155725110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v701155725110 : ¬ MinimalInterpreter v701155725110 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom136531766false : BadRow (sources false 3 5 atom136531766) := by
  have h : sources false 3 5 atom136531766 = [v701155725110] := by decide +kernel
  rw [h]
  exact (.cons (no_v701155725110) .nil)

theorem atom136531766true : BadRow (sources true 3 5 atom136531766) := by
  have h : sources true 3 5 atom136531766 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom136530902 : Term := (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 1)))))
private def v701155724246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v701155724246 : ¬ MinimalInterpreter v701155724246 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
theorem atom136530902false : BadRow (sources false 3 5 atom136530902) := by
  have h : sources false 3 5 atom136530902 = [v701155724246] := by decide +kernel
  rw [h]
  exact (.cons (no_v701155724246) .nil)

theorem atom136530902true : BadRow (sources true 3 5 atom136530902) := by
  have h : sources true 3 5 atom136530902 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137121590 : Term := (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 0) (.var 1))))))
private def v701156314934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v701156314934 : ¬ MinimalInterpreter v701156314934 :=
  chain_cut false 2 (by decide)
theorem atom137121590false : BadRow (sources false 3 5 atom137121590) := by
  have h : sources false 3 5 atom137121590 = [v701156314934] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156314934) .nil)

theorem atom137121590true : BadRow (sources true 3 5 atom137121590) := by
  have h : sources true 3 5 atom137121590 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137120726 : Term := (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 1)))))
private def v701156314070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v701156314070 : ¬ MinimalInterpreter v701156314070 :=
  chain_cut false 2 (by decide)
theorem atom137120726false : BadRow (sources false 3 5 atom137120726) := by
  have h : sources false 3 5 atom137120726 = [v701156314070] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156314070) .nil)

theorem atom137120726true : BadRow (sources true 3 5 atom137120726) := by
  have h : sources true 3 5 atom137120726 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137041718 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.var 0) (.var 1)))))
private def v701156235062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.var 0) (.var 1)))))))
private theorem no_v701156235062 : ¬ MinimalInterpreter v701156235062 :=
  chain_cut false 2 (by decide)
theorem atom137041718false : BadRow (sources false 3 5 atom137041718) := by
  have h : sources false 3 5 atom137041718 = [v701156235062] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156235062) .nil)

theorem atom137041718true : BadRow (sources true 3 5 atom137041718) := by
  have h : sources true 3 5 atom137041718 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137154326 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))) (.var 1))))
private def v701156347670 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.lam (.var 0))))) (.var 1))))))
private theorem no_v701156347670 : ¬ MinimalInterpreter v701156347670 :=
  chain_cut false 2 (by decide)
theorem atom137154326false : BadRow (sources false 3 5 atom137154326) := by
  have h : sources false 3 5 atom137154326 = [v701156347670] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156347670) .nil)

theorem atom137154326true : BadRow (sources true 3 5 atom137154326) := by
  have h : sources true 3 5 atom137154326 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137148182 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))) (.var 1))))
private def v701156341526 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.lam (.var 0)))) (.var 1))))))
private theorem no_v701156341526 : ¬ MinimalInterpreter v701156341526 :=
  chain_cut false 2 (by decide)
theorem atom137148182false : BadRow (sources false 3 5 atom137148182) := by
  have h : sources false 3 5 atom137148182 = [v701156341526] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156341526) .nil)

theorem atom137148182true : BadRow (sources true 3 5 atom137148182) := by
  have h : sources true 3 5 atom137148182 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137056022 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 0)))) (.var 1))))
private def v701156249366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.lam (.var 0)))) (.var 1))))))
private theorem no_v701156249366 : ¬ MinimalInterpreter v701156249366 :=
  chain_cut false 2 (by decide)
theorem atom137056022false : BadRow (sources false 3 5 atom137056022) := by
  have h : sources false 3 5 atom137056022 = [v701156249366] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156249366) .nil)

theorem atom137056022true : BadRow (sources true 3 5 atom137056022) := by
  have h : sources true 3 5 atom137056022 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom136893398 : Term := (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0))) (.var 1))))
private def v701156086742 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v701156086742 : ¬ MinimalInterpreter v701156086742 :=
  chain_cut false 7 (by decide)
theorem atom136893398false : BadRow (sources false 3 5 atom136893398) := by
  have h : sources false 3 5 atom136893398 = [v701156086742] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156086742) .nil)

theorem atom136893398true : BadRow (sources true 3 5 atom136893398) := by
  have h : sources true 3 5 atom136893398 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137040854 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 0))) (.var 1))))
private def v701156234198 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 0))) (.var 1))))))
private theorem no_v701156234198 : ¬ MinimalInterpreter v701156234198 :=
  chain_cut false 2 (by decide)
theorem atom137040854false : BadRow (sources false 3 5 atom137040854) := by
  have h : sources false 3 5 atom137040854 = [v701156234198] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156234198) .nil)

theorem atom137040854true : BadRow (sources true 3 5 atom137040854) := by
  have h : sources true 3 5 atom137040854 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137049878 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 0))) (.var 1))))
private def v701156243222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.lam (.var 0))) (.var 1))))))
private theorem no_v701156243222 : ¬ MinimalInterpreter v701156243222 :=
  chain_cut false 2 (by decide)
theorem atom137049878false : BadRow (sources false 3 5 atom137049878) := by
  have h : sources false 3 5 atom137049878 = [v701156243222] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156243222) .nil)

theorem atom137049878true : BadRow (sources true 3 5 atom137049878) := by
  have h : sources true 3 5 atom137049878 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137025302 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 0))) (.var 1))))
private def v701156218646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.lam (.var 0))) (.var 1))))))
private theorem no_v701156218646 : ¬ MinimalInterpreter v701156218646 :=
  chain_cut false 2 (by decide)
theorem atom137025302false : BadRow (sources false 3 5 atom137025302) := by
  have h : sources false 3 5 atom137025302 = [v701156218646] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156218646) .nil)

theorem atom137025302true : BadRow (sources true 3 5 atom137025302) := by
  have h : sources true 3 5 atom137025302 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137020886 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 0)) (.var 1))))
private def v701156214230 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 0)) (.var 1))))))
private theorem no_v701156214230 : ¬ MinimalInterpreter v701156214230 :=
  chain_cut false 2 (by decide)
theorem atom137020886false : BadRow (sources false 3 5 atom137020886) := by
  have h : sources false 3 5 atom137020886 = [v701156214230] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156214230) .nil)

theorem atom137020886true : BadRow (sources true 3 5 atom137020886) := by
  have h : sources true 3 5 atom137020886 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom147009302 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))))
private def v701166202646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))))))
private theorem no_v701166202646 : ¬ MinimalInterpreter v701166202646 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.app (.var 0) (.lam (r := (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (so_closed_lam (by decide) (.var 0))) (.var 1))) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 0)) (by decide) (by decide))) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)))))
theorem atom147009302false : BadRow (sources false 3 5 atom147009302) := by
  have h : sources false 3 5 atom147009302 = [v701166202646] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166202646) .nil)

theorem atom147009302true : BadRow (sources true 3 5 atom147009302) := by
  have h : sources true 3 5 atom147009302 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146984726 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1)))))
private def v701166178070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1)))))))
private theorem no_v701166178070 : ¬ MinimalInterpreter v701166178070 :=
  chain_cut false 2 (by decide)
theorem atom146984726false : BadRow (sources false 3 5 atom146984726) := by
  have h : sources false 3 5 atom146984726 = [v701166178070] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166178070) .nil)

theorem atom146984726true : BadRow (sources true 3 5 atom146984726) := by
  have h : sources true 3 5 atom146984726 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146978582 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1)))))
private def v701166171926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1)))))))
private theorem no_v701166171926 : ¬ MinimalInterpreter v701166171926 :=
  chain_cut false 2 (by decide)
theorem atom146978582false : BadRow (sources false 3 5 atom146978582) := by
  have h : sources false 3 5 atom146978582 = [v701166171926] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166171926) .nil)

theorem atom146978582true : BadRow (sources true 3 5 atom146978582) := by
  have h : sources true 3 5 atom146978582 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom143462198 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))
private def v701162655542 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v701162655542 : ¬ MinimalInterpreter v701162655542 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
theorem atom143462198false : BadRow (sources false 3 5 atom143462198) := by
  have h : sources false 3 5 atom143462198 = [v701162655542] := by decide +kernel
  rw [h]
  exact (.cons (no_v701162655542) .nil)

theorem atom143462198true : BadRow (sources true 3 5 atom143462198) := by
  have h : sources true 3 5 atom143462198 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom143461334 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))
private def v701162654678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v701162654678 : ¬ MinimalInterpreter v701162654678 :=
  w_cut false 0 (by decide)
theorem atom143461334false : BadRow (sources false 3 5 atom143461334) := by
  have h : sources false 3 5 atom143461334 = [v701162654678] := by decide +kernel
  rw [h]
  exact (.cons (no_v701162654678) .nil)

theorem atom143461334true : BadRow (sources true 3 5 atom143461334) := by
  have h : sources true 3 5 atom143461334 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145821494 : Term := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))
private def v701165014838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v701165014838 : ¬ MinimalInterpreter v701165014838 :=
  chain_cut false 2 (by decide)
theorem atom145821494false : BadRow (sources false 3 5 atom145821494) := by
  have h : sources false 3 5 atom145821494 = [v701165014838] := by decide +kernel
  rw [h]
  exact (.cons (no_v701165014838) .nil)

theorem atom145821494true : BadRow (sources true 3 5 atom145821494) := by
  have h : sources true 3 5 atom145821494 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145820630 : Term := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))
private def v701165013974 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v701165013974 : ¬ MinimalInterpreter v701165013974 :=
  chain_cut false 2 (by decide)
theorem atom145820630false : BadRow (sources false 3 5 atom145820630) := by
  have h : sources false 3 5 atom145820630 = [v701165013974] := by decide +kernel
  rw [h]
  exact (.cons (no_v701165013974) .nil)

theorem atom145820630true : BadRow (sources true 3 5 atom145820630) := by
  have h : sources true 3 5 atom145820630 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184602422 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))
private def v701203795766 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v701203795766 : ¬ MinimalInterpreter v701203795766 :=
  chain_cut false 4 (by decide)
theorem atom184602422false : BadRow (sources false 3 5 atom184602422) := by
  have h : sources false 3 5 atom184602422 = [v701203795766] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203795766) .nil)

theorem atom184602422true : BadRow (sources true 3 5 atom184602422) := by
  have h : sources true 3 5 atom184602422 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184601558 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private def v701203794902 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v701203794902 : ¬ MinimalInterpreter v701203794902 :=
  chain_cut false 4 (by decide)
theorem atom184601558false : BadRow (sources false 3 5 atom184601558) := by
  have h : sources false 3 5 atom184601558 = [v701203794902] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203794902) .nil)

theorem atom184601558true : BadRow (sources true 3 5 atom184601558) := by
  have h : sources true 3 5 atom184601558 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184596278 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))
private def v701203789622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1)))))))))
private theorem no_v701203789622 : ¬ MinimalInterpreter v701203789622 :=
  chain_cut false 4 (by decide)
theorem atom184596278false : BadRow (sources false 3 5 atom184596278) := by
  have h : sources false 3 5 atom184596278 = [v701203789622] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203789622) .nil)

theorem atom184596278true : BadRow (sources true 3 5 atom184596278) := by
  have h : sources true 3 5 atom184596278 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184595414 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))
private def v701203788758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1))))))))
private theorem no_v701203788758 : ¬ MinimalInterpreter v701203788758 :=
  chain_cut false 4 (by decide)
theorem atom184595414false : BadRow (sources false 3 5 atom184595414) := by
  have h : sources false 3 5 atom184595414 = [v701203788758] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203788758) .nil)

theorem atom184595414true : BadRow (sources true 3 5 atom184595414) := by
  have h : sources true 3 5 atom184595414 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184593878 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))
private def v701203787222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1))))))))
private theorem no_v701203787222 : ¬ MinimalInterpreter v701203787222 :=
  chain_cut false 4 (by decide)
theorem atom184593878false : BadRow (sources false 3 5 atom184593878) := by
  have h : sources false 3 5 atom184593878 = [v701203787222] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203787222) .nil)

theorem atom184593878true : BadRow (sources true 3 5 atom184593878) := by
  have h : sources true 3 5 atom184593878 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184749878 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private def v701203943222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v701203943222 : ¬ MinimalInterpreter v701203943222 :=
  chain_cut false 4 (by decide)
theorem atom184749878false : BadRow (sources false 3 5 atom184749878) := by
  have h : sources false 3 5 atom184749878 = [v701203943222] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203943222) .nil)

theorem atom184749878true : BadRow (sources true 3 5 atom184749878) := by
  have h : sources true 3 5 atom184749878 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184749014 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private def v701203942358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v701203942358 : ¬ MinimalInterpreter v701203942358 :=
  chain_cut false 4 (by decide)
theorem atom184749014false : BadRow (sources false 3 5 atom184749014) := by
  have h : sources false 3 5 atom184749014 = [v701203942358] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203942358) .nil)

theorem atom184749014true : BadRow (sources true 3 5 atom184749014) := by
  have h : sources true 3 5 atom184749014 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184758038 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))))
private def v701203951382 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1))))))))
private theorem no_v701203951382 : ¬ MinimalInterpreter v701203951382 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.app (.var 0) (.lam (.var 0)))) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (so_closed_lam (by decide) (.var 0))) (.var 1))) (.app (.app (.var 1) (so_closed_lam (by decide) (.var 0))) (.var 0)) (by decide) (by decide)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide))))))
theorem atom184758038false : BadRow (sources false 3 5 atom184758038) := by
  have h : sources false 3 5 atom184758038 = [v701203951382] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203951382) .nil)

theorem atom184758038true : BadRow (sources true 3 5 atom184758038) := by
  have h : sources true 3 5 atom184758038 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184733462 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1)))))
private def v701203926806 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1)))))))
private theorem no_v701203926806 : ¬ MinimalInterpreter v701203926806 :=
  chain_cut true 5 (by decide)
theorem atom184733462false : BadRow (sources false 3 5 atom184733462) := by
  have h : sources false 3 5 atom184733462 = [v701203926806] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203926806) .nil)

theorem atom184733462true : BadRow (sources true 3 5 atom184733462) := by
  have h : sources true 3 5 atom184733462 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184727318 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1)))))
private def v701203920662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1)))))))
private theorem no_v701203920662 : ¬ MinimalInterpreter v701203920662 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom184727318false : BadRow (sources false 3 5 atom184727318) := by
  have h : sources false 3 5 atom184727318 = [v701203920662] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203920662) .nil)

theorem atom184727318true : BadRow (sources true 3 5 atom184727318) := by
  have h : sources true 3 5 atom184727318 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom185339702 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private def v701204533046 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v701204533046 : ¬ MinimalInterpreter v701204533046 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom185339702false : BadRow (sources false 3 5 atom185339702) := by
  have h : sources false 3 5 atom185339702 = [v701204533046] := by decide +kernel
  rw [h]
  exact (.cons (no_v701204533046) .nil)

theorem atom185339702true : BadRow (sources true 3 5 atom185339702) := by
  have h : sources true 3 5 atom185339702 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom185338838 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private def v701204532182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v701204532182 : ¬ MinimalInterpreter v701204532182 :=
  chain_cut false 7 (by decide)
theorem atom185338838false : BadRow (sources false 3 5 atom185338838) := by
  have h : sources false 3 5 atom185338838 = [v701204532182] := by decide +kernel
  rw [h]
  exact (.cons (no_v701204532182) .nil)

theorem atom185338838true : BadRow (sources true 3 5 atom185338838) := by
  have h : sources true 3 5 atom185338838 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom187698998 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private def v700885972506 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v700885972506 : ¬ MinimalInterpreter v700885972506 :=
  chain_cut false 3 (by decide)
private def v701206892342 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))))
private theorem no_v701206892342 : ¬ MinimalInterpreter v701206892342 :=
  chain_cut false 4 (by decide)
theorem atom187698998false : BadRow (sources false 3 5 atom187698998) := by
  have h : sources false 3 5 atom187698998 = [v700885972506,v701206892342] := by decide +kernel
  rw [h]
  exact (.cons (no_v700885972506) (.cons (no_v701206892342) .nil))

theorem atom187698998true : BadRow (sources true 3 5 atom187698998) := by
  have h : sources true 3 5 atom187698998 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom187698134 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private def v700885751322 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v700885751322 : ¬ MinimalInterpreter v700885751322 :=
  chain_cut false 3 (by decide)
private def v701206891478 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))))
private theorem no_v701206891478 : ¬ MinimalInterpreter v701206891478 :=
  chain_cut false 4 (by decide)
theorem atom187698134false : BadRow (sources false 3 5 atom187698134) := by
  have h : sources false 3 5 atom187698134 = [v700885751322,v701206891478] := by decide +kernel
  rw [h]
  exact (.cons (no_v700885751322) (.cons (no_v701206891478) .nil))

theorem atom187698134true : BadRow (sources true 3 5 atom187698134) := by
  have h : sources true 3 5 atom187698134 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom181407542 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))
private def v699275359770 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699275359770 : ¬ MinimalInterpreter v699275359770 :=
  w_cut false 0 (by decide)
private def v701200600886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))
private theorem no_v701200600886 : ¬ MinimalInterpreter v701200600886 :=
  w_cut false 0 (by decide)
theorem atom181407542false : BadRow (sources false 3 5 atom181407542) := by
  have h : sources false 3 5 atom181407542 = [v699275359770,v701200600886] := by decide +kernel
  rw [h]
  exact (.cons (no_v699275359770) (.cons (no_v701200600886) .nil))

theorem atom181407542true : BadRow (sources true 3 5 atom181407542) := by
  have h : sources true 3 5 atom181407542 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom181406678 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))
private def v699275138586 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699275138586 : ¬ MinimalInterpreter v699275138586 :=
  w_cut false 0 (by decide)
private def v701200600022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))))
private theorem no_v701200600022 : ¬ MinimalInterpreter v701200600022 :=
  w_cut false 0 (by decide)
theorem atom181406678false : BadRow (sources false 3 5 atom181406678) := by
  have h : sources false 3 5 atom181406678 = [v699275138586,v701200600022] := by decide +kernel
  rw [h]
  exact (.cons (no_v699275138586) (.cons (no_v701200600022) .nil))

theorem atom181406678true : BadRow (sources true 3 5 atom181406678) := by
  have h : sources true 3 5 atom181406678 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom171183926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))
private def v701190377270 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v701190377270 : ¬ MinimalInterpreter v701190377270 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom171183926false : BadRow (sources false 3 5 atom171183926) := by
  have h : sources false 3 5 atom171183926 = [v701190377270] := by decide +kernel
  rw [h]
  exact (.cons (no_v701190377270) .nil)

theorem atom171183926true : BadRow (sources true 3 5 atom171183926) := by
  have h : sources true 3 5 atom171183926 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom171183062 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))
private def v701190376406 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v701190376406 : ¬ MinimalInterpreter v701190376406 :=
  chain_cut false 6 (by decide)
theorem atom171183062false : BadRow (sources false 3 5 atom171183062) := by
  have h : sources false 3 5 atom171183062 = [v701190376406] := by decide +kernel
  rw [h]
  exact (.cons (no_v701190376406) .nil)

theorem atom171183062true : BadRow (sources true 3 5 atom171183062) := by
  have h : sources true 3 5 atom171183062 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180621110 : Term := (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))
private def v701199814454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v701199814454 : ¬ MinimalInterpreter v701199814454 :=
  chain_cut false 3 (by decide)
theorem atom180621110false : BadRow (sources false 3 5 atom180621110) := by
  have h : sources false 3 5 atom180621110 = [v701199814454] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199814454) .nil)

theorem atom180621110true : BadRow (sources true 3 5 atom180621110) := by
  have h : sources true 3 5 atom180621110 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180620246 : Term := (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))
private def v701199813590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v701199813590 : ¬ MinimalInterpreter v701199813590 :=
  chain_cut false 3 (by decide)
theorem atom180620246false : BadRow (sources false 3 5 atom180620246) := by
  have h : sources false 3 5 atom180620246 = [v701199813590] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199813590) .nil)

theorem atom180620246true : BadRow (sources true 3 5 atom180620246) := by
  have h : sources true 3 5 atom180620246 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms112 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,0,2,0,1]) := by
  have h : atoms 3 5 [0,0,2,0,1] = [atom137572118,atom137547542,atom137541398,atom137178902,atom136531766,atom136530902,atom137121590,atom137120726,atom137041718,atom137154326,atom137148182,atom137056022,atom136893398,atom137040854,atom137049878,atom137025302,atom137020886,atom147009302,atom146984726,atom146978582,atom143462198,atom143461334,atom145821494,atom145820630,atom184602422,atom184601558,atom184596278,atom184595414,atom184593878,atom184749878,atom184749014,atom184758038,atom184733462,atom184727318,atom185339702,atom185338838,atom187698998,atom187698134,atom181407542,atom181406678,atom171183926,atom171183062,atom180621110,atom180620246] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom137572118false | exact atom137572118true) (.cons (fun lit => by cases lit <;> first | exact atom137547542false | exact atom137547542true) (.cons (fun lit => by cases lit <;> first | exact atom137541398false | exact atom137541398true) (.cons (fun lit => by cases lit <;> first | exact atom137178902false | exact atom137178902true) (.cons (fun lit => by cases lit <;> first | exact atom136531766false | exact atom136531766true) (.cons (fun lit => by cases lit <;> first | exact atom136530902false | exact atom136530902true) (.cons (fun lit => by cases lit <;> first | exact atom137121590false | exact atom137121590true) (.cons (fun lit => by cases lit <;> first | exact atom137120726false | exact atom137120726true) (.cons (fun lit => by cases lit <;> first | exact atom137041718false | exact atom137041718true) (.cons (fun lit => by cases lit <;> first | exact atom137154326false | exact atom137154326true) (.cons (fun lit => by cases lit <;> first | exact atom137148182false | exact atom137148182true) (.cons (fun lit => by cases lit <;> first | exact atom137056022false | exact atom137056022true) (.cons (fun lit => by cases lit <;> first | exact atom136893398false | exact atom136893398true) (.cons (fun lit => by cases lit <;> first | exact atom137040854false | exact atom137040854true) (.cons (fun lit => by cases lit <;> first | exact atom137049878false | exact atom137049878true) (.cons (fun lit => by cases lit <;> first | exact atom137025302false | exact atom137025302true) (.cons (fun lit => by cases lit <;> first | exact atom137020886false | exact atom137020886true) (.cons (fun lit => by cases lit <;> first | exact atom147009302false | exact atom147009302true) (.cons (fun lit => by cases lit <;> first | exact atom146984726false | exact atom146984726true) (.cons (fun lit => by cases lit <;> first | exact atom146978582false | exact atom146978582true) (.cons (fun lit => by cases lit <;> first | exact atom143462198false | exact atom143462198true) (.cons (fun lit => by cases lit <;> first | exact atom143461334false | exact atom143461334true) (.cons (fun lit => by cases lit <;> first | exact atom145821494false | exact atom145821494true) (.cons (fun lit => by cases lit <;> first | exact atom145820630false | exact atom145820630true) (.cons (fun lit => by cases lit <;> first | exact atom184602422false | exact atom184602422true) (.cons (fun lit => by cases lit <;> first | exact atom184601558false | exact atom184601558true) (.cons (fun lit => by cases lit <;> first | exact atom184596278false | exact atom184596278true) (.cons (fun lit => by cases lit <;> first | exact atom184595414false | exact atom184595414true) (.cons (fun lit => by cases lit <;> first | exact atom184593878false | exact atom184593878true) (.cons (fun lit => by cases lit <;> first | exact atom184749878false | exact atom184749878true) (.cons (fun lit => by cases lit <;> first | exact atom184749014false | exact atom184749014true) (.cons (fun lit => by cases lit <;> first | exact atom184758038false | exact atom184758038true) (.cons (fun lit => by cases lit <;> first | exact atom184733462false | exact atom184733462true) (.cons (fun lit => by cases lit <;> first | exact atom184727318false | exact atom184727318true) (.cons (fun lit => by cases lit <;> first | exact atom185339702false | exact atom185339702true) (.cons (fun lit => by cases lit <;> first | exact atom185338838false | exact atom185338838true) (.cons (fun lit => by cases lit <;> first | exact atom187698998false | exact atom187698998true) (.cons (fun lit => by cases lit <;> first | exact atom187698134false | exact atom187698134true) (.cons (fun lit => by cases lit <;> first | exact atom181407542false | exact atom181407542true) (.cons (fun lit => by cases lit <;> first | exact atom181406678false | exact atom181406678true) (.cons (fun lit => by cases lit <;> first | exact atom171183926false | exact atom171183926true) (.cons (fun lit => by cases lit <;> first | exact atom171183062false | exact atom171183062true) (.cons (fun lit => by cases lit <;> first | exact atom180621110false | exact atom180621110true) (.cons (fun lit => by cases lit <;> first | exact atom180620246false | exact atom180620246true) .nil))))))))))))))))))))))))))))))))))))))))))))
private def atom137575650 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))))
private def v701156768994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))))))
private theorem no_v701156768994 : ¬ MinimalInterpreter v701156768994 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137575650false : BadRow (sources false 3 5 atom137575650) := by
  have h : sources false 3 5 atom137575650 = [v701156768994] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156768994) .nil)

theorem atom137575650true : BadRow (sources true 3 5 atom137575650) := by
  have h : sources true 3 5 atom137575650 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137572194 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))))
private def v701156765538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))))))
private theorem no_v701156765538 : ¬ MinimalInterpreter v701156765538 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (g := (.app (.var 0) (.app (.var 0) (.var 1)))) (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_closed_lam (by decide) (.var 0))))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137572194false : BadRow (sources false 3 5 atom137572194) := by
  have h : sources false 3 5 atom137572194 = [v701156765538] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156765538) .nil)

theorem atom137572194true : BadRow (sources true 3 5 atom137572194) := by
  have h : sources true 3 5 atom137572194 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137551074 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0)))))))
private def v701156744418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v701156744418 : ¬ MinimalInterpreter v701156744418 :=
  chain_cut false 2 (by decide)
theorem atom137551074false : BadRow (sources false 3 5 atom137551074) := by
  have h : sources false 3 5 atom137551074 = [v701156744418] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156744418) .nil)

theorem atom137551074true : BadRow (sources true 3 5 atom137551074) := by
  have h : sources true 3 5 atom137551074 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137547618 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))))))
private def v701156740962 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))))))))
private theorem no_v701156740962 : ¬ MinimalInterpreter v701156740962 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.lam (.var 0))))) (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (so_closed_lam (by decide) (.var 0)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137547618false : BadRow (sources false 3 5 atom137547618) := by
  have h : sources false 3 5 atom137547618 = [v701156740962] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156740962) .nil)

theorem atom137547618true : BadRow (sources true 3 5 atom137547618) := by
  have h : sources true 3 5 atom137547618 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137541474 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0))))))
private def v701156734818 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0))))))))
private theorem no_v701156734818 : ¬ MinimalInterpreter v701156734818 :=
  chain_cut false 2 (by decide)
theorem atom137541474false : BadRow (sources false 3 5 atom137541474) := by
  have h : sources false 3 5 atom137541474 = [v701156734818] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156734818) .nil)

theorem atom137541474true : BadRow (sources true 3 5 atom137541474) := by
  have h : sources true 3 5 atom137541474 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137182434 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))))
private def v701156375778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v701156375778 : ¬ MinimalInterpreter v701156375778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (so_closed_lam (by decide) (.var 0))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137182434false : BadRow (sources false 3 5 atom137182434) := by
  have h : sources false 3 5 atom137182434 = [v701156375778] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156375778) .nil)

theorem atom137182434true : BadRow (sources true 3 5 atom137182434) := by
  have h : sources true 3 5 atom137182434 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137178978 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))))
private def v701156372322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))))))
private theorem no_v701156372322 : ¬ MinimalInterpreter v701156372322 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (g := (.app (.app (.var 0) (.var 0)) (.var 1))) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (so_closed_lam (by decide) (.var 0)))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137178978false : BadRow (sources false 3 5 atom137178978) := by
  have h : sources false 3 5 atom137178978 = [v701156372322] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156372322) .nil)

theorem atom137178978true : BadRow (sources true 3 5 atom137178978) := by
  have h : sources true 3 5 atom137178978 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom136531770 : Term := (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.app (.var 1) (.var 0))))))
private def v701155725114 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v701155725114 : ¬ MinimalInterpreter v701155725114 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom136531770false : BadRow (sources false 3 5 atom136531770) := by
  have h : sources false 3 5 atom136531770 = [v701155725114] := by decide +kernel
  rw [h]
  exact (.cons (no_v701155725114) .nil)

theorem atom136531770true : BadRow (sources true 3 5 atom136531770) := by
  have h : sources true 3 5 atom136531770 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom136530906 : Term := (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)))))
private def v701155724250 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v701155724250 : ¬ MinimalInterpreter v701155724250 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom136530906false : BadRow (sources false 3 5 atom136530906) := by
  have h : sources false 3 5 atom136530906 = [v701155724250] := by decide +kernel
  rw [h]
  exact (.cons (no_v701155724250) .nil)

theorem atom136530906true : BadRow (sources true 3 5 atom136530906) := by
  have h : sources true 3 5 atom136530906 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137121594 : Term := (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 1) (.var 0))))))
private def v701156314938 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v701156314938 : ¬ MinimalInterpreter v701156314938 :=
  chain_cut false 2 (by decide)
theorem atom137121594false : BadRow (sources false 3 5 atom137121594) := by
  have h : sources false 3 5 atom137121594 = [v701156314938] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156314938) .nil)

theorem atom137121594true : BadRow (sources true 3 5 atom137121594) := by
  have h : sources true 3 5 atom137121594 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137120730 : Term := (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)))))
private def v701156314074 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v701156314074 : ¬ MinimalInterpreter v701156314074 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 0)))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137120730false : BadRow (sources false 3 5 atom137120730) := by
  have h : sources false 3 5 atom137120730 = [v701156314074] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156314074) .nil)

theorem atom137120730true : BadRow (sources true 3 5 atom137120730) := by
  have h : sources true 3 5 atom137120730 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137157858 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 1) (.lam (.var 0))))))
private def v701156351202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 1) (.lam (.var 0))))))))
private theorem no_v701156351202 : ¬ MinimalInterpreter v701156351202 :=
  chain_cut false 2 (by decide)
theorem atom137157858false : BadRow (sources false 3 5 atom137157858) := by
  have h : sources false 3 5 atom137157858 = [v701156351202] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156351202) .nil)

theorem atom137157858true : BadRow (sources true 3 5 atom137157858) := by
  have h : sources true 3 5 atom137157858 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137059554 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.lam (.var 0))))))
private def v701156252898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.lam (.var 0))))))))
private theorem no_v701156252898 : ¬ MinimalInterpreter v701156252898 :=
  chain_cut false 2 (by decide)
theorem atom137059554false : BadRow (sources false 3 5 atom137059554) := by
  have h : sources false 3 5 atom137059554 = [v701156252898] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156252898) .nil)

theorem atom137059554true : BadRow (sources true 3 5 atom137059554) := by
  have h : sources true 3 5 atom137059554 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137041722 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.var 1) (.var 0)))))
private def v701156235066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.app (.var 1) (.var 0)))))))
private theorem no_v701156235066 : ¬ MinimalInterpreter v701156235066 :=
  chain_cut false 2 (by decide)
theorem atom137041722false : BadRow (sources false 3 5 atom137041722) := by
  have h : sources false 3 5 atom137041722 = [v701156235066] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156235066) .nil)

theorem atom137041722true : BadRow (sources true 3 5 atom137041722) := by
  have h : sources true 3 5 atom137041722 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137154402 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.var 0)))))
private def v701156347746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.var 0)))))))
private theorem no_v701156347746 : ¬ MinimalInterpreter v701156347746 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.lam (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.lam (.var 0)))) (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137154402false : BadRow (sources false 3 5 atom137154402) := by
  have h : sources false 3 5 atom137154402 = [v701156347746] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156347746) .nil)

theorem atom137154402true : BadRow (sources true 3 5 atom137154402) := by
  have h : sources true 3 5 atom137154402 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137148258 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.lam (.var 0)))))
private def v701156341602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.lam (.var 0)))))))
private theorem no_v701156341602 : ¬ MinimalInterpreter v701156341602 :=
  chain_cut false 2 (by decide)
theorem atom137148258false : BadRow (sources false 3 5 atom137148258) := by
  have h : sources false 3 5 atom137148258 = [v701156341602] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156341602) .nil)

theorem atom137148258true : BadRow (sources true 3 5 atom137148258) := by
  have h : sources true 3 5 atom137148258 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137056098 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.lam (.var 0)))))
private def v701156249442 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.lam (.var 0)))))))
private theorem no_v701156249442 : ¬ MinimalInterpreter v701156249442 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.lam (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.lam (.var 0)))) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137056098false : BadRow (sources false 3 5 atom137056098) := by
  have h : sources false 3 5 atom137056098 = [v701156249442] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156249442) .nil)

theorem atom137056098true : BadRow (sources true 3 5 atom137056098) := by
  have h : sources true 3 5 atom137056098 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137049954 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)) (.lam (.var 0)))))
private def v701156243298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)) (.lam (.var 0)))))))
private theorem no_v701156243298 : ¬ MinimalInterpreter v701156243298 :=
  chain_cut false 2 (by decide)
theorem atom137049954false : BadRow (sources false 3 5 atom137049954) := by
  have h : sources false 3 5 atom137049954 = [v701156243298] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156243298) .nil)

theorem atom137049954true : BadRow (sources true 3 5 atom137049954) := by
  have h : sources true 3 5 atom137049954 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137025378 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.lam (.var 0)))))
private def v701156218722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.lam (.var 0)))))))
private theorem no_v701156218722 : ¬ MinimalInterpreter v701156218722 :=
  chain_cut false 2 (by decide)
theorem atom137025378false : BadRow (sources false 3 5 atom137025378) := by
  have h : sources false 3 5 atom137025378 = [v701156218722] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156218722) .nil)

theorem atom137025378true : BadRow (sources true 3 5 atom137025378) := by
  have h : sources true 3 5 atom137025378 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom136893402 : Term := (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))) (.var 0))))
private def v701156086746 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v701156086746 : ¬ MinimalInterpreter v701156086746 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1))) (.var 0)) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom136893402false : BadRow (sources false 3 5 atom136893402) := by
  have h : sources false 3 5 atom136893402 = [v701156086746] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156086746) .nil)

theorem atom136893402true : BadRow (sources true 3 5 atom136893402) := by
  have h : sources true 3 5 atom136893402 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137040858 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))) (.var 0))))
private def v701156234202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))) (.var 0))))))
private theorem no_v701156234202 : ¬ MinimalInterpreter v701156234202 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 0))) (.app (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137040858false : BadRow (sources false 3 5 atom137040858) := by
  have h : sources false 3 5 atom137040858 = [v701156234202] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156234202) .nil)

theorem atom137040858true : BadRow (sources true 3 5 atom137040858) := by
  have h : sources true 3 5 atom137040858 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137020890 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1)) (.var 0))))
private def v701156214234 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1)) (.var 0))))))
private theorem no_v701156214234 : ¬ MinimalInterpreter v701156214234 :=
  chain_cut false 2 (by decide)
theorem atom137020890false : BadRow (sources false 3 5 atom137020890) := by
  have h : sources false 3 5 atom137020890 = [v701156214234] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156214234) .nil)

theorem atom137020890true : BadRow (sources true 3 5 atom137020890) := by
  have h : sources true 3 5 atom137020890 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom147012834 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))))
private def v701166206178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))))))
private theorem no_v701166206178 : ¬ MinimalInterpreter v701166206178 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (so_closed_lam (by decide) (.var 0))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom147012834false : BadRow (sources false 3 5 atom147012834) := by
  have h : sources false 3 5 atom147012834 = [v701166206178] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166206178) .nil)

theorem atom147012834true : BadRow (sources true 3 5 atom147012834) := by
  have h : sources true 3 5 atom147012834 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom147009378 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))))
private def v701166202722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))))))
private theorem no_v701166202722 : ¬ MinimalInterpreter v701166202722 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))))) (.app (.var 0) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_closed_lam (by decide) (.var 0)))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom147009378false : BadRow (sources false 3 5 atom147009378) := by
  have h : sources false 3 5 atom147009378 = [v701166202722] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166202722) .nil)

theorem atom147009378true : BadRow (sources true 3 5 atom147009378) := by
  have h : sources true 3 5 atom147009378 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146988258 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0)))))))
private def v701166181602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v701166181602 : ¬ MinimalInterpreter v701166181602 :=
  chain_cut false 2 (by decide)
theorem atom146988258false : BadRow (sources false 3 5 atom146988258) := by
  have h : sources false 3 5 atom146988258 = [v701166181602] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166181602) .nil)

theorem atom146988258true : BadRow (sources true 3 5 atom146988258) := by
  have h : sources true 3 5 atom146988258 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146984802 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))))))
private def v701166178146 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))))))))
private theorem no_v701166178146 : ¬ MinimalInterpreter v701166178146 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom146984802false : BadRow (sources false 3 5 atom146984802) := by
  have h : sources false 3 5 atom146984802 = [v701166178146] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166178146) .nil)

theorem atom146984802true : BadRow (sources true 3 5 atom146984802) := by
  have h : sources true 3 5 atom146984802 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146978658 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0))))))
private def v701166172002 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0))))))))
private theorem no_v701166172002 : ¬ MinimalInterpreter v701166172002 :=
  chain_cut false 2 (by decide)
theorem atom146978658false : BadRow (sources false 3 5 atom146978658) := by
  have h : sources false 3 5 atom146978658 = [v701166172002] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166172002) .nil)

theorem atom146978658true : BadRow (sources true 3 5 atom146978658) := by
  have h : sources true 3 5 atom146978658 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom143462202 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))
private def v701162655546 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v701162655546 : ¬ MinimalInterpreter v701162655546 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom143462202false : BadRow (sources false 3 5 atom143462202) := by
  have h : sources false 3 5 atom143462202 = [v701162655546] := by decide +kernel
  rw [h]
  exact (.cons (no_v701162655546) .nil)

theorem atom143462202true : BadRow (sources true 3 5 atom143462202) := by
  have h : sources true 3 5 atom143462202 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom143461338 : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))
private def v701162654682 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v701162654682 : ¬ MinimalInterpreter v701162654682 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom143461338false : BadRow (sources false 3 5 atom143461338) := by
  have h : sources false 3 5 atom143461338 = [v701162654682] := by decide +kernel
  rw [h]
  exact (.cons (no_v701162654682) .nil)

theorem atom143461338true : BadRow (sources true 3 5 atom143461338) := by
  have h : sources true 3 5 atom143461338 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145821498 : Term := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))
private def v701165014842 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v701165014842 : ¬ MinimalInterpreter v701165014842 :=
  chain_cut false 2 (by decide)
theorem atom145821498false : BadRow (sources false 3 5 atom145821498) := by
  have h : sources false 3 5 atom145821498 = [v701165014842] := by decide +kernel
  rw [h]
  exact (.cons (no_v701165014842) .nil)

theorem atom145821498true : BadRow (sources true 3 5 atom145821498) := by
  have h : sources true 3 5 atom145821498 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145820634 : Term := (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))
private def v701165013978 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v701165013978 : ¬ MinimalInterpreter v701165013978 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom145820634false : BadRow (sources false 3 5 atom145820634) := by
  have h : sources false 3 5 atom145820634 = [v701165013978] := by decide +kernel
  rw [h]
  exact (.cons (no_v701165013978) .nil)

theorem atom145820634true : BadRow (sources true 3 5 atom145820634) := by
  have h : sources true 3 5 atom145820634 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145805154 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.var 0))))
private def v701164998498 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.var 0))))))
private theorem no_v701164998498 : ¬ MinimalInterpreter v701164998498 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (.var 0)))) (.app (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (so_closed_lam (by decide) (.var 0))) (.var 0) (by decide) (by decide)))))
theorem atom145805154false : BadRow (sources false 3 5 atom145805154) := by
  have h : sources false 3 5 atom145805154 = [v701164998498] := by decide +kernel
  rw [h]
  exact (.cons (no_v701164998498) .nil)

theorem atom145805154true : BadRow (sources true 3 5 atom145805154) := by
  have h : sources true 3 5 atom145805154 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145799010 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))) (.lam (.var 0))))
private def v701164992354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))) (.lam (.var 0))))))
private theorem no_v701164992354 : ¬ MinimalInterpreter v701164992354 :=
  chain_cut false 2 (by decide)
theorem atom145799010false : BadRow (sources false 3 5 atom145799010) := by
  have h : sources false 3 5 atom145799010 = [v701164992354] := by decide +kernel
  rw [h]
  exact (.cons (no_v701164992354) .nil)

theorem atom145799010true : BadRow (sources true 3 5 atom145799010) := by
  have h : sources true 3 5 atom145799010 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184602426 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))
private def v701203795770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v701203795770 : ¬ MinimalInterpreter v701203795770 :=
  chain_cut false 4 (by decide)
theorem atom184602426false : BadRow (sources false 3 5 atom184602426) := by
  have h : sources false 3 5 atom184602426 = [v701203795770] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203795770) .nil)

theorem atom184602426true : BadRow (sources true 3 5 atom184602426) := by
  have h : sources true 3 5 atom184602426 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184601562 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private def v701203794906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v701203794906 : ¬ MinimalInterpreter v701203794906 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem atom184601562false : BadRow (sources false 3 5 atom184601562) := by
  have h : sources false 3 5 atom184601562 = [v701203794906] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203794906) .nil)

theorem atom184601562true : BadRow (sources true 3 5 atom184601562) := by
  have h : sources true 3 5 atom184601562 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184596282 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))
private def v701203789626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0)))))))))
private theorem no_v701203789626 : ¬ MinimalInterpreter v701203789626 :=
  chain_cut false 4 (by decide)
theorem atom184596282false : BadRow (sources false 3 5 atom184596282) := by
  have h : sources false 3 5 atom184596282 = [v701203789626] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203789626) .nil)

theorem atom184596282true : BadRow (sources true 3 5 atom184596282) := by
  have h : sources true 3 5 atom184596282 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184595418 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))
private def v701203788762 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))))))
private theorem no_v701203788762 : ¬ MinimalInterpreter v701203788762 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem atom184595418false : BadRow (sources false 3 5 atom184595418) := by
  have h : sources false 3 5 atom184595418 = [v701203788762] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203788762) .nil)

theorem atom184595418true : BadRow (sources true 3 5 atom184595418) := by
  have h : sources true 3 5 atom184595418 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184593882 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))
private def v701203787226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0))))))))
private theorem no_v701203787226 : ¬ MinimalInterpreter v701203787226 :=
  chain_cut false 4 (by decide)
theorem atom184593882false : BadRow (sources false 3 5 atom184593882) := by
  have h : sources false 3 5 atom184593882 = [v701203787226] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203787226) .nil)

theorem atom184593882true : BadRow (sources true 3 5 atom184593882) := by
  have h : sources true 3 5 atom184593882 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184749882 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private def v701203943226 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v701203943226 : ¬ MinimalInterpreter v701203943226 :=
  chain_cut false 4 (by decide)
theorem atom184749882false : BadRow (sources false 3 5 atom184749882) := by
  have h : sources false 3 5 atom184749882 = [v701203943226] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203943226) .nil)

theorem atom184749882true : BadRow (sources true 3 5 atom184749882) := by
  have h : sources true 3 5 atom184749882 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184749018 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private def v701203942362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v701203942362 : ¬ MinimalInterpreter v701203942362 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))))
theorem atom184749018false : BadRow (sources false 3 5 atom184749018) := by
  have h : sources false 3 5 atom184749018 = [v701203942362] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203942362) .nil)

theorem atom184749018true : BadRow (sources true 3 5 atom184749018) := by
  have h : sources true 3 5 atom184749018 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184761570 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))))
private def v701203954914 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))))))
private theorem no_v701203954914 : ¬ MinimalInterpreter v701203954914 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (so_closed_lam (by decide) (.var 0))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom184761570false : BadRow (sources false 3 5 atom184761570) := by
  have h : sources false 3 5 atom184761570 = [v701203954914] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203954914) .nil)

theorem atom184761570true : BadRow (sources true 3 5 atom184761570) := by
  have h : sources true 3 5 atom184761570 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184758114 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))))
private def v701203951458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))))))
private theorem no_v701203951458 : ¬ MinimalInterpreter v701203951458 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_closed_lam (by decide) (.var 0)))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom184758114false : BadRow (sources false 3 5 atom184758114) := by
  have h : sources false 3 5 atom184758114 = [v701203951458] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203951458) .nil)

theorem atom184758114true : BadRow (sources true 3 5 atom184758114) := by
  have h : sources true 3 5 atom184758114 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184736994 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0)))))))
private def v701203930338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0)))))))))
private theorem no_v701203930338 : ¬ MinimalInterpreter v701203930338 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom184736994false : BadRow (sources false 3 5 atom184736994) := by
  have h : sources false 3 5 atom184736994 = [v701203930338] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203930338) .nil)

theorem atom184736994true : BadRow (sources true 3 5 atom184736994) := by
  have h : sources true 3 5 atom184736994 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184733538 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))))))
private def v701203926882 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))))))))
private theorem no_v701203926882 : ¬ MinimalInterpreter v701203926882 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.var 0)))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom184733538false : BadRow (sources false 3 5 atom184733538) := by
  have h : sources false 3 5 atom184733538 = [v701203926882] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203926882) .nil)

theorem atom184733538true : BadRow (sources true 3 5 atom184733538) := by
  have h : sources true 3 5 atom184733538 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184727394 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0))))))
private def v701203920738 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0))))))))
private theorem no_v701203920738 : ¬ MinimalInterpreter v701203920738 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom184727394false : BadRow (sources false 3 5 atom184727394) := by
  have h : sources false 3 5 atom184727394 = [v701203920738] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203920738) .nil)

theorem atom184727394true : BadRow (sources true 3 5 atom184727394) := by
  have h : sources true 3 5 atom184727394 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom185339706 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private def v701204533050 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v701204533050 : ¬ MinimalInterpreter v701204533050 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom185339706false : BadRow (sources false 3 5 atom185339706) := by
  have h : sources false 3 5 atom185339706 = [v701204533050] := by decide +kernel
  rw [h]
  exact (.cons (no_v701204533050) .nil)

theorem atom185339706true : BadRow (sources true 3 5 atom185339706) := by
  have h : sources true 3 5 atom185339706 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom185338842 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private def v701204532186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v701204532186 : ¬ MinimalInterpreter v701204532186 :=
  w_cut false 0 (by decide)
theorem atom185338842false : BadRow (sources false 3 5 atom185338842) := by
  have h : sources false 3 5 atom185338842 = [v701204532186] := by decide +kernel
  rw [h]
  exact (.cons (no_v701204532186) .nil)

theorem atom185338842true : BadRow (sources true 3 5 atom185338842) := by
  have h : sources true 3 5 atom185338842 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom187699002 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private def v700885973530 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v700885973530 : ¬ MinimalInterpreter v700885973530 :=
  chain_cut false 3 (by decide)
private def v701206892346 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))))
private theorem no_v701206892346 : ¬ MinimalInterpreter v701206892346 :=
  chain_cut false 4 (by decide)
theorem atom187699002false : BadRow (sources false 3 5 atom187699002) := by
  have h : sources false 3 5 atom187699002 = [v700885973530,v701206892346] := by decide +kernel
  rw [h]
  exact (.cons (no_v700885973530) (.cons (no_v701206892346) .nil))

theorem atom187699002true : BadRow (sources true 3 5 atom187699002) := by
  have h : sources true 3 5 atom187699002 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom187698138 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private def v700885752346 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v700885752346 : ¬ MinimalInterpreter v700885752346 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v701206891482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))))
private theorem no_v701206891482 : ¬ MinimalInterpreter v701206891482 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))))
theorem atom187698138false : BadRow (sources false 3 5 atom187698138) := by
  have h : sources false 3 5 atom187698138 = [v700885752346,v701206891482] := by decide +kernel
  rw [h]
  exact (.cons (no_v700885752346) (.cons (no_v701206891482) .nil))

theorem atom187698138true : BadRow (sources true 3 5 atom187698138) := by
  have h : sources true 3 5 atom187698138 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom181407546 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))
private def v699275360794 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699275360794 : ¬ MinimalInterpreter v699275360794 :=
  w_cut false 0 (by decide)
private def v701200600890 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))))
private theorem no_v701200600890 : ¬ MinimalInterpreter v701200600890 :=
  w_cut false 0 (by decide)
theorem atom181407546false : BadRow (sources false 3 5 atom181407546) := by
  have h : sources false 3 5 atom181407546 = [v699275360794,v701200600890] := by decide +kernel
  rw [h]
  exact (.cons (no_v699275360794) (.cons (no_v701200600890) .nil))

theorem atom181407546true : BadRow (sources true 3 5 atom181407546) := by
  have h : sources true 3 5 atom181407546 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom181406682 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))
private def v699275139610 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699275139610 : ¬ MinimalInterpreter v699275139610 :=
  w_cut false 0 (by decide)
private def v701200600026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))))
private theorem no_v701200600026 : ¬ MinimalInterpreter v701200600026 :=
  w_cut false 0 (by decide)
theorem atom181406682false : BadRow (sources false 3 5 atom181406682) := by
  have h : sources false 3 5 atom181406682 = [v699275139610,v701200600026] := by decide +kernel
  rw [h]
  exact (.cons (no_v699275139610) (.cons (no_v701200600026) .nil))

theorem atom181406682true : BadRow (sources true 3 5 atom181406682) := by
  have h : sources true 3 5 atom181406682 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom171183930 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))
private def v701190377274 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v701190377274 : ¬ MinimalInterpreter v701190377274 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom171183930false : BadRow (sources false 3 5 atom171183930) := by
  have h : sources false 3 5 atom171183930 = [v701190377274] := by decide +kernel
  rw [h]
  exact (.cons (no_v701190377274) .nil)

theorem atom171183930true : BadRow (sources true 3 5 atom171183930) := by
  have h : sources true 3 5 atom171183930 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom171183066 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))
private def v701190376410 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v701190376410 : ¬ MinimalInterpreter v701190376410 :=
  w_cut false 0 (by decide)
theorem atom171183066false : BadRow (sources false 3 5 atom171183066) := by
  have h : sources false 3 5 atom171183066 = [v701190376410] := by decide +kernel
  rw [h]
  exact (.cons (no_v701190376410) .nil)

theorem atom171183066true : BadRow (sources true 3 5 atom171183066) := by
  have h : sources true 3 5 atom171183066 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180621114 : Term := (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))
private def v701199814458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v701199814458 : ¬ MinimalInterpreter v701199814458 :=
  chain_cut false 3 (by decide)
theorem atom180621114false : BadRow (sources false 3 5 atom180621114) := by
  have h : sources false 3 5 atom180621114 = [v701199814458] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199814458) .nil)

theorem atom180621114true : BadRow (sources true 3 5 atom180621114) := by
  have h : sources true 3 5 atom180621114 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180620250 : Term := (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))
private def v701199813594 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v701199813594 : ¬ MinimalInterpreter v701199813594 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.var 0))) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom180620250false : BadRow (sources false 3 5 atom180620250) := by
  have h : sources false 3 5 atom180620250 = [v701199813594] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199813594) .nil)

theorem atom180620250true : BadRow (sources true 3 5 atom180620250) := by
  have h : sources true 3 5 atom180620250 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180408162 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.var 0)))
private def v701199601506 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.var 0)))))
private theorem no_v701199601506 : ¬ MinimalInterpreter v701199601506 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.var 0))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))) (so_closed_lam (by decide) (.var 0))))))
theorem atom180408162false : BadRow (sources false 3 5 atom180408162) := by
  have h : sources false 3 5 atom180408162 = [v701199601506] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199601506) .nil)

theorem atom180408162true : BadRow (sources true 3 5 atom180408162) := by
  have h : sources true 3 5 atom180408162 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180402018 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.var 0)))
private def v701199595362 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.var 0)))))
private theorem no_v701199595362 : ¬ MinimalInterpreter v701199595362 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 28 (by decide) (by decide) (by decide) (by decide)
theorem atom180402018false : BadRow (sources false 3 5 atom180402018) := by
  have h : sources false 3 5 atom180402018 = [v701199595362] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199595362) .nil)

theorem atom180402018true : BadRow (sources true 3 5 atom180402018) := by
  have h : sources true 3 5 atom180402018 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180368346 : Term := (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.var 0))
private def v699009325594 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.var 0))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699009325594 : ¬ MinimalInterpreter v699009325594 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v701199561690 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.var 0))))
private theorem no_v701199561690 : ¬ MinimalInterpreter v701199561690 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))))
theorem atom180368346false : BadRow (sources false 3 5 atom180368346) := by
  have h : sources false 3 5 atom180368346 = [v699009325594,v701199561690] := by decide +kernel
  rw [h]
  exact (.cons (no_v699009325594) (.cons (no_v701199561690) .nil))

theorem atom180368346true : BadRow (sources true 3 5 atom180368346) := by
  have h : sources true 3 5 atom180368346 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180366810 : Term := (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.var 0))
private def v699008932378 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.var 0))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699008932378 : ¬ MinimalInterpreter v699008932378 :=
  chain_cut false 2 (by decide)
private def v701199560154 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.var 0))))
private theorem no_v701199560154 : ¬ MinimalInterpreter v701199560154 :=
  chain_cut false 3 (by decide)
theorem atom180366810false : BadRow (sources false 3 5 atom180366810) := by
  have h : sources false 3 5 atom180366810 = [v699008932378,v701199560154] := by decide +kernel
  rw [h]
  exact (.cons (no_v699008932378) (.cons (no_v701199560154) .nil))

theorem atom180366810true : BadRow (sources true 3 5 atom180366810) := by
  have h : sources true 3 5 atom180366810 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms113 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,0,2,1,0]) := by
  have h : atoms 3 5 [0,0,2,1,0] = [atom137575650,atom137572194,atom137551074,atom137547618,atom137541474,atom137182434,atom137178978,atom136531770,atom136530906,atom137121594,atom137120730,atom137157858,atom137059554,atom137041722,atom137154402,atom137148258,atom137056098,atom137049954,atom137025378,atom136893402,atom137040858,atom137020890,atom147012834,atom147009378,atom146988258,atom146984802,atom146978658,atom143462202,atom143461338,atom145821498,atom145820634,atom145805154,atom145799010,atom184602426,atom184601562,atom184596282,atom184595418,atom184593882,atom184749882,atom184749018,atom184761570,atom184758114,atom184736994,atom184733538,atom184727394,atom185339706,atom185338842,atom187699002,atom187698138,atom181407546,atom181406682,atom171183930,atom171183066,atom180621114,atom180620250,atom180408162,atom180402018,atom180368346,atom180366810] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom137575650false | exact atom137575650true) (.cons (fun lit => by cases lit <;> first | exact atom137572194false | exact atom137572194true) (.cons (fun lit => by cases lit <;> first | exact atom137551074false | exact atom137551074true) (.cons (fun lit => by cases lit <;> first | exact atom137547618false | exact atom137547618true) (.cons (fun lit => by cases lit <;> first | exact atom137541474false | exact atom137541474true) (.cons (fun lit => by cases lit <;> first | exact atom137182434false | exact atom137182434true) (.cons (fun lit => by cases lit <;> first | exact atom137178978false | exact atom137178978true) (.cons (fun lit => by cases lit <;> first | exact atom136531770false | exact atom136531770true) (.cons (fun lit => by cases lit <;> first | exact atom136530906false | exact atom136530906true) (.cons (fun lit => by cases lit <;> first | exact atom137121594false | exact atom137121594true) (.cons (fun lit => by cases lit <;> first | exact atom137120730false | exact atom137120730true) (.cons (fun lit => by cases lit <;> first | exact atom137157858false | exact atom137157858true) (.cons (fun lit => by cases lit <;> first | exact atom137059554false | exact atom137059554true) (.cons (fun lit => by cases lit <;> first | exact atom137041722false | exact atom137041722true) (.cons (fun lit => by cases lit <;> first | exact atom137154402false | exact atom137154402true) (.cons (fun lit => by cases lit <;> first | exact atom137148258false | exact atom137148258true) (.cons (fun lit => by cases lit <;> first | exact atom137056098false | exact atom137056098true) (.cons (fun lit => by cases lit <;> first | exact atom137049954false | exact atom137049954true) (.cons (fun lit => by cases lit <;> first | exact atom137025378false | exact atom137025378true) (.cons (fun lit => by cases lit <;> first | exact atom136893402false | exact atom136893402true) (.cons (fun lit => by cases lit <;> first | exact atom137040858false | exact atom137040858true) (.cons (fun lit => by cases lit <;> first | exact atom137020890false | exact atom137020890true) (.cons (fun lit => by cases lit <;> first | exact atom147012834false | exact atom147012834true) (.cons (fun lit => by cases lit <;> first | exact atom147009378false | exact atom147009378true) (.cons (fun lit => by cases lit <;> first | exact atom146988258false | exact atom146988258true) (.cons (fun lit => by cases lit <;> first | exact atom146984802false | exact atom146984802true) (.cons (fun lit => by cases lit <;> first | exact atom146978658false | exact atom146978658true) (.cons (fun lit => by cases lit <;> first | exact atom143462202false | exact atom143462202true) (.cons (fun lit => by cases lit <;> first | exact atom143461338false | exact atom143461338true) (.cons (fun lit => by cases lit <;> first | exact atom145821498false | exact atom145821498true) (.cons (fun lit => by cases lit <;> first | exact atom145820634false | exact atom145820634true) (.cons (fun lit => by cases lit <;> first | exact atom145805154false | exact atom145805154true) (.cons (fun lit => by cases lit <;> first | exact atom145799010false | exact atom145799010true) (.cons (fun lit => by cases lit <;> first | exact atom184602426false | exact atom184602426true) (.cons (fun lit => by cases lit <;> first | exact atom184601562false | exact atom184601562true) (.cons (fun lit => by cases lit <;> first | exact atom184596282false | exact atom184596282true) (.cons (fun lit => by cases lit <;> first | exact atom184595418false | exact atom184595418true) (.cons (fun lit => by cases lit <;> first | exact atom184593882false | exact atom184593882true) (.cons (fun lit => by cases lit <;> first | exact atom184749882false | exact atom184749882true) (.cons (fun lit => by cases lit <;> first | exact atom184749018false | exact atom184749018true) (.cons (fun lit => by cases lit <;> first | exact atom184761570false | exact atom184761570true) (.cons (fun lit => by cases lit <;> first | exact atom184758114false | exact atom184758114true) (.cons (fun lit => by cases lit <;> first | exact atom184736994false | exact atom184736994true) (.cons (fun lit => by cases lit <;> first | exact atom184733538false | exact atom184733538true) (.cons (fun lit => by cases lit <;> first | exact atom184727394false | exact atom184727394true) (.cons (fun lit => by cases lit <;> first | exact atom185339706false | exact atom185339706true) (.cons (fun lit => by cases lit <;> first | exact atom185338842false | exact atom185338842true) (.cons (fun lit => by cases lit <;> first | exact atom187699002false | exact atom187699002true) (.cons (fun lit => by cases lit <;> first | exact atom187698138false | exact atom187698138true) (.cons (fun lit => by cases lit <;> first | exact atom181407546false | exact atom181407546true) (.cons (fun lit => by cases lit <;> first | exact atom181406682false | exact atom181406682true) (.cons (fun lit => by cases lit <;> first | exact atom171183930false | exact atom171183930true) (.cons (fun lit => by cases lit <;> first | exact atom171183066false | exact atom171183066true) (.cons (fun lit => by cases lit <;> first | exact atom180621114false | exact atom180621114true) (.cons (fun lit => by cases lit <;> first | exact atom180620250false | exact atom180620250true) (.cons (fun lit => by cases lit <;> first | exact atom180408162false | exact atom180408162true) (.cons (fun lit => by cases lit <;> first | exact atom180402018false | exact atom180402018true) (.cons (fun lit => by cases lit <;> first | exact atom180368346false | exact atom180368346true) (.cons (fun lit => by cases lit <;> first | exact atom180366810false | exact atom180366810true) .nil)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
end Blc.SelfintSingleObject.Sat39
