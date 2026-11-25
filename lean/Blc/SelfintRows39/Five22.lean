import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom34550586 : Term := (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))))))
theorem atom34550586false : BadRow (sources false 2 5 atom34550586) := by
  have h : sources false 2 5 atom34550586 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34550586true : BadRow (sources true 2 5 atom34550586) := by
  have h : sources true 2 5 atom34550586 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34550490 : Term := (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))))))
theorem atom34550490false : BadRow (sources false 2 5 atom34550490) := by
  have h : sources false 2 5 atom34550490 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34550490true : BadRow (sources true 2 5 atom34550490) := by
  have h : sources true 2 5 atom34550490 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34549050 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))))
theorem atom34549050false : BadRow (sources false 2 5 atom34549050) := by
  have h : sources false 2 5 atom34549050 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34549050true : BadRow (sources true 2 5 atom34549050) := by
  have h : sources true 2 5 atom34549050 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34548954 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)))))
theorem atom34548954false : BadRow (sources false 2 5 atom34548954) := by
  have h : sources false 2 5 atom34548954 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34548954true : BadRow (sources true 2 5 atom34548954) := by
  have h : sources true 2 5 atom34548954 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34548570 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))))
theorem atom34548570false : BadRow (sources false 2 5 atom34548570) := by
  have h : sources false 2 5 atom34548570 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34548570true : BadRow (sources true 2 5 atom34548570) := by
  have h : sources true 2 5 atom34548570 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34329402 : Term := (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))))
theorem atom34329402false : BadRow (sources false 2 5 atom34329402) := by
  have h : sources false 2 5 atom34329402 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34329402true : BadRow (sources true 2 5 atom34329402) := by
  have h : sources true 2 5 atom34329402 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34329306 : Term := (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem atom34329306false : BadRow (sources false 2 5 atom34329306) := by
  have h : sources false 2 5 atom34329306 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34329306true : BadRow (sources true 2 5 atom34329306) := by
  have h : sources true 2 5 atom34329306 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34327866 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))))
theorem atom34327866false : BadRow (sources false 2 5 atom34327866) := by
  have h : sources false 2 5 atom34327866 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34327866true : BadRow (sources true 2 5 atom34327866) := by
  have h : sources true 2 5 atom34327866 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34272570 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))))
theorem atom34272570false : BadRow (sources false 2 5 atom34272570) := by
  have h : sources false 2 5 atom34272570 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34272570true : BadRow (sources true 2 5 atom34272570) := by
  have h : sources true 2 5 atom34272570 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34327770 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))))
theorem atom34327770false : BadRow (sources false 2 5 atom34327770) := by
  have h : sources false 2 5 atom34327770 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34327770true : BadRow (sources true 2 5 atom34327770) := by
  have h : sources true 2 5 atom34327770 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34327386 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))))
theorem atom34327386false : BadRow (sources false 2 5 atom34327386) := by
  have h : sources false 2 5 atom34327386 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34327386true : BadRow (sources true 2 5 atom34327386) := by
  have h : sources true 2 5 atom34327386 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34272474 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))))
theorem atom34272474false : BadRow (sources false 2 5 atom34272474) := by
  have h : sources false 2 5 atom34272474 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34272474true : BadRow (sources true 2 5 atom34272474) := by
  have h : sources true 2 5 atom34272474 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34272090 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))))
theorem atom34272090false : BadRow (sources false 2 5 atom34272090) := by
  have h : sources false 2 5 atom34272090 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34272090true : BadRow (sources true 2 5 atom34272090) := by
  have h : sources true 2 5 atom34272090 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34258266 : Term := (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 1)) (.var 0))))
theorem atom34258266false : BadRow (sources false 2 5 atom34258266) := by
  have h : sources false 2 5 atom34258266 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34258266true : BadRow (sources true 2 5 atom34258266) := by
  have h : sources true 2 5 atom34258266 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms66 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [2,0,0,1,0]) := by
  have h : atoms 2 5 [2,0,0,1,0] = [atom34550586,atom34550490,atom34549050,atom34548954,atom34548570,atom34329402,atom34329306,atom34327866,atom34272570,atom34327770,atom34327386,atom34272474,atom34272090,atom34258266] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34550586false | exact atom34550586true) (.cons (fun lit => by cases lit <;> first | exact atom34550490false | exact atom34550490true) (.cons (fun lit => by cases lit <;> first | exact atom34549050false | exact atom34549050true) (.cons (fun lit => by cases lit <;> first | exact atom34548954false | exact atom34548954true) (.cons (fun lit => by cases lit <;> first | exact atom34548570false | exact atom34548570true) (.cons (fun lit => by cases lit <;> first | exact atom34329402false | exact atom34329402true) (.cons (fun lit => by cases lit <;> first | exact atom34329306false | exact atom34329306true) (.cons (fun lit => by cases lit <;> first | exact atom34327866false | exact atom34327866true) (.cons (fun lit => by cases lit <;> first | exact atom34272570false | exact atom34272570true) (.cons (fun lit => by cases lit <;> first | exact atom34327770false | exact atom34327770true) (.cons (fun lit => by cases lit <;> first | exact atom34327386false | exact atom34327386true) (.cons (fun lit => by cases lit <;> first | exact atom34272474false | exact atom34272474true) (.cons (fun lit => by cases lit <;> first | exact atom34272090false | exact atom34272090true) (.cons (fun lit => by cases lit <;> first | exact atom34258266false | exact atom34258266true) .nil))))))))))))))
private def atom34550682 : Term := (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))))))
theorem atom34550682false : BadRow (sources false 2 5 atom34550682) := by
  have h : sources false 2 5 atom34550682 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34550682true : BadRow (sources true 2 5 atom34550682) := by
  have h : sources true 2 5 atom34550682 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34550506 : Term := (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))))))
theorem atom34550506false : BadRow (sources false 2 5 atom34550506) := by
  have h : sources false 2 5 atom34550506 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34550506true : BadRow (sources true 2 5 atom34550506) := by
  have h : sources true 2 5 atom34550506 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34549146 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 0))))))
theorem atom34549146false : BadRow (sources false 2 5 atom34549146) := by
  have h : sources false 2 5 atom34549146 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34549146true : BadRow (sources true 2 5 atom34549146) := by
  have h : sources true 2 5 atom34549146 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34548970 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)))))
theorem atom34548970false : BadRow (sources false 2 5 atom34548970) := by
  have h : sources false 2 5 atom34548970 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34548970true : BadRow (sources true 2 5 atom34548970) := by
  have h : sources true 2 5 atom34548970 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34548586 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)))))
theorem atom34548586false : BadRow (sources false 2 5 atom34548586) := by
  have h : sources false 2 5 atom34548586 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34548586true : BadRow (sources true 2 5 atom34548586) := by
  have h : sources true 2 5 atom34548586 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34329498 : Term := (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))))
theorem atom34329498false : BadRow (sources false 2 5 atom34329498) := by
  have h : sources false 2 5 atom34329498 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34329498true : BadRow (sources true 2 5 atom34329498) := by
  have h : sources true 2 5 atom34329498 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34329322 : Term := (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))))
theorem atom34329322false : BadRow (sources false 2 5 atom34329322) := by
  have h : sources false 2 5 atom34329322 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34329322true : BadRow (sources true 2 5 atom34329322) := by
  have h : sources true 2 5 atom34329322 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34327962 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))))
theorem atom34327962false : BadRow (sources false 2 5 atom34327962) := by
  have h : sources false 2 5 atom34327962 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34327962true : BadRow (sources true 2 5 atom34327962) := by
  have h : sources true 2 5 atom34327962 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34272666 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))))
theorem atom34272666false : BadRow (sources false 2 5 atom34272666) := by
  have h : sources false 2 5 atom34272666 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34272666true : BadRow (sources true 2 5 atom34272666) := by
  have h : sources true 2 5 atom34272666 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34327786 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))))
theorem atom34327786false : BadRow (sources false 2 5 atom34327786) := by
  have h : sources false 2 5 atom34327786 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34327786true : BadRow (sources true 2 5 atom34327786) := by
  have h : sources true 2 5 atom34327786 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34327402 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0))))
theorem atom34327402false : BadRow (sources false 2 5 atom34327402) := by
  have h : sources false 2 5 atom34327402 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34327402true : BadRow (sources true 2 5 atom34327402) := by
  have h : sources true 2 5 atom34327402 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34272490 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))))
theorem atom34272490false : BadRow (sources false 2 5 atom34272490) := by
  have h : sources false 2 5 atom34272490 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34272490true : BadRow (sources true 2 5 atom34272490) := by
  have h : sources true 2 5 atom34272490 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34272106 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.var 0)) (.var 0))))
theorem atom34272106false : BadRow (sources false 2 5 atom34272106) := by
  have h : sources false 2 5 atom34272106 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34272106true : BadRow (sources true 2 5 atom34272106) := by
  have h : sources true 2 5 atom34272106 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34258282 : Term := (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 1)) (.var 0)) (.var 0))))
theorem atom34258282false : BadRow (sources false 2 5 atom34258282) := by
  have h : sources false 2 5 atom34258282 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34258282true : BadRow (sources true 2 5 atom34258282) := by
  have h : sources true 2 5 atom34258282 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms67 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [2,0,1,0,0]) := by
  have h : atoms 2 5 [2,0,1,0,0] = [atom34550682,atom34550506,atom34549146,atom34548970,atom34548586,atom34329498,atom34329322,atom34327962,atom34272666,atom34327786,atom34327402,atom34272490,atom34272106,atom34258282] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34550682false | exact atom34550682true) (.cons (fun lit => by cases lit <;> first | exact atom34550506false | exact atom34550506true) (.cons (fun lit => by cases lit <;> first | exact atom34549146false | exact atom34549146true) (.cons (fun lit => by cases lit <;> first | exact atom34548970false | exact atom34548970true) (.cons (fun lit => by cases lit <;> first | exact atom34548586false | exact atom34548586true) (.cons (fun lit => by cases lit <;> first | exact atom34329498false | exact atom34329498true) (.cons (fun lit => by cases lit <;> first | exact atom34329322false | exact atom34329322true) (.cons (fun lit => by cases lit <;> first | exact atom34327962false | exact atom34327962true) (.cons (fun lit => by cases lit <;> first | exact atom34272666false | exact atom34272666true) (.cons (fun lit => by cases lit <;> first | exact atom34327786false | exact atom34327786true) (.cons (fun lit => by cases lit <;> first | exact atom34327402false | exact atom34327402true) (.cons (fun lit => by cases lit <;> first | exact atom34272490false | exact atom34272490true) (.cons (fun lit => by cases lit <;> first | exact atom34272106false | exact atom34272106true) (.cons (fun lit => by cases lit <;> first | exact atom34258282false | exact atom34258282true) .nil))))))))))))))
private def atom34552218 : Term := (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 0) (.app (.var 0) (.var 0)))))))
theorem atom34552218false : BadRow (sources false 2 5 atom34552218) := by
  have h : sources false 2 5 atom34552218 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34552218true : BadRow (sources true 2 5 atom34552218) := by
  have h : sources true 2 5 atom34552218 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34552170 : Term := (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 0))))))
theorem atom34552170false : BadRow (sources false 2 5 atom34552170) := by
  have h : sources false 2 5 atom34552170 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34552170true : BadRow (sources true 2 5 atom34552170) := by
  have h : sources true 2 5 atom34552170 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34549402 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.app (.var 0) (.var 0))))))
theorem atom34549402false : BadRow (sources false 2 5 atom34549402) := by
  have h : sources false 2 5 atom34549402 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34549402true : BadRow (sources true 2 5 atom34549402) := by
  have h : sources true 2 5 atom34549402 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34549354 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.app (.var 0) (.var 0))) (.var 0)))))
theorem atom34549354false : BadRow (sources false 2 5 atom34549354) := by
  have h : sources false 2 5 atom34549354 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34549354true : BadRow (sources true 2 5 atom34549354) := by
  have h : sources true 2 5 atom34549354 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34548650 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 1) (.var 0)) (.var 0)) (.var 0)))))
theorem atom34548650false : BadRow (sources false 2 5 atom34548650) := by
  have h : sources false 2 5 atom34548650 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34548650true : BadRow (sources true 2 5 atom34548650) := by
  have h : sources true 2 5 atom34548650 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34331034 : Term := (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.app (.var 0) (.var 0))))))
theorem atom34331034false : BadRow (sources false 2 5 atom34331034) := by
  have h : sources false 2 5 atom34331034 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34331034true : BadRow (sources true 2 5 atom34331034) := by
  have h : sources true 2 5 atom34331034 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34330986 : Term := (.lam (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))))
theorem atom34330986false : BadRow (sources false 2 5 atom34330986) := by
  have h : sources false 2 5 atom34330986 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34330986true : BadRow (sources true 2 5 atom34330986) := by
  have h : sources true 2 5 atom34330986 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34328218 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.app (.var 0) (.var 0)))))
theorem atom34328218false : BadRow (sources false 2 5 atom34328218) := by
  have h : sources false 2 5 atom34328218 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34328218true : BadRow (sources true 2 5 atom34328218) := by
  have h : sources true 2 5 atom34328218 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34272922 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))))
theorem atom34272922false : BadRow (sources false 2 5 atom34272922) := by
  have h : sources false 2 5 atom34272922 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34272922true : BadRow (sources true 2 5 atom34272922) := by
  have h : sources true 2 5 atom34272922 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34328170 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0))))
theorem atom34328170false : BadRow (sources false 2 5 atom34328170) := by
  have h : sources false 2 5 atom34328170 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34328170true : BadRow (sources true 2 5 atom34328170) := by
  have h : sources true 2 5 atom34328170 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34327466 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 0))))
theorem atom34327466false : BadRow (sources false 2 5 atom34327466) := by
  have h : sources false 2 5 atom34327466 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34327466true : BadRow (sources true 2 5 atom34327466) := by
  have h : sources true 2 5 atom34327466 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34272874 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 1)) (.app (.var 0) (.var 0))) (.var 0))))
theorem atom34272874false : BadRow (sources false 2 5 atom34272874) := by
  have h : sources false 2 5 atom34272874 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34272874true : BadRow (sources true 2 5 atom34272874) := by
  have h : sources true 2 5 atom34272874 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34272170 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.var 0)) (.var 0))))
theorem atom34272170false : BadRow (sources false 2 5 atom34272170) := by
  have h : sources false 2 5 atom34272170 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34272170true : BadRow (sources true 2 5 atom34272170) := by
  have h : sources true 2 5 atom34272170 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34258346 : Term := (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) (.var 0)) (.var 0))))
theorem atom34258346false : BadRow (sources false 2 5 atom34258346) := by
  have h : sources false 2 5 atom34258346 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34258346true : BadRow (sources true 2 5 atom34258346) := by
  have h : sources true 2 5 atom34258346 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms68 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [2,1,0,0,0]) := by
  have h : atoms 2 5 [2,1,0,0,0] = [atom34552218,atom34552170,atom34549402,atom34549354,atom34548650,atom34331034,atom34330986,atom34328218,atom34272922,atom34328170,atom34327466,atom34272874,atom34272170,atom34258346] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34552218false | exact atom34552218true) (.cons (fun lit => by cases lit <;> first | exact atom34552170false | exact atom34552170true) (.cons (fun lit => by cases lit <;> first | exact atom34549402false | exact atom34549402true) (.cons (fun lit => by cases lit <;> first | exact atom34549354false | exact atom34549354true) (.cons (fun lit => by cases lit <;> first | exact atom34548650false | exact atom34548650true) (.cons (fun lit => by cases lit <;> first | exact atom34331034false | exact atom34331034true) (.cons (fun lit => by cases lit <;> first | exact atom34330986false | exact atom34330986true) (.cons (fun lit => by cases lit <;> first | exact atom34328218false | exact atom34328218true) (.cons (fun lit => by cases lit <;> first | exact atom34272922false | exact atom34272922true) (.cons (fun lit => by cases lit <;> first | exact atom34328170false | exact atom34328170true) (.cons (fun lit => by cases lit <;> first | exact atom34327466false | exact atom34327466true) (.cons (fun lit => by cases lit <;> first | exact atom34272874false | exact atom34272874true) (.cons (fun lit => by cases lit <;> first | exact atom34272170false | exact atom34272170true) (.cons (fun lit => by cases lit <;> first | exact atom34258346false | exact atom34258346true) .nil))))))))))))))
end Blc.SelfintSingleObject.Sat39
