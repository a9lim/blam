import Blc.SelfintCompact44.Base
import Blc.SelfintSourceRefutations

set_option Elab.async false
namespace Blc.Floor44.Paths
open SelfintSingleObject SelfintSharp Term
private def pathResult (ps : List (List Direction)) (e : Term) := (replay ps e).getD e
private theorem path_interprets {e : Term} (ps : List (List Direction)) (he : IsSelfInterpreter e) :
    IsSelfInterpreter (pathResult ps e) := by
  cases eq : replay ps e with
  | none => simpa [pathResult,eq] using he
  | some t => simpa [pathResult,eq] using SourceRefutations.reduct_interprets (replay_sound eq) he
theorem ex_e4778689418158 : ¬ IsSelfInterpreter e4778689418158 := by
  intro he
  have h := FactorFilter.required (path_interprets ([[],[.left],[],[.under,.left,.left],[.under,.left,.right]] : List (List SelfintSharp.Direction)) he)
  have bad : FactorFilter.markedHere 0 (SourceRefutations.body (pathResult ([[],[.left],[],[.under,.left,.left],[.under,.left,.right]] : List (List SelfintSharp.Direction)) e4778689418158)) = false := by decide +kernel
  exact Bool.noConfusion (h.symm.trans bad)
theorem ex_e4838310219578 : ¬ IsSelfInterpreter e4838310219578 := by
  intro he
  have h := FactorFilter.required (path_interprets ([[],[],[.under,.left],[.under],[.under]] : List (List SelfintSharp.Direction)) he)
  have bad : FactorFilter.markedHere 0 (SourceRefutations.body (pathResult ([[],[],[.under,.left],[.under],[.under]] : List (List SelfintSharp.Direction)) e4838310219578)) = false := by decide +kernel
  exact Bool.noConfusion (h.symm.trans bad)
theorem ex_e4846339783110 : ¬ IsSelfInterpreter e4846339783110 := by
  intro he
  have h := SelfintFloor.interpreter_idCall_betas (path_interprets ([[],[],[],[],[.under,.left],[.under],[.under,.left],[.under,.right],[.under],[.under],[.under],[.under,.under,.left],[.under,.under],[.under,.under,.left],[.under,.under,.right],[.under,.under],[.under,.under],[.under,.under]] : List (List SelfintSharp.Direction)) he)
  have ok := Layouts.mismatch_sound 6 h (by decide)
  have bad : Layouts.mismatch 6 (SelfintFloor.idCall (pathResult ([[],[],[],[],[.under,.left],[.under],[.under,.left],[.under,.right],[.under],[.under],[.under],[.under,.under,.left],[.under,.under],[.under,.under,.left],[.under,.under,.right],[.under,.under],[.under,.under],[.under,.under]] : List (List SelfintSharp.Direction)) e4846339783110)) SelfintFloor.idOutput = true := by decide +kernel
  exact Bool.noConfusion (ok.symm.trans bad)
end Blc.Floor44.Paths
