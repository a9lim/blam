import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom34498170 : Term := (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 0)))))))
theorem atom34498170false : BadRow (sources false 2 5 atom34498170) := by
  have h : sources false 2 5 atom34498170 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34498170true : BadRow (sources true 2 5 atom34498170) := by
  have h : sources true 2 5 atom34498170 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34497978 : Term := (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 0))))))
theorem atom34497978false : BadRow (sources false 2 5 atom34497978) := by
  have h : sources false 2 5 atom34497978 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34497978true : BadRow (sources true 2 5 atom34497978) := by
  have h : sources true 2 5 atom34497978 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34495098 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))))
theorem atom34495098false : BadRow (sources false 2 5 atom34495098) := by
  have h : sources false 2 5 atom34495098 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34495098true : BadRow (sources true 2 5 atom34495098) := by
  have h : sources true 2 5 atom34495098 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34494906 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)))))
theorem atom34494906false : BadRow (sources false 2 5 atom34494906) := by
  have h : sources false 2 5 atom34494906 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34494906true : BadRow (sources true 2 5 atom34494906) := by
  have h : sources true 2 5 atom34494906 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34494138 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))))
theorem atom34494138false : BadRow (sources false 2 5 atom34494138) := by
  have h : sources false 2 5 atom34494138 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34494138true : BadRow (sources true 2 5 atom34494138) := by
  have h : sources true 2 5 atom34494138 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34317946 : Term := (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))))
theorem atom34317946false : BadRow (sources false 2 5 atom34317946) := by
  have h : sources false 2 5 atom34317946 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34317946true : BadRow (sources true 2 5 atom34317946) := by
  have h : sources true 2 5 atom34317946 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34317754 : Term := (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))))
theorem atom34317754false : BadRow (sources false 2 5 atom34317754) := by
  have h : sources false 2 5 atom34317754 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34317754true : BadRow (sources true 2 5 atom34317754) := by
  have h : sources true 2 5 atom34317754 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34314874 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)))))
theorem atom34314874false : BadRow (sources false 2 5 atom34314874) := by
  have h : sources false 2 5 atom34314874 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34314874true : BadRow (sources true 2 5 atom34314874) := by
  have h : sources true 2 5 atom34314874 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34269818 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)))))
theorem atom34269818false : BadRow (sources false 2 5 atom34269818) := by
  have h : sources false 2 5 atom34269818 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34269818true : BadRow (sources true 2 5 atom34269818) := by
  have h : sources true 2 5 atom34269818 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34314682 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 0))))
theorem atom34314682false : BadRow (sources false 2 5 atom34314682) := by
  have h : sources false 2 5 atom34314682 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34314682true : BadRow (sources true 2 5 atom34314682) := by
  have h : sources true 2 5 atom34314682 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34313914 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))))
theorem atom34313914false : BadRow (sources false 2 5 atom34313914) := by
  have h : sources false 2 5 atom34313914 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34313914true : BadRow (sources true 2 5 atom34313914) := by
  have h : sources true 2 5 atom34313914 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34269626 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))))
theorem atom34269626false : BadRow (sources false 2 5 atom34269626) := by
  have h : sources false 2 5 atom34269626 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34269626true : BadRow (sources true 2 5 atom34269626) := by
  have h : sources true 2 5 atom34269626 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34268858 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)) (.var 0))))
theorem atom34268858false : BadRow (sources false 2 5 atom34268858) := by
  have h : sources false 2 5 atom34268858 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34268858true : BadRow (sources true 2 5 atom34268858) := by
  have h : sources true 2 5 atom34268858 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34257594 : Term := (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)) (.var 0))))
theorem atom34257594false : BadRow (sources false 2 5 atom34257594) := by
  have h : sources false 2 5 atom34257594 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34257594true : BadRow (sources true 2 5 atom34257594) := by
  have h : sources true 2 5 atom34257594 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms57 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [1,0,0,2,0]) := by
  have h : atoms 2 5 [1,0,0,2,0] = [atom34498170,atom34497978,atom34495098,atom34494906,atom34494138,atom34317946,atom34317754,atom34314874,atom34269818,atom34314682,atom34313914,atom34269626,atom34268858,atom34257594] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34498170false | exact atom34498170true) (.cons (fun lit => by cases lit <;> first | exact atom34497978false | exact atom34497978true) (.cons (fun lit => by cases lit <;> first | exact atom34495098false | exact atom34495098true) (.cons (fun lit => by cases lit <;> first | exact atom34494906false | exact atom34494906true) (.cons (fun lit => by cases lit <;> first | exact atom34494138false | exact atom34494138true) (.cons (fun lit => by cases lit <;> first | exact atom34317946false | exact atom34317946true) (.cons (fun lit => by cases lit <;> first | exact atom34317754false | exact atom34317754true) (.cons (fun lit => by cases lit <;> first | exact atom34314874false | exact atom34314874true) (.cons (fun lit => by cases lit <;> first | exact atom34269818false | exact atom34269818true) (.cons (fun lit => by cases lit <;> first | exact atom34314682false | exact atom34314682true) (.cons (fun lit => by cases lit <;> first | exact atom34313914false | exact atom34313914true) (.cons (fun lit => by cases lit <;> first | exact atom34269626false | exact atom34269626true) (.cons (fun lit => by cases lit <;> first | exact atom34268858false | exact atom34268858true) (.cons (fun lit => by cases lit <;> first | exact atom34257594false | exact atom34257594true) .nil))))))))))))))
theorem atoms58 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [1,0,1,0,1]) := by
  have h : atoms 2 5 [1,0,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil
theorem atoms59 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [1,0,1,1,0]) := by
  have h : atoms 2 5 [1,0,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
