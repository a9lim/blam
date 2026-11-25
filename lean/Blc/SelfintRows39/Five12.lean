import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom34393326 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))
theorem atom34393326false : BadRow (sources false 2 5 atom34393326) := by
  have h : sources false 2 5 atom34393326 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34393326true : BadRow (sources true 2 5 atom34393326) := by
  have h : sources true 2 5 atom34393326 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34392942 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))
theorem atom34392942false : BadRow (sources false 2 5 atom34392942) := by
  have h : sources false 2 5 atom34392942 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34392942true : BadRow (sources true 2 5 atom34392942) := by
  have h : sources true 2 5 atom34392942 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34387182 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))
theorem atom34387182false : BadRow (sources false 2 5 atom34387182) := by
  have h : sources false 2 5 atom34387182 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34387182true : BadRow (sources true 2 5 atom34387182) := by
  have h : sources true 2 5 atom34387182 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34386798 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))
theorem atom34386798false : BadRow (sources false 2 5 atom34386798) := by
  have h : sources false 2 5 atom34386798 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34386798true : BadRow (sources true 2 5 atom34386798) := by
  have h : sources true 2 5 atom34386798 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34385262 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))
theorem atom34385262false : BadRow (sources false 2 5 atom34385262) := by
  have h : sources false 2 5 atom34385262 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34385262true : BadRow (sources true 2 5 atom34385262) := by
  have h : sources true 2 5 atom34385262 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34295022 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2))))))
theorem atom34295022false : BadRow (sources false 2 5 atom34295022) := by
  have h : sources false 2 5 atom34295022 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34295022true : BadRow (sources true 2 5 atom34295022) := by
  have h : sources true 2 5 atom34295022 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34294638 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2)))))
theorem atom34294638false : BadRow (sources false 2 5 atom34294638) := by
  have h : sources false 2 5 atom34294638 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34294638true : BadRow (sources true 2 5 atom34294638) := by
  have h : sources true 2 5 atom34294638 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34288878 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 2)))))
theorem atom34288878false : BadRow (sources false 2 5 atom34288878) := by
  have h : sources false 2 5 atom34288878 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34288878true : BadRow (sources true 2 5 atom34288878) := by
  have h : sources true 2 5 atom34288878 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34264302 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 2)))))
theorem atom34264302false : BadRow (sources false 2 5 atom34264302) := by
  have h : sources false 2 5 atom34264302 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34264302true : BadRow (sources true 2 5 atom34264302) := by
  have h : sources true 2 5 atom34264302 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34288494 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 2))))
theorem atom34288494false : BadRow (sources false 2 5 atom34288494) := by
  have h : sources false 2 5 atom34288494 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34288494true : BadRow (sources true 2 5 atom34288494) := by
  have h : sources true 2 5 atom34288494 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34286958 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 2))))
theorem atom34286958false : BadRow (sources false 2 5 atom34286958) := by
  have h : sources false 2 5 atom34286958 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34286958true : BadRow (sources true 2 5 atom34286958) := by
  have h : sources true 2 5 atom34286958 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34263918 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 2))))
theorem atom34263918false : BadRow (sources false 2 5 atom34263918) := by
  have h : sources false 2 5 atom34263918 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34263918true : BadRow (sources true 2 5 atom34263918) := by
  have h : sources true 2 5 atom34263918 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34262382 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 2))))
theorem atom34262382false : BadRow (sources false 2 5 atom34262382) := by
  have h : sources false 2 5 atom34262382 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34262382true : BadRow (sources true 2 5 atom34262382) := by
  have h : sources true 2 5 atom34262382 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34256238 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 2))))
theorem atom34256238false : BadRow (sources false 2 5 atom34256238) := by
  have h : sources false 2 5 atom34256238 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34256238true : BadRow (sources true 2 5 atom34256238) := by
  have h : sources true 2 5 atom34256238 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36752622 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))
theorem atom36752622false : BadRow (sources false 2 5 atom36752622) := by
  have h : sources false 2 5 atom36752622 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36752622true : BadRow (sources true 2 5 atom36752622) := by
  have h : sources true 2 5 atom36752622 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36752238 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))
theorem atom36752238false : BadRow (sources false 2 5 atom36752238) := by
  have h : sources false 2 5 atom36752238 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36752238true : BadRow (sources true 2 5 atom36752238) := by
  have h : sources true 2 5 atom36752238 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36746478 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))
theorem atom36746478false : BadRow (sources false 2 5 atom36746478) := by
  have h : sources false 2 5 atom36746478 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36746478true : BadRow (sources true 2 5 atom36746478) := by
  have h : sources true 2 5 atom36746478 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36746094 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))
theorem atom36746094false : BadRow (sources false 2 5 atom36746094) := by
  have h : sources false 2 5 atom36746094 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36746094true : BadRow (sources true 2 5 atom36746094) := by
  have h : sources true 2 5 atom36746094 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36744558 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))
theorem atom36744558false : BadRow (sources false 2 5 atom36744558) := by
  have h : sources false 2 5 atom36744558 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36744558true : BadRow (sources true 2 5 atom36744558) := by
  have h : sources true 2 5 atom36744558 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36900078 : Term := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))
theorem atom36900078false : BadRow (sources false 2 5 atom36900078) := by
  have h : sources false 2 5 atom36900078 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36900078true : BadRow (sources true 2 5 atom36900078) := by
  have h : sources true 2 5 atom36900078 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36899694 : Term := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))
theorem atom36899694false : BadRow (sources false 2 5 atom36899694) := by
  have h : sources false 2 5 atom36899694 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36899694true : BadRow (sources true 2 5 atom36899694) := by
  have h : sources true 2 5 atom36899694 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36506862 : Term := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))
theorem atom36506862false : BadRow (sources false 2 5 atom36506862) := by
  have h : sources false 2 5 atom36506862 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36506862true : BadRow (sources true 2 5 atom36506862) := by
  have h : sources true 2 5 atom36506862 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36506478 : Term := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))
theorem atom36506478false : BadRow (sources false 2 5 atom36506478) := by
  have h : sources false 2 5 atom36506478 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36506478true : BadRow (sources true 2 5 atom36506478) := by
  have h : sources true 2 5 atom36506478 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46189806 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))))))
theorem atom46189806false : BadRow (sources false 2 5 atom46189806) := by
  have h : sources false 2 5 atom46189806 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46189806true : BadRow (sources true 2 5 atom46189806) := by
  have h : sources true 2 5 atom46189806 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46189422 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))))))
theorem atom46189422false : BadRow (sources false 2 5 atom46189422) := by
  have h : sources false 2 5 atom46189422 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46189422true : BadRow (sources true 2 5 atom46189422) := by
  have h : sources true 2 5 atom46189422 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46183662 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))))))
theorem atom46183662false : BadRow (sources false 2 5 atom46183662) := by
  have h : sources false 2 5 atom46183662 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46183662true : BadRow (sources true 2 5 atom46183662) := by
  have h : sources true 2 5 atom46183662 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46183278 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)))))
theorem atom46183278false : BadRow (sources false 2 5 atom46183278) := by
  have h : sources false 2 5 atom46183278 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46183278true : BadRow (sources true 2 5 atom46183278) := by
  have h : sources true 2 5 atom46183278 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46181742 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)))))
theorem atom46181742false : BadRow (sources false 2 5 atom46181742) := by
  have h : sources false 2 5 atom46181742 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46181742true : BadRow (sources true 2 5 atom46181742) := by
  have h : sources true 2 5 atom46181742 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46337262 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))
theorem atom46337262false : BadRow (sources false 2 5 atom46337262) := by
  have h : sources false 2 5 atom46337262 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46337262true : BadRow (sources true 2 5 atom46337262) := by
  have h : sources true 2 5 atom46337262 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46336878 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))
theorem atom46336878false : BadRow (sources false 2 5 atom46336878) := by
  have h : sources false 2 5 atom46336878 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46336878true : BadRow (sources true 2 5 atom46336878) := by
  have h : sources true 2 5 atom46336878 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46927086 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))))
theorem atom46927086false : BadRow (sources false 2 5 atom46927086) := by
  have h : sources false 2 5 atom46927086 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46927086true : BadRow (sources true 2 5 atom46927086) := by
  have h : sources true 2 5 atom46927086 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46926702 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))))
theorem atom46926702false : BadRow (sources false 2 5 atom46926702) := by
  have h : sources false 2 5 atom46926702 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46926702true : BadRow (sources true 2 5 atom46926702) := by
  have h : sources true 2 5 atom46926702 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45354222 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2))))))
theorem atom45354222false : BadRow (sources false 2 5 atom45354222) := by
  have h : sources false 2 5 atom45354222 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45354222true : BadRow (sources true 2 5 atom45354222) := by
  have h : sources true 2 5 atom45354222 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45353838 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))))
theorem atom45353838false : BadRow (sources false 2 5 atom45353838) := by
  have h : sources false 2 5 atom45353838 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45353838true : BadRow (sources true 2 5 atom45353838) := by
  have h : sources true 2 5 atom45353838 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms36 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,0,0,1,2]) := by
  have h : atoms 2 5 [0,0,0,1,2] = [atom34393326,atom34392942,atom34387182,atom34386798,atom34385262,atom34295022,atom34294638,atom34288878,atom34264302,atom34288494,atom34286958,atom34263918,atom34262382,atom34256238,atom36752622,atom36752238,atom36746478,atom36746094,atom36744558,atom36900078,atom36899694,atom36506862,atom36506478,atom46189806,atom46189422,atom46183662,atom46183278,atom46181742,atom46337262,atom46336878,atom46927086,atom46926702,atom45354222,atom45353838] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34393326false | exact atom34393326true) (.cons (fun lit => by cases lit <;> first | exact atom34392942false | exact atom34392942true) (.cons (fun lit => by cases lit <;> first | exact atom34387182false | exact atom34387182true) (.cons (fun lit => by cases lit <;> first | exact atom34386798false | exact atom34386798true) (.cons (fun lit => by cases lit <;> first | exact atom34385262false | exact atom34385262true) (.cons (fun lit => by cases lit <;> first | exact atom34295022false | exact atom34295022true) (.cons (fun lit => by cases lit <;> first | exact atom34294638false | exact atom34294638true) (.cons (fun lit => by cases lit <;> first | exact atom34288878false | exact atom34288878true) (.cons (fun lit => by cases lit <;> first | exact atom34264302false | exact atom34264302true) (.cons (fun lit => by cases lit <;> first | exact atom34288494false | exact atom34288494true) (.cons (fun lit => by cases lit <;> first | exact atom34286958false | exact atom34286958true) (.cons (fun lit => by cases lit <;> first | exact atom34263918false | exact atom34263918true) (.cons (fun lit => by cases lit <;> first | exact atom34262382false | exact atom34262382true) (.cons (fun lit => by cases lit <;> first | exact atom34256238false | exact atom34256238true) (.cons (fun lit => by cases lit <;> first | exact atom36752622false | exact atom36752622true) (.cons (fun lit => by cases lit <;> first | exact atom36752238false | exact atom36752238true) (.cons (fun lit => by cases lit <;> first | exact atom36746478false | exact atom36746478true) (.cons (fun lit => by cases lit <;> first | exact atom36746094false | exact atom36746094true) (.cons (fun lit => by cases lit <;> first | exact atom36744558false | exact atom36744558true) (.cons (fun lit => by cases lit <;> first | exact atom36900078false | exact atom36900078true) (.cons (fun lit => by cases lit <;> first | exact atom36899694false | exact atom36899694true) (.cons (fun lit => by cases lit <;> first | exact atom36506862false | exact atom36506862true) (.cons (fun lit => by cases lit <;> first | exact atom36506478false | exact atom36506478true) (.cons (fun lit => by cases lit <;> first | exact atom46189806false | exact atom46189806true) (.cons (fun lit => by cases lit <;> first | exact atom46189422false | exact atom46189422true) (.cons (fun lit => by cases lit <;> first | exact atom46183662false | exact atom46183662true) (.cons (fun lit => by cases lit <;> first | exact atom46183278false | exact atom46183278true) (.cons (fun lit => by cases lit <;> first | exact atom46181742false | exact atom46181742true) (.cons (fun lit => by cases lit <;> first | exact atom46337262false | exact atom46337262true) (.cons (fun lit => by cases lit <;> first | exact atom46336878false | exact atom46336878true) (.cons (fun lit => by cases lit <;> first | exact atom46927086false | exact atom46927086true) (.cons (fun lit => by cases lit <;> first | exact atom46926702false | exact atom46926702true) (.cons (fun lit => by cases lit <;> first | exact atom45354222false | exact atom45354222true) (.cons (fun lit => by cases lit <;> first | exact atom45353838false | exact atom45353838true) .nil))))))))))))))))))))))))))))))))))
private def atom34393334 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))
theorem atom34393334false : BadRow (sources false 2 5 atom34393334) := by
  have h : sources false 2 5 atom34393334 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34393334true : BadRow (sources true 2 5 atom34393334) := by
  have h : sources true 2 5 atom34393334 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34392950 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))
theorem atom34392950false : BadRow (sources false 2 5 atom34392950) := by
  have h : sources false 2 5 atom34392950 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34392950true : BadRow (sources true 2 5 atom34392950) := by
  have h : sources true 2 5 atom34392950 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34387190 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))
theorem atom34387190false : BadRow (sources false 2 5 atom34387190) := by
  have h : sources false 2 5 atom34387190 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34387190true : BadRow (sources true 2 5 atom34387190) := by
  have h : sources true 2 5 atom34387190 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34386806 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))
theorem atom34386806false : BadRow (sources false 2 5 atom34386806) := by
  have h : sources false 2 5 atom34386806 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34386806true : BadRow (sources true 2 5 atom34386806) := by
  have h : sources true 2 5 atom34386806 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34385270 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))
theorem atom34385270false : BadRow (sources false 2 5 atom34385270) := by
  have h : sources false 2 5 atom34385270 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34385270true : BadRow (sources true 2 5 atom34385270) := by
  have h : sources true 2 5 atom34385270 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34295030 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1))))))
theorem atom34295030false : BadRow (sources false 2 5 atom34295030) := by
  have h : sources false 2 5 atom34295030 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34295030true : BadRow (sources true 2 5 atom34295030) := by
  have h : sources true 2 5 atom34295030 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34294646 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1)))))
theorem atom34294646false : BadRow (sources false 2 5 atom34294646) := by
  have h : sources false 2 5 atom34294646 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34294646true : BadRow (sources true 2 5 atom34294646) := by
  have h : sources true 2 5 atom34294646 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34288886 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 1)))))
theorem atom34288886false : BadRow (sources false 2 5 atom34288886) := by
  have h : sources false 2 5 atom34288886 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34288886true : BadRow (sources true 2 5 atom34288886) := by
  have h : sources true 2 5 atom34288886 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34264310 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 1)))))
theorem atom34264310false : BadRow (sources false 2 5 atom34264310) := by
  have h : sources false 2 5 atom34264310 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34264310true : BadRow (sources true 2 5 atom34264310) := by
  have h : sources true 2 5 atom34264310 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34288502 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 2)))) (.var 1))))
theorem atom34288502false : BadRow (sources false 2 5 atom34288502) := by
  have h : sources false 2 5 atom34288502 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34288502true : BadRow (sources true 2 5 atom34288502) := by
  have h : sources true 2 5 atom34288502 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34286966 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1))))
theorem atom34286966false : BadRow (sources false 2 5 atom34286966) := by
  have h : sources false 2 5 atom34286966 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34286966true : BadRow (sources true 2 5 atom34286966) := by
  have h : sources true 2 5 atom34286966 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34263926 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 1))))
theorem atom34263926false : BadRow (sources false 2 5 atom34263926) := by
  have h : sources false 2 5 atom34263926 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34263926true : BadRow (sources true 2 5 atom34263926) := by
  have h : sources true 2 5 atom34263926 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34262390 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 1))))
theorem atom34262390false : BadRow (sources false 2 5 atom34262390) := by
  have h : sources false 2 5 atom34262390 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34262390true : BadRow (sources true 2 5 atom34262390) := by
  have h : sources true 2 5 atom34262390 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34256246 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 1))))
theorem atom34256246false : BadRow (sources false 2 5 atom34256246) := by
  have h : sources false 2 5 atom34256246 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34256246true : BadRow (sources true 2 5 atom34256246) := by
  have h : sources true 2 5 atom34256246 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36752630 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))
theorem atom36752630false : BadRow (sources false 2 5 atom36752630) := by
  have h : sources false 2 5 atom36752630 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36752630true : BadRow (sources true 2 5 atom36752630) := by
  have h : sources true 2 5 atom36752630 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36752246 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))
theorem atom36752246false : BadRow (sources false 2 5 atom36752246) := by
  have h : sources false 2 5 atom36752246 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36752246true : BadRow (sources true 2 5 atom36752246) := by
  have h : sources true 2 5 atom36752246 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36746486 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))
theorem atom36746486false : BadRow (sources false 2 5 atom36746486) := by
  have h : sources false 2 5 atom36746486 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36746486true : BadRow (sources true 2 5 atom36746486) := by
  have h : sources true 2 5 atom36746486 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36746102 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))
theorem atom36746102false : BadRow (sources false 2 5 atom36746102) := by
  have h : sources false 2 5 atom36746102 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36746102true : BadRow (sources true 2 5 atom36746102) := by
  have h : sources true 2 5 atom36746102 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36744566 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))
theorem atom36744566false : BadRow (sources false 2 5 atom36744566) := by
  have h : sources false 2 5 atom36744566 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36744566true : BadRow (sources true 2 5 atom36744566) := by
  have h : sources true 2 5 atom36744566 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36900086 : Term := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))
theorem atom36900086false : BadRow (sources false 2 5 atom36900086) := by
  have h : sources false 2 5 atom36900086 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36900086true : BadRow (sources true 2 5 atom36900086) := by
  have h : sources true 2 5 atom36900086 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36899702 : Term := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))
theorem atom36899702false : BadRow (sources false 2 5 atom36899702) := by
  have h : sources false 2 5 atom36899702 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36899702true : BadRow (sources true 2 5 atom36899702) := by
  have h : sources true 2 5 atom36899702 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36506870 : Term := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))
theorem atom36506870false : BadRow (sources false 2 5 atom36506870) := by
  have h : sources false 2 5 atom36506870 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36506870true : BadRow (sources true 2 5 atom36506870) := by
  have h : sources true 2 5 atom36506870 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36506486 : Term := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))
theorem atom36506486false : BadRow (sources false 2 5 atom36506486) := by
  have h : sources false 2 5 atom36506486 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36506486true : BadRow (sources true 2 5 atom36506486) := by
  have h : sources true 2 5 atom36506486 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46189814 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))
theorem atom46189814false : BadRow (sources false 2 5 atom46189814) := by
  have h : sources false 2 5 atom46189814 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46189814true : BadRow (sources true 2 5 atom46189814) := by
  have h : sources true 2 5 atom46189814 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46189430 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))))))
theorem atom46189430false : BadRow (sources false 2 5 atom46189430) := by
  have h : sources false 2 5 atom46189430 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46189430true : BadRow (sources true 2 5 atom46189430) := by
  have h : sources true 2 5 atom46189430 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46183670 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))))))
theorem atom46183670false : BadRow (sources false 2 5 atom46183670) := by
  have h : sources false 2 5 atom46183670 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46183670true : BadRow (sources true 2 5 atom46183670) := by
  have h : sources true 2 5 atom46183670 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46183286 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)))))
theorem atom46183286false : BadRow (sources false 2 5 atom46183286) := by
  have h : sources false 2 5 atom46183286 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46183286true : BadRow (sources true 2 5 atom46183286) := by
  have h : sources true 2 5 atom46183286 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46181750 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)))))
theorem atom46181750false : BadRow (sources false 2 5 atom46181750) := by
  have h : sources false 2 5 atom46181750 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46181750true : BadRow (sources true 2 5 atom46181750) := by
  have h : sources true 2 5 atom46181750 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46337270 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))
theorem atom46337270false : BadRow (sources false 2 5 atom46337270) := by
  have h : sources false 2 5 atom46337270 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46337270true : BadRow (sources true 2 5 atom46337270) := by
  have h : sources true 2 5 atom46337270 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46336886 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))
theorem atom46336886false : BadRow (sources false 2 5 atom46336886) := by
  have h : sources false 2 5 atom46336886 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46336886true : BadRow (sources true 2 5 atom46336886) := by
  have h : sources true 2 5 atom46336886 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46927094 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))))
theorem atom46927094false : BadRow (sources false 2 5 atom46927094) := by
  have h : sources false 2 5 atom46927094 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46927094true : BadRow (sources true 2 5 atom46927094) := by
  have h : sources true 2 5 atom46927094 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46926710 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))))
theorem atom46926710false : BadRow (sources false 2 5 atom46926710) := by
  have h : sources false 2 5 atom46926710 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46926710true : BadRow (sources true 2 5 atom46926710) := by
  have h : sources true 2 5 atom46926710 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45354230 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))
theorem atom45354230false : BadRow (sources false 2 5 atom45354230) := by
  have h : sources false 2 5 atom45354230 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45354230true : BadRow (sources true 2 5 atom45354230) := by
  have h : sources true 2 5 atom45354230 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45353846 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))))
theorem atom45353846false : BadRow (sources false 2 5 atom45353846) := by
  have h : sources false 2 5 atom45353846 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45353846true : BadRow (sources true 2 5 atom45353846) := by
  have h : sources true 2 5 atom45353846 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms37 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,0,0,2,1]) := by
  have h : atoms 2 5 [0,0,0,2,1] = [atom34393334,atom34392950,atom34387190,atom34386806,atom34385270,atom34295030,atom34294646,atom34288886,atom34264310,atom34288502,atom34286966,atom34263926,atom34262390,atom34256246,atom36752630,atom36752246,atom36746486,atom36746102,atom36744566,atom36900086,atom36899702,atom36506870,atom36506486,atom46189814,atom46189430,atom46183670,atom46183286,atom46181750,atom46337270,atom46336886,atom46927094,atom46926710,atom45354230,atom45353846] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34393334false | exact atom34393334true) (.cons (fun lit => by cases lit <;> first | exact atom34392950false | exact atom34392950true) (.cons (fun lit => by cases lit <;> first | exact atom34387190false | exact atom34387190true) (.cons (fun lit => by cases lit <;> first | exact atom34386806false | exact atom34386806true) (.cons (fun lit => by cases lit <;> first | exact atom34385270false | exact atom34385270true) (.cons (fun lit => by cases lit <;> first | exact atom34295030false | exact atom34295030true) (.cons (fun lit => by cases lit <;> first | exact atom34294646false | exact atom34294646true) (.cons (fun lit => by cases lit <;> first | exact atom34288886false | exact atom34288886true) (.cons (fun lit => by cases lit <;> first | exact atom34264310false | exact atom34264310true) (.cons (fun lit => by cases lit <;> first | exact atom34288502false | exact atom34288502true) (.cons (fun lit => by cases lit <;> first | exact atom34286966false | exact atom34286966true) (.cons (fun lit => by cases lit <;> first | exact atom34263926false | exact atom34263926true) (.cons (fun lit => by cases lit <;> first | exact atom34262390false | exact atom34262390true) (.cons (fun lit => by cases lit <;> first | exact atom34256246false | exact atom34256246true) (.cons (fun lit => by cases lit <;> first | exact atom36752630false | exact atom36752630true) (.cons (fun lit => by cases lit <;> first | exact atom36752246false | exact atom36752246true) (.cons (fun lit => by cases lit <;> first | exact atom36746486false | exact atom36746486true) (.cons (fun lit => by cases lit <;> first | exact atom36746102false | exact atom36746102true) (.cons (fun lit => by cases lit <;> first | exact atom36744566false | exact atom36744566true) (.cons (fun lit => by cases lit <;> first | exact atom36900086false | exact atom36900086true) (.cons (fun lit => by cases lit <;> first | exact atom36899702false | exact atom36899702true) (.cons (fun lit => by cases lit <;> first | exact atom36506870false | exact atom36506870true) (.cons (fun lit => by cases lit <;> first | exact atom36506486false | exact atom36506486true) (.cons (fun lit => by cases lit <;> first | exact atom46189814false | exact atom46189814true) (.cons (fun lit => by cases lit <;> first | exact atom46189430false | exact atom46189430true) (.cons (fun lit => by cases lit <;> first | exact atom46183670false | exact atom46183670true) (.cons (fun lit => by cases lit <;> first | exact atom46183286false | exact atom46183286true) (.cons (fun lit => by cases lit <;> first | exact atom46181750false | exact atom46181750true) (.cons (fun lit => by cases lit <;> first | exact atom46337270false | exact atom46337270true) (.cons (fun lit => by cases lit <;> first | exact atom46336886false | exact atom46336886true) (.cons (fun lit => by cases lit <;> first | exact atom46927094false | exact atom46927094true) (.cons (fun lit => by cases lit <;> first | exact atom46926710false | exact atom46926710true) (.cons (fun lit => by cases lit <;> first | exact atom45354230false | exact atom45354230true) (.cons (fun lit => by cases lit <;> first | exact atom45353846false | exact atom45353846true) .nil))))))))))))))))))))))))))))))))))
theorem atoms38 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,0,0,3,0]) := by
  have h : atoms 2 5 [0,0,0,3,0] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
