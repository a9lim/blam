import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom8570102 : Term := (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.app (.var 2) (.var 1)))))
theorem atom8570102false : BadRow (sources false 3 4 atom8570102) := by
  have h : sources false 3 4 atom8570102 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8570102true : BadRow (sources true 3 4 atom8570102) := by
  have h : sources true 3 4 atom8570102 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8565110 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.var 2)) (.var 1))))
theorem atom8565110false : BadRow (sources false 3 4 atom8565110) := by
  have h : sources false 3 4 atom8565110 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8565110true : BadRow (sources true 3 4 atom8565110) := by
  have h : sources true 3 4 atom8565110 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom11537654 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))
theorem atom11537654false : BadRow (sources false 3 4 atom11537654) := by
  have h : sources false 3 4 atom11537654 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom11537654true : BadRow (sources true 3 4 atom11537654) := by
  have h : sources true 3 4 atom11537654 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom11537270 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))
theorem atom11537270false : BadRow (sources false 3 4 atom11537270) := by
  have h : sources false 3 4 atom11537270 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom11537270true : BadRow (sources true 3 4 atom11537270) := by
  have h : sources true 3 4 atom11537270 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms87 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [0,0,2,1]) := by
  have h : atoms 3 4 [0,0,2,1] = [atom8570102,atom8565110,atom11537654,atom11537270] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom8570102false | exact atom8570102true) (.cons (fun lit => by cases lit <;> first | exact atom8565110false | exact atom8565110true) (.cons (fun lit => by cases lit <;> first | exact atom11537654false | exact atom11537654true) (.cons (fun lit => by cases lit <;> first | exact atom11537270false | exact atom11537270true) .nil))))
theorem atoms88 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [0,0,3,0]) := by
  have h : atoms 3 4 [0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom8597038 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.lam (.var 0))) (.var 2)))))
theorem atom8597038false : BadRow (sources false 3 4 atom8597038) := by
  have h : sources false 3 4 atom8597038 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8597038true : BadRow (sources true 3 4 atom8597038) := by
  have h : sources true 3 4 atom8597038 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8572462 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 0)))) (.var 2))))
theorem atom8572462false : BadRow (sources false 3 4 atom8572462) := by
  have h : sources false 3 4 atom8572462 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8572462true : BadRow (sources true 3 4 atom8572462) := by
  have h : sources true 3 4 atom8572462 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8566318 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.lam (.var 0))) (.var 2))))
theorem atom8566318false : BadRow (sources false 3 4 atom8566318) := by
  have h : sources false 3 4 atom8566318 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8566318true : BadRow (sources true 3 4 atom8566318) := by
  have h : sources true 3 4 atom8566318 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom11538030 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))
theorem atom11538030false : BadRow (sources false 3 4 atom11538030) := by
  have h : sources false 3 4 atom11538030 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom11538030true : BadRow (sources true 3 4 atom11538030) := by
  have h : sources true 3 4 atom11538030 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom11537326 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem atom11537326false : BadRow (sources false 3 4 atom11537326) := by
  have h : sources false 3 4 atom11537326 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom11537326true : BadRow (sources true 3 4 atom11537326) := by
  have h : sources true 3 4 atom11537326 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms89 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [0,1,0,2]) := by
  have h : atoms 3 4 [0,1,0,2] = [atom8597038,atom8572462,atom8566318,atom11538030,atom11537326] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom8597038false | exact atom8597038true) (.cons (fun lit => by cases lit <;> first | exact atom8572462false | exact atom8572462true) (.cons (fun lit => by cases lit <;> first | exact atom8566318false | exact atom8566318true) (.cons (fun lit => by cases lit <;> first | exact atom11538030false | exact atom11538030true) (.cons (fun lit => by cases lit <;> first | exact atom11537326false | exact atom11537326true) .nil)))))
end Blc.SelfintSingleObject.Sat39
