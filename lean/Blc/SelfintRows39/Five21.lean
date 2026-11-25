import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

theorem atoms63 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [1,1,1,0,0]) := by
  have h : atoms 2 5 [1,1,1,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom34503066 : Term := (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))))))
theorem atom34503066false : BadRow (sources false 2 5 atom34503066) := by
  have h : sources false 2 5 atom34503066 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34503066true : BadRow (sources true 2 5 atom34503066) := by
  have h : sources true 2 5 atom34503066 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34503018 : Term := (.lam (.lam (.app (.var 1) (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))))))
theorem atom34503018false : BadRow (sources false 2 5 atom34503018) := by
  have h : sources false 2 5 atom34503018 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34503018true : BadRow (sources true 2 5 atom34503018) := by
  have h : sources true 2 5 atom34503018 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34496154 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))))))
theorem atom34496154false : BadRow (sources false 2 5 atom34496154) := by
  have h : sources false 2 5 atom34496154 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34496154true : BadRow (sources true 2 5 atom34496154) := by
  have h : sources true 2 5 atom34496154 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34496106 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)))))
theorem atom34496106false : BadRow (sources false 2 5 atom34496106) := by
  have h : sources false 2 5 atom34496106 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34496106true : BadRow (sources true 2 5 atom34496106) := by
  have h : sources true 2 5 atom34496106 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34494378 : Term := (.lam (.lam (.app (.var 1) (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 0)))))
theorem atom34494378false : BadRow (sources false 2 5 atom34494378) := by
  have h : sources false 2 5 atom34494378 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34494378true : BadRow (sources true 2 5 atom34494378) := by
  have h : sources true 2 5 atom34494378 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34322842 : Term := (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.app (.var 0) (.var 0))))))
theorem atom34322842false : BadRow (sources false 2 5 atom34322842) := by
  have h : sources false 2 5 atom34322842 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34322842true : BadRow (sources true 2 5 atom34322842) := by
  have h : sources true 2 5 atom34322842 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34322794 : Term := (.lam (.lam (.app (.app (.var 1) (.var 2)) (.app (.app (.var 0) (.var 0)) (.var 0)))))
theorem atom34322794false : BadRow (sources false 2 5 atom34322794) := by
  have h : sources false 2 5 atom34322794 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34322794true : BadRow (sources true 2 5 atom34322794) := by
  have h : sources true 2 5 atom34322794 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34315930 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.app (.var 0) (.var 0)))))
theorem atom34315930false : BadRow (sources false 2 5 atom34315930) := by
  have h : sources false 2 5 atom34315930 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34315930true : BadRow (sources true 2 5 atom34315930) := by
  have h : sources true 2 5 atom34315930 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34270874 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.app (.var 0) (.var 0)))))
theorem atom34270874false : BadRow (sources false 2 5 atom34270874) := by
  have h : sources false 2 5 atom34270874 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34270874true : BadRow (sources true 2 5 atom34270874) := by
  have h : sources true 2 5 atom34270874 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34315882 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.app (.var 0) (.var 0)))) (.var 0))))
theorem atom34315882false : BadRow (sources false 2 5 atom34315882) := by
  have h : sources false 2 5 atom34315882 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34315882true : BadRow (sources true 2 5 atom34315882) := by
  have h : sources true 2 5 atom34315882 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34314154 : Term := (.lam (.lam (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 0))) (.var 0))))
theorem atom34314154false : BadRow (sources false 2 5 atom34314154) := by
  have h : sources false 2 5 atom34314154 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34314154true : BadRow (sources true 2 5 atom34314154) := by
  have h : sources true 2 5 atom34314154 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34270826 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) (.var 0))))
theorem atom34270826false : BadRow (sources false 2 5 atom34270826) := by
  have h : sources false 2 5 atom34270826 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34270826true : BadRow (sources true 2 5 atom34270826) := by
  have h : sources true 2 5 atom34270826 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34269098 : Term := (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 0)) (.var 0))))
theorem atom34269098false : BadRow (sources false 2 5 atom34269098) := by
  have h : sources false 2 5 atom34269098 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34269098true : BadRow (sources true 2 5 atom34269098) := by
  have h : sources true 2 5 atom34269098 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34257834 : Term := (.lam (.lam (.app (.app (.app (.app (.var 1) (.var 2)) (.var 0)) (.var 0)) (.var 0))))
theorem atom34257834false : BadRow (sources false 2 5 atom34257834) := by
  have h : sources false 2 5 atom34257834 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34257834true : BadRow (sources true 2 5 atom34257834) := by
  have h : sources true 2 5 atom34257834 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms64 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [1,2,0,0,0]) := by
  have h : atoms 2 5 [1,2,0,0,0] = [atom34503066,atom34503018,atom34496154,atom34496106,atom34494378,atom34322842,atom34322794,atom34315930,atom34270874,atom34315882,atom34314154,atom34270826,atom34269098,atom34257834] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34503066false | exact atom34503066true) (.cons (fun lit => by cases lit <;> first | exact atom34503018false | exact atom34503018true) (.cons (fun lit => by cases lit <;> first | exact atom34496154false | exact atom34496154true) (.cons (fun lit => by cases lit <;> first | exact atom34496106false | exact atom34496106true) (.cons (fun lit => by cases lit <;> first | exact atom34494378false | exact atom34494378true) (.cons (fun lit => by cases lit <;> first | exact atom34322842false | exact atom34322842true) (.cons (fun lit => by cases lit <;> first | exact atom34322794false | exact atom34322794true) (.cons (fun lit => by cases lit <;> first | exact atom34315930false | exact atom34315930true) (.cons (fun lit => by cases lit <;> first | exact atom34270874false | exact atom34270874true) (.cons (fun lit => by cases lit <;> first | exact atom34315882false | exact atom34315882true) (.cons (fun lit => by cases lit <;> first | exact atom34314154false | exact atom34314154true) (.cons (fun lit => by cases lit <;> first | exact atom34270826false | exact atom34270826true) (.cons (fun lit => by cases lit <;> first | exact atom34269098false | exact atom34269098true) (.cons (fun lit => by cases lit <;> first | exact atom34257834false | exact atom34257834true) .nil))))))))))))))
private def atom34550582 : Term := (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))))))
theorem atom34550582false : BadRow (sources false 2 5 atom34550582) := by
  have h : sources false 2 5 atom34550582 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34550582true : BadRow (sources true 2 5 atom34550582) := by
  have h : sources true 2 5 atom34550582 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34550486 : Term := (.lam (.lam (.app (.var 2) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))))
theorem atom34550486false : BadRow (sources false 2 5 atom34550486) := by
  have h : sources false 2 5 atom34550486 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34550486true : BadRow (sources true 2 5 atom34550486) := by
  have h : sources true 2 5 atom34550486 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34549046 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))))
theorem atom34549046false : BadRow (sources false 2 5 atom34549046) := by
  have h : sources false 2 5 atom34549046 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34549046true : BadRow (sources true 2 5 atom34549046) := by
  have h : sources true 2 5 atom34549046 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34548950 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))))
theorem atom34548950false : BadRow (sources false 2 5 atom34548950) := by
  have h : sources false 2 5 atom34548950 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34548950true : BadRow (sources true 2 5 atom34548950) := by
  have h : sources true 2 5 atom34548950 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34548566 : Term := (.lam (.lam (.app (.var 2) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))))
theorem atom34548566false : BadRow (sources false 2 5 atom34548566) := by
  have h : sources false 2 5 atom34548566 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34548566true : BadRow (sources true 2 5 atom34548566) := by
  have h : sources true 2 5 atom34548566 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34329398 : Term := (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))))
theorem atom34329398false : BadRow (sources false 2 5 atom34329398) := by
  have h : sources false 2 5 atom34329398 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34329398true : BadRow (sources true 2 5 atom34329398) := by
  have h : sources true 2 5 atom34329398 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34329302 : Term := (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))))
theorem atom34329302false : BadRow (sources false 2 5 atom34329302) := by
  have h : sources false 2 5 atom34329302 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34329302true : BadRow (sources true 2 5 atom34329302) := by
  have h : sources true 2 5 atom34329302 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34327862 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))))
theorem atom34327862false : BadRow (sources false 2 5 atom34327862) := by
  have h : sources false 2 5 atom34327862 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34327862true : BadRow (sources true 2 5 atom34327862) := by
  have h : sources true 2 5 atom34327862 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34272566 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))))
theorem atom34272566false : BadRow (sources false 2 5 atom34272566) := by
  have h : sources false 2 5 atom34272566 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34272566true : BadRow (sources true 2 5 atom34272566) := by
  have h : sources true 2 5 atom34272566 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34327766 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))))
theorem atom34327766false : BadRow (sources false 2 5 atom34327766) := by
  have h : sources false 2 5 atom34327766 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34327766true : BadRow (sources true 2 5 atom34327766) := by
  have h : sources true 2 5 atom34327766 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34327382 : Term := (.lam (.lam (.app (.app (.var 2) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))))
theorem atom34327382false : BadRow (sources false 2 5 atom34327382) := by
  have h : sources false 2 5 atom34327382 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34327382true : BadRow (sources true 2 5 atom34327382) := by
  have h : sources true 2 5 atom34327382 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34272470 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))))
theorem atom34272470false : BadRow (sources false 2 5 atom34272470) := by
  have h : sources false 2 5 atom34272470 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34272470true : BadRow (sources true 2 5 atom34272470) := by
  have h : sources true 2 5 atom34272470 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34272086 : Term := (.lam (.lam (.app (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))))
theorem atom34272086false : BadRow (sources false 2 5 atom34272086) := by
  have h : sources false 2 5 atom34272086 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34272086true : BadRow (sources true 2 5 atom34272086) := by
  have h : sources true 2 5 atom34272086 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34258262 : Term := (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 0)) (.var 0)) (.var 1))))
theorem atom34258262false : BadRow (sources false 2 5 atom34258262) := by
  have h : sources false 2 5 atom34258262 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34258262true : BadRow (sources true 2 5 atom34258262) := by
  have h : sources true 2 5 atom34258262 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms65 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [2,0,0,0,1]) := by
  have h : atoms 2 5 [2,0,0,0,1] = [atom34550582,atom34550486,atom34549046,atom34548950,atom34548566,atom34329398,atom34329302,atom34327862,atom34272566,atom34327766,atom34327382,atom34272470,atom34272086,atom34258262] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34550582false | exact atom34550582true) (.cons (fun lit => by cases lit <;> first | exact atom34550486false | exact atom34550486true) (.cons (fun lit => by cases lit <;> first | exact atom34549046false | exact atom34549046true) (.cons (fun lit => by cases lit <;> first | exact atom34548950false | exact atom34548950true) (.cons (fun lit => by cases lit <;> first | exact atom34548566false | exact atom34548566true) (.cons (fun lit => by cases lit <;> first | exact atom34329398false | exact atom34329398true) (.cons (fun lit => by cases lit <;> first | exact atom34329302false | exact atom34329302true) (.cons (fun lit => by cases lit <;> first | exact atom34327862false | exact atom34327862true) (.cons (fun lit => by cases lit <;> first | exact atom34272566false | exact atom34272566true) (.cons (fun lit => by cases lit <;> first | exact atom34327766false | exact atom34327766true) (.cons (fun lit => by cases lit <;> first | exact atom34327382false | exact atom34327382true) (.cons (fun lit => by cases lit <;> first | exact atom34272470false | exact atom34272470true) (.cons (fun lit => by cases lit <;> first | exact atom34272086false | exact atom34272086true) (.cons (fun lit => by cases lit <;> first | exact atom34258262false | exact atom34258262true) .nil))))))))))))))
end Blc.SelfintSingleObject.Sat39
