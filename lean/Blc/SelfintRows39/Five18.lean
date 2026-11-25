import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms54 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,3,0,0,0]) := by
  have h : atoms 2 5 [0,3,0,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom34498158 : Term := (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 2)))))))
theorem atom34498158false : BadRow (sources false 2 5 atom34498158) := by
  have h : sources false 2 5 atom34498158 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34498158true : BadRow (sources true 2 5 atom34498158) := by
  have h : sources true 2 5 atom34498158 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34497966 : Term := (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))))
theorem atom34497966false : BadRow (sources false 2 5 atom34497966) := by
  have h : sources false 2 5 atom34497966 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34497966true : BadRow (sources true 2 5 atom34497966) := by
  have h : sources true 2 5 atom34497966 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34495086 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))))
theorem atom34495086false : BadRow (sources false 2 5 atom34495086) := by
  have h : sources false 2 5 atom34495086 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34495086true : BadRow (sources true 2 5 atom34495086) := by
  have h : sources true 2 5 atom34495086 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34494894 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))))
theorem atom34494894false : BadRow (sources false 2 5 atom34494894) := by
  have h : sources false 2 5 atom34494894 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34494894true : BadRow (sources true 2 5 atom34494894) := by
  have h : sources true 2 5 atom34494894 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34494126 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))))
theorem atom34494126false : BadRow (sources false 2 5 atom34494126) := by
  have h : sources false 2 5 atom34494126 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34494126true : BadRow (sources true 2 5 atom34494126) := by
  have h : sources true 2 5 atom34494126 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34317934 : Term := (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))))
theorem atom34317934false : BadRow (sources false 2 5 atom34317934) := by
  have h : sources false 2 5 atom34317934 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34317934true : BadRow (sources true 2 5 atom34317934) := by
  have h : sources true 2 5 atom34317934 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34317742 : Term := (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)))))
theorem atom34317742false : BadRow (sources false 2 5 atom34317742) := by
  have h : sources false 2 5 atom34317742 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34317742true : BadRow (sources true 2 5 atom34317742) := by
  have h : sources true 2 5 atom34317742 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34314862 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)))))
theorem atom34314862false : BadRow (sources false 2 5 atom34314862) := by
  have h : sources false 2 5 atom34314862 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34314862true : BadRow (sources true 2 5 atom34314862) := by
  have h : sources true 2 5 atom34314862 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34269806 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))))
theorem atom34269806false : BadRow (sources false 2 5 atom34269806) := by
  have h : sources false 2 5 atom34269806 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34269806true : BadRow (sources true 2 5 atom34269806) := by
  have h : sources true 2 5 atom34269806 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34314670 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 2))))
theorem atom34314670false : BadRow (sources false 2 5 atom34314670) := by
  have h : sources false 2 5 atom34314670 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34314670true : BadRow (sources true 2 5 atom34314670) := by
  have h : sources true 2 5 atom34314670 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34313902 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 2))))
theorem atom34313902false : BadRow (sources false 2 5 atom34313902) := by
  have h : sources false 2 5 atom34313902 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34313902true : BadRow (sources true 2 5 atom34313902) := by
  have h : sources true 2 5 atom34313902 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34269614 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))) (.var 2))))
theorem atom34269614false : BadRow (sources false 2 5 atom34269614) := by
  have h : sources false 2 5 atom34269614 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34269614true : BadRow (sources true 2 5 atom34269614) := by
  have h : sources true 2 5 atom34269614 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34268846 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)) (.var 2))))
theorem atom34268846false : BadRow (sources false 2 5 atom34268846) := by
  have h : sources false 2 5 atom34268846 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34268846true : BadRow (sources true 2 5 atom34268846) := by
  have h : sources true 2 5 atom34268846 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34257582 : Term := (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)) (.var 2))))
theorem atom34257582false : BadRow (sources false 2 5 atom34257582) := by
  have h : sources false 2 5 atom34257582 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34257582true : BadRow (sources true 2 5 atom34257582) := by
  have h : sources true 2 5 atom34257582 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms55 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [1,0,0,0,2]) := by
  have h : atoms 2 5 [1,0,0,0,2] = [atom34498158,atom34497966,atom34495086,atom34494894,atom34494126,atom34317934,atom34317742,atom34314862,atom34269806,atom34314670,atom34313902,atom34269614,atom34268846,atom34257582] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34498158false | exact atom34498158true) (.cons (fun lit => by cases lit <;> first | exact atom34497966false | exact atom34497966true) (.cons (fun lit => by cases lit <;> first | exact atom34495086false | exact atom34495086true) (.cons (fun lit => by cases lit <;> first | exact atom34494894false | exact atom34494894true) (.cons (fun lit => by cases lit <;> first | exact atom34494126false | exact atom34494126true) (.cons (fun lit => by cases lit <;> first | exact atom34317934false | exact atom34317934true) (.cons (fun lit => by cases lit <;> first | exact atom34317742false | exact atom34317742true) (.cons (fun lit => by cases lit <;> first | exact atom34314862false | exact atom34314862true) (.cons (fun lit => by cases lit <;> first | exact atom34269806false | exact atom34269806true) (.cons (fun lit => by cases lit <;> first | exact atom34314670false | exact atom34314670true) (.cons (fun lit => by cases lit <;> first | exact atom34313902false | exact atom34313902true) (.cons (fun lit => by cases lit <;> first | exact atom34269614false | exact atom34269614true) (.cons (fun lit => by cases lit <;> first | exact atom34268846false | exact atom34268846true) (.cons (fun lit => by cases lit <;> first | exact atom34257582false | exact atom34257582true) .nil))))))))))))))
theorem atoms56 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [1,0,0,1,1]) := by
  have h : atoms 2 5 [1,0,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
