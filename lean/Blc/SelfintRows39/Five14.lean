import Blc.SelfintRare39
import Blc.SelfintSaturatedRows
namespace Blc.SelfintSingleObject.Sat39
open Term SelfintWireCost OperandGrammar SourceRefutations Saturated
set_option Elab.async false
set_option maxRecDepth 32000
set_option maxHeartbeats 30000000

private def atom34393910 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))
theorem atom34393910false : BadRow (sources false 2 5 atom34393910) := by
  have h : sources false 2 5 atom34393910 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34393910true : BadRow (sources true 2 5 atom34393910) := by
  have h : sources true 2 5 atom34393910 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34393046 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))
theorem atom34393046false : BadRow (sources false 2 5 atom34393046) := by
  have h : sources false 2 5 atom34393046 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34393046true : BadRow (sources true 2 5 atom34393046) := by
  have h : sources true 2 5 atom34393046 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34387766 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))
theorem atom34387766false : BadRow (sources false 2 5 atom34387766) := by
  have h : sources false 2 5 atom34387766 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34387766true : BadRow (sources true 2 5 atom34387766) := by
  have h : sources true 2 5 atom34387766 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34386902 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))
theorem atom34386902false : BadRow (sources false 2 5 atom34386902) := by
  have h : sources false 2 5 atom34386902 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34386902true : BadRow (sources true 2 5 atom34386902) := by
  have h : sources true 2 5 atom34386902 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34385366 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))
theorem atom34385366false : BadRow (sources false 2 5 atom34385366) := by
  have h : sources false 2 5 atom34385366 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34385366true : BadRow (sources true 2 5 atom34385366) := by
  have h : sources true 2 5 atom34385366 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34295606 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1))))))
theorem atom34295606false : BadRow (sources false 2 5 atom34295606) := by
  have h : sources false 2 5 atom34295606 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34295606true : BadRow (sources true 2 5 atom34295606) := by
  have h : sources true 2 5 atom34295606 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34294742 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1)))))
theorem atom34294742false : BadRow (sources false 2 5 atom34294742) := by
  have h : sources false 2 5 atom34294742 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34294742true : BadRow (sources true 2 5 atom34294742) := by
  have h : sources true 2 5 atom34294742 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34289462 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 0) (.var 1)))))
theorem atom34289462false : BadRow (sources false 2 5 atom34289462) := by
  have h : sources false 2 5 atom34289462 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34289462true : BadRow (sources true 2 5 atom34289462) := by
  have h : sources true 2 5 atom34289462 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34264886 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 1)))))
theorem atom34264886false : BadRow (sources false 2 5 atom34264886) := by
  have h : sources false 2 5 atom34264886 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34264886true : BadRow (sources true 2 5 atom34264886) := by
  have h : sources true 2 5 atom34264886 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34288598 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 0)))) (.var 1))))
theorem atom34288598false : BadRow (sources false 2 5 atom34288598) := by
  have h : sources false 2 5 atom34288598 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34288598true : BadRow (sources true 2 5 atom34288598) := by
  have h : sources true 2 5 atom34288598 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34287062 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 0))) (.var 1))))
theorem atom34287062false : BadRow (sources false 2 5 atom34287062) := by
  have h : sources false 2 5 atom34287062 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34287062true : BadRow (sources true 2 5 atom34287062) := by
  have h : sources true 2 5 atom34287062 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34264022 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))))
theorem atom34264022false : BadRow (sources false 2 5 atom34264022) := by
  have h : sources false 2 5 atom34264022 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34264022true : BadRow (sources true 2 5 atom34264022) := by
  have h : sources true 2 5 atom34264022 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34262486 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 0)) (.var 1))))
theorem atom34262486false : BadRow (sources false 2 5 atom34262486) := by
  have h : sources false 2 5 atom34262486 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34262486true : BadRow (sources true 2 5 atom34262486) := by
  have h : sources true 2 5 atom34262486 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34256342 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 1))))
theorem atom34256342false : BadRow (sources false 2 5 atom34256342) := by
  have h : sources false 2 5 atom34256342 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34256342true : BadRow (sources true 2 5 atom34256342) := by
  have h : sources true 2 5 atom34256342 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36753206 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))
theorem atom36753206false : BadRow (sources false 2 5 atom36753206) := by
  have h : sources false 2 5 atom36753206 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36753206true : BadRow (sources true 2 5 atom36753206) := by
  have h : sources true 2 5 atom36753206 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36752342 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))
theorem atom36752342false : BadRow (sources false 2 5 atom36752342) := by
  have h : sources false 2 5 atom36752342 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36752342true : BadRow (sources true 2 5 atom36752342) := by
  have h : sources true 2 5 atom36752342 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36747062 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))
theorem atom36747062false : BadRow (sources false 2 5 atom36747062) := by
  have h : sources false 2 5 atom36747062 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36747062true : BadRow (sources true 2 5 atom36747062) := by
  have h : sources true 2 5 atom36747062 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36746198 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))
theorem atom36746198false : BadRow (sources false 2 5 atom36746198) := by
  have h : sources false 2 5 atom36746198 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36746198true : BadRow (sources true 2 5 atom36746198) := by
  have h : sources true 2 5 atom36746198 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36744662 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))
theorem atom36744662false : BadRow (sources false 2 5 atom36744662) := by
  have h : sources false 2 5 atom36744662 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36744662true : BadRow (sources true 2 5 atom36744662) := by
  have h : sources true 2 5 atom36744662 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36900662 : Term := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))
theorem atom36900662false : BadRow (sources false 2 5 atom36900662) := by
  have h : sources false 2 5 atom36900662 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36900662true : BadRow (sources true 2 5 atom36900662) := by
  have h : sources true 2 5 atom36900662 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36899798 : Term := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))
theorem atom36899798false : BadRow (sources false 2 5 atom36899798) := by
  have h : sources false 2 5 atom36899798 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36899798true : BadRow (sources true 2 5 atom36899798) := by
  have h : sources true 2 5 atom36899798 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36507446 : Term := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))
theorem atom36507446false : BadRow (sources false 2 5 atom36507446) := by
  have h : sources false 2 5 atom36507446 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36507446true : BadRow (sources true 2 5 atom36507446) := by
  have h : sources true 2 5 atom36507446 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36506582 : Term := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))
theorem atom36506582false : BadRow (sources false 2 5 atom36506582) := by
  have h : sources false 2 5 atom36506582 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36506582true : BadRow (sources true 2 5 atom36506582) := by
  have h : sources true 2 5 atom36506582 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46190390 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 0) (.var 1)))))))
theorem atom46190390false : BadRow (sources false 2 5 atom46190390) := by
  have h : sources false 2 5 atom46190390 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46190390true : BadRow (sources true 2 5 atom46190390) := by
  have h : sources true 2 5 atom46190390 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46189526 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))))))
theorem atom46189526false : BadRow (sources false 2 5 atom46189526) := by
  have h : sources false 2 5 atom46189526 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46189526true : BadRow (sources true 2 5 atom46189526) := by
  have h : sources true 2 5 atom46189526 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46184246 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 0) (.var 1))))))
theorem atom46184246false : BadRow (sources false 2 5 atom46184246) := by
  have h : sources false 2 5 atom46184246 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46184246true : BadRow (sources true 2 5 atom46184246) := by
  have h : sources true 2 5 atom46184246 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46183382 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 0))) (.var 1)))))
theorem atom46183382false : BadRow (sources false 2 5 atom46183382) := by
  have h : sources false 2 5 atom46183382 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46183382true : BadRow (sources true 2 5 atom46183382) := by
  have h : sources true 2 5 atom46183382 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46181846 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 0)) (.var 1)))))
theorem atom46181846false : BadRow (sources false 2 5 atom46181846) := by
  have h : sources false 2 5 atom46181846 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46181846true : BadRow (sources true 2 5 atom46181846) := by
  have h : sources true 2 5 atom46181846 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46337846 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))
theorem atom46337846false : BadRow (sources false 2 5 atom46337846) := by
  have h : sources false 2 5 atom46337846 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46337846true : BadRow (sources true 2 5 atom46337846) := by
  have h : sources true 2 5 atom46337846 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46336982 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))
theorem atom46336982false : BadRow (sources false 2 5 atom46336982) := by
  have h : sources false 2 5 atom46336982 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46336982true : BadRow (sources true 2 5 atom46336982) := by
  have h : sources true 2 5 atom46336982 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46927670 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))
theorem atom46927670false : BadRow (sources false 2 5 atom46927670) := by
  have h : sources false 2 5 atom46927670 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46927670true : BadRow (sources true 2 5 atom46927670) := by
  have h : sources true 2 5 atom46927670 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46926806 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1))))))
theorem atom46926806false : BadRow (sources false 2 5 atom46926806) := by
  have h : sources false 2 5 atom46926806 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46926806true : BadRow (sources true 2 5 atom46926806) := by
  have h : sources true 2 5 atom46926806 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45354806 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))
theorem atom45354806false : BadRow (sources false 2 5 atom45354806) := by
  have h : sources false 2 5 atom45354806 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45354806true : BadRow (sources true 2 5 atom45354806) := by
  have h : sources true 2 5 atom45354806 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45353942 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))
theorem atom45353942false : BadRow (sources false 2 5 atom45353942) := by
  have h : sources false 2 5 atom45353942 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45353942true : BadRow (sources true 2 5 atom45353942) := by
  have h : sources true 2 5 atom45353942 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms42 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,0,2,0,1]) := by
  have h : atoms 2 5 [0,0,2,0,1] = [atom34393910,atom34393046,atom34387766,atom34386902,atom34385366,atom34295606,atom34294742,atom34289462,atom34264886,atom34288598,atom34287062,atom34264022,atom34262486,atom34256342,atom36753206,atom36752342,atom36747062,atom36746198,atom36744662,atom36900662,atom36899798,atom36507446,atom36506582,atom46190390,atom46189526,atom46184246,atom46183382,atom46181846,atom46337846,atom46336982,atom46927670,atom46926806,atom45354806,atom45353942] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34393910false | exact atom34393910true) (.cons (fun lit => by cases lit <;> first | exact atom34393046false | exact atom34393046true) (.cons (fun lit => by cases lit <;> first | exact atom34387766false | exact atom34387766true) (.cons (fun lit => by cases lit <;> first | exact atom34386902false | exact atom34386902true) (.cons (fun lit => by cases lit <;> first | exact atom34385366false | exact atom34385366true) (.cons (fun lit => by cases lit <;> first | exact atom34295606false | exact atom34295606true) (.cons (fun lit => by cases lit <;> first | exact atom34294742false | exact atom34294742true) (.cons (fun lit => by cases lit <;> first | exact atom34289462false | exact atom34289462true) (.cons (fun lit => by cases lit <;> first | exact atom34264886false | exact atom34264886true) (.cons (fun lit => by cases lit <;> first | exact atom34288598false | exact atom34288598true) (.cons (fun lit => by cases lit <;> first | exact atom34287062false | exact atom34287062true) (.cons (fun lit => by cases lit <;> first | exact atom34264022false | exact atom34264022true) (.cons (fun lit => by cases lit <;> first | exact atom34262486false | exact atom34262486true) (.cons (fun lit => by cases lit <;> first | exact atom34256342false | exact atom34256342true) (.cons (fun lit => by cases lit <;> first | exact atom36753206false | exact atom36753206true) (.cons (fun lit => by cases lit <;> first | exact atom36752342false | exact atom36752342true) (.cons (fun lit => by cases lit <;> first | exact atom36747062false | exact atom36747062true) (.cons (fun lit => by cases lit <;> first | exact atom36746198false | exact atom36746198true) (.cons (fun lit => by cases lit <;> first | exact atom36744662false | exact atom36744662true) (.cons (fun lit => by cases lit <;> first | exact atom36900662false | exact atom36900662true) (.cons (fun lit => by cases lit <;> first | exact atom36899798false | exact atom36899798true) (.cons (fun lit => by cases lit <;> first | exact atom36507446false | exact atom36507446true) (.cons (fun lit => by cases lit <;> first | exact atom36506582false | exact atom36506582true) (.cons (fun lit => by cases lit <;> first | exact atom46190390false | exact atom46190390true) (.cons (fun lit => by cases lit <;> first | exact atom46189526false | exact atom46189526true) (.cons (fun lit => by cases lit <;> first | exact atom46184246false | exact atom46184246true) (.cons (fun lit => by cases lit <;> first | exact atom46183382false | exact atom46183382true) (.cons (fun lit => by cases lit <;> first | exact atom46181846false | exact atom46181846true) (.cons (fun lit => by cases lit <;> first | exact atom46337846false | exact atom46337846true) (.cons (fun lit => by cases lit <;> first | exact atom46336982false | exact atom46336982true) (.cons (fun lit => by cases lit <;> first | exact atom46927670false | exact atom46927670true) (.cons (fun lit => by cases lit <;> first | exact atom46926806false | exact atom46926806true) (.cons (fun lit => by cases lit <;> first | exact atom45354806false | exact atom45354806true) (.cons (fun lit => by cases lit <;> first | exact atom45353942false | exact atom45353942true) .nil))))))))))))))))))))))))))))))))))
private def atom34393914 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))
theorem atom34393914false : BadRow (sources false 2 5 atom34393914) := by
  have h : sources false 2 5 atom34393914 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34393914true : BadRow (sources true 2 5 atom34393914) := by
  have h : sources true 2 5 atom34393914 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34393050 : Term := (.lam (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))
theorem atom34393050false : BadRow (sources false 2 5 atom34393050) := by
  have h : sources false 2 5 atom34393050 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34393050true : BadRow (sources true 2 5 atom34393050) := by
  have h : sources true 2 5 atom34393050 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34387770 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))
theorem atom34387770false : BadRow (sources false 2 5 atom34387770) := by
  have h : sources false 2 5 atom34387770 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34387770true : BadRow (sources true 2 5 atom34387770) := by
  have h : sources true 2 5 atom34387770 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34386906 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))
theorem atom34386906false : BadRow (sources false 2 5 atom34386906) := by
  have h : sources false 2 5 atom34386906 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34386906true : BadRow (sources true 2 5 atom34386906) := by
  have h : sources true 2 5 atom34386906 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34385370 : Term := (.lam (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))
theorem atom34385370false : BadRow (sources false 2 5 atom34385370) := by
  have h : sources false 2 5 atom34385370 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34385370true : BadRow (sources true 2 5 atom34385370) := by
  have h : sources true 2 5 atom34385370 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34295610 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0))))))
theorem atom34295610false : BadRow (sources false 2 5 atom34295610) := by
  have h : sources false 2 5 atom34295610 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34295610true : BadRow (sources true 2 5 atom34295610) := by
  have h : sources true 2 5 atom34295610 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34294746 : Term := (.lam (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0)))))
theorem atom34294746false : BadRow (sources false 2 5 atom34294746) := by
  have h : sources false 2 5 atom34294746 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34294746true : BadRow (sources true 2 5 atom34294746) := by
  have h : sources true 2 5 atom34294746 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34289466 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.app (.var 1) (.var 0)))))
theorem atom34289466false : BadRow (sources false 2 5 atom34289466) := by
  have h : sources false 2 5 atom34289466 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34289466true : BadRow (sources true 2 5 atom34289466) := by
  have h : sources true 2 5 atom34289466 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34264890 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.var 0)))))
theorem atom34264890false : BadRow (sources false 2 5 atom34264890) := by
  have h : sources false 2 5 atom34264890 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34264890true : BadRow (sources true 2 5 atom34264890) := by
  have h : sources true 2 5 atom34264890 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34288602 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))) (.var 0))))
theorem atom34288602false : BadRow (sources false 2 5 atom34288602) := by
  have h : sources false 2 5 atom34288602 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34288602true : BadRow (sources true 2 5 atom34288602) := by
  have h : sources true 2 5 atom34288602 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34287066 : Term := (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0))))
theorem atom34287066false : BadRow (sources false 2 5 atom34287066) := by
  have h : sources false 2 5 atom34287066 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34287066true : BadRow (sources true 2 5 atom34287066) := by
  have h : sources true 2 5 atom34287066 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34264026 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 0))))
theorem atom34264026false : BadRow (sources false 2 5 atom34264026) := by
  have h : sources false 2 5 atom34264026 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34264026true : BadRow (sources true 2 5 atom34264026) := by
  have h : sources true 2 5 atom34264026 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34262490 : Term := (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 2))) (.var 1)) (.var 0))))
theorem atom34262490false : BadRow (sources false 2 5 atom34262490) := by
  have h : sources false 2 5 atom34262490 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34262490true : BadRow (sources true 2 5 atom34262490) := by
  have h : sources true 2 5 atom34262490 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom34256346 : Term := (.lam (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.var 0))))
theorem atom34256346false : BadRow (sources false 2 5 atom34256346) := by
  have h : sources false 2 5 atom34256346 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom34256346true : BadRow (sources true 2 5 atom34256346) := by
  have h : sources true 2 5 atom34256346 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36753210 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))
theorem atom36753210false : BadRow (sources false 2 5 atom36753210) := by
  have h : sources false 2 5 atom36753210 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36753210true : BadRow (sources true 2 5 atom36753210) := by
  have h : sources true 2 5 atom36753210 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36752346 : Term := (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))
theorem atom36752346false : BadRow (sources false 2 5 atom36752346) := by
  have h : sources false 2 5 atom36752346 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36752346true : BadRow (sources true 2 5 atom36752346) := by
  have h : sources true 2 5 atom36752346 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36747066 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))
theorem atom36747066false : BadRow (sources false 2 5 atom36747066) := by
  have h : sources false 2 5 atom36747066 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36747066true : BadRow (sources true 2 5 atom36747066) := by
  have h : sources true 2 5 atom36747066 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36746202 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))
theorem atom36746202false : BadRow (sources false 2 5 atom36746202) := by
  have h : sources false 2 5 atom36746202 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36746202true : BadRow (sources true 2 5 atom36746202) := by
  have h : sources true 2 5 atom36746202 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36744666 : Term := (.lam (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))
theorem atom36744666false : BadRow (sources false 2 5 atom36744666) := by
  have h : sources false 2 5 atom36744666 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36744666true : BadRow (sources true 2 5 atom36744666) := by
  have h : sources true 2 5 atom36744666 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36900666 : Term := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))
theorem atom36900666false : BadRow (sources false 2 5 atom36900666) := by
  have h : sources false 2 5 atom36900666 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36900666true : BadRow (sources true 2 5 atom36900666) := by
  have h : sources true 2 5 atom36900666 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36899802 : Term := (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))
theorem atom36899802false : BadRow (sources false 2 5 atom36899802) := by
  have h : sources false 2 5 atom36899802 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36899802true : BadRow (sources true 2 5 atom36899802) := by
  have h : sources true 2 5 atom36899802 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36507450 : Term := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))
theorem atom36507450false : BadRow (sources false 2 5 atom36507450) := by
  have h : sources false 2 5 atom36507450 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36507450true : BadRow (sources true 2 5 atom36507450) := by
  have h : sources true 2 5 atom36507450 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36506586 : Term := (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))
theorem atom36506586false : BadRow (sources false 2 5 atom36506586) := by
  have h : sources false 2 5 atom36506586 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36506586true : BadRow (sources true 2 5 atom36506586) := by
  have h : sources true 2 5 atom36506586 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36451290 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.var 0) (.app (.var 2) (.var 1))))) (.var 0)))
theorem atom36451290false : BadRow (sources false 2 5 atom36451290) := by
  have h : sources false 2 5 atom36451290 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36451290true : BadRow (sources true 2 5 atom36451290) := by
  have h : sources true 2 5 atom36451290 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom36449754 : Term := (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 2)) (.var 1)))) (.var 0)))
theorem atom36449754false : BadRow (sources false 2 5 atom36449754) := by
  have h : sources false 2 5 atom36449754 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom36449754true : BadRow (sources true 2 5 atom36449754) := by
  have h : sources true 2 5 atom36449754 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46190394 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.app (.var 1) (.var 0)))))))
theorem atom46190394false : BadRow (sources false 2 5 atom46190394) := by
  have h : sources false 2 5 atom46190394 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46190394true : BadRow (sources true 2 5 atom46190394) := by
  have h : sources true 2 5 atom46190394 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46189530 : Term := (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.app (.var 2) (.var 1)) (.var 0))))))
theorem atom46189530false : BadRow (sources false 2 5 atom46189530) := by
  have h : sources false 2 5 atom46189530 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46189530true : BadRow (sources true 2 5 atom46189530) := by
  have h : sources true 2 5 atom46189530 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46184250 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.app (.var 1) (.var 0))))))
theorem atom46184250false : BadRow (sources false 2 5 atom46184250) := by
  have h : sources false 2 5 atom46184250 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46184250true : BadRow (sources true 2 5 atom46184250) := by
  have h : sources true 2 5 atom46184250 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46183386 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))))
theorem atom46183386false : BadRow (sources false 2 5 atom46183386) := by
  have h : sources false 2 5 atom46183386 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46183386true : BadRow (sources true 2 5 atom46183386) := by
  have h : sources true 2 5 atom46183386 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46181850 : Term := (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.var 2)) (.var 1)) (.var 0)))))
theorem atom46181850false : BadRow (sources false 2 5 atom46181850) := by
  have h : sources false 2 5 atom46181850 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46181850true : BadRow (sources true 2 5 atom46181850) := by
  have h : sources true 2 5 atom46181850 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46337850 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))
theorem atom46337850false : BadRow (sources false 2 5 atom46337850) := by
  have h : sources false 2 5 atom46337850 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46337850true : BadRow (sources true 2 5 atom46337850) := by
  have h : sources true 2 5 atom46337850 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46336986 : Term := (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))
theorem atom46336986false : BadRow (sources false 2 5 atom46336986) := by
  have h : sources false 2 5 atom46336986 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46336986true : BadRow (sources true 2 5 atom46336986) := by
  have h : sources true 2 5 atom46336986 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46927674 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0)))))))
theorem atom46927674false : BadRow (sources false 2 5 atom46927674) := by
  have h : sources false 2 5 atom46927674 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46927674true : BadRow (sources true 2 5 atom46927674) := by
  have h : sources true 2 5 atom46927674 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom46926810 : Term := (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0))))))
theorem atom46926810false : BadRow (sources false 2 5 atom46926810) := by
  have h : sources false 2 5 atom46926810 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom46926810true : BadRow (sources true 2 5 atom46926810) := by
  have h : sources true 2 5 atom46926810 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45354810 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))
theorem atom45354810false : BadRow (sources false 2 5 atom45354810) := by
  have h : sources false 2 5 atom45354810 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45354810true : BadRow (sources true 2 5 atom45354810) := by
  have h : sources true 2 5 atom45354810 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45353946 : Term := (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.app (.var 2) (.var 1)) (.var 0)))))
theorem atom45353946false : BadRow (sources false 2 5 atom45353946) := by
  have h : sources false 2 5 atom45353946 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45353946true : BadRow (sources true 2 5 atom45353946) := by
  have h : sources true 2 5 atom45353946 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45102042 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1)))))) (.var 0))
theorem atom45102042false : BadRow (sources false 2 5 atom45102042) := by
  have h : sources false 2 5 atom45102042 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45102042true : BadRow (sources true 2 5 atom45102042) := by
  have h : sources true 2 5 atom45102042 = [] := by decide +kernel
  rw [h]
  exact .nil

private def atom45100506 : Term := (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))) (.var 0))
theorem atom45100506false : BadRow (sources false 2 5 atom45100506) := by
  have h : sources false 2 5 atom45100506 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atom45100506true : BadRow (sources true 2 5 atom45100506) := by
  have h : sources true 2 5 atom45100506 = [] := by decide +kernel
  rw [h]
  exact .nil

theorem atoms43 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,0,2,1,0]) := by
  have h : atoms 2 5 [0,0,2,1,0] = [atom34393914,atom34393050,atom34387770,atom34386906,atom34385370,atom34295610,atom34294746,atom34289466,atom34264890,atom34288602,atom34287066,atom34264026,atom34262490,atom34256346,atom36753210,atom36752346,atom36747066,atom36746202,atom36744666,atom36900666,atom36899802,atom36507450,atom36506586,atom36451290,atom36449754,atom46190394,atom46189530,atom46184250,atom46183386,atom46181850,atom46337850,atom46336986,atom46927674,atom46926810,atom45354810,atom45353946,atom45102042,atom45100506] := by decide +kernel
  rw [h]
  exact (.cons (fun lit => by cases lit <;> first | exact atom34393914false | exact atom34393914true) (.cons (fun lit => by cases lit <;> first | exact atom34393050false | exact atom34393050true) (.cons (fun lit => by cases lit <;> first | exact atom34387770false | exact atom34387770true) (.cons (fun lit => by cases lit <;> first | exact atom34386906false | exact atom34386906true) (.cons (fun lit => by cases lit <;> first | exact atom34385370false | exact atom34385370true) (.cons (fun lit => by cases lit <;> first | exact atom34295610false | exact atom34295610true) (.cons (fun lit => by cases lit <;> first | exact atom34294746false | exact atom34294746true) (.cons (fun lit => by cases lit <;> first | exact atom34289466false | exact atom34289466true) (.cons (fun lit => by cases lit <;> first | exact atom34264890false | exact atom34264890true) (.cons (fun lit => by cases lit <;> first | exact atom34288602false | exact atom34288602true) (.cons (fun lit => by cases lit <;> first | exact atom34287066false | exact atom34287066true) (.cons (fun lit => by cases lit <;> first | exact atom34264026false | exact atom34264026true) (.cons (fun lit => by cases lit <;> first | exact atom34262490false | exact atom34262490true) (.cons (fun lit => by cases lit <;> first | exact atom34256346false | exact atom34256346true) (.cons (fun lit => by cases lit <;> first | exact atom36753210false | exact atom36753210true) (.cons (fun lit => by cases lit <;> first | exact atom36752346false | exact atom36752346true) (.cons (fun lit => by cases lit <;> first | exact atom36747066false | exact atom36747066true) (.cons (fun lit => by cases lit <;> first | exact atom36746202false | exact atom36746202true) (.cons (fun lit => by cases lit <;> first | exact atom36744666false | exact atom36744666true) (.cons (fun lit => by cases lit <;> first | exact atom36900666false | exact atom36900666true) (.cons (fun lit => by cases lit <;> first | exact atom36899802false | exact atom36899802true) (.cons (fun lit => by cases lit <;> first | exact atom36507450false | exact atom36507450true) (.cons (fun lit => by cases lit <;> first | exact atom36506586false | exact atom36506586true) (.cons (fun lit => by cases lit <;> first | exact atom36451290false | exact atom36451290true) (.cons (fun lit => by cases lit <;> first | exact atom36449754false | exact atom36449754true) (.cons (fun lit => by cases lit <;> first | exact atom46190394false | exact atom46190394true) (.cons (fun lit => by cases lit <;> first | exact atom46189530false | exact atom46189530true) (.cons (fun lit => by cases lit <;> first | exact atom46184250false | exact atom46184250true) (.cons (fun lit => by cases lit <;> first | exact atom46183386false | exact atom46183386true) (.cons (fun lit => by cases lit <;> first | exact atom46181850false | exact atom46181850true) (.cons (fun lit => by cases lit <;> first | exact atom46337850false | exact atom46337850true) (.cons (fun lit => by cases lit <;> first | exact atom46336986false | exact atom46336986true) (.cons (fun lit => by cases lit <;> first | exact atom46927674false | exact atom46927674true) (.cons (fun lit => by cases lit <;> first | exact atom46926810false | exact atom46926810true) (.cons (fun lit => by cases lit <;> first | exact atom45354810false | exact atom45354810true) (.cons (fun lit => by cases lit <;> first | exact atom45353946false | exact atom45353946true) (.cons (fun lit => by cases lit <;> first | exact atom45102042false | exact atom45102042true) (.cons (fun lit => by cases lit <;> first | exact atom45100506false | exact atom45100506true) .nil))))))))))))))))))))))))))))))))))))))
theorem atoms44 : Every (fun b => ∀ lit, BadRow (sources lit 2 5 b)) (atoms 2 5 [0,0,3,0,0]) := by
  have h : atoms 2 5 [0,0,3,0,0] = [] := by decide +kernel
  rw [h]
  exact .nil
end Blc.SelfintSingleObject.Sat39
