import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom8600802 : Term := (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.lam (.var 0)))))))
theorem atom8600802false : BadRow (sources false 3 4 atom8600802) := by
  have h : sources false 3 4 atom8600802 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8600802true : BadRow (sources true 3 4 atom8600802) := by
  have h : sources true 3 4 atom8600802 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8597346 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.lam (.var 0))))))
theorem atom8597346false : BadRow (sources false 3 4 atom8597346) := by
  have h : sources false 3 4 atom8597346 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8597346true : BadRow (sources true 3 4 atom8597346) := by
  have h : sources true 3 4 atom8597346 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8576226 : Term := (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.lam (.var 0))))))
theorem atom8576226false : BadRow (sources false 3 4 atom8576226) := by
  have h : sources false 3 4 atom8576226 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8576226true : BadRow (sources true 3 4 atom8576226) := by
  have h : sources true 3 4 atom8576226 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8572770 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.lam (.var 0)))))
theorem atom8572770false : BadRow (sources false 3 4 atom8572770) := by
  have h : sources false 3 4 atom8572770 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8572770true : BadRow (sources true 3 4 atom8572770) := by
  have h : sources true 3 4 atom8572770 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8566626 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.var 0)))))
theorem atom8566626false : BadRow (sources false 3 4 atom8566626) := by
  have h : sources false 3 4 atom8566626 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8566626true : BadRow (sources true 3 4 atom8566626) := by
  have h : sources true 3 4 atom8566626 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom11538234 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))
theorem atom11538234false : BadRow (sources false 3 4 atom11538234) := by
  have h : sources false 3 4 atom11538234 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom11538234true : BadRow (sources true 3 4 atom11538234) := by
  have h : sources true 3 4 atom11538234 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom11537370 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))
theorem atom11537370false : BadRow (sources false 3 4 atom11537370) := by
  have h : sources false 3 4 atom11537370 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom11537370true : BadRow (sources true 3 4 atom11537370) := by
  have h : sources true 3 4 atom11537370 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms93 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [0,2,1,0]) := by
  have h : atoms 3 4 [0,2,1,0] = [atom8600802,atom8597346,atom8576226,atom8572770,atom8566626,atom11538234,atom11537370] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom8600802false | exact atom8600802true) (.cons (fun lit => by cases lit <;> first | exact atom8597346false | exact atom8597346true) (.cons (fun lit => by cases lit <;> first | exact atom8576226false | exact atom8576226true) (.cons (fun lit => by cases lit <;> first | exact atom8572770false | exact atom8572770true) (.cons (fun lit => by cases lit <;> first | exact atom8566626false | exact atom8566626true) (.cons (fun lit => by cases lit <;> first | exact atom11538234false | exact atom11538234true) (.cons (fun lit => by cases lit <;> first | exact atom11537370false | exact atom11537370true) .nil)))))))
theorem atoms94 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [0,3,0,0]) := by
  have h : atoms 3 4 [0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom8623662 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.lam (.var 0))) (.var 2)))))
theorem atom8623662false : BadRow (sources false 3 4 atom8623662) := by
  have h : sources false 3 4 atom8623662 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8623662true : BadRow (sources true 3 4 atom8623662) := by
  have h : sources true 3 4 atom8623662 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8577646 : Term := (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 0) (.var 2)))))
theorem atom8577646false : BadRow (sources false 3 4 atom8577646) := by
  have h : sources false 3 4 atom8577646 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8577646true : BadRow (sources true 3 4 atom8577646) := by
  have h : sources true 3 4 atom8577646 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8578606 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.lam (.var 0)))) (.var 2))))
theorem atom8578606false : BadRow (sources false 3 4 atom8578606) := by
  have h : sources false 3 4 atom8578606 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8578606true : BadRow (sources true 3 4 atom8578606) := by
  have h : sources true 3 4 atom8578606 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8567342 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.lam (.var 0))) (.var 2))))
theorem atom8567342false : BadRow (sources false 3 4 atom8567342) := by
  have h : sources false 3 4 atom8567342 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8567342true : BadRow (sources true 3 4 atom8567342) := by
  have h : sources true 3 4 atom8567342 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8566958 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 0)) (.var 2))))
theorem atom8566958false : BadRow (sources false 3 4 atom8566958) := by
  have h : sources false 3 4 atom8566958 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8566958true : BadRow (sources true 3 4 atom8566958) := by
  have h : sources true 3 4 atom8566958 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms95 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [1,0,0,2]) := by
  have h : atoms 3 4 [1,0,0,2] = [atom8623662,atom8577646,atom8578606,atom8567342,atom8566958] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom8623662false | exact atom8623662true) (.cons (fun lit => by cases lit <;> first | exact atom8577646false | exact atom8577646true) (.cons (fun lit => by cases lit <;> first | exact atom8578606false | exact atom8578606true) (.cons (fun lit => by cases lit <;> first | exact atom8567342false | exact atom8567342true) (.cons (fun lit => by cases lit <;> first | exact atom8566958false | exact atom8566958true) .nil)))))
end Blc.SelfintSingleObject.Sat39
