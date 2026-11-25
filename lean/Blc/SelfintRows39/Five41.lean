import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom137612826 : Term := (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))))
private def v701156806170 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 0))))))))))
private theorem no_v701156806170 : ¬ MinimalInterpreter v701156806170 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0)))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.app (.var 1) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137612826false : BadRow (sources false 3 5 atom137612826) := by
  have h : sources false 3 5 atom137612826 = [v701156806170] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156806170) .nil)

theorem atom137612826true : BadRow (sources true 3 5 atom137612826) := by
  have h : sources true 3 5 atom137612826 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137612898 : Term := (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))))
private def v701156806242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))))))
private theorem no_v701156806242 : ¬ MinimalInterpreter v701156806242 :=
  chain_cut false 2 (by decide)
theorem atom137612898false : BadRow (sources false 3 5 atom137612898) := by
  have h : sources false 3 5 atom137612898 = [v701156806242] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156806242) .nil)

theorem atom137612898true : BadRow (sources true 3 5 atom137612898) := by
  have h : sources true 3 5 atom137612898 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137612194 : Term := (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))
private def v701156805538 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))))
private theorem no_v701156805538 : ¬ MinimalInterpreter v701156805538 :=
  chain_cut false 2 (by decide)
theorem atom137612194false : BadRow (sources false 3 5 atom137612194) := by
  have h : sources false 3 5 atom137612194 = [v701156805538] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156805538) .nil)

theorem atom137612194true : BadRow (sources true 3 5 atom137612194) := by
  have h : sources true 3 5 atom137612194 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137612170 : Term := (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))))
private def v701156805514 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))))))
private theorem no_v701156805514 : ¬ MinimalInterpreter v701156805514 :=
  chain_cut false 2 (by decide)
theorem atom137612170false : BadRow (sources false 3 5 atom137612170) := by
  have h : sources false 3 5 atom137612170 = [v701156805514] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156805514) .nil)

theorem atom137612170true : BadRow (sources true 3 5 atom137612170) := by
  have h : sources true 3 5 atom137612170 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137557530 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 0)))))))
private def v701156750874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 0)))))))))
private theorem no_v701156750874 : ¬ MinimalInterpreter v701156750874 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.var 0))))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_closed_lam (by decide) (.app (.var 0) (.var 0))))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137557530false : BadRow (sources false 3 5 atom137557530) := by
  have h : sources false 3 5 atom137557530 = [v701156750874] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156750874) .nil)

theorem atom137557530true : BadRow (sources true 3 5 atom137557530) := by
  have h : sources true 3 5 atom137557530 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137557602 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))
private def v701156750946 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v701156750946 : ¬ MinimalInterpreter v701156750946 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0))))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (so_closed_lam (by decide) (.var 0))))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137557602false : BadRow (sources false 3 5 atom137557602) := by
  have h : sources false 3 5 atom137557602 = [v701156750946] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156750946) .nil)

theorem atom137557602true : BadRow (sources true 3 5 atom137557602) := by
  have h : sources true 3 5 atom137557602 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137556898 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0))))))
private def v701156750242 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0))))))))
private theorem no_v701156750242 : ¬ MinimalInterpreter v701156750242 :=
  chain_cut false 2 (by decide)
theorem atom137556898false : BadRow (sources false 3 5 atom137556898) := by
  have h : sources false 3 5 atom137556898 = [v701156750242] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156750242) .nil)

theorem atom137556898true : BadRow (sources true 3 5 atom137556898) := by
  have h : sources true 3 5 atom137556898 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137543074 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0))))))
private def v701156736418 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0))))))))
private theorem no_v701156736418 : ¬ MinimalInterpreter v701156736418 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))) (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (so_closed_lam (by decide) (.var 0)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137543074false : BadRow (sources false 3 5 atom137543074) := by
  have h : sources false 3 5 atom137543074 = [v701156736418] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156736418) .nil)

theorem atom137543074true : BadRow (sources true 3 5 atom137543074) := by
  have h : sources true 3 5 atom137543074 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137556874 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0)))))
private def v701156750218 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0)))))))
private theorem no_v701156750218 : ¬ MinimalInterpreter v701156750218 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0))))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (.var 0))) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137556874false : BadRow (sources false 3 5 atom137556874) := by
  have h : sources false 3 5 atom137556874 = [v701156750218] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156750218) .nil)

theorem atom137556874true : BadRow (sources true 3 5 atom137556874) := by
  have h : sources true 3 5 atom137556874 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137543050 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0)))))
private def v701156736394 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0)))))))
private theorem no_v701156736394 : ¬ MinimalInterpreter v701156736394 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0))))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (g := (.app (.var 0) (.app (.var 1) (.var 0)))) (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (so_closed_lam (by decide) (.var 0))) (.var 0))) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137543050false : BadRow (sources false 3 5 atom137543050) := by
  have h : sources false 3 5 atom137543050 = [v701156736394] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156736394) .nil)

theorem atom137543050true : BadRow (sources true 3 5 atom137543050) := by
  have h : sources true 3 5 atom137543050 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137219610 : Term := (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))
private def v701156412954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.app (.var 0) (.var 0)))))))))
private theorem no_v701156412954 : ¬ MinimalInterpreter v701156412954 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom137219610false : BadRow (sources false 3 5 atom137219610) := by
  have h : sources false 3 5 atom137219610 = [v701156412954] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156412954) .nil)

theorem atom137219610true : BadRow (sources true 3 5 atom137219610) := by
  have h : sources true 3 5 atom137219610 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137219682 : Term := (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))))
private def v701156413026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v701156413026 : ¬ MinimalInterpreter v701156413026 :=
  chain_cut false 2 (by decide)
theorem atom137219682false : BadRow (sources false 3 5 atom137219682) := by
  have h : sources false 3 5 atom137219682 = [v701156413026] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156413026) .nil)

theorem atom137219682true : BadRow (sources true 3 5 atom137219682) := by
  have h : sources true 3 5 atom137219682 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137218978 : Term := (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))
private def v701156412322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))))
private theorem no_v701156412322 : ¬ MinimalInterpreter v701156412322 :=
  chain_cut false 2 (by decide)
theorem atom137218978false : BadRow (sources false 3 5 atom137218978) := by
  have h : sources false 3 5 atom137218978 = [v701156412322] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156412322) .nil)

theorem atom137218978true : BadRow (sources true 3 5 atom137218978) := by
  have h : sources true 3 5 atom137218978 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137218954 : Term := (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))))
private def v701156412298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.lam (.var 0))) (.var 0)))))))
private theorem no_v701156412298 : ¬ MinimalInterpreter v701156412298 :=
  chain_cut false 2 (by decide)
theorem atom137218954false : BadRow (sources false 3 5 atom137218954) := by
  have h : sources false 3 5 atom137218954 = [v701156412298] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156412298) .nil)

theorem atom137218954true : BadRow (sources true 3 5 atom137218954) := by
  have h : sources true 3 5 atom137218954 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137164314 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 0) (.var 0))))))
private def v701156357658 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 0) (.var 0))))))))
private theorem no_v701156357658 : ¬ MinimalInterpreter v701156357658 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 0) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.app (.var 0) (.var 0)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.var 0))))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137164314false : BadRow (sources false 3 5 atom137164314) := by
  have h : sources false 3 5 atom137164314 = [v701156357658] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156357658) .nil)

theorem atom137164314true : BadRow (sources true 3 5 atom137164314) := by
  have h : sources true 3 5 atom137164314 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137164386 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.var 0))))))
private def v701156357730 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.var 0))))))))
private theorem no_v701156357730 : ¬ MinimalInterpreter v701156357730 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.lam (.var 0)))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137164386false : BadRow (sources false 3 5 atom137164386) := by
  have h : sources false 3 5 atom137164386 = [v701156357730] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156357730) .nil)

theorem atom137164386true : BadRow (sources true 3 5 atom137164386) := by
  have h : sources true 3 5 atom137164386 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137066010 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.app (.var 0) (.var 0))))))
private def v701156259354 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.app (.var 0) (.var 0))))))))
private theorem no_v701156259354 : ¬ MinimalInterpreter v701156259354 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom137066010false : BadRow (sources false 3 5 atom137066010) := by
  have h : sources false 3 5 atom137066010 = [v701156259354] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156259354) .nil)

theorem atom137066010true : BadRow (sources true 3 5 atom137066010) := by
  have h : sources true 3 5 atom137066010 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137066082 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.lam (.var 0))))))
private def v701156259426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.lam (.var 0))))))))
private theorem no_v701156259426 : ¬ MinimalInterpreter v701156259426 :=
  chain_cut false 2 (by decide)
theorem atom137066082false : BadRow (sources false 3 5 atom137066082) := by
  have h : sources false 3 5 atom137066082 = [v701156259426] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156259426) .nil)

theorem atom137066082true : BadRow (sources true 3 5 atom137066082) := by
  have h : sources true 3 5 atom137066082 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137163682 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.lam (.var 0)))))
private def v701156357026 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.lam (.var 0)))))))
private theorem no_v701156357026 : ¬ MinimalInterpreter v701156357026 :=
  chain_cut false 2 (by decide)
theorem atom137163682false : BadRow (sources false 3 5 atom137163682) := by
  have h : sources false 3 5 atom137163682 = [v701156357026] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156357026) .nil)

theorem atom137163682true : BadRow (sources true 3 5 atom137163682) := by
  have h : sources true 3 5 atom137163682 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137149858 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.var 0)))))
private def v701156343202 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.var 0)))))))
private theorem no_v701156343202 : ¬ MinimalInterpreter v701156343202 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.lam (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.lam (.var 0)))) (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137149858false : BadRow (sources false 3 5 atom137149858) := by
  have h : sources false 3 5 atom137149858 = [v701156343202] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156343202) .nil)

theorem atom137149858true : BadRow (sources true 3 5 atom137149858) := by
  have h : sources true 3 5 atom137149858 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137065378 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))) (.lam (.var 0)))))
private def v701156258722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))) (.lam (.var 0)))))))
private theorem no_v701156258722 : ¬ MinimalInterpreter v701156258722 :=
  chain_cut false 2 (by decide)
theorem atom137065378false : BadRow (sources false 3 5 atom137065378) := by
  have h : sources false 3 5 atom137065378 = [v701156258722] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156258722) .nil)

theorem atom137065378true : BadRow (sources true 3 5 atom137065378) := by
  have h : sources true 3 5 atom137065378 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137051554 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.var 0)))))
private def v701156244898 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.var 0)))))))
private theorem no_v701156244898 : ¬ MinimalInterpreter v701156244898 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.lam (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.lam (.var 0)))) (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137051554false : BadRow (sources false 3 5 atom137051554) := by
  have h : sources false 3 5 atom137051554 = [v701156244898] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156244898) .nil)

theorem atom137051554true : BadRow (sources true 3 5 atom137051554) := by
  have h : sources true 3 5 atom137051554 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137026978 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)) (.lam (.var 0)))))
private def v701156220322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)) (.lam (.var 0)))))))
private theorem no_v701156220322 : ¬ MinimalInterpreter v701156220322 :=
  chain_cut false 2 (by decide)
theorem atom137026978false : BadRow (sources false 3 5 atom137026978) := by
  have h : sources false 3 5 atom137026978 = [v701156220322] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156220322) .nil)

theorem atom137026978true : BadRow (sources true 3 5 atom137026978) := by
  have h : sources true 3 5 atom137026978 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137163658 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))) (.var 0))))
private def v701156357002 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))) (.var 0))))))
private theorem no_v701156357002 : ¬ MinimalInterpreter v701156357002 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0))))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (so_closed_lam (by decide) (.var 0))))) (.var 0)) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137163658false : BadRow (sources false 3 5 atom137163658) := by
  have h : sources false 3 5 atom137163658 = [v701156357002] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156357002) .nil)

theorem atom137163658true : BadRow (sources true 3 5 atom137163658) := by
  have h : sources true 3 5 atom137163658 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137149834 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))) (.var 0))))
private def v701156343178 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))) (.var 0))))))
private theorem no_v701156343178 : ¬ MinimalInterpreter v701156343178 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0)))) (.var 0)))) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (g := (.app (.app (.var 0) (.var 1)) (.var 0))) (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137149834false : BadRow (sources false 3 5 atom137149834) := by
  have h : sources false 3 5 atom137149834 = [v701156343178] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156343178) .nil)

theorem atom137149834true : BadRow (sources true 3 5 atom137149834) := by
  have h : sources true 3 5 atom137149834 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137065354 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 0))))
private def v701156258698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0)))) (.var 0))))))
private theorem no_v701156258698 : ¬ MinimalInterpreter v701156258698 :=
  chain_cut false 2 (by decide)
theorem atom137065354false : BadRow (sources false 3 5 atom137065354) := by
  have h : sources false 3 5 atom137065354 = [v701156258698] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156258698) .nil)

theorem atom137065354true : BadRow (sources true 3 5 atom137065354) := by
  have h : sources true 3 5 atom137065354 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137051530 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))) (.var 0))))
private def v701156244874 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))) (.var 0))))))
private theorem no_v701156244874 : ¬ MinimalInterpreter v701156244874 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))) (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0))) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 0))) (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))
theorem atom137051530false : BadRow (sources false 3 5 atom137051530) := by
  have h : sources false 3 5 atom137051530 = [v701156244874] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156244874) .nil)

theorem atom137051530true : BadRow (sources true 3 5 atom137051530) := by
  have h : sources true 3 5 atom137051530 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137026954 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 0))))
private def v701156220298 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0))) (.var 0))))))
private theorem no_v701156220298 : ¬ MinimalInterpreter v701156220298 :=
  chain_cut false 2 (by decide)
theorem atom137026954false : BadRow (sources false 3 5 atom137026954) := by
  have h : sources false 3 5 atom137026954 = [v701156220298] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156220298) .nil)

theorem atom137026954true : BadRow (sources true 3 5 atom137026954) := by
  have h : sources true 3 5 atom137026954 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom147050082 : Term := (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))))
private def v701166243426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))))))
private theorem no_v701166243426 : ¬ MinimalInterpreter v701166243426 :=
  chain_cut false 2 (by decide)
theorem atom147050082false : BadRow (sources false 3 5 atom147050082) := by
  have h : sources false 3 5 atom147050082 = [v701166243426] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166243426) .nil)

theorem atom147050082true : BadRow (sources true 3 5 atom147050082) := by
  have h : sources true 3 5 atom147050082 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom147049378 : Term := (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))
private def v701166242722 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))))
private theorem no_v701166242722 : ¬ MinimalInterpreter v701166242722 :=
  chain_cut false 2 (by decide)
theorem atom147049378false : BadRow (sources false 3 5 atom147049378) := by
  have h : sources false 3 5 atom147049378 = [v701166242722] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166242722) .nil)

theorem atom147049378true : BadRow (sources true 3 5 atom147049378) := by
  have h : sources true 3 5 atom147049378 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom147049354 : Term := (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))))
private def v701166242698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))))))
private theorem no_v701166242698 : ¬ MinimalInterpreter v701166242698 :=
  chain_cut false 2 (by decide)
theorem atom147049354false : BadRow (sources false 3 5 atom147049354) := by
  have h : sources false 3 5 atom147049354 = [v701166242698] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166242698) .nil)

theorem atom147049354true : BadRow (sources true 3 5 atom147049354) := by
  have h : sources true 3 5 atom147049354 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146994786 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))
private def v701166188130 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v701166188130 : ¬ MinimalInterpreter v701166188130 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0))))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom146994786false : BadRow (sources false 3 5 atom146994786) := by
  have h : sources false 3 5 atom146994786 = [v701166188130] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166188130) .nil)

theorem atom146994786true : BadRow (sources true 3 5 atom146994786) := by
  have h : sources true 3 5 atom146994786 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146994082 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0))))))
private def v701166187426 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0))))))))
private theorem no_v701166187426 : ¬ MinimalInterpreter v701166187426 :=
  chain_cut false 2 (by decide)
theorem atom146994082false : BadRow (sources false 3 5 atom146994082) := by
  have h : sources false 3 5 atom146994082 = [v701166187426] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166187426) .nil)

theorem atom146994082true : BadRow (sources true 3 5 atom146994082) := by
  have h : sources true 3 5 atom146994082 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146980258 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0))))))
private def v701166173602 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0))))))))
private theorem no_v701166173602 : ¬ MinimalInterpreter v701166173602 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0)))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (so_closed_lam (by decide) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom146980258false : BadRow (sources false 3 5 atom146980258) := by
  have h : sources false 3 5 atom146980258 = [v701166173602] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166173602) .nil)

theorem atom146980258true : BadRow (sources true 3 5 atom146980258) := by
  have h : sources true 3 5 atom146980258 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146994058 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0)))))
private def v701166187402 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0)))))))
private theorem no_v701166187402 : ¬ MinimalInterpreter v701166187402 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom146994058false : BadRow (sources false 3 5 atom146994058) := by
  have h : sources false 3 5 atom146994058 = [v701166187402] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166187402) .nil)

theorem atom146994058true : BadRow (sources true 3 5 atom146994058) := by
  have h : sources true 3 5 atom146994058 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom146980234 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0)))))
private def v701166173578 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0)))))))
private theorem no_v701166173578 : ¬ MinimalInterpreter v701166173578 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0))))) (.app (.var 0) (.lam (r := (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))) (g := (.app (.var 1) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (so_closed_lam (by decide) (.var 0))) (.var 0)) (.app (.app (.var 1) (.var 0)) (so_closed_lam (by decide) (.var 0))) (by decide) (by decide))) (.var 0) (by decide) (by decide)))))
theorem atom146980234false : BadRow (sources false 3 5 atom146980234) := by
  have h : sources false 3 5 atom146980234 = [v701166173578] := by decide +kernel
  rw [h]
  exact (.cons (no_v701166173578) .nil)

theorem atom146980234true : BadRow (sources true 3 5 atom146980234) := by
  have h : sources true 3 5 atom146980234 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145814434 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.var 0))))
private def v701165007778 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))) (.lam (.var 0))))))
private theorem no_v701165007778 : ¬ MinimalInterpreter v701165007778 :=
  chain_cut false 2 (by decide)
theorem atom145814434false : BadRow (sources false 3 5 atom145814434) := by
  have h : sources false 3 5 atom145814434 = [v701165007778] := by decide +kernel
  rw [h]
  exact (.cons (no_v701165007778) .nil)

theorem atom145814434true : BadRow (sources true 3 5 atom145814434) := by
  have h : sources true 3 5 atom145814434 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom145800610 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.var 0))))
private def v701164993954 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.var 0))))))
private theorem no_v701164993954 : ¬ MinimalInterpreter v701164993954 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.var 0)))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (.var 0)))) (.app (.app (.var 0) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide))) (so_closed_lam (by decide) (.var 0))) (.var 0) (by decide) (by decide)))))
theorem atom145800610false : BadRow (sources false 3 5 atom145800610) := by
  have h : sources false 3 5 atom145800610 = [v701164993954] := by decide +kernel
  rw [h]
  exact (.cons (no_v701164993954) .nil)

theorem atom145800610true : BadRow (sources true 3 5 atom145800610) := by
  have h : sources true 3 5 atom145800610 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184611738 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))
private def v701203805082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0))))))))))
private theorem no_v701203805082 : ¬ MinimalInterpreter v701203805082 :=
  chain_cut false 4 (by decide)
theorem atom184611738false : BadRow (sources false 3 5 atom184611738) := by
  have h : sources false 3 5 atom184611738 = [v701203805082] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203805082) .nil)

theorem atom184611738true : BadRow (sources true 3 5 atom184611738) := by
  have h : sources true 3 5 atom184611738 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184611562 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))
private def v701203804906 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))))))
private theorem no_v701203804906 : ¬ MinimalInterpreter v701203804906 :=
  chain_cut false 4 (by decide)
theorem atom184611562false : BadRow (sources false 3 5 atom184611562) := by
  have h : sources false 3 5 atom184611562 = [v701203804906] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203804906) .nil)

theorem atom184611562true : BadRow (sources true 3 5 atom184611562) := by
  have h : sources true 3 5 atom184611562 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184597914 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))
private def v701203791258 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0)))))))))
private theorem no_v701203791258 : ¬ MinimalInterpreter v701203791258 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.app (.var 0) (.var 0)))) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem atom184597914false : BadRow (sources false 3 5 atom184597914) := by
  have h : sources false 3 5 atom184597914 = [v701203791258] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203791258) .nil)

theorem atom184597914true : BadRow (sources true 3 5 atom184597914) := by
  have h : sources true 3 5 atom184597914 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184597738 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))
private def v701203791082 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0))))))))
private theorem no_v701203791082 : ¬ MinimalInterpreter v701203791082 :=
  chain_cut false 4 (by decide)
theorem atom184597738false : BadRow (sources false 3 5 atom184597738) := by
  have h : sources false 3 5 atom184597738 = [v701203791082] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203791082) .nil)

theorem atom184597738true : BadRow (sources true 3 5 atom184597738) := by
  have h : sources true 3 5 atom184597738 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184594282 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))
private def v701203787626 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0))))))))
private theorem no_v701203787626 : ¬ MinimalInterpreter v701203787626 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.app (.var 1) (.var 0)) (.var 0))) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))))))
theorem atom184594282false : BadRow (sources false 3 5 atom184594282) := by
  have h : sources false 3 5 atom184594282 = [v701203787626] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203787626) .nil)

theorem atom184594282true : BadRow (sources true 3 5 atom184594282) := by
  have h : sources true 3 5 atom184594282 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184798818 : Term := (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))))
private def v701203992162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.lam (.var 0))))))))))
private theorem no_v701203992162 : ¬ MinimalInterpreter v701203992162 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom184798818false : BadRow (sources false 3 5 atom184798818) := by
  have h : sources false 3 5 atom184798818 = [v701203992162] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203992162) .nil)

theorem atom184798818true : BadRow (sources true 3 5 atom184798818) := by
  have h : sources true 3 5 atom184798818 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184798114 : Term := (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))
private def v701203991458 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))))
private theorem no_v701203991458 : ¬ MinimalInterpreter v701203991458 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom184798114false : BadRow (sources false 3 5 atom184798114) := by
  have h : sources false 3 5 atom184798114 = [v701203991458] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203991458) .nil)

theorem atom184798114true : BadRow (sources true 3 5 atom184798114) := by
  have h : sources true 3 5 atom184798114 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184798090 : Term := (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))))
private def v701203991434 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.var 0))) (.var 0))))))))
private theorem no_v701203991434 : ¬ MinimalInterpreter v701203991434 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom184798090false : BadRow (sources false 3 5 atom184798090) := by
  have h : sources false 3 5 atom184798090 = [v701203991434] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203991434) .nil)

theorem atom184798090true : BadRow (sources true 3 5 atom184798090) := by
  have h : sources true 3 5 atom184798090 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184743522 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))
private def v701203936866 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.lam (.var 0)))))))))
private theorem no_v701203936866 : ¬ MinimalInterpreter v701203936866 :=
  w_cut false 0 (by decide)
theorem atom184743522false : BadRow (sources false 3 5 atom184743522) := by
  have h : sources false 3 5 atom184743522 = [v701203936866] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203936866) .nil)

theorem atom184743522true : BadRow (sources true 3 5 atom184743522) := by
  have h : sources true 3 5 atom184743522 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184742818 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0))))))
private def v701203936162 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 0))))))))
private theorem no_v701203936162 : ¬ MinimalInterpreter v701203936162 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 16 (by decide) (by decide) (by decide) (by decide)
theorem atom184742818false : BadRow (sources false 3 5 atom184742818) := by
  have h : sources false 3 5 atom184742818 = [v701203936162] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203936162) .nil)

theorem atom184742818true : BadRow (sources true 3 5 atom184742818) := by
  have h : sources true 3 5 atom184742818 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184728994 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0))))))
private def v701203922338 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.lam (.var 0))))))))
private theorem no_v701203922338 : ¬ MinimalInterpreter v701203922338 :=
  w_cut false 0 (by decide)
theorem atom184728994false : BadRow (sources false 3 5 atom184728994) := by
  have h : sources false 3 5 atom184728994 = [v701203922338] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203922338) .nil)

theorem atom184728994true : BadRow (sources true 3 5 atom184728994) := by
  have h : sources true 3 5 atom184728994 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184742794 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0)))))
private def v701203936138 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0)))))))
private theorem no_v701203936138 : ¬ MinimalInterpreter v701203936138 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 0)))) (.var 0)))) (.lam (r := (.app (.var 1) (.app (.var 0) (.lam (.var 0))))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.app (.var 1) (so_closed_lam (by decide) (.var 0)))) (.var 0)) (.app (.var 1) (.app (.var 0) (so_closed_lam (by decide) (.var 0)))) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
theorem atom184742794false : BadRow (sources false 3 5 atom184742794) := by
  have h : sources false 3 5 atom184742794 = [v701203936138] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203936138) .nil)

theorem atom184742794true : BadRow (sources true 3 5 atom184742794) := by
  have h : sources true 3 5 atom184742794 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom184728970 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0)))))
private def v701203922314 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.lam (.var 0))) (.var 0)))))))
private theorem no_v701203922314 : ¬ MinimalInterpreter v701203922314 :=
  w_cut false 0 (by decide)
theorem atom184728970false : BadRow (sources false 3 5 atom184728970) := by
  have h : sources false 3 5 atom184728970 = [v701203922314] := by decide +kernel
  rw [h]
  exact (.cons (no_v701203922314) .nil)

theorem atom184728970true : BadRow (sources true 3 5 atom184728970) := by
  have h : sources true 3 5 atom184728970 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180417442 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.var 0)))
private def v701199610786 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.var 0)))))
private theorem no_v701199610786 : ¬ MinimalInterpreter v701199610786 :=
  fun h => Rare39.excludedfive553 h.1
theorem atom180417442false : BadRow (sources false 3 5 atom180417442) := by
  have h : sources false 3 5 atom180417442 = [v701199610786] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199610786) .nil)

theorem atom180417442true : BadRow (sources true 3 5 atom180417442) := by
  have h : sources true 3 5 atom180417442 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180403618 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (.var 0)))
private def v701199596962 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (.var 0)))))
private theorem no_v701199596962 : ¬ MinimalInterpreter v701199596962 :=
  w_cut false 0 (by decide)
theorem atom180403618false : BadRow (sources false 3 5 atom180403618) := by
  have h : sources false 3 5 atom180403618 = [v701199596962] := by decide +kernel
  rw [h]
  exact (.cons (no_v701199596962) .nil)

theorem atom180403618true : BadRow (sources true 3 5 atom180403618) := by
  have h : sources true 3 5 atom180403618 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180370666 : Term := (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 0))
private def v699009919514 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 0))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699009919514 : ¬ MinimalInterpreter v699009919514 :=
  chain_cut false 2 (by decide)
private def v701199564010 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.var 0))))
private theorem no_v701199564010 : ¬ MinimalInterpreter v701199564010 :=
  chain_cut false 3 (by decide)
theorem atom180370666false : BadRow (sources false 3 5 atom180370666) := by
  have h : sources false 3 5 atom180370666 = [v699009919514,v701199564010] := by decide +kernel
  rw [h]
  exact (.cons (no_v699009919514) (.cons (no_v701199564010) .nil))

theorem atom180370666true : BadRow (sources true 3 5 atom180370666) := by
  have h : sources true 3 5 atom180370666 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom180367210 : Term := (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.var 0))
private def v699009034778 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v699009034778 : ¬ MinimalInterpreter v699009034778 :=
  so_cut false 0 (show SO (.app (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v701199560554 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.var 0))))
private theorem no_v701199560554 : ¬ MinimalInterpreter v701199560554 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.var 0)))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.app (.app (.var 0) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (.var 0)))))
theorem atom180367210false : BadRow (sources false 3 5 atom180367210) := by
  have h : sources false 3 5 atom180367210 = [v699009034778,v701199560554] := by decide +kernel
  rw [h]
  exact (.cons (no_v699009034778) (.cons (no_v701199560554) .nil))

theorem atom180367210true : BadRow (sources true 3 5 atom180367210) := by
  have h : sources true 3 5 atom180367210 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms123 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,2,1,0,0]) := by
  have h : atoms 3 5 [0,2,1,0,0] = [atom137612826,atom137612898,atom137612194,atom137612170,atom137557530,atom137557602,atom137556898,atom137543074,atom137556874,atom137543050,atom137219610,atom137219682,atom137218978,atom137218954,atom137164314,atom137164386,atom137066010,atom137066082,atom137163682,atom137149858,atom137065378,atom137051554,atom137026978,atom137163658,atom137149834,atom137065354,atom137051530,atom137026954,atom147050082,atom147049378,atom147049354,atom146994786,atom146994082,atom146980258,atom146994058,atom146980234,atom145814434,atom145800610,atom184611738,atom184611562,atom184597914,atom184597738,atom184594282,atom184798818,atom184798114,atom184798090,atom184743522,atom184742818,atom184728994,atom184742794,atom184728970,atom180417442,atom180403618,atom180370666,atom180367210] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom137612826false | exact atom137612826true) (.cons (fun lit => by cases lit <;> first | exact atom137612898false | exact atom137612898true) (.cons (fun lit => by cases lit <;> first | exact atom137612194false | exact atom137612194true) (.cons (fun lit => by cases lit <;> first | exact atom137612170false | exact atom137612170true) (.cons (fun lit => by cases lit <;> first | exact atom137557530false | exact atom137557530true) (.cons (fun lit => by cases lit <;> first | exact atom137557602false | exact atom137557602true) (.cons (fun lit => by cases lit <;> first | exact atom137556898false | exact atom137556898true) (.cons (fun lit => by cases lit <;> first | exact atom137543074false | exact atom137543074true) (.cons (fun lit => by cases lit <;> first | exact atom137556874false | exact atom137556874true) (.cons (fun lit => by cases lit <;> first | exact atom137543050false | exact atom137543050true) (.cons (fun lit => by cases lit <;> first | exact atom137219610false | exact atom137219610true) (.cons (fun lit => by cases lit <;> first | exact atom137219682false | exact atom137219682true) (.cons (fun lit => by cases lit <;> first | exact atom137218978false | exact atom137218978true) (.cons (fun lit => by cases lit <;> first | exact atom137218954false | exact atom137218954true) (.cons (fun lit => by cases lit <;> first | exact atom137164314false | exact atom137164314true) (.cons (fun lit => by cases lit <;> first | exact atom137164386false | exact atom137164386true) (.cons (fun lit => by cases lit <;> first | exact atom137066010false | exact atom137066010true) (.cons (fun lit => by cases lit <;> first | exact atom137066082false | exact atom137066082true) (.cons (fun lit => by cases lit <;> first | exact atom137163682false | exact atom137163682true) (.cons (fun lit => by cases lit <;> first | exact atom137149858false | exact atom137149858true) (.cons (fun lit => by cases lit <;> first | exact atom137065378false | exact atom137065378true) (.cons (fun lit => by cases lit <;> first | exact atom137051554false | exact atom137051554true) (.cons (fun lit => by cases lit <;> first | exact atom137026978false | exact atom137026978true) (.cons (fun lit => by cases lit <;> first | exact atom137163658false | exact atom137163658true) (.cons (fun lit => by cases lit <;> first | exact atom137149834false | exact atom137149834true) (.cons (fun lit => by cases lit <;> first | exact atom137065354false | exact atom137065354true) (.cons (fun lit => by cases lit <;> first | exact atom137051530false | exact atom137051530true) (.cons (fun lit => by cases lit <;> first | exact atom137026954false | exact atom137026954true) (.cons (fun lit => by cases lit <;> first | exact atom147050082false | exact atom147050082true) (.cons (fun lit => by cases lit <;> first | exact atom147049378false | exact atom147049378true) (.cons (fun lit => by cases lit <;> first | exact atom147049354false | exact atom147049354true) (.cons (fun lit => by cases lit <;> first | exact atom146994786false | exact atom146994786true) (.cons (fun lit => by cases lit <;> first | exact atom146994082false | exact atom146994082true) (.cons (fun lit => by cases lit <;> first | exact atom146980258false | exact atom146980258true) (.cons (fun lit => by cases lit <;> first | exact atom146994058false | exact atom146994058true) (.cons (fun lit => by cases lit <;> first | exact atom146980234false | exact atom146980234true) (.cons (fun lit => by cases lit <;> first | exact atom145814434false | exact atom145814434true) (.cons (fun lit => by cases lit <;> first | exact atom145800610false | exact atom145800610true) (.cons (fun lit => by cases lit <;> first | exact atom184611738false | exact atom184611738true) (.cons (fun lit => by cases lit <;> first | exact atom184611562false | exact atom184611562true) (.cons (fun lit => by cases lit <;> first | exact atom184597914false | exact atom184597914true) (.cons (fun lit => by cases lit <;> first | exact atom184597738false | exact atom184597738true) (.cons (fun lit => by cases lit <;> first | exact atom184594282false | exact atom184594282true) (.cons (fun lit => by cases lit <;> first | exact atom184798818false | exact atom184798818true) (.cons (fun lit => by cases lit <;> first | exact atom184798114false | exact atom184798114true) (.cons (fun lit => by cases lit <;> first | exact atom184798090false | exact atom184798090true) (.cons (fun lit => by cases lit <;> first | exact atom184743522false | exact atom184743522true) (.cons (fun lit => by cases lit <;> first | exact atom184742818false | exact atom184742818true) (.cons (fun lit => by cases lit <;> first | exact atom184728994false | exact atom184728994true) (.cons (fun lit => by cases lit <;> first | exact atom184742794false | exact atom184742794true) (.cons (fun lit => by cases lit <;> first | exact atom184728970false | exact atom184728970true) (.cons (fun lit => by cases lit <;> first | exact atom180417442false | exact atom180417442true) (.cons (fun lit => by cases lit <;> first | exact atom180403618false | exact atom180403618true) (.cons (fun lit => by cases lit <;> first | exact atom180370666false | exact atom180370666true) (.cons (fun lit => by cases lit <;> first | exact atom180367210false | exact atom180367210true) .nil)))))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem atoms124 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [0,3,0,0,0]) := by
  have h : atoms 3 5 [0,3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom137991726 : Term := (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))))))
private def v701157185070 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.lam (.var 0))) (.var 2))))))))
private theorem no_v701157185070 : ¬ MinimalInterpreter v701157185070 :=
  chain_cut false 2 (by decide)
theorem atom137991726false : BadRow (sources false 3 5 atom137991726) := by
  have h : sources false 3 5 atom137991726 = [v701157185070] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157185070) .nil)

theorem atom137991726true : BadRow (sources true 3 5 atom137991726) := by
  have h : sources true 3 5 atom137991726 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137960046 : Term := (.lam (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2))))))
private def v701157153390 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.lam (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2))))))))
private theorem no_v701157153390 : ¬ MinimalInterpreter v701157153390 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom137960046false : BadRow (sources false 3 5 atom137960046) := by
  have h : sources false 3 5 atom137960046 = [v701157153390] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157153390) .nil)

theorem atom137960046true : BadRow (sources true 3 5 atom137960046) := by
  have h : sources true 3 5 atom137960046 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137978478 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 2))))))
private def v701157171822 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 0) (.var 2))))))))
private theorem no_v701157171822 : ¬ MinimalInterpreter v701157171822 :=
  chain_cut false 2 (by decide)
theorem atom137978478false : BadRow (sources false 3 5 atom137978478) := by
  have h : sources false 3 5 atom137978478 = [v701157171822] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157171822) .nil)

theorem atom137978478true : BadRow (sources true 3 5 atom137978478) := by
  have h : sources true 3 5 atom137978478 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137978286 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)))))
private def v701157171630 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.app (.var 0) (.var 0)))) (.var 2)))))))
private theorem no_v701157171630 : ¬ MinimalInterpreter v701157171630 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom137978286false : BadRow (sources false 3 5 atom137978286) := by
  have h : sources false 3 5 atom137978286 = [v701157171630] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157171630) .nil)

theorem atom137978286true : BadRow (sources true 3 5 atom137978286) := by
  have h : sources true 3 5 atom137978286 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137979438 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 2)))))
private def v701157172782 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 2)))))))
private theorem no_v701157172782 : ¬ MinimalInterpreter v701157172782 :=
  chain_cut false 2 (by decide)
theorem atom137979438false : BadRow (sources false 3 5 atom137979438) := by
  have h : sources false 3 5 atom137979438 = [v701157172782] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157172782) .nil)

theorem atom137979438true : BadRow (sources true 3 5 atom137979438) := by
  have h : sources true 3 5 atom137979438 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137976366 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 2)))))
private def v701157169710 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 0))) (.var 2)))))))
private theorem no_v701157169710 : ¬ MinimalInterpreter v701157169710 :=
  chain_cut false 2 (by decide)
theorem atom137976366false : BadRow (sources false 3 5 atom137976366) := by
  have h : sources false 3 5 atom137976366 = [v701157169710] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157169710) .nil)

theorem atom137976366true : BadRow (sources true 3 5 atom137976366) := by
  have h : sources true 3 5 atom137976366 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137975982 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2)))))
private def v701157169326 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 0)) (.var 2)))))))
private theorem no_v701157169326 : ¬ MinimalInterpreter v701157169326 :=
  chain_cut false 2 (by decide)
theorem atom137975982false : BadRow (sources false 3 5 atom137975982) := by
  have h : sources false 3 5 atom137975982 = [v701157169326] := by decide +kernel
  rw [h]
  exact (.cons (no_v701157169326) .nil)

theorem atom137975982true : BadRow (sources true 3 5 atom137975982) := by
  have h : sources true 3 5 atom137975982 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137270830 : Term := (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 2)))))
private def v701156464174 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.lam (.var 0))) (.var 2)))))))
private theorem no_v701156464174 : ¬ MinimalInterpreter v701156464174 :=
  chain_cut false 2 (by decide)
theorem atom137270830false : BadRow (sources false 3 5 atom137270830) := by
  have h : sources false 3 5 atom137270830 = [v701156464174] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156464174) .nil)

theorem atom137270830true : BadRow (sources true 3 5 atom137270830) := by
  have h : sources true 3 5 atom137270830 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137242222 : Term := (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 2))))))
private def v701156435566 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.app (.var 0) (.var 2))))))))
private theorem no_v701156435566 : ¬ MinimalInterpreter v701156435566 :=
  chain_cut false 2 (by decide)
theorem atom137242222false : BadRow (sources false 3 5 atom137242222) := by
  have h : sources false 3 5 atom137242222 = [v701156435566] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156435566) .nil)

theorem atom137242222true : BadRow (sources true 3 5 atom137242222) := by
  have h : sources true 3 5 atom137242222 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137242030 : Term := (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 2)))))
private def v701156435374 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.app (.var 0) (.var 0)) (.var 2)))))))
private theorem no_v701156435374 : ¬ MinimalInterpreter v701156435374 :=
  chain_cut false 2 (by decide)
theorem atom137242030false : BadRow (sources false 3 5 atom137242030) := by
  have h : sources false 3 5 atom137242030 = [v701156435374] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156435374) .nil)

theorem atom137242030true : BadRow (sources true 3 5 atom137242030) := by
  have h : sources true 3 5 atom137242030 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137239150 : Term := (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 2)))))
private def v701156432494 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.app (.var 0) (.var 2)))))))
private theorem no_v701156432494 : ¬ MinimalInterpreter v701156432494 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom137239150false : BadRow (sources false 3 5 atom137239150) := by
  have h : sources false 3 5 atom137239150 = [v701156432494] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156432494) .nil)

theorem atom137239150true : BadRow (sources true 3 5 atom137239150) := by
  have h : sources true 3 5 atom137239150 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137257582 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 2)))))
private def v701156450926 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.app (.var 0) (.var 2)))))))
private theorem no_v701156450926 : ¬ MinimalInterpreter v701156450926 :=
  chain_cut false 2 (by decide)
theorem atom137257582false : BadRow (sources false 3 5 atom137257582) := by
  have h : sources false 3 5 atom137257582 = [v701156450926] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156450926) .nil)

theorem atom137257582true : BadRow (sources true 3 5 atom137257582) := by
  have h : sources true 3 5 atom137257582 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137077358 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 2)))))
private def v701156270702 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.app (.var 0) (.var 2)))))))
private theorem no_v701156270702 : ¬ MinimalInterpreter v701156270702 :=
  chain_cut false 2 (by decide)
theorem atom137077358false : BadRow (sources false 3 5 atom137077358) := by
  have h : sources false 3 5 atom137077358 = [v701156270702] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156270702) .nil)

theorem atom137077358true : BadRow (sources true 3 5 atom137077358) := by
  have h : sources true 3 5 atom137077358 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137071214 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 2)))))
private def v701156264558 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.app (.var 0) (.var 2)))))))
private theorem no_v701156264558 : ¬ MinimalInterpreter v701156264558 :=
  chain_cut false 2 (by decide)
theorem atom137071214false : BadRow (sources false 3 5 atom137071214) := by
  have h : sources false 3 5 atom137071214 = [v701156264558] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156264558) .nil)

theorem atom137071214true : BadRow (sources true 3 5 atom137071214) := by
  have h : sources true 3 5 atom137071214 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137257390 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 2))))
private def v701156450734 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.var 0))))) (.var 2))))))
private theorem no_v701156450734 : ¬ MinimalInterpreter v701156450734 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom137257390false : BadRow (sources false 3 5 atom137257390) := by
  have h : sources false 3 5 atom137257390 = [v701156450734] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156450734) .nil)

theorem atom137257390true : BadRow (sources true 3 5 atom137257390) := by
  have h : sources true 3 5 atom137257390 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137258542 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 2))))
private def v701156451886 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.var 2))))))
private theorem no_v701156451886 : ¬ MinimalInterpreter v701156451886 :=
  chain_cut false 2 (by decide)
theorem atom137258542false : BadRow (sources false 3 5 atom137258542) := by
  have h : sources false 3 5 atom137258542 = [v701156451886] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156451886) .nil)

theorem atom137258542true : BadRow (sources true 3 5 atom137258542) := by
  have h : sources true 3 5 atom137258542 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137255470 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 2))))
private def v701156448814 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.var 2))))))
private theorem no_v701156448814 : ¬ MinimalInterpreter v701156448814 :=
  chain_cut false 2 (by decide)
theorem atom137255470false : BadRow (sources false 3 5 atom137255470) := by
  have h : sources false 3 5 atom137255470 = [v701156448814] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156448814) .nil)

theorem atom137255470true : BadRow (sources true 3 5 atom137255470) := by
  have h : sources true 3 5 atom137255470 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137255086 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 2))))
private def v701156448430 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.var 2))))))
private theorem no_v701156448430 : ¬ MinimalInterpreter v701156448430 :=
  chain_cut false 2 (by decide)
theorem atom137255086false : BadRow (sources false 3 5 atom137255086) := by
  have h : sources false 3 5 atom137255086 = [v701156448430] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156448430) .nil)

theorem atom137255086true : BadRow (sources true 3 5 atom137255086) := by
  have h : sources true 3 5 atom137255086 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137077166 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 2))))
private def v701156270510 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.var 0)))) (.var 2))))))
private theorem no_v701156270510 : ¬ MinimalInterpreter v701156270510 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom137077166false : BadRow (sources false 3 5 atom137077166) := by
  have h : sources false 3 5 atom137077166 = [v701156270510] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156270510) .nil)

theorem atom137077166true : BadRow (sources true 3 5 atom137077166) := by
  have h : sources true 3 5 atom137077166 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137078318 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 2))))
private def v701156271662 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.lam (.var 0)))) (.var 2))))))
private theorem no_v701156271662 : ¬ MinimalInterpreter v701156271662 :=
  chain_cut false 2 (by decide)
theorem atom137078318false : BadRow (sources false 3 5 atom137078318) := by
  have h : sources false 3 5 atom137078318 = [v701156271662] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156271662) .nil)

theorem atom137078318true : BadRow (sources true 3 5 atom137078318) := by
  have h : sources true 3 5 atom137078318 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137071022 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 2))))
private def v701156264366 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 0))) (.var 2))))))
private theorem no_v701156264366 : ¬ MinimalInterpreter v701156264366 :=
  chain_cut false 2 (by decide)
theorem atom137071022false : BadRow (sources false 3 5 atom137071022) := by
  have h : sources false 3 5 atom137071022 = [v701156264366] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156264366) .nil)

theorem atom137071022true : BadRow (sources true 3 5 atom137071022) := by
  have h : sources true 3 5 atom137071022 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137075246 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 2))))
private def v701156268590 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.lam (.var 0))) (.var 2))))))
private theorem no_v701156268590 : ¬ MinimalInterpreter v701156268590 :=
  chain_cut false 2 (by decide)
theorem atom137075246false : BadRow (sources false 3 5 atom137075246) := by
  have h : sources false 3 5 atom137075246 = [v701156268590] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156268590) .nil)

theorem atom137075246true : BadRow (sources true 3 5 atom137075246) := by
  have h : sources true 3 5 atom137075246 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137030190 : Term := (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 2))))
private def v701156223534 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.lam (.var 0))) (.var 2))))))
private theorem no_v701156223534 : ¬ MinimalInterpreter v701156223534 :=
  chain_cut false 2 (by decide)
theorem atom137030190false : BadRow (sources false 3 5 atom137030190) := by
  have h : sources false 3 5 atom137030190 = [v701156223534] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156223534) .nil)

theorem atom137030190true : BadRow (sources true 3 5 atom137030190) := by
  have h : sources true 3 5 atom137030190 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137070254 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 2))))
private def v701156263598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 2))))))
private theorem no_v701156263598 : ¬ MinimalInterpreter v701156263598 :=
  mismatch_cut (c := (.var 0)) (m := (.lam (.var 0))) (r := (.var 1)) (u := (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1))) 0 8 (by decide) (by decide) (by decide) (by decide)
theorem atom137070254false : BadRow (sources false 3 5 atom137070254) := by
  have h : sources false 3 5 atom137070254 = [v701156263598] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156263598) .nil)

theorem atom137070254true : BadRow (sources true 3 5 atom137070254) := by
  have h : sources true 3 5 atom137070254 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137074862 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 2))))
private def v701156268206 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 0)) (.var 2))))))
private theorem no_v701156268206 : ¬ MinimalInterpreter v701156268206 :=
  chain_cut false 2 (by decide)
theorem atom137074862false : BadRow (sources false 3 5 atom137074862) := by
  have h : sources false 3 5 atom137074862 = [v701156268206] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156268206) .nil)

theorem atom137074862true : BadRow (sources true 3 5 atom137074862) := by
  have h : sources true 3 5 atom137074862 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137029806 : Term := (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 2))))
private def v701156223150 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 0)) (.var 2))))))
private theorem no_v701156223150 : ¬ MinimalInterpreter v701156223150 :=
  chain_cut false 2 (by decide)
theorem atom137029806false : BadRow (sources false 3 5 atom137029806) := by
  have h : sources false 3 5 atom137029806 = [v701156223150] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156223150) .nil)

theorem atom137029806true : BadRow (sources true 3 5 atom137029806) := by
  have h : sources true 3 5 atom137029806 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom137028270 : Term := (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 2))))
private def v701156221614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 0)) (.var 2))))))
private theorem no_v701156221614 : ¬ MinimalInterpreter v701156221614 :=
  chain_cut false 2 (by decide)
theorem atom137028270false : BadRow (sources false 3 5 atom137028270) := by
  have h : sources false 3 5 atom137028270 = [v701156221614] := by decide +kernel
  rw [h]
  exact (.cons (no_v701156221614) .nil)

theorem atom137028270true : BadRow (sources true 3 5 atom137028270) := by
  have h : sources true 3 5 atom137028270 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms125 : Every (fun b => ∀ lit, BadRow (sources lit 3 5 b)) (atoms 3 5 [1,0,0,0,2]) := by
  have h : atoms 3 5 [1,0,0,0,2] = [atom137991726,atom137960046,atom137978478,atom137978286,atom137979438,atom137976366,atom137975982,atom137270830,atom137242222,atom137242030,atom137239150,atom137257582,atom137077358,atom137071214,atom137257390,atom137258542,atom137255470,atom137255086,atom137077166,atom137078318,atom137071022,atom137075246,atom137030190,atom137070254,atom137074862,atom137029806,atom137028270] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom137991726false | exact atom137991726true) (.cons (fun lit => by cases lit <;> first | exact atom137960046false | exact atom137960046true) (.cons (fun lit => by cases lit <;> first | exact atom137978478false | exact atom137978478true) (.cons (fun lit => by cases lit <;> first | exact atom137978286false | exact atom137978286true) (.cons (fun lit => by cases lit <;> first | exact atom137979438false | exact atom137979438true) (.cons (fun lit => by cases lit <;> first | exact atom137976366false | exact atom137976366true) (.cons (fun lit => by cases lit <;> first | exact atom137975982false | exact atom137975982true) (.cons (fun lit => by cases lit <;> first | exact atom137270830false | exact atom137270830true) (.cons (fun lit => by cases lit <;> first | exact atom137242222false | exact atom137242222true) (.cons (fun lit => by cases lit <;> first | exact atom137242030false | exact atom137242030true) (.cons (fun lit => by cases lit <;> first | exact atom137239150false | exact atom137239150true) (.cons (fun lit => by cases lit <;> first | exact atom137257582false | exact atom137257582true) (.cons (fun lit => by cases lit <;> first | exact atom137077358false | exact atom137077358true) (.cons (fun lit => by cases lit <;> first | exact atom137071214false | exact atom137071214true) (.cons (fun lit => by cases lit <;> first | exact atom137257390false | exact atom137257390true) (.cons (fun lit => by cases lit <;> first | exact atom137258542false | exact atom137258542true) (.cons (fun lit => by cases lit <;> first | exact atom137255470false | exact atom137255470true) (.cons (fun lit => by cases lit <;> first | exact atom137255086false | exact atom137255086true) (.cons (fun lit => by cases lit <;> first | exact atom137077166false | exact atom137077166true) (.cons (fun lit => by cases lit <;> first | exact atom137078318false | exact atom137078318true) (.cons (fun lit => by cases lit <;> first | exact atom137071022false | exact atom137071022true) (.cons (fun lit => by cases lit <;> first | exact atom137075246false | exact atom137075246true) (.cons (fun lit => by cases lit <;> first | exact atom137030190false | exact atom137030190true) (.cons (fun lit => by cases lit <;> first | exact atom137070254false | exact atom137070254true) (.cons (fun lit => by cases lit <;> first | exact atom137074862false | exact atom137074862true) (.cons (fun lit => by cases lit <;> first | exact atom137029806false | exact atom137029806true) (.cons (fun lit => by cases lit <;> first | exact atom137028270false | exact atom137028270true) .nil)))))))))))))))))))))))))))
end Blc.SelfintSingleObject.Sat39
