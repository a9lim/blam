import Blc.SelfintResidual45.H45Base

set_option Elab.async false
namespace Blc.H45
open Term SelfintLowerBound
private def sentinel (t : Term) := (blcCode t).foldl (fun n b => 2*n + if b then 1 else 0) 1
def e9570311402454 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1)))))))
theorem wire_e9570311402454 : Closed e9570311402454 ∧ sentinel e9570311402454 = 44754683491286 := by decide
def e9573528477238 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))) (.var 1)))))
theorem wire_e9573528477238 : Closed e9573528477238 ∧ sentinel e9573528477238 = 44757900566070 := by decide
def e9676763418166 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.lam (.var 1)))) (.var 1)))))))
theorem wire_e9676763418166 : Closed e9676763418166 ∧ sentinel e9676763418166 = 44861135506998 := by decide
def e9692402711770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 3) (.app (.var 0) (.var 1)))))))) (.var 0))))
theorem wire_e9692402711770 : Closed e9692402711770 ∧ sentinel e9692402711770 = 44876774800602 := by decide
def e9692402957530 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.var 0))))
theorem wire_e9692402957530 : Closed e9692402957530 ∧ sentinel e9692402957530 = 44876775046362 := by decide
def e9692402989098 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)))))) (.var 0))))
theorem wire_e9692402989098 : Closed e9692402989098 ∧ sentinel e9692402989098 = 44876775077930 := by decide
def e9692402989698 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.var 0)) (.var 0)))))) (.lam (.lam (.var 0))))))
theorem wire_e9692402989698 : Closed e9692402989698 ∧ sentinel e9692402989698 = 44876775078530 := by decide
def e9692715709398 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 1))))))
theorem wire_e9692715709398 : Closed e9692715709398 ∧ sentinel e9692715709398 = 44877087798230 := by decide
def e9692869766666 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0)))))))))
theorem wire_e9692869766666 : Closed e9692869766666 ∧ sentinel e9692869766666 = 44877241855498 := by decide
def e11219262979426 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1))))))) (.lam (.var 0)))
theorem wire_e11219262979426 : Closed e11219262979426 ∧ sentinel e11219262979426 = 46403635068258 := by decide
end Blc.H45
