import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom134382 : Term := (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))
private def v725045014042 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v725045014042 : ¬ MinimalInterpreter v725045014042 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v701301263598 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))))
private theorem no_v701301263598 : ¬ MinimalInterpreter v701301263598 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v725057801454 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))
private theorem no_v725057801454 : ¬ MinimalInterpreter v725057801454 :=
  w_cut false 0 (by decide)
theorem atom134382false : BadRow (sources false 2 3 atom134382) := by
  have h : sources false 2 3 atom134382 = [v725045014042,v701301263598,v725057801454] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045014042) (.cons (no_v701301263598) (.cons (no_v725057801454) .nil)))

theorem atom134382true : BadRow (sources true 2 3 atom134382) := by
  have h : sources true 2 3 atom134382 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom133998 : Term := (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))
private def v725044915738 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v725044915738 : ¬ MinimalInterpreter v725044915738 :=
  chain_cut false 1 (by decide)
private def v701301263214 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))))
private theorem no_v701301263214 : ¬ MinimalInterpreter v701301263214 :=
  chain_cut false 2 (by decide)
private def v725057801070 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))
private theorem no_v725057801070 : ¬ MinimalInterpreter v725057801070 :=
  w_cut false 0 (by decide)
theorem atom133998false : BadRow (sources false 2 3 atom133998) := by
  have h : sources false 2 3 atom133998 = [v725044915738,v701301263214,v725057801070] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044915738) (.cons (no_v701301263214) (.cons (no_v725057801070) .nil)))

theorem atom133998true : BadRow (sources true 2 3 atom133998) := by
  have h : sources true 2 3 atom133998 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms6 : Every (fun b => ∀ lit, BadRow (sources lit 2 3 b)) (atoms 2 3 [0,1,2]) := by
  have h : atoms 2 3 [0,1,2] = [atom134382,atom133998] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom134382false | exact atom134382true) (.cons (fun lit => by cases lit <;> first | exact atom133998false | exact atom133998true) .nil))
private def atom134390 : Term := (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))
private def v725045016090 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v725045016090 : ¬ MinimalInterpreter v725045016090 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v701301263606 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))))
private theorem no_v701301263606 : ¬ MinimalInterpreter v701301263606 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 0) (.var 1))) (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v725057801462 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))
private theorem no_v725057801462 : ¬ MinimalInterpreter v725057801462 :=
  w_cut false 0 (by decide)
theorem atom134390false : BadRow (sources false 2 3 atom134390) := by
  have h : sources false 2 3 atom134390 = [v725045016090,v701301263606,v725057801462] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045016090) (.cons (no_v701301263606) (.cons (no_v725057801462) .nil)))

theorem atom134390true : BadRow (sources true 2 3 atom134390) := by
  have h : sources true 2 3 atom134390 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom134006 : Term := (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))
private def v725044917786 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v725044917786 : ¬ MinimalInterpreter v725044917786 :=
  chain_cut false 1 (by decide)
private def v701301263222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))))
private theorem no_v701301263222 : ¬ MinimalInterpreter v701301263222 :=
  chain_cut false 2 (by decide)
private def v725057801078 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))
private theorem no_v725057801078 : ¬ MinimalInterpreter v725057801078 :=
  w_cut false 0 (by decide)
theorem atom134006false : BadRow (sources false 2 3 atom134006) := by
  have h : sources false 2 3 atom134006 = [v725044917786,v701301263222,v725057801078] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044917786) (.cons (no_v701301263222) (.cons (no_v725057801078) .nil)))

theorem atom134006true : BadRow (sources true 2 3 atom134006) := by
  have h : sources true 2 3 atom134006 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms7 : Every (fun b => ∀ lit, BadRow (sources lit 2 3 b)) (atoms 2 3 [0,2,1]) := by
  have h : atoms 2 3 [0,2,1] = [atom134390,atom134006] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom134390false | exact atom134390true) (.cons (fun lit => by cases lit <;> first | exact atom134006false | exact atom134006true) .nil))
theorem atoms8 : Every (fun b => ∀ lit, BadRow (sources lit 2 3 b)) (atoms 2 3 [0,3,0]) := by
  have h : atoms 2 3 [0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
