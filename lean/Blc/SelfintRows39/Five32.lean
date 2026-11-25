import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms96 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [1,0,1,1]) := by
  have h : atoms 3 4 [1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom8624610 : Term := (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.lam (.var 0)))))))
theorem atom8624610false : BadRow (sources false 3 4 atom8624610) := by
  have h : sources false 3 4 atom8624610 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8624610true : BadRow (sources true 3 4 atom8624610) := by
  have h : sources true 3 4 atom8624610 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8623842 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.lam (.var 0))))))
theorem atom8623842false : BadRow (sources false 3 4 atom8623842) := by
  have h : sources false 3 4 atom8623842 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8623842true : BadRow (sources true 3 4 atom8623842) := by
  have h : sources true 3 4 atom8623842 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8579554 : Term := (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.lam (.var 0))))))
theorem atom8579554false : BadRow (sources false 3 4 atom8579554) := by
  have h : sources false 3 4 atom8579554 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8579554true : BadRow (sources true 3 4 atom8579554) := by
  have h : sources true 3 4 atom8579554 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8577658 : Term := (.lam (.lam (.app (.app (.var 1) (.lam (.var 0))) (.app (.var 2) (.var 0)))))
theorem atom8577658false : BadRow (sources false 3 4 atom8577658) := by
  have h : sources false 3 4 atom8577658 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8577658true : BadRow (sources true 3 4 atom8577658) := by
  have h : sources true 3 4 atom8577658 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8578786 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.lam (.var 0)))))
theorem atom8578786false : BadRow (sources false 3 4 atom8578786) := by
  have h : sources false 3 4 atom8578786 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8578786true : BadRow (sources true 3 4 atom8578786) := by
  have h : sources true 3 4 atom8578786 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8567522 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.var 0)))))
theorem atom8567522false : BadRow (sources false 3 4 atom8567522) := by
  have h : sources false 3 4 atom8567522 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8567522true : BadRow (sources true 3 4 atom8567522) := by
  have h : sources true 3 4 atom8567522 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8566970 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.lam (.var 0))) (.var 2)) (.var 0))))
theorem atom8566970false : BadRow (sources false 3 4 atom8566970) := by
  have h : sources false 3 4 atom8566970 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8566970true : BadRow (sources true 3 4 atom8566970) := by
  have h : sources true 3 4 atom8566970 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms97 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [1,0,2,0]) := by
  have h : atoms 3 4 [1,0,2,0] = [atom8624610,atom8623842,atom8579554,atom8577658,atom8578786,atom8567522,atom8566970] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom8624610false | exact atom8624610true) (.cons (fun lit => by cases lit <;> first | exact atom8623842false | exact atom8623842true) (.cons (fun lit => by cases lit <;> first | exact atom8579554false | exact atom8579554true) (.cons (fun lit => by cases lit <;> first | exact atom8577658false | exact atom8577658true) (.cons (fun lit => by cases lit <;> first | exact atom8578786false | exact atom8578786true) (.cons (fun lit => by cases lit <;> first | exact atom8567522false | exact atom8567522true) (.cons (fun lit => by cases lit <;> first | exact atom8566970false | exact atom8566970true) .nil)))))))
theorem atoms98 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [1,1,0,1]) := by
  have h : atoms 3 4 [1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
