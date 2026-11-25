import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms48 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,1,1,0,1]) := by
  have h : atoms 2 5 [0,1,1,0,1] = [] := by decide +kernel
  rw [h]
  exact .nil
theorem atoms49 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,1,1,1,0]) := by
  have h : atoms 2 5 [0,1,1,1,0] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom34400154 : Term := (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))
theorem atom34400154false : BadRow (sources false 2 5 atom34400154) := by
  have h : sources false 2 5 atom34400154 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34400154true : BadRow (sources true 2 5 atom34400154) := by
  have h : sources true 2 5 atom34400154 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34399722 : Term := (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))
theorem atom34399722false : BadRow (sources false 2 5 atom34399722) := by
  have h : sources false 2 5 atom34399722 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34399722true : BadRow (sources true 2 5 atom34399722) := by
  have h : sources true 2 5 atom34399722 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34388890 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))
theorem atom34388890false : BadRow (sources false 2 5 atom34388890) := by
  have h : sources false 2 5 atom34388890 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34388890true : BadRow (sources true 2 5 atom34388890) := by
  have h : sources true 2 5 atom34388890 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34388458 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))
theorem atom34388458false : BadRow (sources false 2 5 atom34388458) := by
  have h : sources false 2 5 atom34388458 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34388458true : BadRow (sources true 2 5 atom34388458) := by
  have h : sources true 2 5 atom34388458 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34385642 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))
theorem atom34385642false : BadRow (sources false 2 5 atom34385642) := by
  have h : sources false 2 5 atom34385642 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34385642true : BadRow (sources true 2 5 atom34385642) := by
  have h : sources true 2 5 atom34385642 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34301850 : Term := (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.app (.var 0) (.var 0))))))
theorem atom34301850false : BadRow (sources false 2 5 atom34301850) := by
  have h : sources false 2 5 atom34301850 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34301850true : BadRow (sources true 2 5 atom34301850) := by
  have h : sources true 2 5 atom34301850 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34301418 : Term := (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 2) (.var 0)) (.var 0)))))
theorem atom34301418false : BadRow (sources false 2 5 atom34301418) := by
  have h : sources false 2 5 atom34301418 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34301418true : BadRow (sources true 2 5 atom34301418) := by
  have h : sources true 2 5 atom34301418 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34290586 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.app (.var 0) (.var 0)))))
theorem atom34290586false : BadRow (sources false 2 5 atom34290586) := by
  have h : sources false 2 5 atom34290586 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34290586true : BadRow (sources true 2 5 atom34290586) := by
  have h : sources true 2 5 atom34290586 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34266010 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.app (.var 0) (.var 0)))))
theorem atom34266010false : BadRow (sources false 2 5 atom34266010) := by
  have h : sources false 2 5 atom34266010 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34266010true : BadRow (sources true 2 5 atom34266010) := by
  have h : sources true 2 5 atom34266010 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34290154 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))) (.var 0))))
theorem atom34290154false : BadRow (sources false 2 5 atom34290154) := by
  have h : sources false 2 5 atom34290154 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34290154true : BadRow (sources true 2 5 atom34290154) := by
  have h : sources true 2 5 atom34290154 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34287338 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))) (.var 0))))
theorem atom34287338false : BadRow (sources false 2 5 atom34287338) := by
  have h : sources false 2 5 atom34287338 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34287338true : BadRow (sources true 2 5 atom34287338) := by
  have h : sources true 2 5 atom34287338 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34265578 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))) (.var 0))))
theorem atom34265578false : BadRow (sources false 2 5 atom34265578) := by
  have h : sources false 2 5 atom34265578 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34265578true : BadRow (sources true 2 5 atom34265578) := by
  have h : sources true 2 5 atom34265578 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34262762 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)) (.var 0))))
theorem atom34262762false : BadRow (sources false 2 5 atom34262762) := by
  have h : sources false 2 5 atom34262762 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34262762true : BadRow (sources true 2 5 atom34262762) := by
  have h : sources true 2 5 atom34262762 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34256618 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)) (.var 0))))
theorem atom34256618false : BadRow (sources false 2 5 atom34256618) := by
  have h : sources false 2 5 atom34256618 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34256618true : BadRow (sources true 2 5 atom34256618) := by
  have h : sources true 2 5 atom34256618 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36759450 : Term := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))
theorem atom36759450false : BadRow (sources false 2 5 atom36759450) := by
  have h : sources false 2 5 atom36759450 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36759450true : BadRow (sources true 2 5 atom36759450) := by
  have h : sources true 2 5 atom36759450 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36759018 : Term := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))
theorem atom36759018false : BadRow (sources false 2 5 atom36759018) := by
  have h : sources false 2 5 atom36759018 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36759018true : BadRow (sources true 2 5 atom36759018) := by
  have h : sources true 2 5 atom36759018 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36748186 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))
theorem atom36748186false : BadRow (sources false 2 5 atom36748186) := by
  have h : sources false 2 5 atom36748186 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36748186true : BadRow (sources true 2 5 atom36748186) := by
  have h : sources true 2 5 atom36748186 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36747754 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))
theorem atom36747754false : BadRow (sources false 2 5 atom36747754) := by
  have h : sources false 2 5 atom36747754 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36747754true : BadRow (sources true 2 5 atom36747754) := by
  have h : sources true 2 5 atom36747754 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36744938 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))
theorem atom36744938false : BadRow (sources false 2 5 atom36744938) := by
  have h : sources false 2 5 atom36744938 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36744938true : BadRow (sources true 2 5 atom36744938) := by
  have h : sources true 2 5 atom36744938 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36452842 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))) (.var 0)))
theorem atom36452842false : BadRow (sources false 2 5 atom36452842) := by
  have h : sources false 2 5 atom36452842 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36452842true : BadRow (sources true 2 5 atom36452842) := by
  have h : sources true 2 5 atom36452842 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36450026 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))) (.var 0)))
theorem atom36450026false : BadRow (sources false 2 5 atom36450026) := by
  have h : sources false 2 5 atom36450026 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36450026true : BadRow (sources true 2 5 atom36450026) := by
  have h : sources true 2 5 atom36450026 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46196634 : Term := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))))))
theorem atom46196634false : BadRow (sources false 2 5 atom46196634) := by
  have h : sources false 2 5 atom46196634 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46196634true : BadRow (sources true 2 5 atom46196634) := by
  have h : sources true 2 5 atom46196634 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46196202 : Term := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))))))
theorem atom46196202false : BadRow (sources false 2 5 atom46196202) := by
  have h : sources false 2 5 atom46196202 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46196202true : BadRow (sources true 2 5 atom46196202) := by
  have h : sources true 2 5 atom46196202 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46185370 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))))))
theorem atom46185370false : BadRow (sources false 2 5 atom46185370) := by
  have h : sources false 2 5 atom46185370 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46185370true : BadRow (sources true 2 5 atom46185370) := by
  have h : sources true 2 5 atom46185370 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46184938 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)))))
theorem atom46184938false : BadRow (sources false 2 5 atom46184938) := by
  have h : sources false 2 5 atom46184938 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46184938true : BadRow (sources true 2 5 atom46184938) := by
  have h : sources true 2 5 atom46184938 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46182122 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)))))
theorem atom46182122false : BadRow (sources false 2 5 atom46182122) := by
  have h : sources false 2 5 atom46182122 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46182122true : BadRow (sources true 2 5 atom46182122) := by
  have h : sources true 2 5 atom46182122 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45103594 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))
theorem atom45103594false : BadRow (sources false 2 5 atom45103594) := by
  have h : sources false 2 5 atom45103594 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45103594true : BadRow (sources true 2 5 atom45103594) := by
  have h : sources true 2 5 atom45103594 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45100778 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))) (.var 0))
theorem atom45100778false : BadRow (sources false 2 5 atom45100778) := by
  have h : sources false 2 5 atom45100778 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45100778true : BadRow (sources true 2 5 atom45100778) := by
  have h : sources true 2 5 atom45100778 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms50 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,1,2,0,0]) := by
  have h : atoms 2 5 [0,1,2,0,0] = [atom34400154,atom34399722,atom34388890,atom34388458,atom34385642,atom34301850,atom34301418,atom34290586,atom34266010,atom34290154,atom34287338,atom34265578,atom34262762,atom34256618,atom36759450,atom36759018,atom36748186,atom36747754,atom36744938,atom36452842,atom36450026,atom46196634,atom46196202,atom46185370,atom46184938,atom46182122,atom45103594,atom45100778] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34400154false | exact atom34400154true) (.cons (fun lit => by cases lit <;> first | exact atom34399722false | exact atom34399722true) (.cons (fun lit => by cases lit <;> first | exact atom34388890false | exact atom34388890true) (.cons (fun lit => by cases lit <;> first | exact atom34388458false | exact atom34388458true) (.cons (fun lit => by cases lit <;> first | exact atom34385642false | exact atom34385642true) (.cons (fun lit => by cases lit <;> first | exact atom34301850false | exact atom34301850true) (.cons (fun lit => by cases lit <;> first | exact atom34301418false | exact atom34301418true) (.cons (fun lit => by cases lit <;> first | exact atom34290586false | exact atom34290586true) (.cons (fun lit => by cases lit <;> first | exact atom34266010false | exact atom34266010true) (.cons (fun lit => by cases lit <;> first | exact atom34290154false | exact atom34290154true) (.cons (fun lit => by cases lit <;> first | exact atom34287338false | exact atom34287338true) (.cons (fun lit => by cases lit <;> first | exact atom34265578false | exact atom34265578true) (.cons (fun lit => by cases lit <;> first | exact atom34262762false | exact atom34262762true) (.cons (fun lit => by cases lit <;> first | exact atom34256618false | exact atom34256618true) (.cons (fun lit => by cases lit <;> first | exact atom36759450false | exact atom36759450true) (.cons (fun lit => by cases lit <;> first | exact atom36759018false | exact atom36759018true) (.cons (fun lit => by cases lit <;> first | exact atom36748186false | exact atom36748186true) (.cons (fun lit => by cases lit <;> first | exact atom36747754false | exact atom36747754true) (.cons (fun lit => by cases lit <;> first | exact atom36744938false | exact atom36744938true) (.cons (fun lit => by cases lit <;> first | exact atom36452842false | exact atom36452842true) (.cons (fun lit => by cases lit <;> first | exact atom36450026false | exact atom36450026true) (.cons (fun lit => by cases lit <;> first | exact atom46196634false | exact atom46196634true) (.cons (fun lit => by cases lit <;> first | exact atom46196202false | exact atom46196202true) (.cons (fun lit => by cases lit <;> first | exact atom46185370false | exact atom46185370true) (.cons (fun lit => by cases lit <;> first | exact atom46184938false | exact atom46184938true) (.cons (fun lit => by cases lit <;> first | exact atom46182122false | exact atom46182122true) (.cons (fun lit => by cases lit <;> first | exact atom45103594false | exact atom45103594true) (.cons (fun lit => by cases lit <;> first | exact atom45100778false | exact atom45100778true) .nil))))))))))))))))))))))))))))
end Blc.SelfintSingleObject.Sat39
