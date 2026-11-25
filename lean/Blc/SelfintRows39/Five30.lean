import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms90 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [0,1,1,1]) := by
  have h : atoms 3 4 [0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom8600034 : Term := (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.lam (.var 0)))))))
theorem atom8600034false : BadRow (sources false 3 4 atom8600034) := by
  have h : sources false 3 4 atom8600034 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8600034true : BadRow (sources true 3 4 atom8600034) := by
  have h : sources true 3 4 atom8600034 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8597218 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.lam (.var 0))))))
theorem atom8597218false : BadRow (sources false 3 4 atom8597218) := by
  have h : sources false 3 4 atom8597218 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8597218true : BadRow (sources true 3 4 atom8597218) := by
  have h : sources true 3 4 atom8597218 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8575458 : Term := (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.lam (.var 0))))))
theorem atom8575458false : BadRow (sources false 3 4 atom8575458) := by
  have h : sources false 3 4 atom8575458 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8575458true : BadRow (sources true 3 4 atom8575458) := by
  have h : sources true 3 4 atom8575458 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8572642 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.var 0)))))
theorem atom8572642false : BadRow (sources false 3 4 atom8572642) := by
  have h : sources false 3 4 atom8572642 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8572642true : BadRow (sources true 3 4 atom8572642) := by
  have h : sources true 3 4 atom8572642 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8566498 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.var 0)))))
theorem atom8566498false : BadRow (sources false 3 4 atom8566498) := by
  have h : sources false 3 4 atom8566498 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8566498true : BadRow (sources true 3 4 atom8566498) := by
  have h : sources true 3 4 atom8566498 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom11538042 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))
theorem atom11538042false : BadRow (sources false 3 4 atom11538042) := by
  have h : sources false 3 4 atom11538042 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom11538042true : BadRow (sources true 3 4 atom11538042) := by
  have h : sources true 3 4 atom11538042 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom11537338 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))
theorem atom11537338false : BadRow (sources false 3 4 atom11537338) := by
  have h : sources false 3 4 atom11537338 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom11537338true : BadRow (sources true 3 4 atom11537338) := by
  have h : sources true 3 4 atom11537338 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms91 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [0,1,2,0]) := by
  have h : atoms 3 4 [0,1,2,0] = [atom8600034,atom8597218,atom8575458,atom8572642,atom8566498,atom11538042,atom11537338] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom8600034false | exact atom8600034true) (.cons (fun lit => by cases lit <;> first | exact atom8597218false | exact atom8597218true) (.cons (fun lit => by cases lit <;> first | exact atom8575458false | exact atom8575458true) (.cons (fun lit => by cases lit <;> first | exact atom8572642false | exact atom8572642true) (.cons (fun lit => by cases lit <;> first | exact atom8566498false | exact atom8566498true) (.cons (fun lit => by cases lit <;> first | exact atom11538042false | exact atom11538042true) (.cons (fun lit => by cases lit <;> first | exact atom11537338false | exact atom11537338true) .nil)))))))
private def atom8597270 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.lam (.var 0))) (.var 1)))))
theorem atom8597270false : BadRow (sources false 3 4 atom8597270) := by
  have h : sources false 3 4 atom8597270 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8597270true : BadRow (sources true 3 4 atom8597270) := by
  have h : sources true 3 4 atom8597270 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8572694 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1))))
theorem atom8572694false : BadRow (sources false 3 4 atom8572694) := by
  have h : sources false 3 4 atom8572694 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8572694true : BadRow (sources true 3 4 atom8572694) := by
  have h : sources true 3 4 atom8572694 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom8566550 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.lam (.var 0))) (.var 1))))
theorem atom8566550false : BadRow (sources false 3 4 atom8566550) := by
  have h : sources false 3 4 atom8566550 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom8566550true : BadRow (sources true 3 4 atom8566550) := by
  have h : sources true 3 4 atom8566550 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom11538230 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))
theorem atom11538230false : BadRow (sources false 3 4 atom11538230) := by
  have h : sources false 3 4 atom11538230 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom11538230true : BadRow (sources true 3 4 atom11538230) := by
  have h : sources true 3 4 atom11538230 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom11537366 : Term := (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))
theorem atom11537366false : BadRow (sources false 3 4 atom11537366) := by
  have h : sources false 3 4 atom11537366 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom11537366true : BadRow (sources true 3 4 atom11537366) := by
  have h : sources true 3 4 atom11537366 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms92 : Every (fun b => ∀ lit, BadRow (sources lit 3 4 b)) (atoms 3 4 [0,2,0,1]) := by
  have h : atoms 3 4 [0,2,0,1] = [atom8597270,atom8572694,atom8566550,atom11538230,atom11537366] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom8597270false | exact atom8597270true) (.cons (fun lit => by cases lit <;> first | exact atom8572694false | exact atom8572694true) (.cons (fun lit => by cases lit <;> first | exact atom8566550false | exact atom8566550true) (.cons (fun lit => by cases lit <;> first | exact atom11538230false | exact atom11538230true) (.cons (fun lit => by cases lit <;> first | exact atom11537366false | exact atom11537366true) .nil)))))
end Blc.SelfintSingleObject.Sat39
