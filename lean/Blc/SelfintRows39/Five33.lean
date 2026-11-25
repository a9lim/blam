import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms99 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [1,1,1,0]) := by
  have h : atoms 3 4 [1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom8625762 : Term := (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.lam (.var 0)))))))
theorem atom8625762false : BadRow (sources false 3 4 atom8625762) := by
  have h : sources false 3 4 atom8625762 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8625762true : BadRow (sources true 3 4 atom8625762) := by
  have h : sources true 3 4 atom8625762 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8624034 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 0))))))
theorem atom8624034false : BadRow (sources false 3 4 atom8624034) := by
  have h : sources false 3 4 atom8624034 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8624034true : BadRow (sources true 3 4 atom8624034) := by
  have h : sources true 3 4 atom8624034 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8624010 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.lam (.var 0))) (.var 0)))))
theorem atom8624010false : BadRow (sources false 3 4 atom8624010) := by
  have h : sources false 3 4 atom8624010 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8624010true : BadRow (sources true 3 4 atom8624010) := by
  have h : sources true 3 4 atom8624010 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8580706 : Term := (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.lam (.var 0))))))
theorem atom8580706false : BadRow (sources false 3 4 atom8580706) := by
  have h : sources false 3 4 atom8580706 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8580706true : BadRow (sources true 3 4 atom8580706) := by
  have h : sources true 3 4 atom8580706 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8578978 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 0)))))
theorem atom8578978false : BadRow (sources false 3 4 atom8578978) := by
  have h : sources false 3 4 atom8578978 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8578978true : BadRow (sources true 3 4 atom8578978) := by
  have h : sources true 3 4 atom8578978 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8567714 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.lam (.var 0)))))
theorem atom8567714false : BadRow (sources false 3 4 atom8567714) := by
  have h : sources false 3 4 atom8567714 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8567714true : BadRow (sources true 3 4 atom8567714) := by
  have h : sources true 3 4 atom8567714 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8578954 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.lam (.var 0)))) (.var 0))))
theorem atom8578954false : BadRow (sources false 3 4 atom8578954) := by
  have h : sources false 3 4 atom8578954 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8578954true : BadRow (sources true 3 4 atom8578954) := by
  have h : sources true 3 4 atom8578954 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8567690 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.lam (.var 0))) (.var 0))))
theorem atom8567690false : BadRow (sources false 3 4 atom8567690) := by
  have h : sources false 3 4 atom8567690 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8567690true : BadRow (sources true 3 4 atom8567690) := by
  have h : sources true 3 4 atom8567690 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms100 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [1,2,0,0]) := by
  have h : atoms 3 4 [1,2,0,0] = [atom8625762,atom8624034,atom8624010,atom8580706,atom8578978,atom8567714,atom8578954,atom8567690] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom8625762false | exact atom8625762true) (.cons (fun lit => by cases lit <;> first | exact atom8624034false | exact atom8624034true) (.cons (fun lit => by cases lit <;> first | exact atom8624010false | exact atom8624010true) (.cons (fun lit => by cases lit <;> first | exact atom8580706false | exact atom8580706true) (.cons (fun lit => by cases lit <;> first | exact atom8578978false | exact atom8578978true) (.cons (fun lit => by cases lit <;> first | exact atom8567714false | exact atom8567714true) (.cons (fun lit => by cases lit <;> first | exact atom8578954false | exact atom8578954true) (.cons (fun lit => by cases lit <;> first | exact atom8567690false | exact atom8567690true) .nil))))))))
private def atom8637206 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))
theorem atom8637206false : BadRow (sources false 3 4 atom8637206) := by
  have h : sources false 3 4 atom8637206 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8637206true : BadRow (sources true 3 4 atom8637206) := by
  have h : sources true 3 4 atom8637206 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8581430 : Term := (.lam (.lam (.app (.app (.var 2) (.lam (.var 0))) (.app (.var 0) (.var 1)))))
theorem atom8581430false : BadRow (sources false 3 4 atom8581430) := by
  have h : sources false 3 4 atom8581430 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8581430true : BadRow (sources true 3 4 atom8581430) := by
  have h : sources true 3 4 atom8581430 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8581910 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1))))
theorem atom8581910false : BadRow (sources false 3 4 atom8581910) := by
  have h : sources false 3 4 atom8581910 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8581910true : BadRow (sources true 3 4 atom8581910) := by
  have h : sources true 3 4 atom8581910 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8568086 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.lam (.var 0))) (.var 1))))
theorem atom8568086false : BadRow (sources false 3 4 atom8568086) := by
  have h : sources false 3 4 atom8568086 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8568086true : BadRow (sources true 3 4 atom8568086) := by
  have h : sources true 3 4 atom8568086 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8567894 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.lam (.var 0))) (.var 0)) (.var 1))))
theorem atom8567894false : BadRow (sources false 3 4 atom8567894) := by
  have h : sources false 3 4 atom8567894 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8567894true : BadRow (sources true 3 4 atom8567894) := by
  have h : sources true 3 4 atom8567894 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms101 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [2,0,0,1]) := by
  have h : atoms 3 4 [2,0,0,1] = [atom8637206,atom8581430,atom8581910,atom8568086,atom8567894] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom8637206false | exact atom8637206true) (.cons (fun lit => by cases lit <;> first | exact atom8581430false | exact atom8581430true) (.cons (fun lit => by cases lit <;> first | exact atom8581910false | exact atom8581910true) (.cons (fun lit => by cases lit <;> first | exact atom8568086false | exact atom8568086true) (.cons (fun lit => by cases lit <;> first | exact atom8567894false | exact atom8567894true) .nil)))))
end Blc.SelfintSingleObject.Sat39
