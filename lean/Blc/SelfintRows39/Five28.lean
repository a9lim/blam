import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms84 : Every (fun b => ∀ lit, BadRow (sources lit 3 3 b)) (atoms 3 3 [3,0,0]) := by
  have h : atoms 3 3 [3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil
theorem atoms85 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [0,0,0,3]) := by
  have h : atoms 3 4 [0,0,0,3] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom8570094 : Term := (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 1) (.var 2)))))
theorem atom8570094false : BadRow (sources false 3 4 atom8570094) := by
  have h : sources false 3 4 atom8570094 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8570094true : BadRow (sources true 3 4 atom8570094) := by
  have h : sources true 3 4 atom8570094 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8565102 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 1)) (.var 2))))
theorem atom8565102false : BadRow (sources false 3 4 atom8565102) := by
  have h : sources false 3 4 atom8565102 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8565102true : BadRow (sources true 3 4 atom8565102) := by
  have h : sources true 3 4 atom8565102 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom11537646 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))
theorem atom11537646false : BadRow (sources false 3 4 atom11537646) := by
  have h : sources false 3 4 atom11537646 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom11537646true : BadRow (sources true 3 4 atom11537646) := by
  have h : sources true 3 4 atom11537646 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom11537262 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))
theorem atom11537262false : BadRow (sources false 3 4 atom11537262) := by
  have h : sources false 3 4 atom11537262 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom11537262true : BadRow (sources true 3 4 atom11537262) := by
  have h : sources true 3 4 atom11537262 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms86 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [0,0,1,2]) := by
  have h : atoms 3 4 [0,0,1,2] = [atom8570094,atom8565102,atom11537646,atom11537262] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom8570094false | exact atom8570094true) (.cons (fun lit => by cases lit <;> first | exact atom8565102false | exact atom8565102true) (.cons (fun lit => by cases lit <;> first | exact atom11537646false | exact atom11537646true) (.cons (fun lit => by cases lit <;> first | exact atom11537262false | exact atom11537262true) .nil))))
end Blc.SelfintSingleObject.Sat39
