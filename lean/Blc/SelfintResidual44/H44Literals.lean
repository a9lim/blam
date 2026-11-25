import Blc.SelfintResidual44.H44Base

set_option Elab.async false
namespace Blc.H44
open Term SelfintLowerBound
private def sentinel (t : Term) := (blcCode t).foldl (fun n b => 2*n + if b then 1 else 0) 1
def e4786765230946 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))) (.lam (.var 0))))))
theorem wire_e4786765230946 : Closed e4786765230946 ∧ sentinel e4786765230946 = 22378951275362 := by decide
def e4786842101574 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1))))))))
theorem wire_e4786842101574 : Closed e4786842101574 ∧ sentinel e4786842101574 = 22379028145990 := by decide
def e4846201355482 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.var 0))))
theorem wire_e4846201355482 : Closed e4846201355482 ∧ sentinel e4846201355482 = 22438387399898 := by decide
def e4846363266838 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 1))))))))
theorem wire_e4846363266838 : Closed e4846363266838 ∧ sentinel e4846363266838 = 22438549311254 := by decide
def e4846363276054 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 0)))) (.var 1))))))))
theorem wire_e4846363276054 : Closed e4846363276054 ∧ sentinel e4846363276054 = 22438549320470 := by decide
def e4846363331350 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.app (.var 0) (.lam (.var 0))) (.var 1)))))))))
theorem wire_e4846363331350 : Closed e4846363331350 ∧ sentinel e4846363331350 = 22438549375766 := by decide
def e4846363331614 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 0) (.lam (.lam (.var 3)))))))))))
theorem wire_e4846363331614 : Closed e4846363331614 ∧ sentinel e4846363331614 = 22438549376030 := by decide
def e4846363332110 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 2)))))))))))
theorem wire_e4846363332110 : Closed e4846363332110 ∧ sentinel e4846363332110 = 22438549376526 := by decide
def e4846434772678 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.lam (.var 1)))))))))
theorem wire_e4846434772678 : Closed e4846434772678 ∧ sentinel e4846434772678 = 22438620817094 := by decide
def e4846434860086 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.var 1)))))))))))
theorem wire_e4846434860086 : Closed e4846434860086 ∧ sentinel e4846434860086 = 22438620904502 := by decide
end Blc.H44
