import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom34498458 : Term := (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))))))
theorem atom34498458false : BadRow (sources false 2 5 atom34498458) := by
  have h : sources false 2 5 atom34498458 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34498458true : BadRow (sources true 2 5 atom34498458) := by
  have h : sources true 2 5 atom34498458 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34498026 : Term := (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0))))))
theorem atom34498026false : BadRow (sources false 2 5 atom34498026) := by
  have h : sources false 2 5 atom34498026 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34498026true : BadRow (sources true 2 5 atom34498026) := by
  have h : sources true 2 5 atom34498026 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34495386 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))))))
theorem atom34495386false : BadRow (sources false 2 5 atom34495386) := by
  have h : sources false 2 5 atom34495386 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34495386true : BadRow (sources true 2 5 atom34495386) := by
  have h : sources true 2 5 atom34495386 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34494954 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)))))
theorem atom34494954false : BadRow (sources false 2 5 atom34494954) := by
  have h : sources false 2 5 atom34494954 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34494954true : BadRow (sources true 2 5 atom34494954) := by
  have h : sources true 2 5 atom34494954 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34494186 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)))))
theorem atom34494186false : BadRow (sources false 2 5 atom34494186) := by
  have h : sources false 2 5 atom34494186 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34494186true : BadRow (sources true 2 5 atom34494186) := by
  have h : sources true 2 5 atom34494186 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34318234 : Term := (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))))
theorem atom34318234false : BadRow (sources false 2 5 atom34318234) := by
  have h : sources false 2 5 atom34318234 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34318234true : BadRow (sources true 2 5 atom34318234) := by
  have h : sources true 2 5 atom34318234 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34317802 : Term := (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)))))
theorem atom34317802false : BadRow (sources false 2 5 atom34317802) := by
  have h : sources false 2 5 atom34317802 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34317802true : BadRow (sources true 2 5 atom34317802) := by
  have h : sources true 2 5 atom34317802 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34315162 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 0)))))
theorem atom34315162false : BadRow (sources false 2 5 atom34315162) := by
  have h : sources false 2 5 atom34315162 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34315162true : BadRow (sources true 2 5 atom34315162) := by
  have h : sources true 2 5 atom34315162 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34270106 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))))
theorem atom34270106false : BadRow (sources false 2 5 atom34270106) := by
  have h : sources false 2 5 atom34270106 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34270106true : BadRow (sources true 2 5 atom34270106) := by
  have h : sources true 2 5 atom34270106 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34314730 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 0))))
theorem atom34314730false : BadRow (sources false 2 5 atom34314730) := by
  have h : sources false 2 5 atom34314730 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34314730true : BadRow (sources true 2 5 atom34314730) := by
  have h : sources true 2 5 atom34314730 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34313962 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 0))))
theorem atom34313962false : BadRow (sources false 2 5 atom34313962) := by
  have h : sources false 2 5 atom34313962 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34313962true : BadRow (sources true 2 5 atom34313962) := by
  have h : sources true 2 5 atom34313962 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34269674 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))) (.var 0))))
theorem atom34269674false : BadRow (sources false 2 5 atom34269674) := by
  have h : sources false 2 5 atom34269674 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34269674true : BadRow (sources true 2 5 atom34269674) := by
  have h : sources true 2 5 atom34269674 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34268906 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)) (.var 0))))
theorem atom34268906false : BadRow (sources false 2 5 atom34268906) := by
  have h : sources false 2 5 atom34268906 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34268906true : BadRow (sources true 2 5 atom34268906) := by
  have h : sources true 2 5 atom34268906 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34257642 : Term := (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)) (.var 0))))
theorem atom34257642false : BadRow (sources false 2 5 atom34257642) := by
  have h : sources false 2 5 atom34257642 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34257642true : BadRow (sources true 2 5 atom34257642) := by
  have h : sources true 2 5 atom34257642 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms60 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [1,0,2,0,0]) := by
  have h : atoms 2 5 [1,0,2,0,0] = [atom34498458,atom34498026,atom34495386,atom34494954,atom34494186,atom34318234,atom34317802,atom34315162,atom34270106,atom34314730,atom34313962,atom34269674,atom34268906,atom34257642] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34498458false | exact atom34498458true) (.cons (fun lit => by cases lit <;> first | exact atom34498026false | exact atom34498026true) (.cons (fun lit => by cases lit <;> first | exact atom34495386false | exact atom34495386true) (.cons (fun lit => by cases lit <;> first | exact atom34494954false | exact atom34494954true) (.cons (fun lit => by cases lit <;> first | exact atom34494186false | exact atom34494186true) (.cons (fun lit => by cases lit <;> first | exact atom34318234false | exact atom34318234true) (.cons (fun lit => by cases lit <;> first | exact atom34317802false | exact atom34317802true) (.cons (fun lit => by cases lit <;> first | exact atom34315162false | exact atom34315162true) (.cons (fun lit => by cases lit <;> first | exact atom34270106false | exact atom34270106true) (.cons (fun lit => by cases lit <;> first | exact atom34314730false | exact atom34314730true) (.cons (fun lit => by cases lit <;> first | exact atom34313962false | exact atom34313962true) (.cons (fun lit => by cases lit <;> first | exact atom34269674false | exact atom34269674true) (.cons (fun lit => by cases lit <;> first | exact atom34268906false | exact atom34268906true) (.cons (fun lit => by cases lit <;> first | exact atom34257642false | exact atom34257642true) .nil))))))))))))))
theorem atoms61 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [1,1,0,0,1]) := by
  have h : atoms 2 5 [1,1,0,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil
theorem atoms62 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [1,1,0,1,0]) := by
  have h : atoms 2 5 [1,1,0,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
