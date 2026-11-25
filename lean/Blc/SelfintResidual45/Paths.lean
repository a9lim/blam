import Blc.SelfintCompact45.Base
import Blc.SelfintSourceRefutations

set_option Elab.async false
namespace Blc.Floor45.Paths

open SelfintSingleObject SelfintSharp Term
private def pathResult (ps : List (List Direction)) (e : Term) := (replay ps e).getD e
private theorem path_interprets {e : Term} (ps : List (List Direction)) (he : IsSelfInterpreter e) :
    IsSelfInterpreter (pathResult ps e) := by
  cases eq : replay ps e with
  | none => simpa [pathResult,eq] using he
  | some t => simpa [pathResult,eq] using SourceRefutations.reduct_interprets (replay_sound eq) he
theorem ex_e2419682991478 : ¬ IsSelfInterpreter e2419682991478 := by
  intro he
  have h := FactorFilter.required (path_interprets ([[.under],[.under],[.under,.under,.left,.right,.under,.right],[.under,.under,.right]] : List (List SelfintSharp.Direction)) he)
  have bad : FactorFilter.markedHere 0 (SourceRefutations.body (pathResult ([[.under],[.under],[.under,.under,.left,.right,.under,.right],[.under,.under,.right]] : List (List SelfintSharp.Direction)) e2419682991478)) = false := by decide +kernel
  exact Bool.noConfusion (h.symm.trans bad)
theorem ex_e9540465259734 : ¬ IsSelfInterpreter e9540465259734 := by
  intro he
  have h := FactorFilter.required (path_interprets ([[],[.left,.left],[.left],[.left,.under,.left,.left],[.left,.under,.left],[],[.left,.under,.left,.left],[.left,.under,.left],[.left,.under,.right],[.left,.under,.right,.under,.under,.left,.left],[.left,.under,.right,.under,.under,.left],[.left,.under,.right,.under,.under],[],[.left,.under,.left,.left],[.left,.under,.left],[.left,.under,.right],[.left,.under,.right,.under,.under,.left,.left],[.left,.under,.right,.under,.under,.left]] : List (List SelfintSharp.Direction)) he)
  have bad : FactorFilter.markedHere 0 (SourceRefutations.body (pathResult ([[],[.left,.left],[.left],[.left,.under,.left,.left],[.left,.under,.left],[],[.left,.under,.left,.left],[.left,.under,.left],[.left,.under,.right],[.left,.under,.right,.under,.under,.left,.left],[.left,.under,.right,.under,.under,.left],[.left,.under,.right,.under,.under],[],[.left,.under,.left,.left],[.left,.under,.left],[.left,.under,.right],[.left,.under,.right,.under,.under,.left,.left],[.left,.under,.right,.under,.under,.left]] : List (List SelfintSharp.Direction)) e9540465259734)) = false := by decide +kernel
  exact Bool.noConfusion (h.symm.trans bad)
theorem ex_e9540465259834 : ¬ IsSelfInterpreter e9540465259834 := by
  intro he
  have h := FactorFilter.required (path_interprets ([[],[.left,.left],[.left],[.left,.under,.left,.left],[.left,.under,.left],[.left,.under,.right],[],[.left,.under,.left,.left],[.left,.under,.left],[.left,.under,.right],[.right,.under,.under,.left,.left],[.right,.under,.under,.left],[]] : List (List SelfintSharp.Direction)) he)
  have bad : FactorFilter.markedHere 0 (SourceRefutations.body (pathResult ([[],[.left,.left],[.left],[.left,.under,.left,.left],[.left,.under,.left],[.left,.under,.right],[],[.left,.under,.left,.left],[.left,.under,.left],[.left,.under,.right],[.right,.under,.under,.left,.left],[.right,.under,.under,.left],[]] : List (List SelfintSharp.Direction)) e9540465259834)) = false := by decide +kernel
  exact Bool.noConfusion (h.symm.trans bad)
theorem ex_e9540465315130 : ¬ IsSelfInterpreter e9540465315130 := by
  intro he
  have h := FactorFilter.required (path_interprets ([[],[.left,.left],[.left],[.left,.under,.left],[.left,.under],[.left,.under,.under,.right,.left],[.left,.under,.under,.right],[],[.under,.left,.left],[.under,.left],[.under,.left,.under,.left],[.under,.left,.under],[.under,.right,.under,.left],[.under,.right,.under]] : List (List SelfintSharp.Direction)) he)
  have bad : FactorFilter.markedHere 0 (SourceRefutations.body (pathResult ([[],[.left,.left],[.left],[.left,.under,.left],[.left,.under],[.left,.under,.under,.right,.left],[.left,.under,.under,.right],[],[.under,.left,.left],[.under,.left],[.under,.left,.under,.left],[.under,.left,.under],[.under,.right,.under,.left],[.under,.right,.under]] : List (List SelfintSharp.Direction)) e9540465315130)) = false := by decide +kernel
  exact Bool.noConfusion (h.symm.trans bad)
theorem ex_e9557124517498 : ¬ SelfintWireCost.MinimalInterpreter e9557124517498 := by
  intro he
  have lo := he.2 (pathResult ([[],[.left],[.left,.under,.right,.under,.right],[.right]] : List (List SelfintSharp.Direction)) e9557124517498) (path_interprets ([[],[.left],[.left,.under,.right,.under,.right],[.right]] : List (List SelfintSharp.Direction)) he.1)
  exact (Nat.not_lt_of_le lo) (by decide +kernel)
theorem ex_e9557124517690 : ¬ SelfintWireCost.MinimalInterpreter e9557124517690 := by
  intro he
  have lo := he.2 (pathResult ([[],[.left],[.left,.under,.right,.under],[.right]] : List (List SelfintSharp.Direction)) e9557124517690) (path_interprets ([[],[.left],[.left,.under,.right,.under],[.right]] : List (List SelfintSharp.Direction)) he.1)
  exact (Nat.not_lt_of_le lo) (by decide +kernel)
theorem ex_e9570799180410 : ¬ IsSelfInterpreter e9570799180410 := by
  intro he
  have h := FactorFilter.required (path_interprets ([[],[.left],[.left,.under,.under,.right],[],[.under,.left,.left],[.under,.left]] : List (List SelfintSharp.Direction)) he)
  have bad : FactorFilter.markedHere 0 (SourceRefutations.body (pathResult ([[],[.left],[.left,.under,.under,.right],[],[.under,.left,.left],[.under,.left]] : List (List SelfintSharp.Direction)) e9570799180410)) = false := by decide +kernel
  exact Bool.noConfusion (h.symm.trans bad)
theorem ex_e9573528309370 : ¬ IsSelfInterpreter e9573528309370 := by
  intro he
  have h := FactorFilter.required (path_interprets ([[],[.left],[.left,.under,.right,.under,.right],[],[.left],[.left,.under,.right,.under,.right],[.right,.under],[.right,.under,.under,.right,.under,.right],[],[.left],[.left,.under,.right,.under,.right,.right,.under,.right],[.right,.under]] : List (List SelfintSharp.Direction)) he)
  have bad : FactorFilter.markedHere 0 (SourceRefutations.body (pathResult ([[],[.left],[.left,.under,.right,.under,.right],[],[.left],[.left,.under,.right,.under,.right],[.right,.under],[.right,.under,.under,.right,.under,.right],[],[.left],[.left,.under,.right,.under,.right,.right,.under,.right],[.right,.under]] : List (List SelfintSharp.Direction)) e9573528309370)) = false := by decide +kernel
  exact Bool.noConfusion (h.symm.trans bad)
theorem ex_e9573530869558 : ¬ IsSelfInterpreter e9573530869558 := by
  intro he
  have h := SelfintFloor.interpreter_idCall_betas (path_interprets ([[],[.left],[],[.left],[],[.left],[],[.left],[],[],[.under,.left,.left],[.under,.left],[.under,.left],[.under],[.under],[.under,.under,.left,.left],[.under,.under,.left],[.under,.under,.left,.left],[.under,.under,.left],[.under,.under,.left],[.under,.under],[.under,.under]] : List (List SelfintSharp.Direction)) he)
  have ok := Layouts.mismatch_sound 6 h (by decide)
  have bad : Layouts.mismatch 6 (SelfintFloor.idCall (pathResult ([[],[.left],[],[.left],[],[.left],[],[.left],[],[],[.under,.left,.left],[.under,.left],[.under,.left],[.under],[.under],[.under,.under,.left,.left],[.under,.under,.left],[.under,.under,.left,.left],[.under,.under,.left],[.under,.under,.left],[.under,.under],[.under,.under]] : List (List SelfintSharp.Direction)) e9573530869558)) SelfintFloor.idOutput = true := by decide +kernel
  exact Bool.noConfusion (ok.symm.trans bad)
theorem ex_e9673342768086 : ¬ IsSelfInterpreter e9673342768086 := by
  intro he
  have h := FactorFilter.required (path_interprets ([[],[],[.under,.under,.left,.right,.left]] : List (List SelfintSharp.Direction)) he)
  have bad : FactorFilter.markedHere 0 (SourceRefutations.body (pathResult ([[],[],[.under,.under,.left,.right,.left]] : List (List SelfintSharp.Direction)) e9673342768086)) = false := by decide +kernel
  exact Bool.noConfusion (h.symm.trans bad)
theorem ex_e9673349336022 : ¬ IsSelfInterpreter e9673349336022 := by
  intro he
  have h := FactorFilter.required (path_interprets ([[],[],[.under,.right,.under,.left,.left]] : List (List SelfintSharp.Direction)) he)
  have bad : FactorFilter.markedHere 0 (SourceRefutations.body (pathResult ([[],[],[.under,.right,.under,.left,.left]] : List (List SelfintSharp.Direction)) e9673349336022)) = false := by decide +kernel
  exact Bool.noConfusion (h.symm.trans bad)
theorem ex_e9676573687150 : ¬ IsSelfInterpreter e9676573687150 := by
  intro he
  have h := SelfintFloor.interpreter_idCall_betas (path_interprets ([[],[],[.under,.under,.left,.left],[.under,.under,.left],[.under,.under],[.under,.under,.left],[.under,.under]] : List (List SelfintSharp.Direction)) he)
  have ok := Layouts.mismatch_sound 6 h (by decide)
  have bad : Layouts.mismatch 6 (SelfintFloor.idCall (pathResult ([[],[],[.under,.under,.left,.left],[.under,.under,.left],[.under,.under],[.under,.under,.left],[.under,.under]] : List (List SelfintSharp.Direction)) e9676573687150)) SelfintFloor.idOutput = true := by decide +kernel
  exact Bool.noConfusion (ok.symm.trans bad)
theorem ex_e9676620402486 : ¬ IsSelfInterpreter e9676620402486 := by
  intro he
  have h := SelfintFloor.interpreter_idCall_betas (path_interprets ([[],[],[.under,.left],[.under],[.under],[.under,.under],[.under,.under,.left],[.under,.under,.left,.left],[.under,.under,.left],[.under,.under],[.under,.under,.left],[.under,.under]] : List (List SelfintSharp.Direction)) he)
  have ok := Layouts.mismatch_sound 6 h (by decide)
  have bad : Layouts.mismatch 6 (SelfintFloor.idCall (pathResult ([[],[],[.under,.left],[.under],[.under],[.under,.under],[.under,.under,.left],[.under,.under,.left,.left],[.under,.under,.left],[.under,.under],[.under,.under,.left],[.under,.under]] : List (List SelfintSharp.Direction)) e9676620402486)) SelfintFloor.idOutput = true := by decide +kernel
  exact Bool.noConfusion (ok.symm.trans bad)
theorem ex_e9676763631414 : ¬ IsSelfInterpreter e9676763631414 := by
  intro he
  have h := SelfintFloor.interpreter_idCall_betas (path_interprets ([[],[],[.left],[.left],[.left],[],[],[],[],[.under],[.under,.under],[.under,.under],[.under,.under],[.under,.under,.left],[.under,.under],[.under,.under],[.under,.under]] : List (List SelfintSharp.Direction)) he)
  have ok := Layouts.mismatch_sound 6 h (by decide)
  have bad : Layouts.mismatch 6 (SelfintFloor.idCall (pathResult ([[],[],[.left],[.left],[.left],[],[],[],[],[.under],[.under,.under],[.under,.under],[.under,.under],[.under,.under,.left],[.under,.under],[.under,.under],[.under,.under]] : List (List SelfintSharp.Direction)) e9676763631414)) SelfintFloor.idOutput = true := by decide +kernel
  exact Bool.noConfusion (ok.symm.trans bad)
theorem ex_e9689617448022 : ¬ IsSelfInterpreter e9689617448022 := by
  intro he
  have h := FactorFilter.required (path_interprets ([[],[],[.under,.under,.left,.right,.left]] : List (List SelfintSharp.Direction)) he)
  have bad : FactorFilter.markedHere 0 (SourceRefutations.body (pathResult ([[],[],[.under,.under,.left,.right,.left]] : List (List SelfintSharp.Direction)) e9689617448022)) = false := by decide +kernel
  exact Bool.noConfusion (h.symm.trans bad)
theorem ex_e9690032688526 : ¬ IsSelfInterpreter e9690032688526 := by
  intro he
  have h := SelfintFloor.interpreter_idCall_betas (path_interprets ([[],[],[.under],[.under,.left],[.under],[.under],[.under,.left],[.under],[.under,.under],[.under,.under,.left,.left],[.under,.under,.left],[.under,.under]] : List (List SelfintSharp.Direction)) he)
  have ok := Layouts.mismatch_sound 6 h (by decide)
  have bad : Layouts.mismatch 6 (SelfintFloor.idCall (pathResult ([[],[],[.under],[.under,.left],[.under],[.under],[.under,.left],[.under],[.under,.under],[.under,.under,.left,.left],[.under,.under,.left],[.under,.under]] : List (List SelfintSharp.Direction)) e9690032688526)) SelfintFloor.idOutput = true := by decide +kernel
  exact Bool.noConfusion (ok.symm.trans bad)
theorem ex_e9690391573302 : ¬ IsSelfInterpreter e9690391573302 := by
  intro he
  have h := SelfintFloor.interpreter_idCall_betas (path_interprets ([[],[],[.under],[.under,.under],[.under,.under,.left],[.under,.under,.left,.left],[.under,.under,.left],[.under,.under],[.under,.under,.left],[.under,.under]] : List (List SelfintSharp.Direction)) he)
  have ok := Layouts.mismatch_sound 6 h (by decide)
  have bad : Layouts.mismatch 6 (SelfintFloor.idCall (pathResult ([[],[],[.under],[.under,.under],[.under,.under,.left],[.under,.under,.left,.left],[.under,.under,.left],[.under,.under],[.under,.under,.left],[.under,.under]] : List (List SelfintSharp.Direction)) e9690391573302)) SelfintFloor.idOutput = true := by decide +kernel
  exact Bool.noConfusion (ok.symm.trans bad)
end Blc.Floor45.Paths
