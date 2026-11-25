import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom34399854 : Term := (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))
theorem atom34399854false : BadRow (sources false 2 5 atom34399854) := by
  have h : sources false 2 5 atom34399854 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34399854true : BadRow (sources true 2 5 atom34399854) := by
  have h : sources true 2 5 atom34399854 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34399662 : Term := (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))
theorem atom34399662false : BadRow (sources false 2 5 atom34399662) := by
  have h : sources false 2 5 atom34399662 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34399662true : BadRow (sources true 2 5 atom34399662) := by
  have h : sources true 2 5 atom34399662 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34388590 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))
theorem atom34388590false : BadRow (sources false 2 5 atom34388590) := by
  have h : sources false 2 5 atom34388590 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34388590true : BadRow (sources true 2 5 atom34388590) := by
  have h : sources true 2 5 atom34388590 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34388398 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))
theorem atom34388398false : BadRow (sources false 2 5 atom34388398) := by
  have h : sources false 2 5 atom34388398 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34388398true : BadRow (sources true 2 5 atom34388398) := by
  have h : sources true 2 5 atom34388398 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34385582 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))
theorem atom34385582false : BadRow (sources false 2 5 atom34385582) := by
  have h : sources false 2 5 atom34385582 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34385582true : BadRow (sources true 2 5 atom34385582) := by
  have h : sources true 2 5 atom34385582 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34301550 : Term := (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 2))))))
theorem atom34301550false : BadRow (sources false 2 5 atom34301550) := by
  have h : sources false 2 5 atom34301550 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34301550true : BadRow (sources true 2 5 atom34301550) := by
  have h : sources true 2 5 atom34301550 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34301358 : Term := (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 2)))))
theorem atom34301358false : BadRow (sources false 2 5 atom34301358) := by
  have h : sources false 2 5 atom34301358 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34301358true : BadRow (sources true 2 5 atom34301358) := by
  have h : sources true 2 5 atom34301358 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34290286 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 2)))))
theorem atom34290286false : BadRow (sources false 2 5 atom34290286) := by
  have h : sources false 2 5 atom34290286 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34290286true : BadRow (sources true 2 5 atom34290286) := by
  have h : sources true 2 5 atom34290286 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34265710 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 2)))))
theorem atom34265710false : BadRow (sources false 2 5 atom34265710) := by
  have h : sources false 2 5 atom34265710 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34265710true : BadRow (sources true 2 5 atom34265710) := by
  have h : sources true 2 5 atom34265710 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34290094 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 2))))
theorem atom34290094false : BadRow (sources false 2 5 atom34290094) := by
  have h : sources false 2 5 atom34290094 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34290094true : BadRow (sources true 2 5 atom34290094) := by
  have h : sources true 2 5 atom34290094 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34287278 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 2))))
theorem atom34287278false : BadRow (sources false 2 5 atom34287278) := by
  have h : sources false 2 5 atom34287278 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34287278true : BadRow (sources true 2 5 atom34287278) := by
  have h : sources true 2 5 atom34287278 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34265518 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))) (.var 2))))
theorem atom34265518false : BadRow (sources false 2 5 atom34265518) := by
  have h : sources false 2 5 atom34265518 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34265518true : BadRow (sources true 2 5 atom34265518) := by
  have h : sources true 2 5 atom34265518 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34262702 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 2))))
theorem atom34262702false : BadRow (sources false 2 5 atom34262702) := by
  have h : sources false 2 5 atom34262702 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34262702true : BadRow (sources true 2 5 atom34262702) := by
  have h : sources true 2 5 atom34262702 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34256558 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.var 2))))
theorem atom34256558false : BadRow (sources false 2 5 atom34256558) := by
  have h : sources false 2 5 atom34256558 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34256558true : BadRow (sources true 2 5 atom34256558) := by
  have h : sources true 2 5 atom34256558 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36759150 : Term := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))
theorem atom36759150false : BadRow (sources false 2 5 atom36759150) := by
  have h : sources false 2 5 atom36759150 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36759150true : BadRow (sources true 2 5 atom36759150) := by
  have h : sources true 2 5 atom36759150 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36758958 : Term := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))
theorem atom36758958false : BadRow (sources false 2 5 atom36758958) := by
  have h : sources false 2 5 atom36758958 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36758958true : BadRow (sources true 2 5 atom36758958) := by
  have h : sources true 2 5 atom36758958 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36747886 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))
theorem atom36747886false : BadRow (sources false 2 5 atom36747886) := by
  have h : sources false 2 5 atom36747886 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36747886true : BadRow (sources true 2 5 atom36747886) := by
  have h : sources true 2 5 atom36747886 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36747694 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))
theorem atom36747694false : BadRow (sources false 2 5 atom36747694) := by
  have h : sources false 2 5 atom36747694 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36747694true : BadRow (sources true 2 5 atom36747694) := by
  have h : sources true 2 5 atom36747694 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36744878 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))
theorem atom36744878false : BadRow (sources false 2 5 atom36744878) := by
  have h : sources false 2 5 atom36744878 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36744878true : BadRow (sources true 2 5 atom36744878) := by
  have h : sources true 2 5 atom36744878 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46196334 : Term := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 2)))))))
theorem atom46196334false : BadRow (sources false 2 5 atom46196334) := by
  have h : sources false 2 5 atom46196334 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46196334true : BadRow (sources true 2 5 atom46196334) := by
  have h : sources true 2 5 atom46196334 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46196142 : Term := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 2))))))
theorem atom46196142false : BadRow (sources false 2 5 atom46196142) := by
  have h : sources false 2 5 atom46196142 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46196142true : BadRow (sources true 2 5 atom46196142) := by
  have h : sources true 2 5 atom46196142 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46185070 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 2))))))
theorem atom46185070false : BadRow (sources false 2 5 atom46185070) := by
  have h : sources false 2 5 atom46185070 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46185070true : BadRow (sources true 2 5 atom46185070) := by
  have h : sources true 2 5 atom46185070 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46184878 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 2)))))
theorem atom46184878false : BadRow (sources false 2 5 atom46184878) := by
  have h : sources false 2 5 atom46184878 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46184878true : BadRow (sources true 2 5 atom46184878) := by
  have h : sources true 2 5 atom46184878 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46182062 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 2)))))
theorem atom46182062false : BadRow (sources false 2 5 atom46182062) := by
  have h : sources false 2 5 atom46182062 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46182062true : BadRow (sources true 2 5 atom46182062) := by
  have h : sources true 2 5 atom46182062 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms45 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,1,0,0,2]) := by
  have h : atoms 2 5 [0,1,0,0,2] = [atom34399854,atom34399662,atom34388590,atom34388398,atom34385582,atom34301550,atom34301358,atom34290286,atom34265710,atom34290094,atom34287278,atom34265518,atom34262702,atom34256558,atom36759150,atom36758958,atom36747886,atom36747694,atom36744878,atom46196334,atom46196142,atom46185070,atom46184878,atom46182062] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34399854false | exact atom34399854true) (.cons (fun lit => by cases lit <;> first | exact atom34399662false | exact atom34399662true) (.cons (fun lit => by cases lit <;> first | exact atom34388590false | exact atom34388590true) (.cons (fun lit => by cases lit <;> first | exact atom34388398false | exact atom34388398true) (.cons (fun lit => by cases lit <;> first | exact atom34385582false | exact atom34385582true) (.cons (fun lit => by cases lit <;> first | exact atom34301550false | exact atom34301550true) (.cons (fun lit => by cases lit <;> first | exact atom34301358false | exact atom34301358true) (.cons (fun lit => by cases lit <;> first | exact atom34290286false | exact atom34290286true) (.cons (fun lit => by cases lit <;> first | exact atom34265710false | exact atom34265710true) (.cons (fun lit => by cases lit <;> first | exact atom34290094false | exact atom34290094true) (.cons (fun lit => by cases lit <;> first | exact atom34287278false | exact atom34287278true) (.cons (fun lit => by cases lit <;> first | exact atom34265518false | exact atom34265518true) (.cons (fun lit => by cases lit <;> first | exact atom34262702false | exact atom34262702true) (.cons (fun lit => by cases lit <;> first | exact atom34256558false | exact atom34256558true) (.cons (fun lit => by cases lit <;> first | exact atom36759150false | exact atom36759150true) (.cons (fun lit => by cases lit <;> first | exact atom36758958false | exact atom36758958true) (.cons (fun lit => by cases lit <;> first | exact atom36747886false | exact atom36747886true) (.cons (fun lit => by cases lit <;> first | exact atom36747694false | exact atom36747694true) (.cons (fun lit => by cases lit <;> first | exact atom36744878false | exact atom36744878true) (.cons (fun lit => by cases lit <;> first | exact atom46196334false | exact atom46196334true) (.cons (fun lit => by cases lit <;> first | exact atom46196142false | exact atom46196142true) (.cons (fun lit => by cases lit <;> first | exact atom46185070false | exact atom46185070true) (.cons (fun lit => by cases lit <;> first | exact atom46184878false | exact atom46184878true) (.cons (fun lit => by cases lit <;> first | exact atom46182062false | exact atom46182062true) .nil))))))))))))))))))))))))
theorem atoms46 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,1,0,1,1]) := by
  have h : atoms 2 5 [0,1,0,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom34399866 : Term := (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))
theorem atom34399866false : BadRow (sources false 2 5 atom34399866) := by
  have h : sources false 2 5 atom34399866 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34399866true : BadRow (sources true 2 5 atom34399866) := by
  have h : sources true 2 5 atom34399866 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34399674 : Term := (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))
theorem atom34399674false : BadRow (sources false 2 5 atom34399674) := by
  have h : sources false 2 5 atom34399674 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34399674true : BadRow (sources true 2 5 atom34399674) := by
  have h : sources true 2 5 atom34399674 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34388602 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))
theorem atom34388602false : BadRow (sources false 2 5 atom34388602) := by
  have h : sources false 2 5 atom34388602 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34388602true : BadRow (sources true 2 5 atom34388602) := by
  have h : sources true 2 5 atom34388602 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34388410 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))
theorem atom34388410false : BadRow (sources false 2 5 atom34388410) := by
  have h : sources false 2 5 atom34388410 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34388410true : BadRow (sources true 2 5 atom34388410) := by
  have h : sources true 2 5 atom34388410 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34385594 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))
theorem atom34385594false : BadRow (sources false 2 5 atom34385594) := by
  have h : sources false 2 5 atom34385594 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34385594true : BadRow (sources true 2 5 atom34385594) := by
  have h : sources true 2 5 atom34385594 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34301562 : Term := (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.app (.var 2) (.var 0))))))
theorem atom34301562false : BadRow (sources false 2 5 atom34301562) := by
  have h : sources false 2 5 atom34301562 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34301562true : BadRow (sources true 2 5 atom34301562) := by
  have h : sources true 2 5 atom34301562 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34301370 : Term := (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 2)) (.var 0)))))
theorem atom34301370false : BadRow (sources false 2 5 atom34301370) := by
  have h : sources false 2 5 atom34301370 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34301370true : BadRow (sources true 2 5 atom34301370) := by
  have h : sources true 2 5 atom34301370 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34290298 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.app (.var 2) (.var 0)))))
theorem atom34290298false : BadRow (sources false 2 5 atom34290298) := by
  have h : sources false 2 5 atom34290298 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34290298true : BadRow (sources true 2 5 atom34290298) := by
  have h : sources true 2 5 atom34290298 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34265722 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 2) (.var 0)))))
theorem atom34265722false : BadRow (sources false 2 5 atom34265722) := by
  have h : sources false 2 5 atom34265722 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34265722true : BadRow (sources true 2 5 atom34265722) := by
  have h : sources true 2 5 atom34265722 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34290106 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))) (.var 0))))
theorem atom34290106false : BadRow (sources false 2 5 atom34290106) := by
  have h : sources false 2 5 atom34290106 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34290106true : BadRow (sources true 2 5 atom34290106) := by
  have h : sources true 2 5 atom34290106 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34287290 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0))))
theorem atom34287290false : BadRow (sources false 2 5 atom34287290) := by
  have h : sources false 2 5 atom34287290 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34287290true : BadRow (sources true 2 5 atom34287290) := by
  have h : sources true 2 5 atom34287290 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34265530 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))) (.var 0))))
theorem atom34265530false : BadRow (sources false 2 5 atom34265530) := by
  have h : sources false 2 5 atom34265530 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34265530true : BadRow (sources true 2 5 atom34265530) := by
  have h : sources true 2 5 atom34265530 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34262714 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)) (.var 0))))
theorem atom34262714false : BadRow (sources false 2 5 atom34262714) := by
  have h : sources false 2 5 atom34262714 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34262714true : BadRow (sources true 2 5 atom34262714) := by
  have h : sources true 2 5 atom34262714 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34256570 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)) (.var 0))))
theorem atom34256570false : BadRow (sources false 2 5 atom34256570) := by
  have h : sources false 2 5 atom34256570 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34256570true : BadRow (sources true 2 5 atom34256570) := by
  have h : sources true 2 5 atom34256570 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36759162 : Term := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))
theorem atom36759162false : BadRow (sources false 2 5 atom36759162) := by
  have h : sources false 2 5 atom36759162 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36759162true : BadRow (sources true 2 5 atom36759162) := by
  have h : sources true 2 5 atom36759162 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36758970 : Term := (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))
theorem atom36758970false : BadRow (sources false 2 5 atom36758970) := by
  have h : sources false 2 5 atom36758970 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36758970true : BadRow (sources true 2 5 atom36758970) := by
  have h : sources true 2 5 atom36758970 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36747898 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))
theorem atom36747898false : BadRow (sources false 2 5 atom36747898) := by
  have h : sources false 2 5 atom36747898 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36747898true : BadRow (sources true 2 5 atom36747898) := by
  have h : sources true 2 5 atom36747898 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36747706 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))
theorem atom36747706false : BadRow (sources false 2 5 atom36747706) := by
  have h : sources false 2 5 atom36747706 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36747706true : BadRow (sources true 2 5 atom36747706) := by
  have h : sources true 2 5 atom36747706 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36744890 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))
theorem atom36744890false : BadRow (sources false 2 5 atom36744890) := by
  have h : sources false 2 5 atom36744890 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36744890true : BadRow (sources true 2 5 atom36744890) := by
  have h : sources true 2 5 atom36744890 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36452794 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))) (.var 0)))
theorem atom36452794false : BadRow (sources false 2 5 atom36452794) := by
  have h : sources false 2 5 atom36452794 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36452794true : BadRow (sources true 2 5 atom36452794) := by
  have h : sources true 2 5 atom36452794 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36449978 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 0)))
theorem atom36449978false : BadRow (sources false 2 5 atom36449978) := by
  have h : sources false 2 5 atom36449978 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36449978true : BadRow (sources true 2 5 atom36449978) := by
  have h : sources true 2 5 atom36449978 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46196346 : Term := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.app (.var 2) (.var 0)))))))
theorem atom46196346false : BadRow (sources false 2 5 atom46196346) := by
  have h : sources false 2 5 atom46196346 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46196346true : BadRow (sources true 2 5 atom46196346) := by
  have h : sources true 2 5 atom46196346 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46196154 : Term := (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 0) (.var 2)) (.var 0))))))
theorem atom46196154false : BadRow (sources false 2 5 atom46196154) := by
  have h : sources false 2 5 atom46196154 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46196154true : BadRow (sources true 2 5 atom46196154) := by
  have h : sources true 2 5 atom46196154 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46185082 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 2) (.var 0))))))
theorem atom46185082false : BadRow (sources false 2 5 atom46185082) := by
  have h : sources false 2 5 atom46185082 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46185082true : BadRow (sources true 2 5 atom46185082) := by
  have h : sources true 2 5 atom46185082 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46184890 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 2))) (.var 0)))))
theorem atom46184890false : BadRow (sources false 2 5 atom46184890) := by
  have h : sources false 2 5 atom46184890 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46184890true : BadRow (sources true 2 5 atom46184890) := by
  have h : sources true 2 5 atom46184890 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46182074 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 2)) (.var 0)))))
theorem atom46182074false : BadRow (sources false 2 5 atom46182074) := by
  have h : sources false 2 5 atom46182074 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46182074true : BadRow (sources true 2 5 atom46182074) := by
  have h : sources true 2 5 atom46182074 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45103546 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))) (.var 0))
theorem atom45103546false : BadRow (sources false 2 5 atom45103546) := by
  have h : sources false 2 5 atom45103546 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45103546true : BadRow (sources true 2 5 atom45103546) := by
  have h : sources true 2 5 atom45103546 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45100730 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.var 0))
theorem atom45100730false : BadRow (sources false 2 5 atom45100730) := by
  have h : sources false 2 5 atom45100730 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45100730true : BadRow (sources true 2 5 atom45100730) := by
  have h : sources true 2 5 atom45100730 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms47 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,1,0,2,0]) := by
  have h : atoms 2 5 [0,1,0,2,0] = [atom34399866,atom34399674,atom34388602,atom34388410,atom34385594,atom34301562,atom34301370,atom34290298,atom34265722,atom34290106,atom34287290,atom34265530,atom34262714,atom34256570,atom36759162,atom36758970,atom36747898,atom36747706,atom36744890,atom36452794,atom36449978,atom46196346,atom46196154,atom46185082,atom46184890,atom46182074,atom45103546,atom45100730] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34399866false | exact atom34399866true) (.cons (fun lit => by cases lit <;> first | exact atom34399674false | exact atom34399674true) (.cons (fun lit => by cases lit <;> first | exact atom34388602false | exact atom34388602true) (.cons (fun lit => by cases lit <;> first | exact atom34388410false | exact atom34388410true) (.cons (fun lit => by cases lit <;> first | exact atom34385594false | exact atom34385594true) (.cons (fun lit => by cases lit <;> first | exact atom34301562false | exact atom34301562true) (.cons (fun lit => by cases lit <;> first | exact atom34301370false | exact atom34301370true) (.cons (fun lit => by cases lit <;> first | exact atom34290298false | exact atom34290298true) (.cons (fun lit => by cases lit <;> first | exact atom34265722false | exact atom34265722true) (.cons (fun lit => by cases lit <;> first | exact atom34290106false | exact atom34290106true) (.cons (fun lit => by cases lit <;> first | exact atom34287290false | exact atom34287290true) (.cons (fun lit => by cases lit <;> first | exact atom34265530false | exact atom34265530true) (.cons (fun lit => by cases lit <;> first | exact atom34262714false | exact atom34262714true) (.cons (fun lit => by cases lit <;> first | exact atom34256570false | exact atom34256570true) (.cons (fun lit => by cases lit <;> first | exact atom36759162false | exact atom36759162true) (.cons (fun lit => by cases lit <;> first | exact atom36758970false | exact atom36758970true) (.cons (fun lit => by cases lit <;> first | exact atom36747898false | exact atom36747898true) (.cons (fun lit => by cases lit <;> first | exact atom36747706false | exact atom36747706true) (.cons (fun lit => by cases lit <;> first | exact atom36744890false | exact atom36744890true) (.cons (fun lit => by cases lit <;> first | exact atom36452794false | exact atom36452794true) (.cons (fun lit => by cases lit <;> first | exact atom36449978false | exact atom36449978true) (.cons (fun lit => by cases lit <;> first | exact atom46196346false | exact atom46196346true) (.cons (fun lit => by cases lit <;> first | exact atom46196154false | exact atom46196154true) (.cons (fun lit => by cases lit <;> first | exact atom46185082false | exact atom46185082true) (.cons (fun lit => by cases lit <;> first | exact atom46184890false | exact atom46184890true) (.cons (fun lit => by cases lit <;> first | exact atom46182074false | exact atom46182074true) (.cons (fun lit => by cases lit <;> first | exact atom45103546false | exact atom45103546true) (.cons (fun lit => by cases lit <;> first | exact atom45100730false | exact atom45100730true) .nil))))))))))))))))))))))))))))
end Blc.SelfintSingleObject.Sat39
