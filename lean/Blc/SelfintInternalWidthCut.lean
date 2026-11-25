import Blc.SelfintLiteralWidth46
import Blc.SelfintSourceRefutations

namespace Blc.SelfintSingleObject.SourceRefutations
open Term OperandGrammar

/-- The width must be present below both public binders whenever they
are explicit. The conclusion also covers a single or empty prefix. -/
theorem internal_width {e : Term} (he : IsSelfInterpreter e) : Witness 0 (body e) := by
  cases e with
  | var _ | app _ _ => exact selfInterpreter_width he
  | lam b =>
    cases b with
    | var _ | app _ _ => exact one_lambda_width he
    | lam b => exact two_lambda_width he

theorem width_cut {e : Term} (n : Bool) (k : Nat) (h : spans 0 (body (run n k e)) = false) :
    ¬ IsSelfInterpreter e := by
  intro he
  have hw := internal_width (reduct_interprets (run_reduct n k e) he)
  exact Bool.noConfusion ((spans_of_witness _ 0 hw).symm.trans h)

/-- The outstanding literal width certificate at size 40 uses one normal step under its first lambda. -/
def literal75186750170 : Term := (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 1)) (.var 0)))))
theorem literal75186750170_excluded : ¬ IsSelfInterpreter literal75186750170 := width_cut true 1 (by decide)
#print axioms width_cut
#print axioms literal75186750170_excluded
end Blc.SelfintSingleObject.SourceRefutations
