import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom134766 : Term := (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))
private def v725045112346 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v725045112346 : ¬ MinimalInterpreter v725045112346 :=
  chain_cut false 1 (by decide)
private def v701301263982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))))
private theorem no_v701301263982 : ¬ MinimalInterpreter v701301263982 :=
  chain_cut false 2 (by decide)
private def v725057801838 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))
private theorem no_v725057801838 : ¬ MinimalInterpreter v725057801838 :=
  w_cut false 0 (by decide)
theorem atom134766false : BadRow (sources false 2 3 atom134766) := by
  have h : sources false 2 3 atom134766 = [v725045112346,v701301263982,v725057801838] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045112346) (.cons (no_v701301263982) (.cons (no_v725057801838) .nil)))

theorem atom134766true : BadRow (sources true 2 3 atom134766) := by
  have h : sources true 2 3 atom134766 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom134062 : Term := (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))
private def v725044932122 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v725044932122 : ¬ MinimalInterpreter v725044932122 :=
  chain_cut false 1 (by decide)
private def v701301263278 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
private theorem no_v701301263278 : ¬ MinimalInterpreter v701301263278 :=
  chain_cut false 2 (by decide)
private def v725057801134 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
private theorem no_v725057801134 : ¬ MinimalInterpreter v725057801134 :=
  w_cut false 0 (by decide)
theorem atom134062false : BadRow (sources false 2 3 atom134062) := by
  have h : sources false 2 3 atom134062 = [v725044932122,v701301263278,v725057801134] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044932122) (.cons (no_v701301263278) (.cons (no_v725057801134) .nil)))

theorem atom134062true : BadRow (sources true 2 3 atom134062) := by
  have h : sources true 2 3 atom134062 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms9 : Every (fun b => ∀ lit, BadRow (sources lit 2 3 b)) (atoms 2 3 [1,0,2]) := by
  have h : atoms 2 3 [1,0,2] = [atom134766,atom134062] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom134766false | exact atom134766true) (.cons (fun lit => by cases lit <;> first | exact atom134062false | exact atom134062true) .nil))
theorem atoms10 : Every (fun b => ∀ lit, BadRow (sources lit 2 3 b)) (atoms 2 3 [1,1,1]) := by
  have h : atoms 2 3 [1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom134778 : Term := (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))
private def v725045115418 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v725045115418 : ¬ MinimalInterpreter v725045115418 :=
  chain_cut false 1 (by decide)
private def v701301263994 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
private theorem no_v701301263994 : ¬ MinimalInterpreter v701301263994 :=
  chain_cut false 2 (by decide)
private def v725057801850 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))
private theorem no_v725057801850 : ¬ MinimalInterpreter v725057801850 :=
  w_cut false 0 (by decide)
theorem atom134778false : BadRow (sources false 2 3 atom134778) := by
  have h : sources false 2 3 atom134778 = [v725045115418,v701301263994,v725057801850] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045115418) (.cons (no_v701301263994) (.cons (no_v725057801850) .nil)))

theorem atom134778true : BadRow (sources true 2 3 atom134778) := by
  have h : sources true 2 3 atom134778 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom134074 : Term := (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))
private def v725044935194 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v725044935194 : ¬ MinimalInterpreter v725044935194 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v701301263290 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))))
private theorem no_v701301263290 : ¬ MinimalInterpreter v701301263290 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.lam (r := (.app (.var 0) (.var 1))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v725057801146 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))
private theorem no_v725057801146 : ¬ MinimalInterpreter v725057801146 :=
  w_cut false 0 (by decide)
theorem atom134074false : BadRow (sources false 2 3 atom134074) := by
  have h : sources false 2 3 atom134074 = [v725044935194,v701301263290,v725057801146] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044935194) (.cons (no_v701301263290) (.cons (no_v725057801146) .nil)))

theorem atom134074true : BadRow (sources true 2 3 atom134074) := by
  have h : sources true 2 3 atom134074 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms11 : Every (fun b => ∀ lit, BadRow (sources lit 2 3 b)) (atoms 2 3 [1,2,0]) := by
  have h : atoms 2 3 [1,2,0] = [atom134778,atom134074] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom134778false | exact atom134778true) (.cons (fun lit => by cases lit <;> first | exact atom134074false | exact atom134074true) .nil))
end Blc.SelfintSingleObject.Sat39
