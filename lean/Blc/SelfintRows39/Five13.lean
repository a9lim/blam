import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom34393710 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))
theorem atom34393710false : BadRow (sources false 2 5 atom34393710) := by
  have h : sources false 2 5 atom34393710 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34393710true : BadRow (sources true 2 5 atom34393710) := by
  have h : sources true 2 5 atom34393710 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34393006 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem atom34393006false : BadRow (sources false 2 5 atom34393006) := by
  have h : sources false 2 5 atom34393006 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34393006true : BadRow (sources true 2 5 atom34393006) := by
  have h : sources true 2 5 atom34393006 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34387566 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))
theorem atom34387566false : BadRow (sources false 2 5 atom34387566) := by
  have h : sources false 2 5 atom34387566 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34387566true : BadRow (sources true 2 5 atom34387566) := by
  have h : sources true 2 5 atom34387566 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34386862 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))
theorem atom34386862false : BadRow (sources false 2 5 atom34386862) := by
  have h : sources false 2 5 atom34386862 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34386862true : BadRow (sources true 2 5 atom34386862) := by
  have h : sources true 2 5 atom34386862 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34385326 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))
theorem atom34385326false : BadRow (sources false 2 5 atom34385326) := by
  have h : sources false 2 5 atom34385326 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34385326true : BadRow (sources true 2 5 atom34385326) := by
  have h : sources true 2 5 atom34385326 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34295406 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2))))))
theorem atom34295406false : BadRow (sources false 2 5 atom34295406) := by
  have h : sources false 2 5 atom34295406 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34295406true : BadRow (sources true 2 5 atom34295406) := by
  have h : sources true 2 5 atom34295406 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34294702 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2)))))
theorem atom34294702false : BadRow (sources false 2 5 atom34294702) := by
  have h : sources false 2 5 atom34294702 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34294702true : BadRow (sources true 2 5 atom34294702) := by
  have h : sources true 2 5 atom34294702 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34289262 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 2)))))
theorem atom34289262false : BadRow (sources false 2 5 atom34289262) := by
  have h : sources false 2 5 atom34289262 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34289262true : BadRow (sources true 2 5 atom34289262) := by
  have h : sources true 2 5 atom34289262 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34264686 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))))
theorem atom34264686false : BadRow (sources false 2 5 atom34264686) := by
  have h : sources false 2 5 atom34264686 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34264686true : BadRow (sources true 2 5 atom34264686) := by
  have h : sources true 2 5 atom34264686 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34288558 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 2))))
theorem atom34288558false : BadRow (sources false 2 5 atom34288558) := by
  have h : sources false 2 5 atom34288558 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34288558true : BadRow (sources true 2 5 atom34288558) := by
  have h : sources true 2 5 atom34288558 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34287022 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 2))))
theorem atom34287022false : BadRow (sources false 2 5 atom34287022) := by
  have h : sources false 2 5 atom34287022 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34287022true : BadRow (sources true 2 5 atom34287022) := by
  have h : sources true 2 5 atom34287022 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34263982 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2))))
theorem atom34263982false : BadRow (sources false 2 5 atom34263982) := by
  have h : sources false 2 5 atom34263982 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34263982true : BadRow (sources true 2 5 atom34263982) := by
  have h : sources true 2 5 atom34263982 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34262446 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 2))))
theorem atom34262446false : BadRow (sources false 2 5 atom34262446) := by
  have h : sources false 2 5 atom34262446 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34262446true : BadRow (sources true 2 5 atom34262446) := by
  have h : sources true 2 5 atom34262446 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34256302 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 2))))
theorem atom34256302false : BadRow (sources false 2 5 atom34256302) := by
  have h : sources false 2 5 atom34256302 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34256302true : BadRow (sources true 2 5 atom34256302) := by
  have h : sources true 2 5 atom34256302 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36753006 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))
theorem atom36753006false : BadRow (sources false 2 5 atom36753006) := by
  have h : sources false 2 5 atom36753006 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36753006true : BadRow (sources true 2 5 atom36753006) := by
  have h : sources true 2 5 atom36753006 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36752302 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem atom36752302false : BadRow (sources false 2 5 atom36752302) := by
  have h : sources false 2 5 atom36752302 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36752302true : BadRow (sources true 2 5 atom36752302) := by
  have h : sources true 2 5 atom36752302 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36746862 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))
theorem atom36746862false : BadRow (sources false 2 5 atom36746862) := by
  have h : sources false 2 5 atom36746862 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36746862true : BadRow (sources true 2 5 atom36746862) := by
  have h : sources true 2 5 atom36746862 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36746158 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))
theorem atom36746158false : BadRow (sources false 2 5 atom36746158) := by
  have h : sources false 2 5 atom36746158 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36746158true : BadRow (sources true 2 5 atom36746158) := by
  have h : sources true 2 5 atom36746158 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36744622 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))
theorem atom36744622false : BadRow (sources false 2 5 atom36744622) := by
  have h : sources false 2 5 atom36744622 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36744622true : BadRow (sources true 2 5 atom36744622) := by
  have h : sources true 2 5 atom36744622 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36900462 : Term := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))
theorem atom36900462false : BadRow (sources false 2 5 atom36900462) := by
  have h : sources false 2 5 atom36900462 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36900462true : BadRow (sources true 2 5 atom36900462) := by
  have h : sources true 2 5 atom36900462 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36899758 : Term := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem atom36899758false : BadRow (sources false 2 5 atom36899758) := by
  have h : sources false 2 5 atom36899758 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36899758true : BadRow (sources true 2 5 atom36899758) := by
  have h : sources true 2 5 atom36899758 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36507246 : Term := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))
theorem atom36507246false : BadRow (sources false 2 5 atom36507246) := by
  have h : sources false 2 5 atom36507246 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36507246true : BadRow (sources true 2 5 atom36507246) := by
  have h : sources true 2 5 atom36507246 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36506542 : Term := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))
theorem atom36506542false : BadRow (sources false 2 5 atom36506542) := by
  have h : sources false 2 5 atom36506542 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36506542true : BadRow (sources true 2 5 atom36506542) := by
  have h : sources true 2 5 atom36506542 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46190190 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 2)))))))
theorem atom46190190false : BadRow (sources false 2 5 atom46190190) := by
  have h : sources false 2 5 atom46190190 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46190190true : BadRow (sources true 2 5 atom46190190) := by
  have h : sources true 2 5 atom46190190 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46189486 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem atom46189486false : BadRow (sources false 2 5 atom46189486) := by
  have h : sources false 2 5 atom46189486 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46189486true : BadRow (sources true 2 5 atom46189486) := by
  have h : sources true 2 5 atom46189486 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46184046 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 0) (.var 2))))))
theorem atom46184046false : BadRow (sources false 2 5 atom46184046) := by
  have h : sources false 2 5 atom46184046 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46184046true : BadRow (sources true 2 5 atom46184046) := by
  have h : sources true 2 5 atom46184046 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46183342 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))))
theorem atom46183342false : BadRow (sources false 2 5 atom46183342) := by
  have h : sources false 2 5 atom46183342 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46183342true : BadRow (sources true 2 5 atom46183342) := by
  have h : sources true 2 5 atom46183342 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46181806 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 2)))))
theorem atom46181806false : BadRow (sources false 2 5 atom46181806) := by
  have h : sources false 2 5 atom46181806 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46181806true : BadRow (sources true 2 5 atom46181806) := by
  have h : sources true 2 5 atom46181806 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46337646 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))
theorem atom46337646false : BadRow (sources false 2 5 atom46337646) := by
  have h : sources false 2 5 atom46337646 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46337646true : BadRow (sources true 2 5 atom46337646) := by
  have h : sources true 2 5 atom46337646 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46336942 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem atom46336942false : BadRow (sources false 2 5 atom46336942) := by
  have h : sources false 2 5 atom46336942 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46336942true : BadRow (sources true 2 5 atom46336942) := by
  have h : sources true 2 5 atom46336942 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46927470 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2)))))))
theorem atom46927470false : BadRow (sources false 2 5 atom46927470) := by
  have h : sources false 2 5 atom46927470 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46927470true : BadRow (sources true 2 5 atom46927470) := by
  have h : sources true 2 5 atom46927470 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46926766 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))
theorem atom46926766false : BadRow (sources false 2 5 atom46926766) := by
  have h : sources false 2 5 atom46926766 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46926766true : BadRow (sources true 2 5 atom46926766) := by
  have h : sources true 2 5 atom46926766 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45354606 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 2))))))
theorem atom45354606false : BadRow (sources false 2 5 atom45354606) := by
  have h : sources false 2 5 atom45354606 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45354606true : BadRow (sources true 2 5 atom45354606) := by
  have h : sources true 2 5 atom45354606 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45353902 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))
theorem atom45353902false : BadRow (sources false 2 5 atom45353902) := by
  have h : sources false 2 5 atom45353902 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45353902true : BadRow (sources true 2 5 atom45353902) := by
  have h : sources true 2 5 atom45353902 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms39 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,0,1,0,2]) := by
  have h : atoms 2 5 [0,0,1,0,2] = [atom34393710,atom34393006,atom34387566,atom34386862,atom34385326,atom34295406,atom34294702,atom34289262,atom34264686,atom34288558,atom34287022,atom34263982,atom34262446,atom34256302,atom36753006,atom36752302,atom36746862,atom36746158,atom36744622,atom36900462,atom36899758,atom36507246,atom36506542,atom46190190,atom46189486,atom46184046,atom46183342,atom46181806,atom46337646,atom46336942,atom46927470,atom46926766,atom45354606,atom45353902] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34393710false | exact atom34393710true) (.cons (fun lit => by cases lit <;> first | exact atom34393006false | exact atom34393006true) (.cons (fun lit => by cases lit <;> first | exact atom34387566false | exact atom34387566true) (.cons (fun lit => by cases lit <;> first | exact atom34386862false | exact atom34386862true) (.cons (fun lit => by cases lit <;> first | exact atom34385326false | exact atom34385326true) (.cons (fun lit => by cases lit <;> first | exact atom34295406false | exact atom34295406true) (.cons (fun lit => by cases lit <;> first | exact atom34294702false | exact atom34294702true) (.cons (fun lit => by cases lit <;> first | exact atom34289262false | exact atom34289262true) (.cons (fun lit => by cases lit <;> first | exact atom34264686false | exact atom34264686true) (.cons (fun lit => by cases lit <;> first | exact atom34288558false | exact atom34288558true) (.cons (fun lit => by cases lit <;> first | exact atom34287022false | exact atom34287022true) (.cons (fun lit => by cases lit <;> first | exact atom34263982false | exact atom34263982true) (.cons (fun lit => by cases lit <;> first | exact atom34262446false | exact atom34262446true) (.cons (fun lit => by cases lit <;> first | exact atom34256302false | exact atom34256302true) (.cons (fun lit => by cases lit <;> first | exact atom36753006false | exact atom36753006true) (.cons (fun lit => by cases lit <;> first | exact atom36752302false | exact atom36752302true) (.cons (fun lit => by cases lit <;> first | exact atom36746862false | exact atom36746862true) (.cons (fun lit => by cases lit <;> first | exact atom36746158false | exact atom36746158true) (.cons (fun lit => by cases lit <;> first | exact atom36744622false | exact atom36744622true) (.cons (fun lit => by cases lit <;> first | exact atom36900462false | exact atom36900462true) (.cons (fun lit => by cases lit <;> first | exact atom36899758false | exact atom36899758true) (.cons (fun lit => by cases lit <;> first | exact atom36507246false | exact atom36507246true) (.cons (fun lit => by cases lit <;> first | exact atom36506542false | exact atom36506542true) (.cons (fun lit => by cases lit <;> first | exact atom46190190false | exact atom46190190true) (.cons (fun lit => by cases lit <;> first | exact atom46189486false | exact atom46189486true) (.cons (fun lit => by cases lit <;> first | exact atom46184046false | exact atom46184046true) (.cons (fun lit => by cases lit <;> first | exact atom46183342false | exact atom46183342true) (.cons (fun lit => by cases lit <;> first | exact atom46181806false | exact atom46181806true) (.cons (fun lit => by cases lit <;> first | exact atom46337646false | exact atom46337646true) (.cons (fun lit => by cases lit <;> first | exact atom46336942false | exact atom46336942true) (.cons (fun lit => by cases lit <;> first | exact atom46927470false | exact atom46927470true) (.cons (fun lit => by cases lit <;> first | exact atom46926766false | exact atom46926766true) (.cons (fun lit => by cases lit <;> first | exact atom45354606false | exact atom45354606true) (.cons (fun lit => by cases lit <;> first | exact atom45353902false | exact atom45353902true) .nil))))))))))))))))))))))))))))))))))
theorem atoms40 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,0,1,1,1]) := by
  have h : atoms 2 5 [0,0,1,1,1] = [] := by decide +kernel
  rw [h]
  exact .nil
private def atom34393722 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))
theorem atom34393722false : BadRow (sources false 2 5 atom34393722) := by
  have h : sources false 2 5 atom34393722 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34393722true : BadRow (sources true 2 5 atom34393722) := by
  have h : sources true 2 5 atom34393722 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34393018 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))
theorem atom34393018false : BadRow (sources false 2 5 atom34393018) := by
  have h : sources false 2 5 atom34393018 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34393018true : BadRow (sources true 2 5 atom34393018) := by
  have h : sources true 2 5 atom34393018 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34387578 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))
theorem atom34387578false : BadRow (sources false 2 5 atom34387578) := by
  have h : sources false 2 5 atom34387578 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34387578true : BadRow (sources true 2 5 atom34387578) := by
  have h : sources true 2 5 atom34387578 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34386874 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem atom34386874false : BadRow (sources false 2 5 atom34386874) := by
  have h : sources false 2 5 atom34386874 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34386874true : BadRow (sources true 2 5 atom34386874) := by
  have h : sources true 2 5 atom34386874 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34385338 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))
theorem atom34385338false : BadRow (sources false 2 5 atom34385338) := by
  have h : sources false 2 5 atom34385338 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34385338true : BadRow (sources true 2 5 atom34385338) := by
  have h : sources true 2 5 atom34385338 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34295418 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0))))))
theorem atom34295418false : BadRow (sources false 2 5 atom34295418) := by
  have h : sources false 2 5 atom34295418 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34295418true : BadRow (sources true 2 5 atom34295418) := by
  have h : sources true 2 5 atom34295418 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34294714 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0)))))
theorem atom34294714false : BadRow (sources false 2 5 atom34294714) := by
  have h : sources false 2 5 atom34294714 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34294714true : BadRow (sources true 2 5 atom34294714) := by
  have h : sources true 2 5 atom34294714 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34289274 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 2) (.var 0)))))
theorem atom34289274false : BadRow (sources false 2 5 atom34289274) := by
  have h : sources false 2 5 atom34289274 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34289274true : BadRow (sources true 2 5 atom34289274) := by
  have h : sources true 2 5 atom34289274 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34264698 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.var 0)))))
theorem atom34264698false : BadRow (sources false 2 5 atom34264698) := by
  have h : sources false 2 5 atom34264698 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34264698true : BadRow (sources true 2 5 atom34264698) := by
  have h : sources true 2 5 atom34264698 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34288570 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0))))
theorem atom34288570false : BadRow (sources false 2 5 atom34288570) := by
  have h : sources false 2 5 atom34288570 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34288570true : BadRow (sources true 2 5 atom34288570) := by
  have h : sources true 2 5 atom34288570 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34287034 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))))
theorem atom34287034false : BadRow (sources false 2 5 atom34287034) := by
  have h : sources false 2 5 atom34287034 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34287034true : BadRow (sources true 2 5 atom34287034) := by
  have h : sources true 2 5 atom34287034 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34263994 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0))))
theorem atom34263994false : BadRow (sources false 2 5 atom34263994) := by
  have h : sources false 2 5 atom34263994 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34263994true : BadRow (sources true 2 5 atom34263994) := by
  have h : sources true 2 5 atom34263994 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34262458 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 2)) (.var 0))))
theorem atom34262458false : BadRow (sources false 2 5 atom34262458) := by
  have h : sources false 2 5 atom34262458 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34262458true : BadRow (sources true 2 5 atom34262458) := by
  have h : sources true 2 5 atom34262458 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34256314 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.var 0))))
theorem atom34256314false : BadRow (sources false 2 5 atom34256314) := by
  have h : sources false 2 5 atom34256314 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34256314true : BadRow (sources true 2 5 atom34256314) := by
  have h : sources true 2 5 atom34256314 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36753018 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))
theorem atom36753018false : BadRow (sources false 2 5 atom36753018) := by
  have h : sources false 2 5 atom36753018 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36753018true : BadRow (sources true 2 5 atom36753018) := by
  have h : sources true 2 5 atom36753018 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36752314 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))
theorem atom36752314false : BadRow (sources false 2 5 atom36752314) := by
  have h : sources false 2 5 atom36752314 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36752314true : BadRow (sources true 2 5 atom36752314) := by
  have h : sources true 2 5 atom36752314 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36746874 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))
theorem atom36746874false : BadRow (sources false 2 5 atom36746874) := by
  have h : sources false 2 5 atom36746874 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36746874true : BadRow (sources true 2 5 atom36746874) := by
  have h : sources true 2 5 atom36746874 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36746170 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem atom36746170false : BadRow (sources false 2 5 atom36746170) := by
  have h : sources false 2 5 atom36746170 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36746170true : BadRow (sources true 2 5 atom36746170) := by
  have h : sources true 2 5 atom36746170 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36744634 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))
theorem atom36744634false : BadRow (sources false 2 5 atom36744634) := by
  have h : sources false 2 5 atom36744634 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36744634true : BadRow (sources true 2 5 atom36744634) := by
  have h : sources true 2 5 atom36744634 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36900474 : Term := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))
theorem atom36900474false : BadRow (sources false 2 5 atom36900474) := by
  have h : sources false 2 5 atom36900474 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36900474true : BadRow (sources true 2 5 atom36900474) := by
  have h : sources true 2 5 atom36900474 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36899770 : Term := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))
theorem atom36899770false : BadRow (sources false 2 5 atom36899770) := by
  have h : sources false 2 5 atom36899770 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36899770true : BadRow (sources true 2 5 atom36899770) := by
  have h : sources true 2 5 atom36899770 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36507258 : Term := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))
theorem atom36507258false : BadRow (sources false 2 5 atom36507258) := by
  have h : sources false 2 5 atom36507258 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36507258true : BadRow (sources true 2 5 atom36507258) := by
  have h : sources true 2 5 atom36507258 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36506554 : Term := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))
theorem atom36506554false : BadRow (sources false 2 5 atom36506554) := by
  have h : sources false 2 5 atom36506554 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36506554true : BadRow (sources true 2 5 atom36506554) := by
  have h : sources true 2 5 atom36506554 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36451258 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 2))))) (.var 0)))
theorem atom36451258false : BadRow (sources false 2 5 atom36451258) := by
  have h : sources false 2 5 atom36451258 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36451258true : BadRow (sources true 2 5 atom36451258) := by
  have h : sources true 2 5 atom36451258 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36449722 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.var 0)))
theorem atom36449722false : BadRow (sources false 2 5 atom36449722) := by
  have h : sources false 2 5 atom36449722 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36449722true : BadRow (sources true 2 5 atom36449722) := by
  have h : sources true 2 5 atom36449722 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46190202 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.app (.var 2) (.var 0)))))))
theorem atom46190202false : BadRow (sources false 2 5 atom46190202) := by
  have h : sources false 2 5 atom46190202 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46190202true : BadRow (sources true 2 5 atom46190202) := by
  have h : sources true 2 5 atom46190202 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46189498 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 1) (.var 2)) (.var 0))))))
theorem atom46189498false : BadRow (sources false 2 5 atom46189498) := by
  have h : sources false 2 5 atom46189498 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46189498true : BadRow (sources true 2 5 atom46189498) := by
  have h : sources true 2 5 atom46189498 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46184058 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.app (.var 2) (.var 0))))))
theorem atom46184058false : BadRow (sources false 2 5 atom46184058) := by
  have h : sources false 2 5 atom46184058 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46184058true : BadRow (sources true 2 5 atom46184058) := by
  have h : sources true 2 5 atom46184058 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46183354 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))
theorem atom46183354false : BadRow (sources false 2 5 atom46183354) := by
  have h : sources false 2 5 atom46183354 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46183354true : BadRow (sources true 2 5 atom46183354) := by
  have h : sources true 2 5 atom46183354 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46181818 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 2)) (.var 0)))))
theorem atom46181818false : BadRow (sources false 2 5 atom46181818) := by
  have h : sources false 2 5 atom46181818 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46181818true : BadRow (sources true 2 5 atom46181818) := by
  have h : sources true 2 5 atom46181818 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46337658 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))
theorem atom46337658false : BadRow (sources false 2 5 atom46337658) := by
  have h : sources false 2 5 atom46337658 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46337658true : BadRow (sources true 2 5 atom46337658) := by
  have h : sources true 2 5 atom46337658 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46336954 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))
theorem atom46336954false : BadRow (sources false 2 5 atom46336954) := by
  have h : sources false 2 5 atom46336954 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46336954true : BadRow (sources true 2 5 atom46336954) := by
  have h : sources true 2 5 atom46336954 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46927482 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))
theorem atom46927482false : BadRow (sources false 2 5 atom46927482) := by
  have h : sources false 2 5 atom46927482 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46927482true : BadRow (sources true 2 5 atom46927482) := by
  have h : sources true 2 5 atom46927482 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46926778 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0))))))
theorem atom46926778false : BadRow (sources false 2 5 atom46926778) := by
  have h : sources false 2 5 atom46926778 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46926778true : BadRow (sources true 2 5 atom46926778) := by
  have h : sources true 2 5 atom46926778 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45354618 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))
theorem atom45354618false : BadRow (sources false 2 5 atom45354618) := by
  have h : sources false 2 5 atom45354618 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45354618true : BadRow (sources true 2 5 atom45354618) := by
  have h : sources true 2 5 atom45354618 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45353914 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 1) (.var 2)) (.var 0)))))
theorem atom45353914false : BadRow (sources false 2 5 atom45353914) := by
  have h : sources false 2 5 atom45353914 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45353914true : BadRow (sources true 2 5 atom45353914) := by
  have h : sources true 2 5 atom45353914 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45102010 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 1) (.var 2)))))) (.var 0))
theorem atom45102010false : BadRow (sources false 2 5 atom45102010) := by
  have h : sources false 2 5 atom45102010 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45102010true : BadRow (sources true 2 5 atom45102010) := by
  have h : sources true 2 5 atom45102010 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45100474 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))) (.var 0))
theorem atom45100474false : BadRow (sources false 2 5 atom45100474) := by
  have h : sources false 2 5 atom45100474 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45100474true : BadRow (sources true 2 5 atom45100474) := by
  have h : sources true 2 5 atom45100474 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms41 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,0,1,2,0]) := by
  have h : atoms 2 5 [0,0,1,2,0] = [atom34393722,atom34393018,atom34387578,atom34386874,atom34385338,atom34295418,atom34294714,atom34289274,atom34264698,atom34288570,atom34287034,atom34263994,atom34262458,atom34256314,atom36753018,atom36752314,atom36746874,atom36746170,atom36744634,atom36900474,atom36899770,atom36507258,atom36506554,atom36451258,atom36449722,atom46190202,atom46189498,atom46184058,atom46183354,atom46181818,atom46337658,atom46336954,atom46927482,atom46926778,atom45354618,atom45353914,atom45102010,atom45100474] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34393722false | exact atom34393722true) (.cons (fun lit => by cases lit <;> first | exact atom34393018false | exact atom34393018true) (.cons (fun lit => by cases lit <;> first | exact atom34387578false | exact atom34387578true) (.cons (fun lit => by cases lit <;> first | exact atom34386874false | exact atom34386874true) (.cons (fun lit => by cases lit <;> first | exact atom34385338false | exact atom34385338true) (.cons (fun lit => by cases lit <;> first | exact atom34295418false | exact atom34295418true) (.cons (fun lit => by cases lit <;> first | exact atom34294714false | exact atom34294714true) (.cons (fun lit => by cases lit <;> first | exact atom34289274false | exact atom34289274true) (.cons (fun lit => by cases lit <;> first | exact atom34264698false | exact atom34264698true) (.cons (fun lit => by cases lit <;> first | exact atom34288570false | exact atom34288570true) (.cons (fun lit => by cases lit <;> first | exact atom34287034false | exact atom34287034true) (.cons (fun lit => by cases lit <;> first | exact atom34263994false | exact atom34263994true) (.cons (fun lit => by cases lit <;> first | exact atom34262458false | exact atom34262458true) (.cons (fun lit => by cases lit <;> first | exact atom34256314false | exact atom34256314true) (.cons (fun lit => by cases lit <;> first | exact atom36753018false | exact atom36753018true) (.cons (fun lit => by cases lit <;> first | exact atom36752314false | exact atom36752314true) (.cons (fun lit => by cases lit <;> first | exact atom36746874false | exact atom36746874true) (.cons (fun lit => by cases lit <;> first | exact atom36746170false | exact atom36746170true) (.cons (fun lit => by cases lit <;> first | exact atom36744634false | exact atom36744634true) (.cons (fun lit => by cases lit <;> first | exact atom36900474false | exact atom36900474true) (.cons (fun lit => by cases lit <;> first | exact atom36899770false | exact atom36899770true) (.cons (fun lit => by cases lit <;> first | exact atom36507258false | exact atom36507258true) (.cons (fun lit => by cases lit <;> first | exact atom36506554false | exact atom36506554true) (.cons (fun lit => by cases lit <;> first | exact atom36451258false | exact atom36451258true) (.cons (fun lit => by cases lit <;> first | exact atom36449722false | exact atom36449722true) (.cons (fun lit => by cases lit <;> first | exact atom46190202false | exact atom46190202true) (.cons (fun lit => by cases lit <;> first | exact atom46189498false | exact atom46189498true) (.cons (fun lit => by cases lit <;> first | exact atom46184058false | exact atom46184058true) (.cons (fun lit => by cases lit <;> first | exact atom46183354false | exact atom46183354true) (.cons (fun lit => by cases lit <;> first | exact atom46181818false | exact atom46181818true) (.cons (fun lit => by cases lit <;> first | exact atom46337658false | exact atom46337658true) (.cons (fun lit => by cases lit <;> first | exact atom46336954false | exact atom46336954true) (.cons (fun lit => by cases lit <;> first | exact atom46927482false | exact atom46927482true) (.cons (fun lit => by cases lit <;> first | exact atom46926778false | exact atom46926778true) (.cons (fun lit => by cases lit <;> first | exact atom45354618false | exact atom45354618true) (.cons (fun lit => by cases lit <;> first | exact atom45353914false | exact atom45353914true) (.cons (fun lit => by cases lit <;> first | exact atom45102010false | exact atom45102010true) (.cons (fun lit => by cases lit <;> first | exact atom45100474false | exact atom45100474true) .nil))))))))))))))))))))))))))))))))))))))
end Blc.SelfintSingleObject.Sat39
