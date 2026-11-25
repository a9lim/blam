import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms114 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,0,3,0,0]) := by
  have h : atoms 3 5 [0,0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom137598510 : Term := (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))))))
private def v701156791854 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))))))))
private theorem no_v701156791854 : ¬ MinimalInterpreter v701156791854 :=
  chain_cut false 2 (by decide)
theorem atom137598510false : BadRow (sources false 3 5 atom137598510) := by
  have h : sources false 3 5 atom137598510 = [v701156791854] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156791854) .nil)

theorem atom137598510true : BadRow (sources true 3 5 atom137598510) := by
  have h : sources true 3 5 atom137598510 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137552494 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 2))))))
private def v701156745838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 2))))))))
private theorem no_v701156745838 : ¬ MinimalInterpreter v701156745838 :=
  chain_cut false 2 (by decide)
theorem atom137552494false : BadRow (sources false 3 5 atom137552494) := by
  have h : sources false 3 5 atom137552494 = [v701156745838] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156745838) .nil)

theorem atom137552494true : BadRow (sources true 3 5 atom137552494) := by
  have h : sources true 3 5 atom137552494 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137552302 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 2)))))
private def v701156745646 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 2)))))))
private theorem no_v701156745646 : ¬ MinimalInterpreter v701156745646 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 2))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 2))))) (.lam (r := (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 1) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (.var 2))) (.app (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137552302false : BadRow (sources false 3 5 atom137552302) := by
  have h : sources false 3 5 atom137552302 = [v701156745646] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156745646) .nil)

theorem atom137552302true : BadRow (sources true 3 5 atom137552302) := by
  have h : sources true 3 5 atom137552302 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137553454 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 2)))))
private def v701156746798 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 2)))))))
private theorem no_v701156746798 : ¬ MinimalInterpreter v701156746798 :=
  chain_cut false 2 (by decide)
theorem atom137553454false : BadRow (sources false 3 5 atom137553454) := by
  have h : sources false 3 5 atom137553454 = [v701156746798] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156746798) .nil)

theorem atom137553454true : BadRow (sources true 3 5 atom137553454) := by
  have h : sources true 3 5 atom137553454 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137542190 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 2)))))
private def v701156735534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 2)))))))
private theorem no_v701156735534 : ¬ MinimalInterpreter v701156735534 :=
  chain_cut false 2 (by decide)
theorem atom137542190false : BadRow (sources false 3 5 atom137542190) := by
  have h : sources false 3 5 atom137542190 = [v701156735534] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156735534) .nil)

theorem atom137542190true : BadRow (sources true 3 5 atom137542190) := by
  have h : sources true 3 5 atom137542190 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137541806 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 2)))))
private def v701156735150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 2)))))))
private theorem no_v701156735150 : ¬ MinimalInterpreter v701156735150 :=
  chain_cut false 2 (by decide)
theorem atom137541806false : BadRow (sources false 3 5 atom137541806) := by
  have h : sources false 3 5 atom137541806 = [v701156735150] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156735150) .nil)

theorem atom137541806true : BadRow (sources true 3 5 atom137541806) := by
  have h : sources true 3 5 atom137541806 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137205294 : Term := (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 2)))))
private def v701156398638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.lam (.var 0))) (.var 2)))))))
private theorem no_v701156398638 : ¬ MinimalInterpreter v701156398638 :=
  chain_cut false 2 (by decide)
theorem atom137205294false : BadRow (sources false 3 5 atom137205294) := by
  have h : sources false 3 5 atom137205294 = [v701156398638] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156398638) .nil)

theorem atom137205294true : BadRow (sources true 3 5 atom137205294) := by
  have h : sources true 3 5 atom137205294 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137159278 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 2)))))
private def v701156352622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.app (.var 0) (.var 2)))))))
private theorem no_v701156352622 : ¬ MinimalInterpreter v701156352622 :=
  chain_cut false 2 (by decide)
theorem atom137159278false : BadRow (sources false 3 5 atom137159278) := by
  have h : sources false 3 5 atom137159278 = [v701156352622] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156352622) .nil)

theorem atom137159278true : BadRow (sources true 3 5 atom137159278) := by
  have h : sources true 3 5 atom137159278 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137060974 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 2)))))
private def v701156254318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.app (.var 0) (.var 2)))))))
private theorem no_v701156254318 : ¬ MinimalInterpreter v701156254318 :=
  chain_cut false 2 (by decide)
theorem atom137060974false : BadRow (sources false 3 5 atom137060974) := by
  have h : sources false 3 5 atom137060974 = [v701156254318] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156254318) .nil)

theorem atom137060974true : BadRow (sources true 3 5 atom137060974) := by
  have h : sources true 3 5 atom137060974 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137159086 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.var 2))))
private def v701156352430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))) (.var 2))))))
private theorem no_v701156352430 : ¬ MinimalInterpreter v701156352430 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom137159086false : BadRow (sources false 3 5 atom137159086) := by
  have h : sources false 3 5 atom137159086 = [v701156352430] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156352430) .nil)

theorem atom137159086true : BadRow (sources true 3 5 atom137159086) := by
  have h : sources true 3 5 atom137159086 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137160238 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.var 2))))
private def v701156353582 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.var 2))))))
private theorem no_v701156353582 : ¬ MinimalInterpreter v701156353582 :=
  chain_cut false 2 (by decide)
theorem atom137160238false : BadRow (sources false 3 5 atom137160238) := by
  have h : sources false 3 5 atom137160238 = [v701156353582] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156353582) .nil)

theorem atom137160238true : BadRow (sources true 3 5 atom137160238) := by
  have h : sources true 3 5 atom137160238 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137148974 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.var 2))))
private def v701156342318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.var 2))))))
private theorem no_v701156342318 : ¬ MinimalInterpreter v701156342318 :=
  chain_cut false 2 (by decide)
theorem atom137148974false : BadRow (sources false 3 5 atom137148974) := by
  have h : sources false 3 5 atom137148974 = [v701156342318] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156342318) .nil)

theorem atom137148974true : BadRow (sources true 3 5 atom137148974) := by
  have h : sources true 3 5 atom137148974 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137148590 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.var 2))))
private def v701156341934 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))) (.var 2))))))
private theorem no_v701156341934 : ¬ MinimalInterpreter v701156341934 :=
  chain_cut false 2 (by decide)
theorem atom137148590false : BadRow (sources false 3 5 atom137148590) := by
  have h : sources false 3 5 atom137148590 = [v701156341934] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156341934) .nil)

theorem atom137148590true : BadRow (sources true 3 5 atom137148590) := by
  have h : sources true 3 5 atom137148590 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137060782 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 2))))
private def v701156254126 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0)))) (.var 2))))))
private theorem no_v701156254126 : ¬ MinimalInterpreter v701156254126 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom137060782false : BadRow (sources false 3 5 atom137060782) := by
  have h : sources false 3 5 atom137060782 = [v701156254126] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156254126) .nil)

theorem atom137060782true : BadRow (sources true 3 5 atom137060782) := by
  have h : sources true 3 5 atom137060782 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137061934 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 2))))
private def v701156255278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0)))) (.var 2))))))
private theorem no_v701156255278 : ¬ MinimalInterpreter v701156255278 :=
  chain_cut false 2 (by decide)
theorem atom137061934false : BadRow (sources false 3 5 atom137061934) := by
  have h : sources false 3 5 atom137061934 = [v701156255278] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156255278) .nil)

theorem atom137061934true : BadRow (sources true 3 5 atom137061934) := by
  have h : sources true 3 5 atom137061934 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137050670 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.var 2))))
private def v701156244014 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0))) (.var 2))))))
private theorem no_v701156244014 : ¬ MinimalInterpreter v701156244014 :=
  chain_cut false 2 (by decide)
theorem atom137050670false : BadRow (sources false 3 5 atom137050670) := by
  have h : sources false 3 5 atom137050670 = [v701156244014] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156244014) .nil)

theorem atom137050670true : BadRow (sources true 3 5 atom137050670) := by
  have h : sources true 3 5 atom137050670 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137026094 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 2))))
private def v701156219438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0))) (.var 2))))))
private theorem no_v701156219438 : ¬ MinimalInterpreter v701156219438 :=
  chain_cut false 2 (by decide)
theorem atom137026094false : BadRow (sources false 3 5 atom137026094) := by
  have h : sources false 3 5 atom137026094 = [v701156219438] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156219438) .nil)

theorem atom137026094true : BadRow (sources true 3 5 atom137026094) := by
  have h : sources true 3 5 atom137026094 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137050286 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 2))))
private def v701156243630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 0)) (.var 2))))))
private theorem no_v701156243630 : ¬ MinimalInterpreter v701156243630 :=
  chain_cut false 2 (by decide)
theorem atom137050286false : BadRow (sources false 3 5 atom137050286) := by
  have h : sources false 3 5 atom137050286 = [v701156243630] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156243630) .nil)

theorem atom137050286true : BadRow (sources true 3 5 atom137050286) := by
  have h : sources true 3 5 atom137050286 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137025710 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 2))))
private def v701156219054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0)) (.var 2))))))
private theorem no_v701156219054 : ¬ MinimalInterpreter v701156219054 :=
  chain_cut false 2 (by decide)
theorem atom137025710false : BadRow (sources false 3 5 atom137025710) := by
  have h : sources false 3 5 atom137025710 = [v701156219054] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156219054) .nil)

theorem atom137025710true : BadRow (sources true 3 5 atom137025710) := by
  have h : sources true 3 5 atom137025710 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom147035694 : Term := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))))))
private def v701166229038 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))))))))
private theorem no_v701166229038 : ¬ MinimalInterpreter v701166229038 :=
  chain_cut false 2 (by decide)
theorem atom147035694false : BadRow (sources false 3 5 atom147035694) := by
  have h : sources false 3 5 atom147035694 = [v701166229038] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166229038) .nil)

theorem atom147035694true : BadRow (sources true 3 5 atom147035694) := by
  have h : sources true 3 5 atom147035694 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146989678 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 2))))))
private def v701166183022 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 2))))))))
private theorem no_v701166183022 : ¬ MinimalInterpreter v701166183022 :=
  chain_cut false 2 (by decide)
theorem atom146989678false : BadRow (sources false 3 5 atom146989678) := by
  have h : sources false 3 5 atom146989678 = [v701166183022] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166183022) .nil)

theorem atom146989678true : BadRow (sources true 3 5 atom146989678) := by
  have h : sources true 3 5 atom146989678 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146990638 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 2)))))
private def v701166183982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 2)))))))
private theorem no_v701166183982 : ¬ MinimalInterpreter v701166183982 :=
  chain_cut false 2 (by decide)
theorem atom146990638false : BadRow (sources false 3 5 atom146990638) := by
  have h : sources false 3 5 atom146990638 = [v701166183982] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166183982) .nil)

theorem atom146990638true : BadRow (sources true 3 5 atom146990638) := by
  have h : sources true 3 5 atom146990638 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146979374 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 2)))))
private def v701166172718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 2)))))))
private theorem no_v701166172718 : ¬ MinimalInterpreter v701166172718 :=
  chain_cut false 2 (by decide)
theorem atom146979374false : BadRow (sources false 3 5 atom146979374) := by
  have h : sources false 3 5 atom146979374 = [v701166172718] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166172718) .nil)

theorem atom146979374true : BadRow (sources true 3 5 atom146979374) := by
  have h : sources true 3 5 atom146979374 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146978990 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 2)))))
private def v701166172334 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 2)))))))
private theorem no_v701166172334 : ¬ MinimalInterpreter v701166172334 :=
  chain_cut false 2 (by decide)
theorem atom146978990false : BadRow (sources false 3 5 atom146978990) := by
  have h : sources false 3 5 atom146978990 = [v701166172334] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166172334) .nil)

theorem atom146978990true : BadRow (sources true 3 5 atom146978990) := by
  have h : sources true 3 5 atom146978990 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184608366 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private def v701203801710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2))))))))))
private theorem no_v701203801710 : ¬ MinimalInterpreter v701203801710 :=
  chain_cut false 4 (by decide)
theorem atom184608366false : BadRow (sources false 3 5 atom184608366) := by
  have h : sources false 3 5 atom184608366 = [v701203801710] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203801710) .nil)

theorem atom184608366true : BadRow (sources true 3 5 atom184608366) := by
  have h : sources true 3 5 atom184608366 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184608174 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private def v701203801518 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2)))))))))
private theorem no_v701203801518 : ¬ MinimalInterpreter v701203801518 :=
  chain_cut false 4 (by decide)
theorem atom184608174false : BadRow (sources false 3 5 atom184608174) := by
  have h : sources false 3 5 atom184608174 = [v701203801518] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203801518) .nil)

theorem atom184608174true : BadRow (sources true 3 5 atom184608174) := by
  have h : sources true 3 5 atom184608174 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184597102 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))
private def v701203790446 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2)))))))))
private theorem no_v701203790446 : ¬ MinimalInterpreter v701203790446 :=
  chain_cut false 4 (by decide)
theorem atom184597102false : BadRow (sources false 3 5 atom184597102) := by
  have h : sources false 3 5 atom184597102 = [v701203790446] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203790446) .nil)

theorem atom184597102true : BadRow (sources true 3 5 atom184597102) := by
  have h : sources true 3 5 atom184597102 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184596910 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))
private def v701203790254 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2))))))))
private theorem no_v701203790254 : ¬ MinimalInterpreter v701203790254 :=
  chain_cut false 4 (by decide)
theorem atom184596910false : BadRow (sources false 3 5 atom184596910) := by
  have h : sources false 3 5 atom184596910 = [v701203790254] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203790254) .nil)

theorem atom184596910true : BadRow (sources true 3 5 atom184596910) := by
  have h : sources true 3 5 atom184596910 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184594094 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))
private def v701203787438 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2))))))))
private theorem no_v701203787438 : ¬ MinimalInterpreter v701203787438 :=
  chain_cut false 4 (by decide)
theorem atom184594094false : BadRow (sources false 3 5 atom184594094) := by
  have h : sources false 3 5 atom184594094 = [v701203787438] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203787438) .nil)

theorem atom184594094true : BadRow (sources true 3 5 atom184594094) := by
  have h : sources true 3 5 atom184594094 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184784430 : Term := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))))))
private def v701203977774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))))))))
private theorem no_v701203977774 : ¬ MinimalInterpreter v701203977774 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom184784430false : BadRow (sources false 3 5 atom184784430) := by
  have h : sources false 3 5 atom184784430 = [v701203977774] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203977774) .nil)

theorem atom184784430true : BadRow (sources true 3 5 atom184784430) := by
  have h : sources true 3 5 atom184784430 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184738414 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 2))))))
private def v701203931758 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 2))))))))
private theorem no_v701203931758 : ¬ MinimalInterpreter v701203931758 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom184738414false : BadRow (sources false 3 5 atom184738414) := by
  have h : sources false 3 5 atom184738414 = [v701203931758] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203931758) .nil)

theorem atom184738414true : BadRow (sources true 3 5 atom184738414) := by
  have h : sources true 3 5 atom184738414 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184739374 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 2)))))
private def v701203932718 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 2)))))))
private theorem no_v701203932718 : ¬ MinimalInterpreter v701203932718 :=
  chain_cut true 7 (by decide)
theorem atom184739374false : BadRow (sources false 3 5 atom184739374) := by
  have h : sources false 3 5 atom184739374 = [v701203932718] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203932718) .nil)

theorem atom184739374true : BadRow (sources true 3 5 atom184739374) := by
  have h : sources true 3 5 atom184739374 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184728110 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 2)))))
private def v701203921454 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 2)))))))
private theorem no_v701203921454 : ¬ MinimalInterpreter v701203921454 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom184728110false : BadRow (sources false 3 5 atom184728110) := by
  have h : sources false 3 5 atom184728110 = [v701203921454] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203921454) .nil)

theorem atom184728110true : BadRow (sources true 3 5 atom184728110) := by
  have h : sources true 3 5 atom184728110 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184727726 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 2)))))
private def v701203921070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 2)))))))
private theorem no_v701203921070 : ¬ MinimalInterpreter v701203921070 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom184727726false : BadRow (sources false 3 5 atom184727726) := by
  have h : sources false 3 5 atom184727726 = [v701203921070] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203921070) .nil)

theorem atom184727726true : BadRow (sources true 3 5 atom184727726) := by
  have h : sources true 3 5 atom184727726 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms115 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,1,0,0,2]) := by
  have h : atoms 3 5 [0,1,0,0,2] = [atom137598510,atom137552494,atom137552302,atom137553454,atom137542190,atom137541806,atom137205294,atom137159278,atom137060974,atom137159086,atom137160238,atom137148974,atom137148590,atom137060782,atom137061934,atom137050670,atom137026094,atom137050286,atom137025710,atom147035694,atom146989678,atom146990638,atom146979374,atom146978990,atom184608366,atom184608174,atom184597102,atom184596910,atom184594094,atom184784430,atom184738414,atom184739374,atom184728110,atom184727726] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom137598510false | exact atom137598510true) (.cons (fun lit => by cases lit <;> first | exact atom137552494false | exact atom137552494true) (.cons (fun lit => by cases lit <;> first | exact atom137552302false | exact atom137552302true) (.cons (fun lit => by cases lit <;> first | exact atom137553454false | exact atom137553454true) (.cons (fun lit => by cases lit <;> first | exact atom137542190false | exact atom137542190true) (.cons (fun lit => by cases lit <;> first | exact atom137541806false | exact atom137541806true) (.cons (fun lit => by cases lit <;> first | exact atom137205294false | exact atom137205294true) (.cons (fun lit => by cases lit <;> first | exact atom137159278false | exact atom137159278true) (.cons (fun lit => by cases lit <;> first | exact atom137060974false | exact atom137060974true) (.cons (fun lit => by cases lit <;> first | exact atom137159086false | exact atom137159086true) (.cons (fun lit => by cases lit <;> first | exact atom137160238false | exact atom137160238true) (.cons (fun lit => by cases lit <;> first | exact atom137148974false | exact atom137148974true) (.cons (fun lit => by cases lit <;> first | exact atom137148590false | exact atom137148590true) (.cons (fun lit => by cases lit <;> first | exact atom137060782false | exact atom137060782true) (.cons (fun lit => by cases lit <;> first | exact atom137061934false | exact atom137061934true) (.cons (fun lit => by cases lit <;> first | exact atom137050670false | exact atom137050670true) (.cons (fun lit => by cases lit <;> first | exact atom137026094false | exact atom137026094true) (.cons (fun lit => by cases lit <;> first | exact atom137050286false | exact atom137050286true) (.cons (fun lit => by cases lit <;> first | exact atom137025710false | exact atom137025710true) (.cons (fun lit => by cases lit <;> first | exact atom147035694false | exact atom147035694true) (.cons (fun lit => by cases lit <;> first | exact atom146989678false | exact atom146989678true) (.cons (fun lit => by cases lit <;> first | exact atom146990638false | exact atom146990638true) (.cons (fun lit => by cases lit <;> first | exact atom146979374false | exact atom146979374true) (.cons (fun lit => by cases lit <;> first | exact atom146978990false | exact atom146978990true) (.cons (fun lit => by cases lit <;> first | exact atom184608366false | exact atom184608366true) (.cons (fun lit => by cases lit <;> first | exact atom184608174false | exact atom184608174true) (.cons (fun lit => by cases lit <;> first | exact atom184597102false | exact atom184597102true) (.cons (fun lit => by cases lit <;> first | exact atom184596910false | exact atom184596910true) (.cons (fun lit => by cases lit <;> first | exact atom184594094false | exact atom184594094true) (.cons (fun lit => by cases lit <;> first | exact atom184784430false | exact atom184784430true) (.cons (fun lit => by cases lit <;> first | exact atom184738414false | exact atom184738414true) (.cons (fun lit => by cases lit <;> first | exact atom184739374false | exact atom184739374true) (.cons (fun lit => by cases lit <;> first | exact atom184728110false | exact atom184728110true) (.cons (fun lit => by cases lit <;> first | exact atom184727726false | exact atom184727726true) .nil))))))))))))))))))))))))))))))))))
theorem atoms116 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,1,0,1,1]) := by
  have h : atoms 3 5 [0,1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
