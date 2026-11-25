import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom134966 : Term := (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))
private def v725045163546 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v725045163546 : ¬ MinimalInterpreter v725045163546 :=
  chain_cut false 1 (by decide)
private def v701301264182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))
private theorem no_v701301264182 : ¬ MinimalInterpreter v701301264182 :=
  chain_cut false 2 (by decide)
private def v725057802038 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))
private theorem no_v725057802038 : ¬ MinimalInterpreter v725057802038 :=
  w_cut false 0 (by decide)
theorem atom134966false : BadRow (sources false 2 3 atom134966) := by
  have h : sources false 2 3 atom134966 = [v725045163546,v701301264182,v725057802038] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045163546) (.cons (no_v701301264182) (.cons (no_v725057802038) .nil)))

theorem atom134966true : BadRow (sources true 2 3 atom134966) := by
  have h : sources true 2 3 atom134966 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom134102 : Term := (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))
private def v725044942362 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v725044942362 : ¬ MinimalInterpreter v725044942362 :=
  chain_cut false 1 (by decide)
private def v701301263318 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))))
private theorem no_v701301263318 : ¬ MinimalInterpreter v701301263318 :=
  chain_cut false 2 (by decide)
private def v725057801174 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))
private theorem no_v725057801174 : ¬ MinimalInterpreter v725057801174 :=
  w_cut false 0 (by decide)
theorem atom134102false : BadRow (sources false 2 3 atom134102) := by
  have h : sources false 2 3 atom134102 = [v725044942362,v701301263318,v725057801174] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044942362) (.cons (no_v701301263318) (.cons (no_v725057801174) .nil)))

theorem atom134102true : BadRow (sources true 2 3 atom134102) := by
  have h : sources true 2 3 atom134102 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms12 : Every (fun b => ∀ lit, BadRow (sources lit 2 3 b)) (atoms 2 3 [2,0,1]) := by
  have h : atoms 2 3 [2,0,1] = [atom134966,atom134102] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom134966false | exact atom134966true) (.cons (fun lit => by cases lit <;> first | exact atom134102false | exact atom134102true) .nil))
private def atom134970 : Term := (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))
private def v725045164570 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v725045164570 : ¬ MinimalInterpreter v725045164570 :=
  chain_cut false 1 (by decide)
private def v701301264186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
private theorem no_v701301264186 : ¬ MinimalInterpreter v701301264186 :=
  chain_cut false 2 (by decide)
private def v725057802042 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))
private theorem no_v725057802042 : ¬ MinimalInterpreter v725057802042 :=
  w_cut false 0 (by decide)
theorem atom134970false : BadRow (sources false 2 3 atom134970) := by
  have h : sources false 2 3 atom134970 = [v725045164570,v701301264186,v725057802042] := by decide +kernel
  rw [h]
  exact (.cons (no_v725045164570) (.cons (no_v701301264186) (.cons (no_v725057802042) .nil)))

theorem atom134970true : BadRow (sources true 2 3 atom134970) := by
  have h : sources true 2 3 atom134970 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom134106 : Term := (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))
private def v725044943386 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.var 0))))
private theorem no_v725044943386 : ¬ MinimalInterpreter v725044943386 :=
  so_cut false 0 (show SO (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))) (.lam (.app (.var 0) (.var 0)))) from (.app (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide)))) (so_closed_lam (by decide) (.app (.var 0) (.var 0)))))
private def v701301263322 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))))
private theorem no_v701301263322 : ¬ MinimalInterpreter v701301263322 :=
  so_cut false 0 (show SO (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))) from (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (.app (so_closed_lam (by decide) (.app (.var 0) (.var 0))) (so_closed_lam (by decide) (.lam (r := (.var 0)) (g := (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.lam (r := (.app (.var 1) (.var 0))) (g := (.app (.var 1) (.var 0))) (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 1) (.var 0)) (by decide) (by decide)) (.var 0) (by decide) (by decide))))))
private def v725057801178 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))
private theorem no_v725057801178 : ¬ MinimalInterpreter v725057801178 :=
  w_cut false 0 (by decide)
theorem atom134106false : BadRow (sources false 2 3 atom134106) := by
  have h : sources false 2 3 atom134106 = [v725044943386,v701301263322,v725057801178] := by decide +kernel
  rw [h]
  exact (.cons (no_v725044943386) (.cons (no_v701301263322) (.cons (no_v725057801178) .nil)))

theorem atom134106true : BadRow (sources true 2 3 atom134106) := by
  have h : sources true 2 3 atom134106 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms13 : Every (fun b => ∀ lit, BadRow (sources lit 2 3 b)) (atoms 2 3 [2,1,0]) := by
  have h : atoms 2 3 [2,1,0] = [atom134970,atom134106] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom134970false | exact atom134970true) (.cons (fun lit => by cases lit <;> first | exact atom134106false | exact atom134106true) .nil))
theorem atoms14 : Every (fun b => ∀ lit, BadRow (sources lit 2 3 b)) (atoms 2 3 [3,0,0]) := by
  have h : atoms 2 3 [3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
