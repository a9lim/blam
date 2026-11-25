import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom34403126 : Term := (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))
theorem atom34403126false : BadRow (sources false 2 5 atom34403126) := by
  have h : sources false 2 5 atom34403126 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34403126true : BadRow (sources true 2 5 atom34403126) := by
  have h : sources true 2 5 atom34403126 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34403030 : Term := (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))
theorem atom34403030false : BadRow (sources false 2 5 atom34403030) := by
  have h : sources false 2 5 atom34403030 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34403030true : BadRow (sources true 2 5 atom34403030) := by
  have h : sources true 2 5 atom34403030 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34389302 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))
theorem atom34389302false : BadRow (sources false 2 5 atom34389302) := by
  have h : sources false 2 5 atom34389302 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34389302true : BadRow (sources true 2 5 atom34389302) := by
  have h : sources true 2 5 atom34389302 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34389206 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))
theorem atom34389206false : BadRow (sources false 2 5 atom34389206) := by
  have h : sources false 2 5 atom34389206 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34389206true : BadRow (sources true 2 5 atom34389206) := by
  have h : sources true 2 5 atom34389206 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34385750 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))
theorem atom34385750false : BadRow (sources false 2 5 atom34385750) := by
  have h : sources false 2 5 atom34385750 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34385750true : BadRow (sources true 2 5 atom34385750) := by
  have h : sources true 2 5 atom34385750 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34304822 : Term := (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 1))))))
theorem atom34304822false : BadRow (sources false 2 5 atom34304822) := by
  have h : sources false 2 5 atom34304822 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34304822true : BadRow (sources true 2 5 atom34304822) := by
  have h : sources true 2 5 atom34304822 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34304726 : Term := (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem atom34304726false : BadRow (sources false 2 5 atom34304726) := by
  have h : sources false 2 5 atom34304726 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34304726true : BadRow (sources true 2 5 atom34304726) := by
  have h : sources true 2 5 atom34304726 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34290998 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 1)))))
theorem atom34290998false : BadRow (sources false 2 5 atom34290998) := by
  have h : sources false 2 5 atom34290998 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34290998true : BadRow (sources true 2 5 atom34290998) := by
  have h : sources true 2 5 atom34290998 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34266422 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 0) (.var 1)))))
theorem atom34266422false : BadRow (sources false 2 5 atom34266422) := by
  have h : sources false 2 5 atom34266422 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34266422true : BadRow (sources true 2 5 atom34266422) := by
  have h : sources true 2 5 atom34266422 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34290902 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 1))))
theorem atom34290902false : BadRow (sources false 2 5 atom34290902) := by
  have h : sources false 2 5 atom34290902 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34290902true : BadRow (sources true 2 5 atom34290902) := by
  have h : sources true 2 5 atom34290902 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34287446 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 1))))
theorem atom34287446false : BadRow (sources false 2 5 atom34287446) := by
  have h : sources false 2 5 atom34287446 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34287446true : BadRow (sources true 2 5 atom34287446) := by
  have h : sources true 2 5 atom34287446 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34266326 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 0))) (.var 1))))
theorem atom34266326false : BadRow (sources false 2 5 atom34266326) := by
  have h : sources false 2 5 atom34266326 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34266326true : BadRow (sources true 2 5 atom34266326) := by
  have h : sources true 2 5 atom34266326 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34262870 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 0)) (.var 1))))
theorem atom34262870false : BadRow (sources false 2 5 atom34262870) := by
  have h : sources false 2 5 atom34262870 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34262870true : BadRow (sources true 2 5 atom34262870) := by
  have h : sources true 2 5 atom34262870 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34256726 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 0)) (.var 1))))
theorem atom34256726false : BadRow (sources false 2 5 atom34256726) := by
  have h : sources false 2 5 atom34256726 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34256726true : BadRow (sources true 2 5 atom34256726) := by
  have h : sources true 2 5 atom34256726 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36762422 : Term := (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))
theorem atom36762422false : BadRow (sources false 2 5 atom36762422) := by
  have h : sources false 2 5 atom36762422 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36762422true : BadRow (sources true 2 5 atom36762422) := by
  have h : sources true 2 5 atom36762422 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36762326 : Term := (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))
theorem atom36762326false : BadRow (sources false 2 5 atom36762326) := by
  have h : sources false 2 5 atom36762326 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36762326true : BadRow (sources true 2 5 atom36762326) := by
  have h : sources true 2 5 atom36762326 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36748598 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))
theorem atom36748598false : BadRow (sources false 2 5 atom36748598) := by
  have h : sources false 2 5 atom36748598 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36748598true : BadRow (sources true 2 5 atom36748598) := by
  have h : sources true 2 5 atom36748598 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36748502 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))
theorem atom36748502false : BadRow (sources false 2 5 atom36748502) := by
  have h : sources false 2 5 atom36748502 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36748502true : BadRow (sources true 2 5 atom36748502) := by
  have h : sources true 2 5 atom36748502 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36745046 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))
theorem atom36745046false : BadRow (sources false 2 5 atom36745046) := by
  have h : sources false 2 5 atom36745046 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36745046true : BadRow (sources true 2 5 atom36745046) := by
  have h : sources true 2 5 atom36745046 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46199606 : Term := (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))))))
theorem atom46199606false : BadRow (sources false 2 5 atom46199606) := by
  have h : sources false 2 5 atom46199606 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46199606true : BadRow (sources true 2 5 atom46199606) := by
  have h : sources true 2 5 atom46199606 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46199510 : Term := (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))))))
theorem atom46199510false : BadRow (sources false 2 5 atom46199510) := by
  have h : sources false 2 5 atom46199510 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46199510true : BadRow (sources true 2 5 atom46199510) := by
  have h : sources true 2 5 atom46199510 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46185782 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))))))
theorem atom46185782false : BadRow (sources false 2 5 atom46185782) := by
  have h : sources false 2 5 atom46185782 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46185782true : BadRow (sources true 2 5 atom46185782) := by
  have h : sources true 2 5 atom46185782 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46185686 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)))))
theorem atom46185686false : BadRow (sources false 2 5 atom46185686) := by
  have h : sources false 2 5 atom46185686 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46185686true : BadRow (sources true 2 5 atom46185686) := by
  have h : sources true 2 5 atom46185686 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46182230 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)))))
theorem atom46182230false : BadRow (sources false 2 5 atom46182230) := by
  have h : sources false 2 5 atom46182230 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46182230true : BadRow (sources true 2 5 atom46182230) := by
  have h : sources true 2 5 atom46182230 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms51 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,2,0,0,1]) := by
  have h : atoms 2 5 [0,2,0,0,1] = [atom34403126,atom34403030,atom34389302,atom34389206,atom34385750,atom34304822,atom34304726,atom34290998,atom34266422,atom34290902,atom34287446,atom34266326,atom34262870,atom34256726,atom36762422,atom36762326,atom36748598,atom36748502,atom36745046,atom46199606,atom46199510,atom46185782,atom46185686,atom46182230] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34403126false | exact atom34403126true) (.cons (fun lit => by cases lit <;> first | exact atom34403030false | exact atom34403030true) (.cons (fun lit => by cases lit <;> first | exact atom34389302false | exact atom34389302true) (.cons (fun lit => by cases lit <;> first | exact atom34389206false | exact atom34389206true) (.cons (fun lit => by cases lit <;> first | exact atom34385750false | exact atom34385750true) (.cons (fun lit => by cases lit <;> first | exact atom34304822false | exact atom34304822true) (.cons (fun lit => by cases lit <;> first | exact atom34304726false | exact atom34304726true) (.cons (fun lit => by cases lit <;> first | exact atom34290998false | exact atom34290998true) (.cons (fun lit => by cases lit <;> first | exact atom34266422false | exact atom34266422true) (.cons (fun lit => by cases lit <;> first | exact atom34290902false | exact atom34290902true) (.cons (fun lit => by cases lit <;> first | exact atom34287446false | exact atom34287446true) (.cons (fun lit => by cases lit <;> first | exact atom34266326false | exact atom34266326true) (.cons (fun lit => by cases lit <;> first | exact atom34262870false | exact atom34262870true) (.cons (fun lit => by cases lit <;> first | exact atom34256726false | exact atom34256726true) (.cons (fun lit => by cases lit <;> first | exact atom36762422false | exact atom36762422true) (.cons (fun lit => by cases lit <;> first | exact atom36762326false | exact atom36762326true) (.cons (fun lit => by cases lit <;> first | exact atom36748598false | exact atom36748598true) (.cons (fun lit => by cases lit <;> first | exact atom36748502false | exact atom36748502true) (.cons (fun lit => by cases lit <;> first | exact atom36745046false | exact atom36745046true) (.cons (fun lit => by cases lit <;> first | exact atom46199606false | exact atom46199606true) (.cons (fun lit => by cases lit <;> first | exact atom46199510false | exact atom46199510true) (.cons (fun lit => by cases lit <;> first | exact atom46185782false | exact atom46185782true) (.cons (fun lit => by cases lit <;> first | exact atom46185686false | exact atom46185686true) (.cons (fun lit => by cases lit <;> first | exact atom46182230false | exact atom46182230true) .nil))))))))))))))))))))))))
private def atom34403130 : Term := (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))
theorem atom34403130false : BadRow (sources false 2 5 atom34403130) := by
  have h : sources false 2 5 atom34403130 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34403130true : BadRow (sources true 2 5 atom34403130) := by
  have h : sources true 2 5 atom34403130 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34403034 : Term := (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))
theorem atom34403034false : BadRow (sources false 2 5 atom34403034) := by
  have h : sources false 2 5 atom34403034 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34403034true : BadRow (sources true 2 5 atom34403034) := by
  have h : sources true 2 5 atom34403034 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34389306 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))
theorem atom34389306false : BadRow (sources false 2 5 atom34389306) := by
  have h : sources false 2 5 atom34389306 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34389306true : BadRow (sources true 2 5 atom34389306) := by
  have h : sources true 2 5 atom34389306 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34389210 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))
theorem atom34389210false : BadRow (sources false 2 5 atom34389210) := by
  have h : sources false 2 5 atom34389210 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34389210true : BadRow (sources true 2 5 atom34389210) := by
  have h : sources true 2 5 atom34389210 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34385754 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))
theorem atom34385754false : BadRow (sources false 2 5 atom34385754) := by
  have h : sources false 2 5 atom34385754 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34385754true : BadRow (sources true 2 5 atom34385754) := by
  have h : sources true 2 5 atom34385754 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34304826 : Term := (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.app (.var 1) (.var 0))))))
theorem atom34304826false : BadRow (sources false 2 5 atom34304826) := by
  have h : sources false 2 5 atom34304826 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34304826true : BadRow (sources true 2 5 atom34304826) := by
  have h : sources true 2 5 atom34304826 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34304730 : Term := (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem atom34304730false : BadRow (sources false 2 5 atom34304730) := by
  have h : sources false 2 5 atom34304730 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34304730true : BadRow (sources true 2 5 atom34304730) := by
  have h : sources true 2 5 atom34304730 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34291002 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.app (.var 1) (.var 0)))))
theorem atom34291002false : BadRow (sources false 2 5 atom34291002) := by
  have h : sources false 2 5 atom34291002 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34291002true : BadRow (sources true 2 5 atom34291002) := by
  have h : sources true 2 5 atom34291002 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34266426 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.app (.var 1) (.var 0)))))
theorem atom34266426false : BadRow (sources false 2 5 atom34266426) := by
  have h : sources false 2 5 atom34266426 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34266426true : BadRow (sources true 2 5 atom34266426) := by
  have h : sources true 2 5 atom34266426 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34290906 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))) (.var 0))))
theorem atom34290906false : BadRow (sources false 2 5 atom34290906) := by
  have h : sources false 2 5 atom34290906 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34290906true : BadRow (sources true 2 5 atom34290906) := by
  have h : sources true 2 5 atom34290906 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34287450 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0))))
theorem atom34287450false : BadRow (sources false 2 5 atom34287450) := by
  have h : sources false 2 5 atom34287450 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34287450true : BadRow (sources true 2 5 atom34287450) := by
  have h : sources true 2 5 atom34287450 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34266330 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))) (.var 0))))
theorem atom34266330false : BadRow (sources false 2 5 atom34266330) := by
  have h : sources false 2 5 atom34266330 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34266330true : BadRow (sources true 2 5 atom34266330) := by
  have h : sources true 2 5 atom34266330 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34262874 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)) (.var 0))))
theorem atom34262874false : BadRow (sources false 2 5 atom34262874) := by
  have h : sources false 2 5 atom34262874 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34262874true : BadRow (sources true 2 5 atom34262874) := by
  have h : sources true 2 5 atom34262874 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34256730 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)) (.var 0))))
theorem atom34256730false : BadRow (sources false 2 5 atom34256730) := by
  have h : sources false 2 5 atom34256730 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34256730true : BadRow (sources true 2 5 atom34256730) := by
  have h : sources true 2 5 atom34256730 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36762426 : Term := (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))
theorem atom36762426false : BadRow (sources false 2 5 atom36762426) := by
  have h : sources false 2 5 atom36762426 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36762426true : BadRow (sources true 2 5 atom36762426) := by
  have h : sources true 2 5 atom36762426 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36762330 : Term := (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))
theorem atom36762330false : BadRow (sources false 2 5 atom36762330) := by
  have h : sources false 2 5 atom36762330 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36762330true : BadRow (sources true 2 5 atom36762330) := by
  have h : sources true 2 5 atom36762330 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36748602 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))
theorem atom36748602false : BadRow (sources false 2 5 atom36748602) := by
  have h : sources false 2 5 atom36748602 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36748602true : BadRow (sources true 2 5 atom36748602) := by
  have h : sources true 2 5 atom36748602 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36748506 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))
theorem atom36748506false : BadRow (sources false 2 5 atom36748506) := by
  have h : sources false 2 5 atom36748506 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36748506true : BadRow (sources true 2 5 atom36748506) := by
  have h : sources true 2 5 atom36748506 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36745050 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))
theorem atom36745050false : BadRow (sources false 2 5 atom36745050) := by
  have h : sources false 2 5 atom36745050 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36745050true : BadRow (sources true 2 5 atom36745050) := by
  have h : sources true 2 5 atom36745050 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36453594 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.var 0)))
theorem atom36453594false : BadRow (sources false 2 5 atom36453594) := by
  have h : sources false 2 5 atom36453594 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36453594true : BadRow (sources true 2 5 atom36453594) := by
  have h : sources true 2 5 atom36453594 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36450138 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))) (.var 0)))
theorem atom36450138false : BadRow (sources false 2 5 atom36450138) := by
  have h : sources false 2 5 atom36450138 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36450138true : BadRow (sources true 2 5 atom36450138) := by
  have h : sources true 2 5 atom36450138 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46199610 : Term := (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))))))
theorem atom46199610false : BadRow (sources false 2 5 atom46199610) := by
  have h : sources false 2 5 atom46199610 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46199610true : BadRow (sources true 2 5 atom46199610) := by
  have h : sources true 2 5 atom46199610 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46199514 : Term := (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))))))
theorem atom46199514false : BadRow (sources false 2 5 atom46199514) := by
  have h : sources false 2 5 atom46199514 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46199514true : BadRow (sources true 2 5 atom46199514) := by
  have h : sources true 2 5 atom46199514 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46185786 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))))))
theorem atom46185786false : BadRow (sources false 2 5 atom46185786) := by
  have h : sources false 2 5 atom46185786 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46185786true : BadRow (sources true 2 5 atom46185786) := by
  have h : sources true 2 5 atom46185786 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46185690 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)))))
theorem atom46185690false : BadRow (sources false 2 5 atom46185690) := by
  have h : sources false 2 5 atom46185690 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46185690true : BadRow (sources true 2 5 atom46185690) := by
  have h : sources true 2 5 atom46185690 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46182234 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)))))
theorem atom46182234false : BadRow (sources false 2 5 atom46182234) := by
  have h : sources false 2 5 atom46182234 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46182234true : BadRow (sources true 2 5 atom46182234) := by
  have h : sources true 2 5 atom46182234 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45104346 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))) (.var 0))
theorem atom45104346false : BadRow (sources false 2 5 atom45104346) := by
  have h : sources false 2 5 atom45104346 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45104346true : BadRow (sources true 2 5 atom45104346) := by
  have h : sources true 2 5 atom45104346 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45100890 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))) (.var 0))
theorem atom45100890false : BadRow (sources false 2 5 atom45100890) := by
  have h : sources false 2 5 atom45100890 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45100890true : BadRow (sources true 2 5 atom45100890) := by
  have h : sources true 2 5 atom45100890 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms52 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,2,0,1,0]) := by
  have h : atoms 2 5 [0,2,0,1,0] = [atom34403130,atom34403034,atom34389306,atom34389210,atom34385754,atom34304826,atom34304730,atom34291002,atom34266426,atom34290906,atom34287450,atom34266330,atom34262874,atom34256730,atom36762426,atom36762330,atom36748602,atom36748506,atom36745050,atom36453594,atom36450138,atom46199610,atom46199514,atom46185786,atom46185690,atom46182234,atom45104346,atom45100890] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34403130false | exact atom34403130true) (.cons (fun lit => by cases lit <;> first | exact atom34403034false | exact atom34403034true) (.cons (fun lit => by cases lit <;> first | exact atom34389306false | exact atom34389306true) (.cons (fun lit => by cases lit <;> first | exact atom34389210false | exact atom34389210true) (.cons (fun lit => by cases lit <;> first | exact atom34385754false | exact atom34385754true) (.cons (fun lit => by cases lit <;> first | exact atom34304826false | exact atom34304826true) (.cons (fun lit => by cases lit <;> first | exact atom34304730false | exact atom34304730true) (.cons (fun lit => by cases lit <;> first | exact atom34291002false | exact atom34291002true) (.cons (fun lit => by cases lit <;> first | exact atom34266426false | exact atom34266426true) (.cons (fun lit => by cases lit <;> first | exact atom34290906false | exact atom34290906true) (.cons (fun lit => by cases lit <;> first | exact atom34287450false | exact atom34287450true) (.cons (fun lit => by cases lit <;> first | exact atom34266330false | exact atom34266330true) (.cons (fun lit => by cases lit <;> first | exact atom34262874false | exact atom34262874true) (.cons (fun lit => by cases lit <;> first | exact atom34256730false | exact atom34256730true) (.cons (fun lit => by cases lit <;> first | exact atom36762426false | exact atom36762426true) (.cons (fun lit => by cases lit <;> first | exact atom36762330false | exact atom36762330true) (.cons (fun lit => by cases lit <;> first | exact atom36748602false | exact atom36748602true) (.cons (fun lit => by cases lit <;> first | exact atom36748506false | exact atom36748506true) (.cons (fun lit => by cases lit <;> first | exact atom36745050false | exact atom36745050true) (.cons (fun lit => by cases lit <;> first | exact atom36453594false | exact atom36453594true) (.cons (fun lit => by cases lit <;> first | exact atom36450138false | exact atom36450138true) (.cons (fun lit => by cases lit <;> first | exact atom46199610false | exact atom46199610true) (.cons (fun lit => by cases lit <;> first | exact atom46199514false | exact atom46199514true) (.cons (fun lit => by cases lit <;> first | exact atom46185786false | exact atom46185786true) (.cons (fun lit => by cases lit <;> first | exact atom46185690false | exact atom46185690true) (.cons (fun lit => by cases lit <;> first | exact atom46182234false | exact atom46182234true) (.cons (fun lit => by cases lit <;> first | exact atom45104346false | exact atom45104346true) (.cons (fun lit => by cases lit <;> first | exact atom45100890false | exact atom45100890true) .nil))))))))))))))))))))))))))))
private def atom34403226 : Term := (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))
theorem atom34403226false : BadRow (sources false 2 5 atom34403226) := by
  have h : sources false 2 5 atom34403226 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34403226true : BadRow (sources true 2 5 atom34403226) := by
  have h : sources true 2 5 atom34403226 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34403050 : Term := (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))
theorem atom34403050false : BadRow (sources false 2 5 atom34403050) := by
  have h : sources false 2 5 atom34403050 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34403050true : BadRow (sources true 2 5 atom34403050) := by
  have h : sources true 2 5 atom34403050 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34389402 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))
theorem atom34389402false : BadRow (sources false 2 5 atom34389402) := by
  have h : sources false 2 5 atom34389402 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34389402true : BadRow (sources true 2 5 atom34389402) := by
  have h : sources true 2 5 atom34389402 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34389226 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))
theorem atom34389226false : BadRow (sources false 2 5 atom34389226) := by
  have h : sources false 2 5 atom34389226 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34389226true : BadRow (sources true 2 5 atom34389226) := by
  have h : sources true 2 5 atom34389226 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34385770 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))
theorem atom34385770false : BadRow (sources false 2 5 atom34385770) := by
  have h : sources false 2 5 atom34385770 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34385770true : BadRow (sources true 2 5 atom34385770) := by
  have h : sources true 2 5 atom34385770 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34304922 : Term := (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.app (.var 0) (.var 0))))))
theorem atom34304922false : BadRow (sources false 2 5 atom34304922) := by
  have h : sources false 2 5 atom34304922 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34304922true : BadRow (sources true 2 5 atom34304922) := by
  have h : sources true 2 5 atom34304922 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34304746 : Term := (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem atom34304746false : BadRow (sources false 2 5 atom34304746) := by
  have h : sources false 2 5 atom34304746 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34304746true : BadRow (sources true 2 5 atom34304746) := by
  have h : sources true 2 5 atom34304746 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34291098 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.app (.var 0) (.var 0)))))
theorem atom34291098false : BadRow (sources false 2 5 atom34291098) := by
  have h : sources false 2 5 atom34291098 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34291098true : BadRow (sources true 2 5 atom34291098) := by
  have h : sources true 2 5 atom34291098 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34266522 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.app (.var 0) (.var 0)))))
theorem atom34266522false : BadRow (sources false 2 5 atom34266522) := by
  have h : sources false 2 5 atom34266522 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34266522true : BadRow (sources true 2 5 atom34266522) := by
  have h : sources true 2 5 atom34266522 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34290922 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))) (.var 0))))
theorem atom34290922false : BadRow (sources false 2 5 atom34290922) := by
  have h : sources false 2 5 atom34290922 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34290922true : BadRow (sources true 2 5 atom34290922) := by
  have h : sources true 2 5 atom34290922 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34287466 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))) (.var 0))))
theorem atom34287466false : BadRow (sources false 2 5 atom34287466) := by
  have h : sources false 2 5 atom34287466 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34287466true : BadRow (sources true 2 5 atom34287466) := by
  have h : sources true 2 5 atom34287466 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34266346 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))) (.var 0))))
theorem atom34266346false : BadRow (sources false 2 5 atom34266346) := by
  have h : sources false 2 5 atom34266346 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34266346true : BadRow (sources true 2 5 atom34266346) := by
  have h : sources true 2 5 atom34266346 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34262890 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)) (.var 0))))
theorem atom34262890false : BadRow (sources false 2 5 atom34262890) := by
  have h : sources false 2 5 atom34262890 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34262890true : BadRow (sources true 2 5 atom34262890) := by
  have h : sources true 2 5 atom34262890 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34256746 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)) (.var 0))))
theorem atom34256746false : BadRow (sources false 2 5 atom34256746) := by
  have h : sources false 2 5 atom34256746 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34256746true : BadRow (sources true 2 5 atom34256746) := by
  have h : sources true 2 5 atom34256746 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36762522 : Term := (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))
theorem atom36762522false : BadRow (sources false 2 5 atom36762522) := by
  have h : sources false 2 5 atom36762522 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36762522true : BadRow (sources true 2 5 atom36762522) := by
  have h : sources true 2 5 atom36762522 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36762346 : Term := (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))
theorem atom36762346false : BadRow (sources false 2 5 atom36762346) := by
  have h : sources false 2 5 atom36762346 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36762346true : BadRow (sources true 2 5 atom36762346) := by
  have h : sources true 2 5 atom36762346 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36748698 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))
theorem atom36748698false : BadRow (sources false 2 5 atom36748698) := by
  have h : sources false 2 5 atom36748698 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36748698true : BadRow (sources true 2 5 atom36748698) := by
  have h : sources true 2 5 atom36748698 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36748522 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))
theorem atom36748522false : BadRow (sources false 2 5 atom36748522) := by
  have h : sources false 2 5 atom36748522 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36748522true : BadRow (sources true 2 5 atom36748522) := by
  have h : sources true 2 5 atom36748522 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36745066 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))
theorem atom36745066false : BadRow (sources false 2 5 atom36745066) := by
  have h : sources false 2 5 atom36745066 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36745066true : BadRow (sources true 2 5 atom36745066) := by
  have h : sources true 2 5 atom36745066 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36453610 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))) (.var 0)))
theorem atom36453610false : BadRow (sources false 2 5 atom36453610) := by
  have h : sources false 2 5 atom36453610 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36453610true : BadRow (sources true 2 5 atom36453610) := by
  have h : sources true 2 5 atom36453610 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36450154 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))) (.var 0)))
theorem atom36450154false : BadRow (sources false 2 5 atom36450154) := by
  have h : sources false 2 5 atom36450154 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36450154true : BadRow (sources true 2 5 atom36450154) := by
  have h : sources true 2 5 atom36450154 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46199706 : Term := (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))))))
theorem atom46199706false : BadRow (sources false 2 5 atom46199706) := by
  have h : sources false 2 5 atom46199706 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46199706true : BadRow (sources true 2 5 atom46199706) := by
  have h : sources true 2 5 atom46199706 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46199530 : Term := (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))))))
theorem atom46199530false : BadRow (sources false 2 5 atom46199530) := by
  have h : sources false 2 5 atom46199530 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46199530true : BadRow (sources true 2 5 atom46199530) := by
  have h : sources true 2 5 atom46199530 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46185882 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))))))
theorem atom46185882false : BadRow (sources false 2 5 atom46185882) := by
  have h : sources false 2 5 atom46185882 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46185882true : BadRow (sources true 2 5 atom46185882) := by
  have h : sources true 2 5 atom46185882 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46185706 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)))))
theorem atom46185706false : BadRow (sources false 2 5 atom46185706) := by
  have h : sources false 2 5 atom46185706 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46185706true : BadRow (sources true 2 5 atom46185706) := by
  have h : sources true 2 5 atom46185706 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46182250 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)))))
theorem atom46182250false : BadRow (sources false 2 5 atom46182250) := by
  have h : sources false 2 5 atom46182250 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46182250true : BadRow (sources true 2 5 atom46182250) := by
  have h : sources true 2 5 atom46182250 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45104362 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))) (.var 0))
theorem atom45104362false : BadRow (sources false 2 5 atom45104362) := by
  have h : sources false 2 5 atom45104362 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45104362true : BadRow (sources true 2 5 atom45104362) := by
  have h : sources true 2 5 atom45104362 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45100906 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))) (.var 0))
theorem atom45100906false : BadRow (sources false 2 5 atom45100906) := by
  have h : sources false 2 5 atom45100906 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45100906true : BadRow (sources true 2 5 atom45100906) := by
  have h : sources true 2 5 atom45100906 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms53 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,2,1,0,0]) := by
  have h : atoms 2 5 [0,2,1,0,0] = [atom34403226,atom34403050,atom34389402,atom34389226,atom34385770,atom34304922,atom34304746,atom34291098,atom34266522,atom34290922,atom34287466,atom34266346,atom34262890,atom34256746,atom36762522,atom36762346,atom36748698,atom36748522,atom36745066,atom36453610,atom36450154,atom46199706,atom46199530,atom46185882,atom46185706,atom46182250,atom45104362,atom45100906] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34403226false | exact atom34403226true) (.cons (fun lit => by cases lit <;> first | exact atom34403050false | exact atom34403050true) (.cons (fun lit => by cases lit <;> first | exact atom34389402false | exact atom34389402true) (.cons (fun lit => by cases lit <;> first | exact atom34389226false | exact atom34389226true) (.cons (fun lit => by cases lit <;> first | exact atom34385770false | exact atom34385770true) (.cons (fun lit => by cases lit <;> first | exact atom34304922false | exact atom34304922true) (.cons (fun lit => by cases lit <;> first | exact atom34304746false | exact atom34304746true) (.cons (fun lit => by cases lit <;> first | exact atom34291098false | exact atom34291098true) (.cons (fun lit => by cases lit <;> first | exact atom34266522false | exact atom34266522true) (.cons (fun lit => by cases lit <;> first | exact atom34290922false | exact atom34290922true) (.cons (fun lit => by cases lit <;> first | exact atom34287466false | exact atom34287466true) (.cons (fun lit => by cases lit <;> first | exact atom34266346false | exact atom34266346true) (.cons (fun lit => by cases lit <;> first | exact atom34262890false | exact atom34262890true) (.cons (fun lit => by cases lit <;> first | exact atom34256746false | exact atom34256746true) (.cons (fun lit => by cases lit <;> first | exact atom36762522false | exact atom36762522true) (.cons (fun lit => by cases lit <;> first | exact atom36762346false | exact atom36762346true) (.cons (fun lit => by cases lit <;> first | exact atom36748698false | exact atom36748698true) (.cons (fun lit => by cases lit <;> first | exact atom36748522false | exact atom36748522true) (.cons (fun lit => by cases lit <;> first | exact atom36745066false | exact atom36745066true) (.cons (fun lit => by cases lit <;> first | exact atom36453610false | exact atom36453610true) (.cons (fun lit => by cases lit <;> first | exact atom36450154false | exact atom36450154true) (.cons (fun lit => by cases lit <;> first | exact atom46199706false | exact atom46199706true) (.cons (fun lit => by cases lit <;> first | exact atom46199530false | exact atom46199530true) (.cons (fun lit => by cases lit <;> first | exact atom46185882false | exact atom46185882true) (.cons (fun lit => by cases lit <;> first | exact atom46185706false | exact atom46185706true) (.cons (fun lit => by cases lit <;> first | exact atom46182250false | exact atom46182250true) (.cons (fun lit => by cases lit <;> first | exact atom45104362false | exact atom45104362true) (.cons (fun lit => by cases lit <;> first | exact atom45100906false | exact atom45100906true) .nil))))))))))))))))))))))))))))
end Blc.SelfintSingleObject.Sat39
